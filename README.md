# misc-config
General provisioning instructions. Consider turning into a `setup.sh` script.

Linux
-----
1. Copy `.bashrc`, `.bash_aliases` and `.gitconfig` files from this repo
2. Get [Dracula terminal theme](https://draculatheme.com/gnome-terminal)
3. Get VS Code and turn [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) on
4. Get [GNOME Tweaks tool and Dash-to-Panel extension](https://addictivetips.com/ubuntu-linux-tips/use-dash-panel-to-make-gnome-shell-look-like-windows)
5. For work, follow [devops VM guide](http://git.bms.nuvation.com/bms07/bms07-devops/-/blob/master/README.md)
    - Using SDI's new salt-and-pepper approach, can define own 'personal state' to apply and automate steps 2-4

macOS
-----
1. Install [iTerm2](https://iterm2.com/). Download [color scheme files](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes) of interest (e.g. Dracula) and see [_Activating theme_](https://draculatheme.com/iterm) section to install.

2. Install [Oh-My-Zsh](https://ohmyz.sh/). Also the following add-ons in `~/.oh-my-zsh/custom`
   - In `./plugins` download [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh). The latter must be last in `plugins` list.
   - In `./themes` download [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

3. Copy `.zshrc` config file from this repo. Might need to change home directory name i.e. `oswinrodrigues`

4. Install [Homebrew](https://brew.sh/). Then, using this, install:
   - `python3` (includes `pip3`) _if not already included_
   - `tmux`

5. Install the following apps for work use:
   - VS Code and turn Settings Sync on
     - Run `ssh-copy-id orodrigues@pingu` to simplify _Remote - SSH_ session setup. This works only if `~/.ssh/id_rsa.pub` exists. If not, first run `ssh-keygen` with all the default responses.
   - Microsoft Teams and Remote Desktop
     - At time of writing, RDP's M1-compatible release was _not_ the (red) one on the App Store. It was a (blue) Beta on their website. As well Teams was Rosetta-only.
   - [Tunnelblick](https://tunnelblick.net/downloads.html). And `.ovpn` [config file](https://nuvation.sharepoint.com/:u:/r/allnuvation/it/Shared%20Documents/NuvationVPN/wdc_installers_configs/wdcfw-UDP4-1194-config.ovpn?csf=1&web=1&e=zAzebl)
     - Ensure this is the unified config file i.e. with the certificate and key pasted inside (open with text editor to verify), and **not** the one alongside `.crt` and `.key` files. In other words, choose `wdcfw-UDP4-1194-config.ovpn` and not `wdcfw-UDP4-1194.ovpn`.
     - After importing config, under `Settings` on right, change `OpenVPN version` from `Default (2.4.9 - OpenSSL v1.1.1k)` to `Latest (2.5.0 - OpenSSL v1.1.1k)`. If options are greyed out, quit and restart app.
     - When hit `Connect` and entering credentials, save to Keychain. Then in `System Preferences` > `Users & Groups` > `Login Items`, add Tunnelblick. This allows for a 1-click VPN connection.

6. Install the follows apps for personal use:
   - [Battery Monitor: Health, Info](https://apps.apple.com/ca/app/battery-monitor-health-info/id836505650) app. Set notifications for 20% and 80% charge levels.
   - Logitech [Options](https://www.logitech.com/en-ca/product/options) (for K380 keyboard). Mainly for Mission Control and Launchpad keys.
   - Notion
   - Firefox (Sync)
   - Spotify (Rosetta-only)
   - Adobe Acrobat Reader DC (Rosetta-only)
   - Zoom, Discord (Rosetta-only), Kakao Talk (Untested), Signal (Rosetta-only), Telegram
   - (Also maybe setup [these settings](https://macpaw.com/how-to/fix-mac-running-slow) for better performance)

6. The following apps are non-essential, for #pandemicfunzies:
   - Among Us (iOS app... thank you, M1)
   - Snap Camera (rad filters for Zoom)
