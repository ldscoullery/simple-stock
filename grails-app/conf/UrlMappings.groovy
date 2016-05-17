class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "producto", action:"index")
		"/producto/create" (controller: "producto", action: "create")
        "500"(view:'/error')
		
	}
}
