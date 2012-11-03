#!/bin/sh

DATE=`date +"%d-%m-%Y"`
FILENAME="_posts/$DATE-CHANGETHIS.md"

echo '---
layout: post
title: "CHANGETHIS"
permalink: post/CHANGETHIS
comments: true
published: true
author: Knife
tags:
 - CHANGETHIS
---
' > $FILENAME

echo $FILENAME
