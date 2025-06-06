package customer

class Customer {
    String name
    String cpf
    String phone
    String cep
    String address
    String neighborhood
    String city
    String state

    static constraints = {
        name blank: false, nullable: false

        cpf blank: false, nullable: false, validator: { val, obj ->
            if (!val?.matches(/\d{11}/)) {
                return 'customer.cpf.invalid'
            }
        }

        phone blank: false, nullable: false, validator: { val, obj ->
            if (!val?.matches(/\d{10,11}/)) {
                return 'customer.phone.invalid'
            }
        }

        cep blank: false, nullable: false, validator: { val, obj ->
            if (!val?.matches(/\d{8}/)) {
                return 'customer.cep.invalid'
            }
        }

        address nullable: true
        neighborhood nullable: true
        city nullable: true
        state nullable: true
    }
}