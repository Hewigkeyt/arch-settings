#exec startdde
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#mpv ~/Music/startup.ogg &
#xscreensaver -no-splash &
exec gnome-session
