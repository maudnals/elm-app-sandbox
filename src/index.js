'use strict';
// index.js is the entry point that Webpack will look for when creating a bundle


require('ace-css/css/ace.css');
require('font-awesome/css/font-awesome.css');

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
let ElmMain = require('./Main.elm');


var mountNode = document.getElementById('main');
// node to mount our Elm app on (dom node that will hold our app)
// just like react!! and hyperapp!!!
// how do we know which docuemnt we're referring to here???
// well, this index.js will be transformed into app.js, whoch is itself included as script in index.html. simple!

// HYPERAPP IS A TODO!!!!!!!!
// ALSO REMEMBER, NEVER MOUNT ON BODY


var myApp = ElmMain.Main.embed(mountNode);


// https://guide.elm-lang.org/interop/javascript.html


// { model | players = response } ????


// todo review logic flow
