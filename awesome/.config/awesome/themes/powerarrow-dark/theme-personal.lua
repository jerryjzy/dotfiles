
--[[

     Powerarrow Dark Awesome WM theme
     github.com/copycat-killer

--]]

local gears = require("gears")
local lain  = require("lain")
local redflat = require("redflat")
local awful = require("awful")
local wibox = require("wibox")
-- local os    = { getenv = os.getenv }
local os    = os
local env   = require("env-config")
local cairo = require("lgi").cairo

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-dark"
theme.wallpaper                                 = theme.dir .. "/wall.png"
-- theme.font                                      = "xos4 Terminus 12"
theme.font                                      = "Iosevka Term 12"
theme.fg_normal                                 = "#DDDDFF"
theme.fg_focus                                  = "#20577A"
-- theme.fg_focus                                  = "#4F9F7F"
-- theme.fg_focus                                  = "#EA6F81"
theme.fg_urgent                                 = "#DD9393"
theme.bg_normal                                 = "#1A1A1A"
theme.bg_focus                                  = "#414141"
theme.bg_urgent                                 = "#5A1A1A"
theme.border_width                              = 4
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = theme.fg_focus
theme.border_marked                             = "#CC9393"
theme.wibar_border_width                        = 4
theme.wibar_opacity                             = .9
theme.wibar_border_color                        = theme.bg_normal
theme.tasklist_bg_focus                         = theme.bg_normal
theme.tasklist_fg_focus                         = theme.fg_focus
theme.tasklist_shape                            = gears.shape.octogon
theme.tasklist_shape_border_width               = 1
theme.tasklist_spacing                          = 2
theme.tasklist_shape_border_width_focus         = 2
theme.tasklist_shape_border_color               = theme.bg_focus
theme.tasklist_shape_border_color_focus         = theme.fg_focus
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.titlebar_bg_focus                         = theme.fg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = 20
theme.menu_width                                = 180
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.taglist_shape_border_width               = 1
theme.taglist_shape_border_width_focus         = 2
theme.taglist_fg_focus                         = theme.fg_normal
theme.taglist_bg_focus                         = theme.fg_focus
theme.taglist_shape_border_color               = theme.bg_focus
theme.taglist_shape_border_color_focus         = theme.fg_focus
-- theme.notification_margin                      = 50
theme.notification_shape = gears.shape.octogon
theme.notification_border_color                = theme.fg_focus
theme.notification_font                         = "Iosevka Term 20"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.useless_gap                               = 2
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +' %a %b %d %R '", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font("Iosevka Term Bold 12", markup(theme.fg_normal, stdout)))
    end
)

local clockwidget = wibox.container.background(clock, theme.fg_focus)

-- Calendar
-- theme.cal = lain.widget.calendar({
--     cal = "/usr/bin/cal --color=always",
--     attach_to = { clockwidget },
--     notification_preset = {
--         font = "Iosevka Term 11",
--         fg   = theme.fg_normal,
--         bg   = theme.bg_normal
--     }
-- })
-- local cal = wibox.widget.calendar.month(os.date("*t"))
-- local cal = wibox.widget.calendar.month ({
--     date         = os.date('*t'),
    -- font         = 'Monospace 8',
    -- spacing      = 2,
    -- week_numbers = false,
    -- start_sunday = false,
    -- widget       = wibox.widget.calendar.year
-- })

-- MPD
local musicplr = awful.util.terminal .. " -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(awful.util.table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    awful.button({ }, 1, function ()
        awful.spawn.with_shell("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        awful.spawn.with_shell("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup("#EA6F81", artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
theme.fs = lain.widget.fs({
    options  = "--exclude-type=tmpfs",
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "xos4 Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now.used .. "% "))
    end
})

-- Internal Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    batteries = {"BAT0", "BAT1"},
    settings = function()
        if bat_now.n_status[1] ~= "N/A" then
            if bat_now.ac_status == 1 then
                widget:set_markup(markup.font(theme.font, " AC "))
                baticon:set_image(theme.widget_ac)
                return
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, " " .. bat_now.n_perc[1] .. "% "))
        else
            widget:set_markup(markup.font(theme.font, " AC "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- External Battery
local baticon_ext = wibox.widget.imagebox(theme.widget_battery)
local bat_ext = lain.widget.bat({
    batteries = {"BAT0", "BAT1"},
    settings = function()
        if bat_now.n_status[2] ~= "N/A" then
            if bat_now.ac_status == 1 then
                widget:set_markup(markup.font(theme.font, " AC "))
                baticon_ext:set_image(theme.widget_ac)
                return
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon_ext:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon_ext:set_image(theme.widget_battery_low)
            else
                baticon_ext:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, " " .. bat_now.n_perc[2] .. "% "))
        else
            widget:set_markup(markup.font(theme.font, " N/A"))
            baticon_ext:set_image(theme.widget_ac)
        end
    end
})

-- PulseAudio volume (based on multicolor theme)
local volicon = wibox.widget.imagebox(theme.widget_vol)

local voldevice = wibox.widget{
    markup = 'N/A',
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox,
}

theme.volume = lain.widget.pulsebar({
    width = 120,
    colors = {
        background = theme.bg_focus,
        mute = theme.fg_urgent,
        unmute = theme.fg_focus
    },
    settings = function()
        voldevice:set_markup(volume_now.device)
        if volume_now.muted == "yes" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.left) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.left) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

    end
})


local pawidget = wibox.widget {
    theme.volume.bar,
    voldevice,
    layout = wibox.layout.flex.vertical
}

pawidget:buttons(awful.util.table.join(
    awful.button({}, 1, function() -- left click
        awful.spawn("pavucontrol")
    end),
    awful.button({}, 2, function() -- middle click
        awful.spawn("amixer -q -D pulse sset Master 100%")
        theme.volume.update()
    end),
    awful.button({}, 3, function() -- right click
        awful.spawn("amixer -q -D pulse set Master 1+ toggle")
        theme.volume.update()
    end),
    awful.button({}, 4, function() -- scroll up
        awful.spawn("amixer -q -D pulse sset Master 5%+")
        theme.volume.update()
    end),
    awful.button({}, 5, function() -- scroll down
        awful.spawn("amixer -q -D pulse sset Master 5%-")
        theme.volume.update()
    end)
))

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup("#7AC82E", " " .. net_now.received)
                          .. " " ..
                          markup("#46A8C3", " " .. net_now.sent .. " ")))
    end
})

-- FCITX Input method
local fcitx = wibox.widget({
    markup = '拼',
    align = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
})

-- Separators
local spr     = wibox.widget.textbox('|')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

local tasklist = {}

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal ,argname = "--name %s"})

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, false)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
    -- tasklist[s] = redflat.widget.tasklist({ screen = s, buttons = tasklist.buttons }, tasklist.style)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 20, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
            s.mytaglist,
            wibox.container.background(s.mylayoutbox, theme.bg_focus),
            s.mypromptbox,
            -- spr,
            wibox.widget.textbox(' '),
        },
        s.mytasklist, -- Middle widget,
        -- {
        --     layout = wibox.layout.align.horizontal,
        --     expand = "outside",
        --     nil,
        --     -- s.mytasklist, -- Middle widget
        --     -- env.wrapper(tasklist[s], "tasklist")
        -- },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            -- spr,
            -- arrl_ld,
            -- arrl_dl,
            spr,
            -- fsicon,
            -- theme.fs.widget,
            --  arrl_ld,
            --  wibox.container.background(mailicon, theme.bg_focus),
            -- wibox.container.background(mail.widget, theme.bg_focus),
            -- arrl_dl,
            memicon,
            mem.widget,
            -- arrl_ld,
            -- spr,
            cpuicon,
            cpu.widget,
            -- wibox.container.background(cpuicon, theme.bg_focus),
            -- wibox.container.background(cpu.widget, theme.bg_focus),
            -- arrl_dl,
            -- spr,
            tempicon,
            temp.widget,
            -- arrl_ld,
            -- spr,
            neticon,
            net.widget,
            -- wibox.container.background(neticon, theme.bg_focus),
            -- wibox.container.background(net.widget, theme.bg_focus),
            -- fcitx,
            -- arrl_dl,
            spr,
            volicon,
            -- theme.volume.bar,
            pawidget,
            -- arrl_ld,
            spr,
            baticon,
            bat.widget,
            baticon_ext,
            bat_ext.widget,
--             wibox.container.background(baticon, theme.bg_focus),
--             wibox.container.background(bat.widget, theme.bg_focus),
--             wibox.container.background(baticon_ext, theme.bg_focus),
--             wibox.container.background(bat_ext.widget, theme.bg_focus),
            -- arrl_dl,
            -- spr,
            clockwidget
        },
    }
end

return theme
