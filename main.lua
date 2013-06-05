require('Text')

function love.load()
  text = Text.create()
  text:setPosition(32, 128)
end

function love.update(dt)
end

function love.draw()
  text:say('Hello, World!\n' .. "Position:" .. text.x .. ", " .. text.y)
end
-- wot, have to google this