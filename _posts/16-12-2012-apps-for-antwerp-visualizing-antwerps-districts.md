---
layout: post
title: "Apps for Antwerp submisson: visualizing Antwerp's districts"
permalink: post/16-12-2012-apps-for-antwerp-visualizing-antwerps-districts
comments: true
published: true
author: Toon Ketels
tags:
 - visualization
 - d3
---
#{{page.title}}

We submitted a small data-visualization app for Antwerp's first [Apps for Antwerp](http://opendata.antwerpen.be/nieuws/apps-antwerp) event. A challenge for developers to come up with useful applications or visualizations using the city’s data.

Our app visualized Antwerp's nine districts on different parameters. We settled on a minimal donut chart, [see for yourself](http://knife-io.github.com/Apps-for-Antwerp/).

## A couple of principles that guided our design

### Incrementally display data

The visualization starts small with only a donut chart rolling out. By starting with a single item and incrementally adding items to the canvas one at a time, we guide the user's attention. The most important item is displayed first. Lesser items fade into the canvas later on.


### Display little information to encourage user exploration

When everything has been displayed on the screen, only a disc and a form is displayed... nothing happens, not much information is conveyed. We do this to encourage users to start clicking around and exploring the graph themselves.


### Remove all unnecessary information

Instead of using a map to display information, we chose a donut chart. This way, the user does not process unnecessary information like shape, location compared to other districts.

All information has been stripped and the user can only digest information we want them to process.


### Use movement to communicate change

By selecting different parameters, the area of a district will increase or decrease smoothly. We are hardwired to detect movement so it's easy to identify if something get's smaller or bigger.

And because the user selects the parameters to change herself, she can select from what to what the movement occurs.