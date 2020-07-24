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

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--[[
    Fungsi ini dijalankan pertama kali ketika game dimulai, untuk menginisialisasi game
]]
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Digunakan untuk menggambar ke screen
]]
function love.draw()
    love.graphics.printf(
        'Hello Pong!',          -- text to render
        0,                      -- starting X (0 since we're going to center it based on width)
        WINDOW_HEIGHT / 2 - 6,  -- starting Y (halfway down the screen)
        WINDOW_WIDTH,           -- number of pixels to center within (the entire screen here)
        'center')               -- alignment mode, can be 'center', 'left', or 'right'
end
