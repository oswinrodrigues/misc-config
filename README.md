# misc-config
General provisioning instructions. Consider turning into a `setup.sh` script.

Linux
-----
1. Copy `.bashrc` and `.bash_aliases` config files from this repo
2. Get [Dracula terminal theme](https://draculatheme.com/gnome-terminal)
3. Get VS Code and turn [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) on
4. Get [GNOME Tweaks tool and Dash-to-Panel extension](https://addictivetips.com/ubuntu-linux-tips/use-dash-panel-to-make-gnome-shell-look-like-windows)
5. For work, follow [devops VM guide](http://git.bms.nuvation.com/bms07/bms07-devops/-/blob/master/README.md)

macOS
-----
1. Install [iTerm2](https://iterm2.com/) and [color schemes](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes) (e.g. Dracula)

2. Install [Oh-My-Zsh](https://ohmyz.sh/). Also the following add-ons in `~/.oh-my-zsh/custom`
   - In `./plugins` download [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
   - In `./themes` download [powerlevel10k](https://github.com/romkatv/powerlevel10k)

3. Copy `.zshrc` config file from this repo

4. Install [Homebrew](https://brew.sh/). Then, using this, install:
   - `python` (includes `pip`)
   - `tmux`

5. Install the following apps for work use:
   - VS Code and turn Settings Sync on
     - Run `ssh-copy-id orodrigues@pingu` to simplify _Remote - SSH_ session setup. This works only if `~/.ssh/id_rsa.pub` exists. If not, first run `ssh-keygen` with all the default responses.
   - Microsoft Teams and Remote Desktop
   - OpenVPN Connect v3. Follow [devops VPN guide](http://git.bms.nuvation.com/bms07/bms-device/-/wikis/Infrastructure/VPN#macos)
     - Alternatively, `brew install openvpn` and `sudo pip3 install pexpect pyotp` to then run the `nuvpn_tunnel_magic.py` [script](http://git.bms.nuvation.com/-/snippets/55)

6. Install the follows apps for personal use:
   - Chrome or Firefox
   - Spotify
   - Adobe Acrobat Reader DC
   - Zoom, Discord, Kakao Talk
   - Microsoft Word, Excel
   - (Also setup [these settings](https://macpaw.com/how-to/fix-mac-running-slow) for better performance)

6. The following apps are non-essential, for #pandemicfunzies:
   - BlueStacks (emulator for Among Us)
   - Snap Camera (rad filters for Zoom)
