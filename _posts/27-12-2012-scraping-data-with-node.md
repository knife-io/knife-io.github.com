---
layout: post
title: "Scraping data with node"
permalink: post/27-12-2012-scraping-data-with-node
comments: true
published: false
author: Anthony Ringoet
tags:
 - node
 - scraping
 - data
---

When planning out a data visualisation, 'good' data is essential. It can be hard to find quality datasets.
At the moment some governments are trying to open up their data to the public.

Good local examples of this are [Ghent](http://data.gent.be/) and [Antwerp](http://opendata.antwerpen.be/). Be sure to check out [Open Belgium](http://www.openbelgium.be/) as well.

Often times you will find the data you need on the web but you can't access it (programmatically). There's an easy way around this by writing a tiny script to scrape the data from the website and save it into any format you need. We'll do a quick tutorial on scraping some data with node.

## Let's get going
If you don't have Node on your system, [install](http://nodejs.org/) it right now.

What we're going to do is pretty straightforward:

- make http request to a page
- traverse the DOM to find what we need
- retrieve that info
- push to format we need

And done. That's not going to that hard, right!

We're going to scrape the [Hacker News](http://news.ycombinator.com/) frontpage for the topics and print them to our console output. But at that point you can store the data in an object and put it into any file / format you'd like. (csv, json,…)

## Utilities ##

I'll be using three [npm](https://npmjs.org/) modules in this script:

- [superagent](https://npmjs.org/package/superagent)
- [lodash](https://npmjs.org/package/lodash)
- [cheerio](https://npmjs.org/package/cheerio)

### superagent ###
An http request library with a fluid api. You don't explicitly need this but I like it. Try it.

### lodash ###
A replacement utility belt with performance wins for [underscore](http://underscorejs.org).
If you've never heard of lodash, go [watch](https://vimeo.com/44154599) this introduction and see for your self.

### cheerio ###
We need to traverse the DOM in the page we requested and everyone knows the jQuery API. Cheerio gives you this solid 'jQueryish' API.


## The code

### Define modules ###
    var request = require('superagent');
    var _ = require('lodash');
    var cheerio = require('cheerio');

This defines the npm modules we want to use (and how we're going to call them) in the rest of our script.

To get them from npm run ```npm install superagent lodash cheerio``` in the directory where your script is.





### Request ###
    request.get('http://news.ycombinator.com/', function (res){
      var html = res.text,
          $ = cheerio.load(html);
    });

Make the request with superagent, put resulting html in var and load this with cheerio so we can use it's sweet syntax later on.

### Loop! ###
      var index = 1;
      var items = $('.title a');
      _.each(items, function(item){
        if(index < 31){
          var result = index + '. ' + $(item).text();
          index++;
          console.log(result);
        }
      });

Start our visual index (printed to screen) with 1. Use lodash's ```_.each``` to loop over the dom elements we're looking for (items). Print them out every time we have an item. That's about it.

## Summary ##
This was easy, if you want more, you can [write your own command line tool](http://javascriptplayground.com/blog/2012/08/writing-a-command-line-node-tool) with node to check out Hacker News and open the url's in your browser.

<script src="https://gist.github.com/4388324.js"></script>