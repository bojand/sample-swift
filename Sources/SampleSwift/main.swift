import Vapor
 
let app = try Application(.detect())

app.http.server.configuration.hostname = "0.0.0.0"
app.http.server.configuration.port = 8080

defer { app.shutdown() }

app.get("hello") { req in
    return "Hello, world."
}

try app.run()