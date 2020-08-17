--[[
    Remake Game Pong 
    
    pong-0
    "The Day-0 Update"

    -- Program Utama --

    Penulis kode : Colton Ogden
    cogden@cs50.harvard.edu
    
    diedit oleh : Ardhi Wijayanto
    ardhi.wijayanto[at]staff.uns.ac.id

    Originally programmed by Atari in 1972. Features two
    paddles, controlled by players, with the goal of getting
    the ball past your opponent's edge. First to 10 points wins.

    This version is built to more closely resemble the NES than
    the original Pong machines or the Atari 2600 in terms of
    resolution, though in widescreen (16:9) so it looks nicer on 
    modern systems.
]]

-- push adalah library yang memungkinkan untuk menggambar tampilan game dalam resolusi virtual
-- tanpa tergantung pada ukuran layar monitor
-- ini dapat mempercantik tampilan
-- https://github.com/Ulydev/push
push = require 'push'

-- ukuran window tampilan window game (dalam pixel)
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

-- ukuran resolusi virtual
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

--[[
    Fungsi ini dijalankan pertama kali ketika game dimulai, untuk menginisialisasi game
]]
function love.load()
    -- menggunakan nearest-neighbor filtering pada upscaling and downscaling untuk mencegah blur pada teks dan grafis
    love.graphics.setDefaultFilter('nearest', 'nearest')

    -- initialize our virtual resolution, which will be rendered within our
    -- actual window no matter its dimensions; replaces our love.window.setMode call
    -- from the last example
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Keyboard handling, called by LÖVE2D each frame; 
    passes in the key we pressed so we can access.
]]
function love.keypressed(key)
    -- keys can be accessed by string name
    if key == 'escape' then
        -- function LÖVE gives us to terminate application
        love.event.quit()
    end
end

--[[
    Digunakan untuk menggambar window ke screen
]]
function love.draw()
    -- begin rendering at virtual resolution
    push:apply('start')

    -- condensed onto one line from last example
    -- note we are now using virtual width and height now for text placement
    love.graphics.printf('Hello Pong!', 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')

    -- end rendering at virtual resolution
    push:apply('end')
end
