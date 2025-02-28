# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile import extension
import time

datee = " ♥"+str(int((time.time() - 1665259365) // 86400 +1))+"♥ "
mod = "mod4"
terminal = "kitty"

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "Tab", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "Left", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "Right", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "Left", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "Right", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "Down", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "Up", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # 
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "f", lazy.spawn("nautilus"), desc="Launch Files"),
    Key([mod], "space", lazy.spawn("rofi -show run"), desc="Launch rofi launcher"),
    Key([mod], "b", lazy.spawn("microsoft-edge"), desc="Launch browser"),
    Key([mod, "shift"], "l", lazy.spawn("gnome-screensaver-command --lock"), desc="Lock using gnome-screensaver"),
    Key([mod, "shift"], "f", lazy.window.toggle_fullscreen(), desc="toggle fullscreen"),
    Key([mod], "m", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod, "shift"], "s", lazy.spawn('shutter -s -e')),
    Key([],"XF86AudioLowerVolume",lazy.widget["volume"].decrease_vol()),
    Key([],"XF86AudioRaiseVolume",lazy.widget["volume"].increase_vol()),
    Key([],"XF86AudioMute",lazy.widget["volume"].mute()),
    Key([],"XF86AudioNext",lazy.spawn("playerctl next")),
    Key([],"XF86AudioPrev",lazy.spawn("playerctl previous")),
    Key([],"XF86AudioPlay",lazy.spawn("playerctl play-pause")),
    Key([mod], 'd', lazy.run_extension(extension.DmenuRun(
        dmenu_prompt=">",
        dmenu_font="JetBrainsMono Nerd Font Mono",
        background="#15181a",
        foreground="#00ff00",
        selected_background="#079822",
        selected_foreground="#fff",
        dmenu_height=24,  # Only supported by some dmenu forks
    ))),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Floating windows
            Key([mod], "t",
                lazy.window.toggle_floating(),
                desc="Toggle floating",
            ),  
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

def init_layout_theme():
    return{
        "margin":0,
        "border_width":1,
        "border_focus":"#555555",
        "border_normal":"#191919"
    }

layout_theme = init_layout_theme()

def init_layout_theme2():
    return{
        "margin":20,
        "border_width":1,
        "border_focus":"#555555",
        "border_normal":"#191919"
    }

layout_theme2 = init_layout_theme2()


layouts = [
    layout.Columns(**layout_theme),
    layout.Max(),
    layout.Columns(**layout_theme2),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]



widget_defaults = dict(
    font="JetBrainsMono Nerd Font Mono",
    fontsize=13,
    padding=10,
    foreground="#c4c4b5"
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
    	wallpaper='~/Developer/myconfs/art-wallpapers/the-cleveland-museum-of-art-YwFyMpLzgyk-unsplash.jpg',
    	wallpaper_mode='fill',
        bottom=bar.Bar(
            
            [
                widget.GroupBox(highlight_method='line', borderwidth=3, padding=3, this_current_screen_border="#9c64fe", disable_drag=True, highlight_color=["#282828","#343832"], urgent_border="#fb4934", urgent_text="#f3005f", foreground="#1E313D", hide_unused=True),
                widget.CurrentLayout(),
                widget.Prompt(font="JetBrainsMono Nerd Font Mono"),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ff00ff"),
                    },
                    font="JetBrainsMono Nerd Font Mono",
                    name_transform=lambda name: name.upper(),
                ),
                widget.WindowName(max_chars=50,empty_group_string='Mint'),
                widget.Spacer(),
                widget.Clock(format=datee + " %a, %b %d, %Y | %I:%M %p"),
                widget.Spacer(),
                # widget.Battery(),
                widget.Memory(measure_mem='G', format='Mem: {MemUsed: .1f} GB'),
                widget.Volume(fmt='Vol: {}', update_interval=0.01),
                # widget.Systray(),
                # 🟡
                # 🔴
                widget.QuickExit(fontsize=10, default_text='Logout', countdown_format='{}', padding=2),
                widget.LaunchBar(fontsize=12, text_only=True, padding=2, progs=[('⏻︎', 'systemctl suspend', 'Suspend system using Systemd')]),
            ],
            24,
            border_width=[0, 0, 0, 0], 
            border_color=["7c6f64", "7c6f64", "7c6f64", "7c6f64"], 
            background="191919",
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ], **layout_theme
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
