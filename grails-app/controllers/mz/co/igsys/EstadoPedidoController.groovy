package mz.co.igsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstadoPedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EstadoPedido.list(params), model:[estadoPedidoInstanceCount: EstadoPedido.count()]
    }

    def show(EstadoPedido estadoPedidoInstance) {
        respond estadoPedidoInstance
    }

    def create() {
        respond new EstadoPedido(params)
    }

    @Transactional
    def save(EstadoPedido estadoPedidoInstance) {
        if (estadoPedidoInstance == null) {
            notFound()
            return
        }

        if (estadoPedidoInstance.hasErrors()) {
            respond estadoPedidoInstance.errors, view:'create'
            return
        }

        estadoPedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estadoPedido.label', default: 'EstadoPedido'), estadoPedidoInstance.id])
                redirect estadoPedidoInstance
            }
            '*' { respond estadoPedidoInstance, [status: CREATED] }
        }
    }

    def edit(EstadoPedido estadoPedidoInstance) {
        respond estadoPedidoInstance
    }

    @Transactional
    def update(EstadoPedido estadoPedidoInstance) {
        if (estadoPedidoInstance == null) {
            notFound()
            return
        }

        if (estadoPedidoInstance.hasErrors()) {
            respond estadoPedidoInstance.errors, view:'edit'
            return
        }

        estadoPedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EstadoPedido.label', default: 'EstadoPedido'), estadoPedidoInstance.id])
                redirect estadoPedidoInstance
            }
            '*'{ respond estadoPedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EstadoPedido estadoPedidoInstance) {

        if (estadoPedidoInstance == null) {
            notFound()
            return
        }

        estadoPedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EstadoPedido.label', default: 'EstadoPedido'), estadoPedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoPedido.label', default: 'EstadoPedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
