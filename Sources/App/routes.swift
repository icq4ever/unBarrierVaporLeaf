import Fluent
import Vapor

func routes(_ app: Application) throws {
    // index
    app.get { req in
        return req.view.render("index", ["title": "Unbarrier"])
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    app.get("app") {req in
        return req.view.render("app", ["title":"Unbarrier Recorder"])
    }
    
    app.get("app", "login") { req in
        return req.view.render("login", ["title": "login"])
    }

    app.get("app", "admin") {req in
        return req.view.render("admin", ["title" : "admin page"])
    }

    app.get("app", "signup") { req in
        return req.view.render("signup", ["title": "sign up"])
    }

    try app.register(collection: TodoController())
}
