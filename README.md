# misc-config
General provisioning instructions. Consider turning into a `setup.sh` script.

Linux
-----
1. Copy `.bashrc` and `.bash_aliases` config files from this repo
2. Get [Dracula terminal theme](https://draculatheme.com/gnome-terminal)
3. Get VS Code and turn [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) on
4. Get [GNOME Tweaks tool and Dash-to-Panel extension](https://addictivetips.com/ubuntu-linux-tips/use-dash-panel-to-make-gnome-shell-look-like-windows)
5. For work, follow [devops VM guide](http://git.bms.nuvation.com/bms07/bms07-devops/-/blob/master/README.md)
    - Run `sudo apt-get install openssh-server` in order to SSH into the VM from local machine over VPN
    - Run `sudo apt install cifs-utils` in order to then run `nuvmnt` alias command (see `.bash_aliases`)

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
   - OpenVPN. Run `brew install openvpn` and `sudo pip3 install pexpect pyotp`. Then get the `.ovpn` file from SDI. Then get the `nuvpn_tunnel_magic.py` [script](http://git.bms.nuvation.com/-/snippets/55). (Might need to change home directory name i.e. `oswinrodrigues`). Finally run `nuvpn` alias.
     - Alternatively, the OpenVPN Connect v3 GUI. Follow [devops VPN guide](http://git.bms.nuvation.com/bms07/bms-device/-/wikis/Infrastructure/VPN#macos)

6. Install the follows apps for personal use:
   - Cloud Battery
   - Logitech [Options](https://www.logitech.com/en-ca/product/options) (for K380 keyboard)
   - Firefox (Sync)
   - Spotify (Rosetta-only)
   - Adobe Acrobat Reader DC (Rosetta-only)
   - Zoom, Discord (Rosetta-only), Kakao Talk (Untested)
   - (Microsoft Word, Excel)
   - (Also maybe setup [these settings](https://macpaw.com/how-to/fix-mac-running-slow) for better performance)

6. The following apps are non-essential, for #pandemicfunzies:
   - Among Us (iOS app... thank you, M1)
   - Snap Camera (rad filters for Zoom)
