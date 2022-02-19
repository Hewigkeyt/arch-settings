#exec startdde
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
