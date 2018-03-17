// PACKAGE JSON
{
  "name": "elm-app-sandbox",
  "version": "1.0.0",
  "main": "index.js",
  "repository": "https://github.com/maudnals/elm-app-sandbox.git",
  "author": "maudnals",
  "license": "MIT",
  "dependencies": {
    *css-loader interprets @import and url() as import/require() instead, and will resolve them. To go along with it, good loaders for requiring your assets are the file-loader and the url-loader which you should specify in your config. REMEMBER THE LOADERS ARE APPLIED LAST TO FIRST IN THE ORDRE THEY ARE LISTED*
    "css-loader": "^0.28.11",
    *"elm-webpack-loader: Webpack loader for the Elm programming language.*
    "elm-webpack-loader": "^4.5.0",
    *file-loader: instructs webpack to emit the required object as file and to return its public URL*
    "file-loader": "^1.1.11",
    "json-server": "^0.12.1",
    *style-loader: adds CSS to the DOM by injecting a style tag*
    "style-loader": "^0.20.3",
    *url loader: same a sfile loader: works like the file-loader, but can return a DataURL if the file is smaller than a byte limit. (Data URLs, URLs prefixed with the data: scheme, allow content creators to embed small files inline in documents)*
    "url-loader": "^1.0.1",
    *webpack*
    "webpack": "^4.1.1",
    *development server that provides live reloading. Should be used for development only.*
    "webpack-dev-server": "^3.1.1"
  }
}

// WEBPACK CONFIG
*that's a regexp. Anything that containes node_modules in its path will be excluded* 
exclude: /node_modules/

