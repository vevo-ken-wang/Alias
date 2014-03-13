express = require 'express'
path = require 'path'
fs = require 'fs'
server = express()

cache = {}
root = path.resolve(__dirname,'..')
cache['app.html'] = fs.readFileSync path.resolve(root,'app.html')

server.use '/', express.static(root)
server.get '/', (req, res)->
   res.setHeader('Content-Type', 'text/html')
   res.send cache['app.html']

console.log "listeninig on 3000"
server.listen 3000