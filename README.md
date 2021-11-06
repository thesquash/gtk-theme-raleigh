# Gtk-Theme-Raleigh:  Reviving An Era Gone By

## MATE (1.24.1):
<img alt="MATE 1.24.1 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-MATE-1-24.png"/>
<img alt="MATE 1.24.1 desktop with Gtk-Theme-Raleigh Dark theme" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-Dark-MATE-1-24.png"/>

## MATE (1.26.0):
<img alt="MATE 1.26.0 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-MATE-1-26.png"/>
<img alt="MATE 1.26.0 desktop with Gtk-Theme-Raleigh Dark theme" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-Dark-MATE-1-26.png"/>

## XFCE (4.17.0):
<img alt="XFCE 4.17.0 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-XFCE.png"/>

## Cinnamon (5.0.5):
<img alt="Cinnamon 5.0.5 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-Cinnamon.png"/>

## GNOME (40):
<img alt="GNOME 40 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Raleigh-GNOME-40.png"/>

Gtk-Theme-Raleigh is a re-creation of the original Raleigh theme, Red Hat's
(and later the GTK Project's) default theme for GTK+ 2.  Gtk-Theme-Raleigh
brings a unique early-2000's experience to a modern GTK+ 3-based desktop.
The primary focus of this theme is to authentically replicate the look-and-feel
of the Raleigh theme as it appeared between the years 2001-2004, or replicate
the appearance as authentically as possible.

There are other Raleigh theme look-alikes in existence, one of which was a
fallback theme for GTK+ 3 until GTK+ 3.24.  The main difference between
Gtk-Theme-Raleigh and other, similar themes is that this theme tries to mimic
the original Raleigh *to the letter*, even appearing indistinguishable from
the original in as many places as possible.  By contrast, most themes designed
for GTK+ 3 or GTK 4 which are "look-alikes" of other classic GTK themes have
many artistic touches of the look-alike theme's own creator; as such, many
"look-alike" themes actually look very different from the themes they are
trying to emulate.

## What's New?

The dark variant of the theme is available as a separate theme now,
so you can explicitly state that you want to use the theme `Raleigh-Dark`
instead of `Raleigh`, if you like dark themes everywhere.

For MATE and GNOME Flashback users, a Metacity / Marco theme has been designed
to look like the first theme ever used for Metacity.  This window border theme
is based on Atlanta and is also called `Raleigh` and `Raleigh-Dark`.

Several bug fixes have been applied to the theme, mostly regarding the dark
variant.

Theme package files, in addition to a new classic-GNOME-esque icon theme, have
been added to this package, thus completing the theme and making it easier to
use than ever (and more authentic too).  The icon theme is somewhat incomplete
as of yet, but should look presentable on at least a simple MATE desktop.

## Installation

Once you've cloned this repository, the installation is a simple matter of
copying files, so I think it's pointless to include a build system at this
time.

Clone this repository to a directory on your local system, then `cd` into
the local copy.  If you want to install the theme for your own user only
(and not for everyone on the system), run:

```
mkdir -p ~/.themes ~/.icons
cp -a themes/Raleigh themes/Raleigh-Dark ~/.themes
cp -a icons/Raleigh ~/.icons
```

**To install the theme system-wide:**

```
mkdir -p /usr/share/themes /usr/share/icons
sudo cp -a themes/Raleigh themes/Raleigh-Dark /usr/share/themes
sudo cp -a icons/Raleigh /usr/share/icons
```
