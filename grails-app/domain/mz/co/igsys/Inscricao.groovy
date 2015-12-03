package mz.co.igsys

/**
 *
 */

class Inscricao extends Base {

    String codigo
    Date dataInscricao
    String descricao
    String estado

    static belongsTo = [participante: Participante, produto: Produto]
    static hasMany = [estados: EstadoInscricao, detalhes: DetalheInscricao]

    static constraints = {
        codigo nullable: true
        dataInscricao nullable: true
        estado nullable: true, inList: ['SUBMETIDO', 'PENDENTE', 'PENDENTE', 'SUSPENSA']
        descricao nullable: true

    }
}
