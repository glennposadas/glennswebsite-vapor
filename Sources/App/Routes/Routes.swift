import Vapor

extension Droplet {
    func setupRoutes() throws {
        get() { req in
            return try self.view.make("index.leaf")
        }
        
        try resource("posts", PostController.self)
    }
}
