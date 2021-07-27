<img alt="MATE 1.24.1 desktop with Gtk-Theme-Raleigh" src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/Gtk-Theme-Raleigh.png"/>

# Gtk-Theme-Raleigh

Gtk-Theme-Raleigh is a re-creation of the original Raleigh theme, Red Hat's
(and later the GTK Project's) default theme for GTK+ 2.  Gtk-Theme-Raleigh
brings a unique early-2000's experience to a modern GTK+ 3-based desktop.
The primary focus of this theme is to authentically replicate the look-and-feel
of the Raleigh theme as it appeared between the years 2001-2004, or replicate
the appearance as authentically as possible.

There are other Raleigh theme look-alikes in existence, one of which was a
fallback theme for GTK+ 3 until GTK+ 3.20.  The main difference between
Gtk-Theme-Raleigh and other, similar themes is that this theme tries to mimic
the original Raleigh *to the letter*, even appearing indistinguishable from
the original in as many places as possible.  By contrast, most themes designed
for GTK+ 3 or GTK 4 which are "look-alikes" of other classic GTK themes have
many artistic touches of the look-alike theme's own creator; as such, many
"look-alike" themes actually look very different from the themes they are
trying to emulate.

**Note:**  Gtk-Theme-Raleigh is experimental and does not look perfect yet.
I am currently also working on several other similar projects, one of which
would potentially render this theme unnecessary.  I believe the best solution
lies in the other project I am working on; but for as long as I haven't
completed my other project, I shall improve this theme and accept other's
improvements to this theme as well.  In other words, don't expect all
applications to look perfect as of yet!

## Installation

Once you've cloned this repository, the installation is a simple matter of
copying files, so I think it's pointless to include a build system at this
time.

Clone this repository to a directory on your local system, then `cd` into
the local copy.  If you want to install the theme for your own user only
(and not for everyone on the system), run:

```
mkdir -p ~/.themes/Raleigh
cp gtk-3.0 gtk-assets ~/.themes/Raleigh
```

To install the theme system-wide:

```
mkdir -p /usr/share/themes/Raleigh
cp gtk-3.0 gtk-assets /usr/share/themes/Raleigh
```
