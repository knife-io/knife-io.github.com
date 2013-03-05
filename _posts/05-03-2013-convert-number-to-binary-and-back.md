---
layout: post
title: "Convert number to binary and back."
permalink: post/05-03-2013-convert-number-to-binary-and-back.md 
comments: true
published: true
author: Toon Ketels
tags:
 - javascript
---

To convert a number to its binary equivalant use the toString method. Pass 2 to convert it to base 2.

    var n = 1263;
    var b = n.toString(2);

    // b is now a the string with binary numbers.
    // b == "10011101111"


To convert the binary string 10011101111 to its decimal equivelant do the following.

    // Convert it to an array
    var ar = b.split('');

    // ar is now the array:
    // ar == ["1", "0", "0", "1", "1", "1", "0", "1", "1", "1", "1"]

    // Map the following function to each value of the array
    var new_r = ar.map(function(val, index, ar) {
      var index_from_right = ar.length -1 - index;
      return +val * Math.pow(2, index_from_right); 
    });

    // new_r is the array:
    // [1024, 0, 0, 128, 64, 32, 0, 8, 4, 2, 1]

    // Reduce to the final number
    var result = r.reduce(function(acc, val, index, ar) { 
      return acc + val; 
    });

    // result == 1263

We can also just drop the map function and put all the logic in the reducer to result
in this very short form:

    var result = b.split('').reduce(function(acc, val, index, ar) {
      return acc + (+val * Math.pow(2, ar.length -1 - index));
    }, 0);