x = 100
y = 100
vector2 = {0, 0}
speed = 0
s = false
time = 0
n = 0
h = true

function love.update(dt)

    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        vector2[1] = 100
        vector2[2] = 0
    elseif love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        vector2[1] = -100
        vector2[2] = 0
    end

    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        vector2[2] = -100
        vector2[1] = 0
    elseif love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        vector2[2] = 100
        vector2[1] = 0
    end

    x = x + vector2[1] * speed * dt
    y = y + vector2[2] * speed * dt

    speed = speed + 0.015

    time = time + dt

    if love.keyboard.isDown("space") and s == true then
        x = 100
        y = 100
        h = true
    end

end

function love.draw()

    if x > 600 or x < 0 or y < 0 or y > 400 then
        love.graphics.print("Game over!", 360 , 280)
        if h then
            n = time
            h = false
        end

        love.graphics.print({"Seu tempo foi: " .. n .. "s"}, 360 , 300)
        speed = 0
        s = true
        
        time = 0
    else
        love.graphics.rectangle("line",x ,y , 200, 200)
        s = false
    end

    love.graphics.print({time .."s"}, 50 , 60)

end
