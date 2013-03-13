---
layout: post
title: "Learning Grunt: first steps"
permalink: post/13-03-2013-learning-grunt-first-steps
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

This means one simple thing. Stop repeating yourself and let Grunt do stuff for you. The [Grunt ecosystem](http://gruntjs.com/plugins) is constantly growing and being improved by open source contributors.


## Plugins

You can find plugins for almost everything. Examples of tasks could be:

- compile [CoffeeScript](https://npmjs.org/package/grunt-contrib-coffee), [Jade](ttps://npmjs.org/package/grunt-contrib-jade), [Sass](https://npmjs.org/package/grunt-contrib-sass), [Stylus](https://npmjs.org/package/grunt-contrib-stylus), [Mustache](https://npmjs.org/package/grunt-mustache),…
- [optimize](https://npmjs.org/package/grunt-imagemin) images
- [run jshint](https://npmjs.org/package/grunt-jshint) on your code
- [uglify](https://npmjs.org/package/grunt-contrib-uglify) your code

This allows you to optimize your workflow to the limit.
If you save a file you can have your tests run or your code minified.
This means you can stop worrying about this stuff. You don't need to issue commands in the command line constantly. Just code and _let Grunt work for you_.

If you think about it Grunt is like [Codekit](http://incident57.com/codekit/) but with nothing but a CLI.
It's cross-platform out of the box, free as in [MIT licensed](https://github.com/gruntjs/grunt/blob/master/LICENSE-MIT) and extensible as hell.

## First use
Grunt is able to set up a project for you by scaffolding a template based on your input in the commandline. This is nice but not needed for this simple demo. I want to show you how Grunt can help you in all your projects by adding just two files!

Grunt only needs two files to work in your project directory: ```package.json``` and ```Gruntfile```.
I'm not going to talk about this in detail. [Read up](http://gruntjs.com/getting-started) if you want to know more.



## Demo setup
I made a [demo repository](https://github.com/knife-io/grunt-demo) that shows Grunt usage in it's most basic form with only one task. This makes it easy to understand what's actually going on.

    module.exports = function(grunt){
      grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        // set up first custom task: concat
        // the options depend on the task you want to use
        concat: {
          options: {
            // string to put between concatenated files
            separator: ';'
          },
          dist: {
            // files to concat together
            src: ['js/*.js'],
            // location of result file
            dest: 'jsmin/<%= pkg.name %>.js'
          }
        }
      });

      // load contrib task files
      // note: these should be installed from npm
      grunt.loadNpmTasks('grunt-contrib-concat');
      // register what to do when using the default 'grunt' command
      grunt.registerTask('default', ['concat']);
    };

See the working version on [GitHub](http://github.com/add-url).

This will concate all `.js` files inside the `/js` folder and concatenate them to `/jsmin` in the filename of your choice.

The only thing you need to do is run `grunt` inside your project.

    $ grunt



## Multiple tasks

Next step is to show that multiple tasks are possible.
[A few commits later](https://github.com/knife-io/grunt-demo/commit/568c704fad895f97dc92f9d06df72180289d5843) you can see I added concatenation for the css files and the concatenated javascript gets uglified.

Final gruntfile looks like this:

    module.exports = function(grunt){
      grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        // set up first custom task: concat
        // the options depend on the task you want to use
        concat: {
          options: {
            // string to put between concatenated files
            // can be necessary when processing minified js code
            //separator: ';'
          },
          js: {
            // files to concat together
            src: ['js/*.js'],
            // location of result file
            dest: 'jsmin/<%= pkg.name %>.min.js'
          },
          css: {
            // files to concat together
            src: ['css/*.css'],
            // location of result file
            dest: 'cssmin/all.min.css'
          }
        },
        uglify: {
          options: {
            banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
          },
          build: {
            src: 'jsmin/<%= pkg.name %>.min.js',
            dest: 'jsmin/<%= pkg.name %>.min.js'
          }
        }
      });

      // load contrib task files
      // note: these should be installed from npm
      grunt.loadNpmTasks('grunt-contrib-concat');
      grunt.loadNpmTasks('grunt-contrib-uglify');

      // a custom task
      // no configuration for this task, it just logs stuff
      grunt.registerTask('default', 'Log stuff.', function() {
          grunt.log.write('I am a custom task...').ok();
        });
      // register what to do when using the default 'grunt' command
      grunt.registerTask('default', ['concat', 'uglify']);
    };

I ran this file through [Docco](http://jashkenas.github.com/docco/) which generated a documentation file based on the inline comments. You could even let [grunt-docco plugin](https://github.com/DavidSouther/grunt-docco) do this for you.






### todo: using grunt ui in devtools ?
https://github.com/vladikoff/grunt-devtools