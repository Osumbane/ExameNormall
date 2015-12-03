package mz.co.igsys

class DetalheInscricao {

    static belongsTo = [inscricao: Inscricao, opcao: Opcao]

    static constraints = {
    }
}
