function yubi --description "Start the GPG daemon for Yubikey interfacing."
  gpg-connect-agent --quiet /bye
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end

function reset-yubi --description "Force reset both the GPG and SSH agents - useful when Yubikey access is stuck"
  killall ssh-agent gpg-agent > /dev/null 2>&1
  yubi
end
