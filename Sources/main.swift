import HeliumLogger
import Kitura
import Yaml

HeliumLogger.use()

let router = Router()
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

var yml = ""

do {
    yml = try String(contentsOfFile: "./config.yml", encoding: .utf8)
} catch let err {
    throw err
}

var config: Yaml = [:]

do {
    config = try Yaml.load(yml)
} catch let err {
    throw err
}

Kitura.addHTTPServer(onPort: config["port"].int ?? 0, with: router)
Kitura.run()
