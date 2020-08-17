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

-- ukuran window tampilan game (dalam pixel)
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
    Digunakan untuk menggambar window ke screen
]]
function love.draw()
	-- https://love2d.org/wiki/love.graphics.printf
    love.graphics.printf(
        'Hello Pong!',          -- teks yang ditampilkan
        0,                      -- posisi di sumbu X (0 krn akan diletakkan di tengah berdasarkan width-nya)
        WINDOW_HEIGHT / 2 - 6,  -- posisi di sumbu Y (setengah layar)
        WINDOW_WIDTH,           -- jumlah pixel ke tengah (the entire screen here) 
        'center')               -- alignment mode, bisa diisi 'center', 'left', atau 'right'
end
