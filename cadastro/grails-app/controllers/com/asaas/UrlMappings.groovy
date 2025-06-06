package com.asaas

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"()

        "/"(controller: "customer", action: "index")
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
