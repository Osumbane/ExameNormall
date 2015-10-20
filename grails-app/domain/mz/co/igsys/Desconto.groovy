package mz.co.igsys

/**
 * @author Sacur Ibraimo
 */

class Desconto extends Base {

    int quantidade
    double desconto = 0

    static belongsTo = [produto: Produto]

    static constraints = {

    }
}
