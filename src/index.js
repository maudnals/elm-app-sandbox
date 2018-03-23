'use strict';
// index.js is the entry point that Webpack will look for when creating a bundle


// require('ace-css/css/ace.css');
// require('font-awesome/css/font-awesome.css');

// why does this add the index.html to dist?? isn't index.js supposed to be the bundle??
require('./index.html');


// noParse: /\.elm$/, ??? why? shouldn't we parse them really?

// Loaders in an array are evaluated from right to left.
// or, in the list, from last to first (bottom to top)
// loaders: ['loaderOne', 'loaderTwo', 'loaderThree']
// means exactlly the same as...
// loaderOne(loaderTwo(loaderThree(somefile.css)))


// by convention, call it Main
//http://faq.elm-community.org/#does-the-main-module-file-have-to-be-named-mainelm
let Elm = require('./Main.elm');


var mountNode = document.getElementById('main');
// node we'll mount the app on

// HYPERAPP IS A TODO!!!!!!!!
// ALSO REMEMBER, NEVER MOUNT ON BODY


// why can we use DOM document here???


