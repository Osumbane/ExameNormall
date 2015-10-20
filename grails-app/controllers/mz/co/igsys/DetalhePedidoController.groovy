package mz.co.igsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DetalhePedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DetalhePedido.list(params), model:[detalhePedidoInstanceCount: DetalhePedido.count()]
    }

    def show(DetalhePedido detalhePedidoInstance) {
        respond detalhePedidoInstance
    }

    def create() {
        respond new DetalhePedido(params)
    }

    @Transactional
    def save(DetalhePedido detalhePedidoInstance) {
        if (detalhePedidoInstance == null) {
            notFound()
            return
        }

        if (detalhePedidoInstance.hasErrors()) {
            respond detalhePedidoInstance.errors, view:'create'
            return
        }

        detalhePedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detalhePedido.label', default: 'DetalhePedido'), detalhePedidoInstance.id])
                redirect detalhePedidoInstance
            }
            '*' { respond detalhePedidoInstance, [status: CREATED] }
        }
    }

    def edit(DetalhePedido detalhePedidoInstance) {
        respond detalhePedidoInstance
    }

    @Transactional
    def update(DetalhePedido detalhePedidoInstance) {
        if (detalhePedidoInstance == null) {
            notFound()
            return
        }

        if (detalhePedidoInstance.hasErrors()) {
            respond detalhePedidoInstance.errors, view:'edit'
            return
        }

        detalhePedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DetalhePedido.label', default: 'DetalhePedido'), detalhePedidoInstance.id])
                redirect detalhePedidoInstance
            }
            '*'{ respond detalhePedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DetalhePedido detalhePedidoInstance) {

        if (detalhePedidoInstance == null) {
            notFound()
            return
        }

        detalhePedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DetalhePedido.label', default: 'DetalhePedido'), detalhePedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detalhePedido.label', default: 'DetalhePedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
