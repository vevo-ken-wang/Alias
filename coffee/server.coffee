express = require 'express'
path = require 'path'
fs = require 'fs'
server = express()

root = path.resolve(__dirname,'..')

server.use '/', express.static(root)
server.get '/', (req, res)->
   res.setHeader('Content-Type', 'text/html')
   res.send fs.readFileSync path.resolve(root,'app.html')


console.log "listeninig on 3000"
server.listen 3000