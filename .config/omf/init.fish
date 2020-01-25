set -xg theme_display_sudo_user yes
set -xg theme_display_user ssh
set -xg theme_display_hostname ssh
set -xg theme_show_exit_status yes
set -xg fish_prompt_pwd_dir_length 0

# Initialize yubikey
yubi

# Set golang path
set -xg GOPATH $HOME/Documents/Workbench/go
