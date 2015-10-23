package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class Cliente extends Base {

    String nome
    String nuit
    String endereco
    String telefone
    String fax
    String website
    String email
    Utilizador utilizador

    static hasMany = [pedidos: Pedido]

    static constraints = {
        nome blank: false
        nuit blank: false, minSize: 9, maxSize: 9, unique: true
        endereco blank: false
        telefone blank: false
        fax nullable: true
        website nullable: true
        email email: true, nullable: true
    }

    @Override
    String toString() {
        return nome
    }
}
