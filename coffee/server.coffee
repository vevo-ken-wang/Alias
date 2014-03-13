express = require 'express'

server = express()

server.use '/', express.static(__dirname+'/../')
console.log "listeninig on 3000"
server.listen 3000