package mz.co.igsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pedido.list(params), model:[pedidoInstanceCount: Pedido.count()]
    }

    def show(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    def create() {
        respond new Pedido(params)
    }

    @Transactional
    def save(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'create'
            return
        }

        Produto produto = pedidoInstance.produto
        pedidoInstance.custo = produto.precoBase * pedidoInstance.quantidade
        pedidoInstance.estado = "SUBMETIDO"
        pedidoInstance.save flush:true


        request.withFormat {
            form multipartForm {
                flash.message = "Pedido registado com sucesso"
                redirect action:"index", method:"GET"
            }
            '*' { respond pedidoInstance, [status: CREATED] }
        }
    }

    def edit(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    @Transactional
    def update(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'edit'
            return
        }


        Produto produto = pedidoInstance.produto
        pedidoInstance.custo = produto.precoBase * pedidoInstance.quantidade
        pedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = "Pedido actualizado com sucesso"
                redirect action:"index", method:"GET"
            }
            '*'{ respond pedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pedido pedidoInstance) {

        if (pedidoInstance == null) {
            notFound()
            return
        }

        pedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
