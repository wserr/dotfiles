# Append "$1" to $PATH when not already in.
# This function API is accessible to scripts in /etc/profile.d
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

# Home folder for config
export XDG_CONFIG_HOME='/home/willem/system_repos/dotfiles'
export XDG_DATA_HOME='/home/willem/system_repos/dotfiles'
export ZDOTDIR='/home/willem/system_repos/dotfiles/zshell'


# Change to name of main disk
export DISK_NAME=rpool\/USERDATA\/willem_g5fpb0

# Append our default paths
append_path '/home/willem/system_repos/dotfiles/scripts'
append_path '/usr/local/sbin'
append_path '/usr/local/bin'
append_path '/usr/bin'
append_path '/home/willem/system_repos/dotfiles/JetBrains/Toolbox/scripts'

# Force PATH to be environment
export PATH

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Unload our profile API functions
unset -f append_path

# Source global bash config, when interactive but not posix or sh mode
if test "$BASH" &&\
   test "$PS1" &&\
   test -z "$POSIXLY_CORRECT" &&\
   test "${0#-}" != sh &&\
   test -r /etc/bash.bashrc
then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx
fi
