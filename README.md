# .dotfiles.duck.

## Why this???
This repository stores my dotfiles for Unix based systems (presently Linux and MacOS).

They're stored this way so that they can be easily and safely transported between the two systems. (Yes, I know Nix is available for MacOS, but this is waaaay less faff / I don't have time to write a load of derivations for home-manager)

In particular, `yadm`'s built-in encryption functionality comes in super handy here, letting me move the less secure keys and passwords around without having to make the repository private. (Secure applications, like SSH keys, are driven with a Yubikey)

## How to Deploy

First, make sure `yadm` is installed, e.g:

```
nix-env -iA nixos.yadm
apt install yadm
brew install yadm
```

Clone the repository to the home environment:

```
yadm clone git@github.com:duckfullstop/dotfiles.git
```

(a prompt will appear to run the bootstrap script, do this)

Then unlock the encrypted files with the following, using the secure passphrase (which you don't have):

```
yadm decrypt
```

## License
See the [LICENSE](LICENSE) (spoilers: it's MIT, go basically wild)