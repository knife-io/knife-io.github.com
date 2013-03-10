---
layout: post
title: "Using Grunt: first steps"
permalink: post/10-03-2013-using-grunt-first-steps
comments: true
published: true
author: Anthony Ringoet
tags:
 - grunt
 - tools
 - automation
---

So, what is this thing called Grunt and how can it help you?

From the [grunt documentation](http://gruntjs.com/):
> “A task-based command line build tool for JavaScript projects”

This means one simple thing. Stop repeating yourself and let Grunt do stuff for you. The [Grunt ecosystem][http://gruntjs.com/plugins] is constantly growing and being improved by open source contributors.


## Plugins

You can find plugins for almost everything. Examples of tasks could be:

- compile [CoffeeScript](https://npmjs.org/package/grunt-contrib-coffee), [Jade](ttps://npmjs.org/package/grunt-contrib-jade), [Sass](https://npmjs.org/package/grunt-contrib-sass), [Stylus](https://npmjs.org/package/grunt-contrib-stylus), [Mustache](https://npmjs.org/package/grunt-mustache),…
- [optimize](https://npmjs.org/package/grunt-imagemin) images
- [run jshint](https://npmjs.org/package/grunt-jshint) on your code
- [uglify](https://npmjs.org/package/grunt-contrib-uglify) your code

This allows you to optimize your workflow to the limit.
If you save a file you can have your tests run or your code minified.
This means you can stop worrying about this stuff. You don't need to issue commands in the command line constantly. Just code and let Grunt work for you.

If you think about it Grunt is like [Codekit](http://incident57.com/codekit/) but with nothing but a CLI. And cross-platform out of the box. (+ probably a lot more extensible)

## First use
Grunt is able to set up a project for you by scaffolding a template based on your input in the commandline. This is nice but not needed for this simple demo. I want to show you how Grunt can help you in all your projects by adding just two files!

Grunt only needs two files to work in your project directory: ```package.json``` and ```Gruntfile```.
I'm not going to talk about this in detail. [Read up](http://gruntjs.com/getting-started) if you want to know more.



