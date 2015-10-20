package mz.co.igsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DescontoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Desconto.list(params), model:[descontoInstanceCount: Desconto.count()]
    }

    def show(Desconto descontoInstance) {
        respond descontoInstance
    }

    def create() {
        respond new Desconto(params)
    }

    @Transactional
    def save(Desconto descontoInstance) {
        if (descontoInstance == null) {
            notFound()
            return
        }

        if (descontoInstance.hasErrors()) {
            respond descontoInstance.errors, view:'create'
            return
        }

        descontoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'desconto.label', default: 'Desconto'), descontoInstance.id])
                redirect descontoInstance
            }
            '*' { respond descontoInstance, [status: CREATED] }
        }
    }

    def edit(Desconto descontoInstance) {
        respond descontoInstance
    }

    @Transactional
    def update(Desconto descontoInstance) {
        if (descontoInstance == null) {
            notFound()
            return
        }

        if (descontoInstance.hasErrors()) {
            respond descontoInstance.errors, view:'edit'
            return
        }

        descontoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Desconto.label', default: 'Desconto'), descontoInstance.id])
                redirect descontoInstance
            }
            '*'{ respond descontoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Desconto descontoInstance) {

        if (descontoInstance == null) {
            notFound()
            return
        }

        descontoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Desconto.label', default: 'Desconto'), descontoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'desconto.label', default: 'Desconto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
