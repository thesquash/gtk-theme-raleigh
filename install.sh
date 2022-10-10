#!/bin/bash

# A very simple script to install an icon and/or GTK+ theme globally (for use
# by all users on the system).
#
# This script was written by Gordon N. Squash for his Gtk-Theme-Raleigh set of
# themes, but may be used by others under the conditions of the GNU LGPL version
# 3 or (at your option) any later version of the LGPL.

# The command for copying files.
CP='cp -dR --preserve=timestamps,links'

# The themes to install.
GTK_THEMES="Raleigh Raleigh-Dark"
ICON_THEMES="Raleigh Raleigh-Dark"

function fail()
{
	echo "The theme installation has failed for some reason."
	exit 1
}

# If the user has set $PREFIX in the environment, then install icons to
# $PREFIX/share/icons instead of /usr/share/icons.
if [ -z "$PREFIX" ]; then
	PREFIX="/usr"
fi

# If the user has 'gtk-update-icon-cache' installed, then use it.
HAVE_GTK_UPDATE_ICON_CACHE=$(gtk-update-icon-cache --help 2>/dev/null && echo 1)

mkdir -p "${PREFIX}/share/themes"
for GTK_THEME in $GTK_THEMES; do
	echo "Installing GTK+ theme \"${GTK_THEME}\"..."
	${CP} "themes/${GTK_THEME}" "${PREFIX}/share/themes" || fail
	chown -R 0:0 "${PREFIX}/share/themes/${GTK_THEME}"
	chmod -R u=rwX,go=rX "${PREFIX}/share/themes/${GTK_THEME}"
done

mkdir -p "${PREFIX}/share/icons"
for ICON_THEME in $ICON_THEMES; do
	echo "Installing icon theme \"${ICON_THEME}\"..."
	${CP} "icons/${ICON_THEME}" "${PREFIX}/share/icons" || fail
	chown -R 0:0 "${PREFIX}/share/themes/${ICON_THEME}"
	chmod -R u=rwX,go=rX "${PREFIX}/share/themes/${ICON_THEME}"

	if [ -n "$HAVE_GTK_UPDATE_ICON_CACHE" ]; then
		echo "Creating icon cache for icon theme \"${ICON_THEME}\"..."
		gtk-update-icon-cache -fit \
		 "${PREFIX}/share/icons/${ICON_THEME}" || fail
	fi
done

echo "The theme was successfully installed."
