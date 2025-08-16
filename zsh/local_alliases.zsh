alias hyprconf="vim ~/.config/hypr/hyprland.conf"
alias hyprbind="vim ~/.config/hypr/hyprBindings.conf"
alias kittyconf="vim ~/.config/kitty/kitty.conf"


# VPN
# to view server options sudo (or become root su --login) ls /etc/wireguard
# if internet seems to be down on stop the dns in /etc/resolv.conf needs to
# be reset. us-den-wg-203 has an example of how to fix that eventually will
# be added to the rest. 
vpnServer="us-den-wg-"
vpnNum=203
alias startvpn="sudo wg-quick up $vpnServer$vpnNum"
alias stopvpn="sudo wg-quick down $vpnServer$vpnNum"
alias editvpn="sudo vim /etc/wireguard/$vpnServer$vpnNum.conf"

