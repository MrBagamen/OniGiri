Text = {
  x = 0,
  y = 0
}

function Text.create()
  --font = love.graphics.newImageFont("res/shitfont.png",
--    " abcdefghijklmnopqrstuvwxyz" ..
--    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
--    "123456789.,!?-+/():;%&`'*#=[]\"")
  font = love.graphics.newFont("res/BIOST.ttf", 24)
  love.graphics.setFont(font)
  --t1 = love.timer.getTime()
  
  return setmetatable({}, {__index = Text})
end

function Text:say(shit)
  tempx = self.x
  tempy = self.y
  
  for i = 1, #shit do
   -- if love.timer.getTime() - t1 > 0.1 then
      if shit:sub(i, i) == "\n" then
        self.x = tempx - 15
        self.y = self.y + 20
      end
      love.graphics.print(shit:sub(i, i), self.x, self.y)
      self.x = self.x + 15
      --t1 = love.timer.getTime()
    --end
  end  
  self.x = tempx
  self.y = tempy
end

function Text:setPosition(x, y)
  self.x = x
  self.y = y
end