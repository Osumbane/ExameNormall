package mz.co.igsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CaracteristicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(int id) {

        Produto produto = Produto.findById(id)

        Integer max = 10
        params.max = Math.min(max ?: 10, 100)
        respond Caracteristica.list(params), model:[caracteristicaInstanceCount: Caracteristica.count(), produtoInstance: produto]
    }

    def show(Caracteristica caracteristicaInstance) {
        respond caracteristicaInstance
    }

    def create() {
        respond new Caracteristica(params)
    }

    @Transactional
    def save(Caracteristica caracteristicaInstance) {
        if (caracteristicaInstance == null) {
            notFound()
            return
        }

        if (caracteristicaInstance.hasErrors()) {
            respond caracteristicaInstance.errors, view:'create'
            return
        }

        caracteristicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'caracteristica.label', default: 'Caracteristica'), caracteristicaInstance.id])
                redirect caracteristicaInstance
            }
            '*' { respond caracteristicaInstance, [status: CREATED] }
        }
    }

    def edit(Caracteristica caracteristicaInstance) {
        respond caracteristicaInstance
    }

    @Transactional
    def update(Caracteristica caracteristicaInstance) {
        if (caracteristicaInstance == null) {
            notFound()
            return
        }

        if (caracteristicaInstance.hasErrors()) {
            respond caracteristicaInstance.errors, view:'edit'
            return
        }

        caracteristicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Caracteristica.label', default: 'Caracteristica'), caracteristicaInstance.id])
                redirect caracteristicaInstance
            }
            '*'{ respond caracteristicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Caracteristica caracteristicaInstance) {

        if (caracteristicaInstance == null) {
            notFound()
            return
        }

        caracteristicaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Caracteristica.label', default: 'Caracteristica'), caracteristicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'caracteristica.label', default: 'Caracteristica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
