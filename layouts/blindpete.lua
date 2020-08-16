require "keybow"
require "snippets/win_snippets"
-- Standard numberpad with light feedback --

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 0,72,186)
    keybow.set_pixel(1, 0,0,0)
    keybow.set_pixel(2, 255,0,0)
    keybow.set_pixel(3, 0,0,0)
    keybow.set_pixel(4, 0,0,0)
    keybow.set_pixel(5, 255, 0, 255)
    keybow.set_pixel(6, 0,0,0)
    keybow.set_pixel(7, 0,0,0)
    keybow.set_pixel(8, 0,255,0)
    keybow.set_pixel(9, 0,0,0)
    keybow.set_pixel(10, 0,0,0)
    keybow.set_pixel(11, 255, 0, 255)
end

-- Start Windows Terminal as Admin
function handle_key_00(pressed)
    -- Nesting quotes 😒
    if pressed then
        keybow.set_pixel(0, 255,0,0)
        win_snippets.run([[pwsh.exe -noni -C Start-Process -FilePath wt -ArgumentList -M -Verb Runas]],pressed)
        keybow.set_pixel(0, 0,72,186)
    else
        keybow.set_pixel(0, 0,72,186)
    end
end

function handle_key_01(pressed)
end

function handle_key_03(pressed)
end

function handle_key_04(pressed)
end

function handle_key_06(pressed)
end

function handle_key_07(pressed)
end

function handle_key_09(pressed)
end

function handle_key_10(pressed)
end

-- Media
function handle_key_11(pressed)
    keybow.set_media_key(keybow.MEDIA_VOL_DOWN, pressed)
end

function handle_key_08(pressed)
    keybow.set_media_key(keybow.MEDIA_PLAYPAUSE, pressed)
end

function handle_key_05(pressed)
    keybow.set_media_key(keybow.MEDIA_VOL_UP, pressed)
end

function handle_key_02(pressed)
    keybow.set_media_key(keybow.MEDIA_STOP, pressed)
end

-- End Media