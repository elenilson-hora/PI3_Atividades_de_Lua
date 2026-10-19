function love.load()
    Object = require "classic"
    require "rectangle"

    r = {}
    n = 0

    for i = 1, 5, 1 do
        n = n + 10
        r[i] = Rectangle(math.random(1, 400), math.random(1, 400), n, n, math.random(-200, 200), math.random(-200, 200 ))
    end
    --print(r1.test, r2.test)
end

function love.update(dt)
    for i = 1, 5, 1 do
       r[i]:update(dt)
    end
end

function love.draw()
    for i = 1, 5 do
      r[i]:draw()  
    end
end
