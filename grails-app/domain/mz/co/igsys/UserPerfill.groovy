package mz.co.igsys

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache = true, includeNames = true, includePackage = false)
class UserPerfill implements Serializable {

    private static final long serialVersionUID = 1

    User utilizador
    Perfill perfil

    UserPerfill(User u, Perfill r) {
        this()
        utilizador = u
        perfil = r
    }

    @Override
    boolean equals(other) {
        if (!(other instanceof UserPerfill)) {
            return false
        }

        other.utilizador?.id == utilizador?.id && other.perfil?.id == perfil?.id
    }

    @Override
    int hashCode() {
        def builder = new HashCodeBuilder()
        if (utilizador) builder.append(utilizador.id)
        if (perfil) builder.append(perfil.id)
        builder.toHashCode()
    }

    static UserPerfill get(long utilizadorId, long perfilId) {
        criteriaFor(utilizadorId, perfilId).get()
    }

    static boolean exists(long utilizadorId, long perfilId) {
        criteriaFor(utilizadorId, perfilId).count()
    }

    private static DetachedCriteria criteriaFor(long utilizadorId, long perfilId) {
        UserPerfill.where {
            utilizador == User.load(utilizadorId) &&
                    perfil == Perfill.load(perfilId)
        }
    }

    static UserPerfill create(User utilizador, Perfill perfil, boolean flush = false) {
        def instance = new UserPerfill(utilizador, perfil)
        instance.save(flush: flush, insert: true)
        instance
    }

    static boolean remove(User u, Perfill r, boolean flush = false) {
        if (u == null || r == null) return false

        int rowCount = UserPerfill.where { utilizador == u && perfil == r }.deleteAll()

        if (flush) {
            UserPerfill.withSession { it.flush() }
        }

        rowCount
    }

    static void removeAll(User u, boolean flush = false) {
        if (u == null) return

        UserPerfill.where { utilizador == u }.deleteAll()

        if (flush) {
            UserPerfill.withSession { it.flush() }
        }
    }

    static void removeAll(Perfill r, boolean flush = false) {
        if (r == null) return

        UserPerfill.where { perfil == r }.deleteAll()

        if (flush) {
            UserPerfill.withSession { it.flush() }
        }
    }

    static constraints = {
        perfil validator: { Perfil r, UserPerfill ur ->
            if (ur.utilizador == null || ur.utilizador.id == null) return
            boolean existing = false
            UserPerfill.withNewSession {
                existing = UserPerfill.exists(ur.utilizador.id, r.id)
            }
            if (existing) {
                return 'userRole.exists'
            }
        }
    }

    static mapping = {
        id composite: ['utilizador', 'perfil']
        version false
    }
}
