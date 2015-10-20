package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class EstadoPedido extends Base {

    String estado
    String observacoes

    static belongsTo = [pedido: Pedido]

    static constraints = {
        estado blank: false, inList: ['SUBMETIDO', 'PAGO', 'EM PRODUCAO', 'ENTREGUE']
        observacoes nullable: true, maxSize: 1000
    }

    @Override
    String toString() {
        return estado
    }
}
