package mz.co.igsys



import grails.test.mixin.*
import spock.lang.*

@TestFor(CaracteristicaController)
@Mock(Caracteristica)
class CaracteristicaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.caracteristicaInstanceList
            model.caracteristicaInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.caracteristicaInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def caracteristica = new Caracteristica()
            caracteristica.validate()
            controller.save(caracteristica)

        then:"The create view is rendered again with the correct model"
            model.caracteristicaInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            caracteristica = new Caracteristica(params)

            controller.save(caracteristica)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/caracteristica/show/1'
            controller.flash.message != null
            Caracteristica.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def caracteristica = new Caracteristica(params)
            controller.show(caracteristica)

        then:"A model is populated containing the domain instance"
            model.caracteristicaInstance == caracteristica
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def caracteristica = new Caracteristica(params)
            controller.edit(caracteristica)

        then:"A model is populated containing the domain instance"
            model.caracteristicaInstance == caracteristica
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/caracteristica/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def caracteristica = new Caracteristica()
            caracteristica.validate()
            controller.update(caracteristica)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.caracteristicaInstance == caracteristica

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            caracteristica = new Caracteristica(params).save(flush: true)
            controller.update(caracteristica)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/caracteristica/show/$caracteristica.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/caracteristica/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def caracteristica = new Caracteristica(params).save(flush: true)

        then:"It exists"
            Caracteristica.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(caracteristica)

        then:"The instance is deleted"
            Caracteristica.count() == 0
            response.redirectedUrl == '/caracteristica/index'
            flash.message != null
    }
}
