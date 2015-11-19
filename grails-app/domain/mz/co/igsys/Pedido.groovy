package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class Pedido extends Base {

    String codigo
    int quantidade
    BigDecimal custo
    String observacoes
    String estado

    static belongsTo = [cliente: Cliente, produto: Produto]
    static hasMany = [estados: EstadoPedido, detalhes: DetalhePedido]

    static constraints = {
        codigo nullable: true
        custo nullable: true
        estado nullable: true, inList: ['SUBMETIDO', 'PAGO', 'EM PRODUCAO', 'ENTREGUE']
        observacoes nullable: true

    }
}
