## Numix
##### A modern flat theme with a combination of light and dark elements. It supports GNOME, Unity, Xfce and Openbox.
[![By The Numix Project](https://img.shields.io/badge/By-The%20Numix%20Project-f0544c.svg?style=flat-square)](https://numixproject.org/) &nbsp;[![Circle CI](https://img.shields.io/circleci/project/numixproject/numix-gtk-theme/master.svg?circle-token=b14acf911433d315298235b0c2fbf7b2670a92a8&maxAge=3600&style=flat-square)](https://circleci.com/gh/numixproject/numix-gtk-theme/tree/master) &nbsp;[![GitHub release](https://img.shields.io/github/release/numixproject/numix-gtk-theme.svg?maxAge=3600&style=flat-square)](https://github.com/numixproject/numix-gtk-theme/releases/latest) &nbsp;![Supports GTK+ 3.18](https://img.shields.io/badge/GTK%2B-3.18-4a90d9.svg?style=flat-square) &nbsp;![Supports GTK+ 3.24](https://img.shields.io/badge/GTK%2B-3.24-4a90d9.svg?style=flat-square)

## Build It

First, you need to compile the theme using the [Sass](http://sass-lang.com/) compiler.

|Distro|Commands|
|:----:|:----:|
|[Archlinux]|`sudo pacman -S glib2 gdk-pixbuf2 ruby-sass inkscape`|
|[Opensuse]|`sudo zypper install glib2-devel gdk-pixbuf-devel`|
|[Fedora]|`sudo dnf install glib2-devel gdk-pixbuf2-devel`|
|[Debian] &nbsp;[Ubuntu]|`sudo apt-get install ruby-sass libglib2.0-dev libgdk-pixbuf2.0-dev libxml2-utils`|

After installing all the dependencies, change to the cloned directory and, run the following in Terminal,

```sh
sudo make THEME= "*.colors" install
```
To set the theme in Xfce, run the following commands in Terminal,

```sh
xfconf-query -c xsettings -p /Net/ThemeName -s "Numix"
xfconf-query -c xfwm4 -p /general/theme -s "Numix"
```

### For contributors
Start by reviewing the [guidelines for contributing](https://github.com/numixproject/numix-gtk-theme/blob/master/.github/CONTRIBUTING.md).

#### For developers
If you want to hack on the theme, make sure you have the `inotifywait` command available, which is used for watching and automatically building the files.

To start watching for changes, run the following,

```sh
make watch
```

If you change any assets, you'll need to regenerate the `gtk.gresource.xml` and `gtk.gresource` files. You can use [grrr](https://github.com/satya164/grrr) to do it easily.

### Requirements

GTK+ 3.18 or above

Murrine theme engine

### Code and license

Report bugs or contribute at [GitHub](https://github.com/numixproject/numix-gtk-theme)

License: GPL-3.0+

[antergos]: https://antergos.com/distro-logos/logo-square26x26.png "antergos"
[arch]: https://antergos.com/distro-logos/archlogo26x26.png "arch"
[fedora]: https://antergos.com/distro-logos/fedora-logo.png "fedora"
[openSUSE]: https://antergos.com/distro-logos/Geeko-button-bling7.png "openSUSE"
[ubuntu]: https://antergos.com/distro-logos/ubuntu_orange_hex.png "ubuntu"
[debian]: https://antergos.com/distro-logos/openlogo-nd-25.png "debian"

