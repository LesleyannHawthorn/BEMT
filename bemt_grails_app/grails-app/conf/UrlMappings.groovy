class UrlMappings {

	static mappings = {
    "/$controller/$action?/$id?(.${format})?" {
      constraints {
        // apply constraints here
      }
    }

    //"/"(view:"/index")
    "/"(controller: "home", action: "index") 
    "500"(view:'/error')
    "403"(view:'/error')
    "404"(view: '/404')
    "405"(view: '/405')
	}
}
