local mainMod = "SUPER"

-- Utility
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("hyprshutdown"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl switchxkblayout rdr-crush-80 next"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/hypr/scripts/smart_wofi.sh --show drun"))

-- Programs
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("alacritty" .. ' --working-directory=' .. '"$("$HOME"/.config/hypr/scripts/cwd.sh)"'))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("firejail wine 'C:\\Program Files\\Arobas Music\\Guitar Pro 8\\GuitarPro.exe'; wineserver -k 15"))

-- Windows
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))
hl.bind(mainMod .. "+ V", hl.dsp.window.float({action = "toggle"}))
hl.bind(mainMod .. " + H", hl.dsp.focus({direction = "left"}))
hl.bind(mainMod .. " + J", hl.dsp.focus({direction = "down"}))
hl.bind(mainMod .. " + K", hl.dsp.focus({direction = "up"}))
hl.bind(mainMod .. " + L", hl.dsp.focus({direction = "right"}))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), {mouse = true})
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), {mouse = true})

-- Workspaces
for i = 1, 9 do
	local key = i
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({workspace = i}))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({workspace = i }))
end
