![alt text](resources/readme-dotfiles.png)

### :octocat: Hello there!

Those are my arch dotfiles, hope you find something useful here.

![alt text](resources/readme-scripts.png)

### [WARNING 1]: Installation scripts are still work in progress. Use them at your own risk!!
### [WARNING 2]: These are my personal config files, executing these scripts will overwrite several files in your system, only execute these in case you have a backup of your files.

## Download
```
git clone --depth=1 https://github.com/christiantusset/dotfiles-arch.git ~/Documents/dotfiles-arch
```

## Executing the script
You can install one of them by running the setup executable.

**[WARNING]**: Support for Arch Linux based systems only (installation via pacman).

Installing necessary packages:

Use:

```shell
./setup.sh <ARG> 
```

where
```<ARG>```
may be:

```
all          - installs all at once: pacman packages, aur packages, xfce packages
pacman       - installs necessary packages from pacman
aur          - installs necessary packages from AUR and external sources
xfce         - installs necessary packages from XFCE Interface
```