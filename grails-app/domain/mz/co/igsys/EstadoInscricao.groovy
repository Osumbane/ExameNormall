package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class EstadoInscricao extends Base {

    String estado
    String observacoes

    static belongsTo = [inscricao: Inscricao]

    static constraints = {
        estado blank: false, inList: ['SUBMETIDO', 'PENDENTE', 'PENDENTE', 'SUSPENSA']
        observacoes nullable: true, maxSize: 1000
    }

    @Override
    String toString() {
        return estado
    }
}
