---
layout: post
title: "Tools used to create data visualization"
permalink: post/22-12-2012-tools-used-create-data-visualization
comments: true
published: true
author: Toon Ketels
tags:
 - visualization
---

We used a couple of tools to create our data visualization for [Apps for Antwerp](http://knife-io.github.com/Apps-for-Antwerp/).

## d3js

[D3js](http://d3js.org/) played a mayor role. It is a JavaScript data visualization library with just the right amount of functionality to create visualizations. It does not try to do too much by providing configurable charts but rather gives you the building blocks necessary to create them.


## Jade

Although we did not write much html, the couple of lines we wrote were generated using [jade](http://jade-lang.com/). I love the DRY, indentation based syntax of jade.


## Sass

Css is generated with [sass](http://sass-lang.com/). I prefer the sass syntax over scss as it's more concise.


## Make

Both jade and sass needs to be compiled into html and css. We can do so via the command line. To speed up the process, we created a makefile with different commands in it the compile both at the same time. In the future, we might use [grunt](http://gruntjs.com/) instead of [make](http://en.wikipedia.org/wiki/Make_(software)) though.


## Foundation

[Foundation](http://foundation.zurb.com/) is used for layout, typography and navigational elements. It's a front-end framework using sass.


## jQuery

Although we did not make much use of it, Foundation requires [jQuery](http://jquery.com/) for some functionality so we included it. D3js also offers selector and animator functions and they are more appropriate for data visualizations.


## node-csv

Preparing the data is an important step in creating data visualizations. We used [node-csv](http://www.adaltas.com/projects/node-csv/) in JavaScript scripts executed from the command line to parse and create csv files. This allowed us to combine several csv files and filter out data.


## node.js express server

The final result is hosted as [gh-pages](http://pages.github.com/) on Github. During the development we needed a server to serve the csv file. [Express node.js server](http://expressjs.com/) was used for that reason. A simpler solution would be to use [node static](https://github.com/cloudhead/node-static) or [apache](http://httpd.apache.org/) to serve the files.