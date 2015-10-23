package mz.co.igsys

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache = true, includeNames = true, includePackage = false)
class UtilizadorPerfil implements Serializable {

    private static final long serialVersionUID = 1

    Utilizador utilizador
    Perfil perfil

    UtilizadorPerfil(Utilizador u, Perfil r) {
        this()
        utilizador = u
        perfil = r
    }

    @Override
    boolean equals(other) {
        if (!(other instanceof UtilizadorPerfil)) {
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

    static UtilizadorPerfil get(long utilizadorId, long perfilId) {
        criteriaFor(utilizadorId, perfilId).get()
    }

    static boolean exists(long utilizadorId, long perfilId) {
        criteriaFor(utilizadorId, perfilId).count()
    }

    private static DetachedCriteria criteriaFor(long utilizadorId, long perfilId) {
        UtilizadorPerfil.where {
            utilizador == Utilizador.load(utilizadorId) &&
                    perfil == Perfil.load(perfilId)
        }
    }

    static UtilizadorPerfil create(Utilizador utilizador, Perfil perfil, boolean flush = false) {
        def instance = new UtilizadorPerfil(utilizador, perfil)
        instance.save(flush: flush, insert: true)
        instance
    }

    static boolean remove(Utilizador u, Perfil r, boolean flush = false) {
        if (u == null || r == null) return false

        int rowCount = UtilizadorPerfil.where { utilizador == u && perfil == r }.deleteAll()

        if (flush) {
            UtilizadorPerfil.withSession { it.flush() }
        }

        rowCount
    }

    static void removeAll(Utilizador u, boolean flush = false) {
        if (u == null) return

        UtilizadorPerfil.where { utilizador == u }.deleteAll()

        if (flush) {
            UtilizadorPerfil.withSession { it.flush() }
        }
    }

    static void removeAll(Perfil r, boolean flush = false) {
        if (r == null) return

        UtilizadorPerfil.where { perfil == r }.deleteAll()

        if (flush) {
            UtilizadorPerfil.withSession { it.flush() }
        }
    }

    static constraints = {
        perfil validator: { Perfil r, UtilizadorPerfil ur ->
            if (ur.utilizador == null || ur.utilizador.id == null) return
            boolean existing = false
            UtilizadorPerfil.withNewSession {
                existing = UtilizadorPerfil.exists(ur.utilizador.id, r.id)
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
