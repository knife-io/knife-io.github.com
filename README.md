The knife.io website.
===================

## Posts
There's a script to set up a new post `./_newpost.sh`.
Posts live in `/posts` dir.

I added basic author info but we can use that in Liquid to add an automated link and avatar. (todo)

## Pages
All pages used to live in `/p` directory and are basically full copies. I abstracted them and now they run through post layout (for now) with some extra config entries. (comments disabled, etc.)

There's a style guide and a dummy page at the moment.
Check `p/styleguide` and `p/about`.

## Plugins
Removed raw_text and prism plugin because github pages cant use these due to security.

## To do
- check code in post (gist / normal) without prism
- improve author / meta info
- add a bit more layout
- add disqus shortcode (disqus currently in maintenance)
- abstract page layout to have less duplication