package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */
class Caracteristica extends Base{

    String nome
    String descricao

    static belongsTo = [produto: Produto]
    static hasMany = [opcoes: Opcao]

    static constraints = {
        descricao nullable: true
    }

    @Override
    String toString() {
        return nome
    }
}
