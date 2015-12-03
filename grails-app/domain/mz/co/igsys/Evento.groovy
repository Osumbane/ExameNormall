package mz.co.igsys

/**
 *
 */
class Evento extends Base {

    String titulo
    String tipo
    String descricao
    String local
    String agenda


    static hasMany = [caracteristicas: Caracteristica, inscricao: Inscricao]

    static constraints = {
        titulo blank: false
        tipo blank:false
        local blank: false
        agenda blank: false
        descricao nullable: true

    }

    @Override
    String toString() {
        return nome
    }
}
