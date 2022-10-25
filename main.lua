-- Main

function love.load()
  
  Menu = love.graphics.newImage("Menu.png")
  Pause = love.graphics.newImage("pause.png")
  Win = love.graphics.newImage("win.png")
  BirdDown = love.graphics.newImage("Bird Down.png")
  BirdUp = love.graphics.newImage("Bird Up.png")
  Jump = love.audio.newSource("jump.wav", "static")
  Dead = love.audio.newSource("dead.wav", "static")
  BirdSprite = BirdDown
  love.graphics.setBackgroundColor(.45, .75, 80, 1)
    
  inGame = false
  win = false
  inPause = false
    
  WindowWidth = love.graphics.getWidth()
  WindowHeight = love.graphics.getHeight()
  
  PipesYA = 0
  PipesWidth = 55
  
  -- Pipe 1 
  topSpace1 = 100
  BottomSpace1 = 200
  pipe1X = WindowWidth - 55
  Pipe1YB = topSpace1 + BottomSpace1
  Pipe1AHeight = 100
  Pipe1BHeight = WindowHeight - topSpace1 - BottomSpace1 - 60
  
  -- Pipe 2
  topSpace2 = 300
  BottomSpace2 = 100
  pipe2X = WindowWidth - 55 + 300
  Pipe2YB = topSpace2 + BottomSpace2
  Pipe2AHeight = 200
  Pipe2BHeight = WindowHeight - topSpace2 - BottomSpace2 - 60
  
  -- Pipes 3
  topSpace3 = 100
  BottomSpace3 = 100
  pipe3X = WindowWidth - 55 + 600
  Pipe3YB = topSpace3 + BottomSpace3
  Pipe3AHeight = 50
  Pipe3BHeight = WindowHeight - topSpace3 - BottomSpace3 - 60
  
  -- Pipe 4
  topSpace4 = 400
  BottomSpace4 = 100
  pipe4X = WindowWidth - 55 + 900
  Pipe4YB = topSpace4 + BottomSpace4
  Pipe4AHeight = 300
  Pipe4BHeight = WindowHeight - topSpace4 - BottomSpace4 - 60
  
  -- Pipe 5
  topSpace5 = 700
  pipe5X = WindowWidth - 55 + 5
  Pipe5Height = 700

  -- Bird
  BirdPosX = 100
  BirdPosY = WindowWidth / 4
  BirdWidth = 50
  BirdHeight = 50
  gravity = 512
  
end

function love.update(dt)
 -- Pipe Update
     if inGame == true and inPause == false and win == false then
          -- Pipe 1
       pipe1X = pipe1X - 100 * dt
        if pipe1X < -100 then 
        pipe1X = WindowWidth + 400
      end


      -- Pipe 2
       pipe2X = pipe2X - 100 * dt
        if pipe2X < -100 then
        pipe2X = WindowWidth + 400
      end


    -- Pipe 3
      pipe3X = pipe3X - 100 * dt
      if pipe3X < -100 then
      pipe3X = WindowWidth + 400
      end
     
     
     -- Pipe 4
      pipe4X = pipe4X - 100 * dt
      if pipe4X < -100 then
      pipe4X = WindowWidth + 400
      end
     
      -- Pipe 5
      pipe5X = pipe5X - 100 * dt
     
     -- checkColliders
     
     -- Colider Pipe 1
     if pipe1X < BirdPosX + BirdWidth and
        pipe1X + PipesWidth > BirdPosX and
        PipesYA < BirdPosY + BirdHeight and
        Pipe1AHeight + PipesYA > BirdPosY then
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
     if pipe1X < BirdPosX + BirdWidth and
        pipe1X + PipesWidth > BirdPosX and
        Pipe1YB < BirdPosY + BirdHeight and
        Pipe1BHeight + Pipe1YB > BirdPosY then
          
          Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
            
        end
     
     
     -- Collider Pipe 2
      if pipe2X < BirdPosX + BirdWidth and
        pipe2X + PipesWidth > BirdPosX and
        PipesYA < BirdPosY + BirdHeight and
        Pipe2AHeight + PipesYA > BirdPosY then
          
          Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
      if pipe2X < BirdPosX + BirdWidth and
        pipe2X + PipesWidth > BirdPosX and
        Pipe2YB < BirdPosY + BirdHeight and
        Pipe2BHeight + Pipe2YB > BirdPosY then
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
     
     -- Colider Pipe 3
      if pipe3X < BirdPosX + BirdWidth and
        pipe3X + PipesWidth > BirdPosX and
        PipesYA < BirdPosY + BirdHeight and
        Pipe3AHeight + PipesYA > BirdPosY then
          
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
      if pipe3X < BirdPosX + BirdWidth and
        pipe3X + PipesWidth > BirdPosX and
        Pipe3YB < BirdPosY + BirdHeight and
        Pipe3BHeight + Pipe3YB > BirdPosY then
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
     
     -- Colider Pipe 4
      if pipe4X < BirdPosX + BirdWidth and
        pipe4X + PipesWidth > BirdPosX and
        PipesYA < BirdPosY + BirdHeight and
        Pipe4AHeight + PipesYA > BirdPosY then
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
          
        end
     
      if pipe4X < BirdPosX + BirdWidth and
        pipe4X + PipesWidth > BirdPosX and
        Pipe4YB < BirdPosY + BirdHeight and
        Pipe4BHeight + Pipe4YB > BirdPosY then
          
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
          
        end
     
     
      -- Colider Pipe 5
      if pipe5X < BirdPosX + BirdWidth and
        pipe5X + PipesWidth > BirdPosX and
        PipesYA < BirdPosY + BirdHeight and
        Pipe5Height + PipesYA > BirdPosY then
          
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
            win = true
            
        end
        
        
     -- Collider Background
    if 0 < BirdPosX + BirdWidth and
            0 + 915 > BirdPosX and
            550 < BirdPosY + BirdHeight and
            60 + 550 > BirdPosY then
            
            Dead:play()
            BirdPosY = WindowWidth / 4
            pipe1X = WindowWidth - 55
            pipe2X = WindowWidth - 55 + 300
            pipe3X = WindowWidth - 55 + 600
            pipe4X = WindowWidth - 55 + 900
            pipe5X = WindowWidth - 55 + 5000
            gravity = 512
     
    end
     
     -- Bird Update
      gravity = gravity + 500 * dt
      BirdPosY = BirdPosY + gravity * dt
        if gravity > 0 then
        BirdSprite = BirdDown
        end
    end

end

function love.keypressed(key)
   
  if key == "p" then
     
     if inPause == true then
      inPause = false
    else
      inPause = true
      end
   end
   
  if key == "escape" and inGame == false then
          love.event.quit()
     end
   
  if key == "escape" then
     
     inGame = false
     
   else
      inGame = true
   end

   
  if BirdPosY > 0 then
    gravity = -200
    Jump:play()
    BirdSprite = BirdUp
    end
    
  if win == true then
     
     inGame = false
     win = false
     
  end
    
end



function love.draw()
  
  -- Ground
  love.graphics.setColor(.85, .85, .55, 1)
  love.graphics.rectangle("fill", 0, 550, 915,60)
  love.graphics.setColor(.45, .75, .18, 1)
  love.graphics.rectangle("fill", 0, 540, 915,15)
  
  
  love.graphics.setColor(.20, 1, 0, 1)
  
  -- Pipe 1 
  love.graphics.rectangle("fill", pipe1X, PipesYA, PipesWidth, Pipe1AHeight)
  love.graphics.rectangle("fill", pipe1X, Pipe1YB, PipesWidth, Pipe1BHeight)
  
  -- Pipe 2
  love.graphics.rectangle("fill", pipe2X, PipesYA, PipesWidth, Pipe2AHeight)
  love.graphics.rectangle("fill", pipe2X, Pipe2YB, PipesWidth, Pipe2BHeight)
  
  -- Pipe 3
  love.graphics.rectangle("fill", pipe3X, PipesYA, PipesWidth, Pipe3AHeight)
  love.graphics.rectangle("fill", pipe3X, Pipe3YB, PipesWidth, Pipe3BHeight)
  
  -- Pipe 4
  love.graphics.rectangle("fill", pipe4X, PipesYA, PipesWidth, Pipe4AHeight)
  love.graphics.rectangle("fill", pipe4X, Pipe4YB, PipesWidth, Pipe4BHeight)
  
  -- Pipe 5
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.rectangle("fill", pipe5X, PipesYA, PipesWidth, Pipe5Height)
  
  -- Bird
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.draw(BirdSprite, BirdPosX,BirdPosY )
  --love.graphics.rectangle("fill", BirdPosX, BirdPosY, BirdWidth, BirdHeight)
  
  
  if win == true and inGame == true and inPause == false then
    
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(Win, 150,150 )
    
  end
  
  if inPause == true and inGame == true and win == false then 
    
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(Pause, 150,150 )
  end
  
  if inGame == false then
    
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(Menu, -100, 0)
    
  end
  
  
end
