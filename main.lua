x = 100
y = 100
vector2 = {0, 0}


function love.update(dt)

    if love.keyboard.isDown("right") then
        vector2[1] = 100 * dt
        vector2[2] = 0
    elseif love.keyboard.isDown("left") then
        vector2[1] = -100 * dt
        vector2[2] = 0
    end

    if love.keyboard.isDown("up") then
        vector2[2] = -100 * dt
        vector2[1] = 0
    elseif love.keyboard.isDown("down") then
        vector2[2] = 100 * dt
        vector2[1] = 0
    end

    x = x + vector2[1]
    y = y + vector2[2]

    if love.keyboard.isDown("space") then
        x = 0
        y = 0
    end

end

function love.draw()

    if x > 600 or x < 0 or y < 0 or y > 400 then
        love.graphics.print("Game over!", 360 , 280)
    else
        love.graphics.rectangle("line",x ,y , 200, 200)
    end

end
