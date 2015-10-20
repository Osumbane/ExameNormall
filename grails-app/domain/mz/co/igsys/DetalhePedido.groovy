package mz.co.igsys

class DetalhePedido {

    static belongsTo = [pedido: Pedido, opcao: Opcao]

    static constraints = {
    }
}
