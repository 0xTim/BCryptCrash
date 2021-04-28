import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // register routes
    try routes(app)

    // Trigger crash in 5.4
    let password = try Bcrypt.hash("password")
    app.logger.info("Hash is \(password)")
}
