package mz.co.igsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UtilizadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utilizador.list(params), model: [utilizadorInstanceCount: Utilizador.count()]
    }

    def show(Utilizador utilizadorInstance) {
        respond utilizadorInstance
    }

    def create() {
        respond new Utilizador(params)
    }

    @Transactional
    def save(Utilizador utilizadorInstance) {
        if (utilizadorInstance == null) {
            notFound()
            return
        }

        if (utilizadorInstance.hasErrors()) {
            respond utilizadorInstance.errors, view: 'create'
            return
        }

        utilizadorInstance.save flush: true

        Perfil perfil = Perfil.findByAuthority(params.authority)
        new UtilizadorPerfil(utilizador: utilizadorInstance, peril: perfil).save(flush: true)

        request.withFormat {
            form multipartForm {
                flash.message = "Utilizador cadastrado com sucesso"
                redirect action: "index", method: "GET"
            }
            '*' { respond utilizadorInstance, [status: CREATED] }
        }
    }

    def edit(Utilizador utilizadorInstance) {
        respond utilizadorInstance
    }

    @Transactional
    def update(Utilizador utilizadorInstance) {
        if (utilizadorInstance == null) {
            notFound()
            return
        }

        if (utilizadorInstance.hasErrors()) {
            respond utilizadorInstance.errors, view: 'edit'
            return
        }

        utilizadorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = "Utilizador actualizado com sucesso"
                redirect action: "index", method: "GET"
            }
            '*' { respond utilizadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Utilizador utilizadorInstance) {

        if (utilizadorInstance == null) {
            notFound()
            return
        }

        utilizadorInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utilizador.label', default: 'Utilizador'), utilizadorInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilizador.label', default: 'Utilizador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
