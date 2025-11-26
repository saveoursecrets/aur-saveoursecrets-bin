# Build

```
rm -f saveoursecrets.tgz && makepkg --check -f
```

If that works you can install with:

```
makepkg -si
```

Verify the installation:

```
pacman -Ql saveoursecrets-bin
```

And then to uninstall:

```
sudo pacman -R saveoursecrets-bin
```

To publish, update `.SRCINFO`:

```
makepkg --printsrcinfo > .SRCINFO
```

And then commit your changes and run `./aur-push.sh`.

If ssh fails due to public key denied run: `ssh aur-sos` and enter the private key password and try again.

Afterwards wait about 10 minutes and then check the version:

```
curl -s "https://aur.archlinux.org/rpc/?v=5&type=info&arg=saveoursecrets-bin" | jq '.results[0].Version'
```

Once the version is updated it can be installed or updated with:

```
paru -S saveoursecrets-bin
```
