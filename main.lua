local gID = generalImage:getDimensions()
local Boss1 = BOSSImage:getDimensions()
local condition = {}
local cor = {}
local cortype = 1
local cors = {}
local wheats = {}
local Deathcount = 0
local cor_rage = {}
local fps = 60
print("warning:read 0manual.txt before playing the game because it tells the controls and has very good description of why the game has suggestive themes and crude humor")
local Talkies = require("Talkies")
local frames = {}
local waterframes = {}
local activeframe
local currentframe = 1
local currentWaterframe = 1
local activeWaterframe
local koble = love.graphics
local rexy = love.window
local Ana = love.keyboard
local obi wan = love.filesystem
local re = love.conf
local fps = 60
local elsapedTime = 0
local music
local volume = 0.5
local Ohswims = {}
local ohihaveabeach
local whatfly
local CWF = currentWaterframe
local opens = {}
local currentopen = 1
local activeopen
require("Honeydog")
require("Resourcesforenemiesandbackgrounds")
function love.load()
local x = koble.getWidth()
local y = koble.getHeight()
music = love.audio.newSource( "8bitsoundtrack.ogg", "static" )
generalImage = koble.newImage("7777654321dogr.png")
debug.getinfo(intersects,dx, "attempt to perform arthmetic on field 'x' (a nil value)")
for i= 1,17 do
   frames[i] = koble.newQuad((i-1) * 24, 0, 24, 24, gID)
end
watermelonImage = koble.newImage("water/Watermelon.png")
duckfarts = koble.newImage("Cave.png")
camelabuse = koble.newImage("Desert.png")
waterframes = {}
for i=1,7 do
    table.insert(waterframes, koble.newImage("H".. i .. ".png"))
end
itsuckstomatoes = koble.newImage("Mountain.png")
thesedarnsnowboardparts = koble.newImage("Whatslap.png")
theoakImage = koble.newImage("Ohman.png")
therealImage = koble.newImage("Oklahoma.png")
minedude = koble.newImage("Parallax dude 2.png")
rexy.setMode(512, 512)
rexy.setTitle("v uper   expires =" .. tostring(Deathcount))
player = {x = 0, y = 256, width = 24, height = 24, health = 1, speed = 240, img = generalImage}
activeframe = frames[currentframe]
watermelons = {}
canFire = false
watermelonTimermax = 1
watermelonstartspeed = 600
watermelonmaxspeed = 1500
watermelonspeed = watermelonstartspeed
wheatstartspeed = 600
wheatmaxspeed = 1500
wheatspeed = wheatstartspeed
coralImage = koble.newImage("zen/5Mr.Coral Vibrant.png")
opens[1] = koble.newQuad(0, 0, 24, 24, coralImage:getDimensions())
opens[2] = koble.newQuad(24, 0, 24, 24, coralImage:getDimensions())
opens[3] = koble.newQuad(48, 0, 24, 24, coralImage:getDimensions())
opens[4] = koble.newQuad(72, 0, 24, 24, coralImage:getDimensions())
opens[5] = koble.newQuad(96, 0, 24, 24, coralImage:getDimensions())
opens[6] = koble.newQuad(120, 0, 24, 24, coralImage:getDimensions())
opens[7] = koble.newQuad(144, 0, 24, 24, coralImage:getDimensions())
opens[8] = koble.newQuad(168, 0, 24, 24, coralImage:getDimensions())
opens[9] = koble.newQuad(192, 0, 24, 24, coralImage:getDimensions())
opens[10] = koble.newQuad(216, 0, 24, 24, coralImage:getDimensions())
opens[11] = koble.newQuad(240, 0, 24, 24, coralImage:getDimensions())
opens[12] = koble.newQuad(264, 0, 24, 24, coralImage:getDimensions())
opens[13] = koble.newQuad(288, 0, 24, 24, coralImage:getDimensions())
activeopen = opens[currentopen]
FoodImage = koble.newImage("zen/6Food.png")
wheats = {}
bread = koble.newQuad(0, 2, 8, 4, FoodImage:getDimensions())
meat = koble.newQuad(8, 2, 6, 6, FoodImage:getDimensions())
blueball = koble.newQuad(16, 3, 4, 3, FoodImage:getDimensions())
ohves = koble.newQuad(24, 1, 6, 6, FoodImage:getDimensions())
blueberd= koble.newQuad(32, 2, 5, 4, FoodImage:getDimensions())
spawn = koble.newQuad(40, 2, 8, 5, FoodImage:getDimensions())
BOSSImage = koble.newImage("Boss1.png")
for i= 18,33 do
   frames[i] = koble.newQuad((i-1) * 32, 0, 32, 64, Boss1)
end 

for i= 34,40 do
   frames[i] = koble.newQuad((i-1) * 32, 32, 32, 64, Boss1)
end
   
end
function love.update(dt)
 CheckMe()
 updatePlayer(dt)
 updatewatermelons(dt)
 updateCor(cors, dt)
 updatewheat(dt)
 currentWaterframe = currentWaterframe + 10 * dt
 if currentWaterframe >= 8 then
    currentWaterframe = 1
 end
 Talkies.update(dt)
 if PlayerAilve == false then
   if restartTimer > 0 then
     restartTimer = restartTimer - dt
   else
     iamakittycat()
   end
 end
end 

function love.keypressed(key) -- Talkies
  if key == "space" then Talkies.onAction()
  elseif key == "m" then Talkies.nextOption()
  elseif key == "n" then Talkies.prevOption()

  end
end

function updatePlayer(dt)
  down = Ana.isDown("s")
  up = Ana.isDown("w")
  left = Ana.isDown("a")
  right = Ana.isDown("d")
  
  speed = player.speed
  if((down or up) and (left and right)) then
    speed = speed / math.sqrt(2)
    print("Finally, you got the movement down")
  end
  
  if down and player.y<koble.getHeight()-player.height then
    player.y = player.y + dt * speed
    print("DOWN!")
  elseif up and player.y>0 then 
    player.y = player.y - dt * speed
    print("UP!")
  end
  
  if right and player.x<koble.getWidth()-player.width then
    player.x = player.x + dt * speed
    print("RIGHT!")
  elseif left and player.x>0 then
    player.x = player.x - dt * speed
    print("LEFT!")
  end

  if Ana.isDown("j") then
     print("Throwing watermelons")
      if (currentframe < 14) then
        currentframe = currentframe + 1
        canFire = true
      else
      currentframe = 1
      end
      activeframe= frames[currentframe]
      elsapedTime = 0
      end
     watermelonspeed = watermelonstartspeed
     if(down) then
      watermelonspeed = watermelonspeed + player.speed/2
     elseif(up) then
      watermelonspeed = watermelonspeed - player.speed/2
     end
     Spawnwatermelon(player.x + player.width, player.y + player.height, watermelonstartspeed)
     music:setVolume(0.7)
     success = music:play()
  end

  
function updatewatermelons(dt)
  for index, watermelon in ipairs(watermelons, watermelon) do
     watermelon.xpos = watermelon.xpos + dt * watermelonspeed
      if watermelon.speed < watermelonmaxspeed then
       watermelon.speed = watermelon.speed + dt * 100
      end
      if watermelon.xpos > koble.getWidth() then
        table.remove(watermelon)
      end
  end
end   
    


function Spawnwatermelon(x, y, speed)
  if canFire then
   watermelon = {xpos = x,ypos = y, width = 7, height = 6, speed = speed, img = watermelonImage, watermelonTimermax = 300}
   table.insert(watermelons, watermelon)
  
   canFire = false
   return Spawnwatermelon(x, y, speed)
  end
end

function updateCor(cors, dt)
  for i=table.getn(cors), 1, -1 do
     cor = cors[i]
     cor.update = Animation()
     canFire = true
     spawnWheat(x, y, speed)
    if cor.x < -cor.width then
      table.remove(cor)
    end
  end

  if cor.health == 0 then
    cortype = cortype + 1
  end
  SpawnCor()
end

function Animation()
 if canFire then
   spawnWheat(x, y, speed)
   if (currentopen < 12) then
     currentopen = currentopen + 1
   elseif cortype == 5 or 10 or 15 then
      if (currentopen > 11) then
        currentopen = currentopen - 1
      else
        currentopen = 12
      end
   else
     currentopen = 1
   end
   return Animation()
 end
end
function SpawnCor()
   if cortype == 1 then
     cor = {x = 256, y = 256, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 2 then
     cor = {x = 300, y = 147, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 3 then
     cor = {x = 200, y = 300, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 4 then
     cor = {x = 400, y = 400, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 5 then
     cor = {x = 235, y = 325, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 6 then
     cor = {x = 222, y = 367, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 7 then
     cor = {x = 256, y = 270, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 8 then
     cor = {x = 256, y = 300, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 9 then
     cor = {x = 237, y = 345, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 10 then
     cor = {x = 200, y = 100, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 11 then
     cor = {x = 389, y = 150, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 12 then
     cor = {x = 295, y = 467, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 13 then
     cor = {x = 300, y = 289, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 14 then
     cor = {x = 256, y = 100, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   elseif cortype == 15 then
     cor = {x = 256, y = 488, width = 24, height = 24, food = wheat, health = 30, img = coralImage, update = Animation()}
   end                               
  end
  table.insert(cors, cor)
end


function updatewheat(dt)
  for index, wheat in ipairs(wheats, wheat) do
     wheat.xpos = wheat.xpos + dt * wheatspeed -- error is here
     wheat.ypos = wheat.ypos - dt * wheatspeed
      if wheat.speed < wheatmaxspeed then
       wheat.speed = wheat.speed + dt * 100
      end
      if wheat.xpos > koble.getWidth() then
        table.remove(wheat)
      end
      if wheat.ypos > koble.getHeight() then
        table.remove(wheat)
      end
      if wheat.ypos < 0 then
        table.remove(wheat)
      end
  end
end

function spawnWheat(x, y, speed)
 if canFire then
   wheat = {xpos = koble.getWidth(),ypos = koble.getHeight(), width = 7, height = 6, speed = speed, img = FoodImage, quad = bread, wheatTimermax = 300}
   table.insert(wheats, wheat)
  
   canFire = false
   return spawnWheat(x, y, speed)
 end
end
function love.draw()
   background = koble.draw(theoakImage)
   for index, cor in ipairs(cors) do
     koble.draw(cor.img, activeopen,cor.x, cor.y, 0, 2, 2)
   end
   koble.draw(player.img, activeframe, player.x, player.y, 0, 2, 2)
   for index, watermelon in ipairs(watermelons)do
      koble.draw(watermelon.img, watermelon.xpos, watermelon.ypos)
   end
   for index, wheat in ipairs(wheats)do
      koble.draw(wheat.img, wheat.quad, wheat.xpos, wheat.ypos)
   end
   Talkies.draw()
end
function iamakittycat()
PlayerAilve = true
player = {x = 0, y = 256, width = 24, height = 24, speed = 240, img = generalImage}
Deathcount = 0
watermelons = {}
wheats = {}
cors = {}
canFire = true
watermelonspeed = watermelonstartspeedj
watermelonTimermax = 0.1
local condition = {cors1.health < 0}

Parallaxdudeposition = 0
Parallaxdude2position = 0
Parallaxdude3position = 0
SpawnTimer = 0
restartTimer = 0.5

music:setVolume(0.7)
success = music:play()

end
function intersects() -- attempt to perform arthmetic on field 'x' (a nil value)
 
  if watermelon.xpos>cor.x + cor.height or watermelon.ypos>cor.y + cor.height or cor.x>watermelon.xpos+watermelon.width or cor.y>watermelon.ypos+watermelon.height then
   return false
  else
   return true
  end
end

function CheckMe()
    for index, cor in ipairs(cors) do
     if PlayerAilve and (intersectsplayer() or intersectscor()) then
       PlayerAilve = false
       Deathcount = Deathcount + 1
       if (currentframe < 17) then
          currentframe = currentframe + 1
       else
         currentframe = 14
       end
     end
   end
    for index2, wheat in ipairs(wheats)do
      if PlayerAilve and (intersectsplayer2() or intersectswheat()) then
        PlayerAilve = false
        table.remove(wheat, index2)
        Deathcount = Deathcount + 1
       if (currentframe < 17) then
         currentframe = currentframe + 1
       else
         currentframe = 14
       end
     end
   end
   for index3, watermelon in ipairs(watermelons) do
     if intersects() then -- This is to damage the enemie
        cor.health = cor.health - 1
        print("Beepboop")
        table.remove(watermelon, index3)
        break
     end
   end
   return CheckMe()
end

function intersectsplayer() -- attempt to perform arthmetic on field 'x' (a nil value)
 
  if player.x>cor.x + cor.height or player.y>cor.y + player.height or cor.x>player.x+player.width or player.y>cor.y +cor.height then
   return false
  else
   return true
  end
end


function intersectscor() -- attempt to perform arthmetic on field 'x' (a nil value)
 
  if cor.x>player.x + player.height or cor.y>player.y + cor.height or player.x>cor.x+cor.width or cor.y>player.y+player.height then
   return false
  else
   return true
  end
end

function intersectsplayer2() -- attempt to perform arthmetic on field 'x' (a nil value)
 
  if player.x>wheat.xpos + wheat.height or wheat.ypos>wheat.ypos + player.height or wheat.xpos>player.x+player.width or player.y>wheat.ypos+wheat.height then
   return false
  else
   return true
  end
end

function intersectswheat() -- attempt to perform arthmetic on field 'x' (a nil value)
 
  if wheat.xpos>player.x + player.height or wheat.ypos>player.y + wheat.height or player.x>wheat.xpos+wheat.width or wheat.ypos>player.y+player.height then
   return false
  else
   return true
  end
end

