package mz.co.igsys

import javax.persistence.MappedSuperclass

/**
 * @author Sacur Ibraimo
 */

@MappedSuperclass
class Base {

    //Utilizador alteradoPor
    //Utilizador criadoPor
    Date dataCriacao = new Date()
    Date dataAlteracao
    boolean activo

    static constraints = {
        //alteradoPor nullable: true
        dataAlteracao nullable: true
    }
}
