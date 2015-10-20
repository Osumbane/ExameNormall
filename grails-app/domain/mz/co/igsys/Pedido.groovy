package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class Pedido extends Base {

    String codigo
    int quantidade
    BigDecimal custo
    String observacoes


    static belongsTo = [cliente: Cliente, produto: Produto]
    static hasMany = [estados: EstadoPedido, detalhes: DetalhePedido]

    static constraints = {
        codigo nullable: true
        custo nullable: false
    }
}
