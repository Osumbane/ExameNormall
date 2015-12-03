package mz.co.igsys

/**
 *
 */
class Caracteristica extends Base{

    String nome
    String descricao

    static belongsTo = [produto: Evento]
    static hasMany = [opcoes: Opcao]

    static constraints = {
        descricao nullable: true
    }

    @Override
    String toString() {
        return nome
    }
}
