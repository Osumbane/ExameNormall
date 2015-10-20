package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */
class Produto extends Base {

    String nome
    String descricao
    BigDecimal precoBase

    static hasMany = [caracteristicas: Caracteristica, descontos: Desconto, pedidos: Pedido]

    static constraints = {
        nome blank: false
        descricao nullable: true
        precoBase nullable: false
    }

    @Override
    String toString() {
        return nome
    }
}
