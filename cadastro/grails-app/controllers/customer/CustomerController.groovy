package customer

class CustomerController {

    def index() {
        render(view: "index", model: [customer: new Customer()])
    }

    def save() {
        def customer = new Customer(params)

        if (!customer.validate()) {
        render(view: "index", model: [customer: customer])
        return
    }

        println "\n--- Customer Registered ---"
        println "Name: ${customer.name}"
        println "CPF: ${customer.cpf}"
        println "Phone: ${customer.phone}"
        println "CEP: ${customer.cep}"
        println "Address: ${customer.address}"
        println "Neighborhood: ${customer.neighborhood}"
        println "City: ${customer.city}"
        println "State: ${customer.state}"
        println "---------------------------\n"

        flash.message = "Formulário enviado com sucesso!"
        redirect(action: "index")
    }
}
