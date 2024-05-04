#exec startdde
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

#mandatory for i3
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#mpv ~/Music/startup.ogg &
#xscreensaver -no-splash &
# exec gnome-session

exec i3
