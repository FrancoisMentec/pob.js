const express = require('express')
const fs = require('fs')
const path = require('path')
const app = express()
const port = 3000

app.use(express.static('public'))

app.get('/', (req, res) => res.sendFile(__dirname + '/public/html/index.html'))

app.all(/PathOfBuilding\/(.*)/, (req, res) => {
  let content = fs.readFileSync(path.join(__dirname, 'PathOfBuilding', req.params[0]))
  res.type('text/plain')
  res.send(content.toString().replace(/^#@.*/, ''))
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
