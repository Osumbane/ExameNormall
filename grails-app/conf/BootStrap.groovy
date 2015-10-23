import mz.co.igsys.Perfil
import mz.co.igsys.Utilizador
import mz.co.igsys.UtilizadorPerfil

class BootStrap {

    def init = { servletContext ->

        Perfil admin = Perfil.findByAuthority("ROLE_ADMIN")
        if (admin == null) {
            admin = new Perfil(authority: "ROLE_ADMIN").save(flush: true)
        }

        Perfil guest = Perfil.findByAuthority("ROLE_GUEST")
        if (guest == null) {
            guest = new Perfil(authority: "ROLE_GUEST").save(flush: true)
        }

        Utilizador administrador = Utilizador.findByUsername("admin")
        if (administrador == null) {
            administrador = new Utilizador(username: "admin", password: "123", accountExpired: false, accountLocked: false, passwordExpired: false, dataCriacao: new Date()).save(flush: true)
        }

        Utilizador cliente = Utilizador.findByUsername("cliente")
        if (cliente == null) {
            cliente = new Utilizador(username: "cliente", password: "123", accountExpired: false, accountLocked: false, passwordExpired: false, dataCriacao: new Date()).save(flush: true)
        }

        if (UtilizadorPerfil.findByUtilizadorAndPerfil(administrador, admin) == null) {
            new UtilizadorPerfil(utilizador: administrador, perfil: admin).save(flush: true)
        }

        if (UtilizadorPerfil.findByUtilizadorAndPerfil(cliente, guest) == null) {
            new UtilizadorPerfil(utilizador: cliente, perfil: guest).save(flush: true)
        }
    }
    def destroy = {
    }
}
