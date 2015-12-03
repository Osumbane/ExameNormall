import mz.co.igsys.Perfill
import mz.co.igsys.User
import mz.co.igsys.User
import mz.co.igsys.UserPerfill
import mz.co.igsys.UserPerfill

class BootStrap {

    def init = { servletContext ->

        Perfill admin = Perfill.findByAuthority("ROLE_ADMIN")
        if (admin == null) {
            admin = new Perfill(authority: "ROLE_ADMIN").save(flush: true)
        }

        Perfill guest = Perfill.findByAuthority("ROLE_GUEST")
        if (guest == null) {
            guest = new Perfill(authority: "ROLE_GUEST").save(flush: true)
        }

        User administrador = User.findByUsername("admin")
        if (administrador == null) {
            administrador = new User(username: "admin", password: "123", accountExpired: false, accountLocked: false, passwordExpired: false, dataCriacao: new Date()).save(flush: true)
        }

        User participante = User.findByUsername("participante")
        if (participante == null) {
            participante = new User(username: "participante", password: "123", accountExpired: false, accountLocked: false, passwordExpired: false, dataCriacao: new Date()).save(flush: true)
        }

        if (UserPerfill.findByUserAndPerfill(administrador, admin) == null) {
            new UserPerfill(user: administrador, perfill: admin).save(flush: true)
        }

        if (UserPerfill.findByUtilizadorAndPerfil(participante, guest) == null) {
            new UserPerfill(user: participante, perfill: guest).save(flush: true)
        }
    }
    def destroy = {
    }
}
