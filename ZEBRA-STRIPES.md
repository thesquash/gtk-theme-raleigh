# A Notice About Zebra Stripes, What They Are, and How to Get Them

In GTK+ 2, many themes (certainly Raleigh) drew the rows of tree views and
other lists in alternating background colors, when instructed to by the
application.  These so-called "zebra stripes" were useful for lists with
many columns of data, since the alternately-colored lines guided the user's
eye as they moved from one column to the next.

Let me show you what I mean by zebra stripes.  The following is a screenshot
of a GTK+ 2 application with the original Raleigh theme:

<img src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/screenshots/GTK-2-Zebra-Stripes.png"/>

Notice how odd-numbered rows are colored slightly differently from
even-numbered rows.

## The Problem

Unfortunately, tree views and lists are not drawn in GTK+ 3 the same way as
they were drawn in GTK+ 2 -- the mechanism changed, and (in my opinion) the
GTK+ 3 way is horribly broken.  Officially, there is no way to replicate the
zebra stripes as shown above in a GTK+ 3 application.

On top of that, applications no longer can signal to the theme that they want
a specific list to be "zebra-striped" -- the method to signal such has been
"deprecated" in GTK+ 3, which means that its use is discouraged -- and ever
since the deprecation of that method, the method has been outright broken,
too.  So even if applications hinted at which lists they want zebra-striped,
Gtk-Theme-Raleigh still wouldn't pick up on the message, and the theme would
still have no clue as to which lists to zebra-stripe.

If the first hurdle discussed were overcome, it would be possible to simply
theme all lists and tree views with zebra stripes.  However, zebra stripes
are not always appropriate (at least in my opinion).  The following image, of
the side pane of a GTK+ 3 file manager (Caja), illustrates my point.  Are
zebra stripes really appropriate to have here?

<img src="https://raw.githubusercontent.com/thesquash/gtk-theme-raleigh/master/screenshots/Caja-Sidebar-with-Zebra-Stripes.png"/>

## The Solution

Fortunately, there is a solution to this problem.  Some months ago, I
contributed a GTK patch to the [`gtk3-classic`](https://github.com/lah7/gtk3-classic)
project, that adds markers known as "style classes" to each cell in a list /
tree view before the theme draws the cell.  These extra style classes provide
hints to the theme about whether the cell is part of an odd- or even-numbered
row, and whether the cell is part of the column by which the list is sorted.
The theme can then use this extra information to color the cell appropriately
and thus display zebra stripes.

There are only two problems with this approach.  The first problem is that
this means that, if you want zebra stripes, you need to install the special
patched version of GTK+ 3 provided by
[`gtk3-classic`](https://github.com/lah7/gtk3-classic).  That might entail
compiling the code yourself.  (According to the maintainer of the project,
`gtk3-classic` is available for several Linux distributions pre-compiled,
which means you might not need to compile it yourself.)

**TIP:**  If you install `gtk3-classic`, you will probably need to log out
of your desktop and then log back in before switching to Gtk-Theme-Raleigh.
Otherwise, the zebra stripes may not appear immediately after installing
`gtk3-classic`.

The other problem is that, once again, Gtk-Theme-Raleigh doesn't know which
lists to zebra-stripe.  Right now, I implement a compromise:
Gtk-Theme-Raleigh only themes the tree views of select file managers --
currently, the GTK+ file chooser dialog, Caja (MATE), Nemo (Cinnamon), and
Thunar (XFCE).  All other tree views lack zebra stripes.

## In the Future

I plan to submit a revision of my original patch to `gtk3-classic`, that marks
list cells with yet another style class.  If this style class is present, it
means the list view has column headings (the gray buttons above the list that
label each column).  If this style class is present, then it's probably a
safe bet that it would be appropriate to zebra-stripe the list in question.

**Rationale**:  I've noticed that most GTK+ 2 applications (that I've
seen) that draw column headings above a list, also request for that same list
to be zebra-striped.  This makes sense because normally, if a list has only
one or two columns, the list probably is not very wide, column heading buttons
aren't needed (their primary purpose is actually to select by which column the
list is sorted), and thus one's eye doesn't need zebra stripes to follow the
row from one column to another.  Heck, if the list has only one column (like
the Caja side pane as shown above), you don't even *need* to look at a second
column -- you can't!

## In Summary

Zebra striping, believe it or not, is controversial.  Some people couldn't
care less about them.  Others believe zebra stripes are essential.
(Full disclosure:  I personally don't care for zebra stripes, though I'll
admit that they can be useful when they are present.)  GTK+ 3 doesn't make
it easy to display zebra stripes, although an unofficial means to display
them exists, in the form of the patches from the
[`gtk3-classic`](https://github.com/lah7/gtk3-classic) project.  If there
is a pre-built version of that project available for your distribution, then
installation is simple.  If not, then installation will most likely involve
compiling software yourself, which is not the most trivial task.

In the end, the choice is with you.  If you absolutely must have zebra
stripes, Gtk-Theme-Raleigh has (currently limited) support for zebra stripes
just waiting for you to use, and once you install `gtk3-classic` (and log
out and log back in), you should have zebra stripes in your applications.
If you don't care enough about the issue, then by all means, don't bother
installing `gtk3-classic`.  Gtk-Theme-Raleigh will look and perform just
fine without the optional dependency for zebra stripes.  You'll still be
getting a far more authentic experience from this theme than from pretty
much any other GTK+ 3 theme on the Internet.

---

Thank you for taking the time to read this.
