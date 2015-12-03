package mz.co.igsys

/**

 */

class Participante extends Base {

    String nome
    String apelido
    String grauAcademico
    String empresa
    Date dataNascimento
    String sexo
    String nuit
    String endereco
    String telefone
    String email
    User utilizador

    static hasMany = [pedidos: Inscricao]

    static constraints = {
        nome blank: false
        apelido blank: false
        grauAcademico blank:false
        empresa blank: false
        dataNascimento blank:false
        nuit blank: false, minSize: 9, maxSize: 9, unique: true
        endereco blank: false
        telefone blank: false
        email email: true, nullable: true
        sexo nullable: true, inList: ['Masc', 'Fem']
    }

    @Override
    String toString() {
        return nome
    }
}
