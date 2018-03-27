# twobanjos-middleman

The Two Banjos At Once web site, freed of PHP, re-expressed through [Middleman](). Three static pages.

## Installation

````
$ gem install middleman

$ git clone ....

$ bundle
````

## Starting the server<a name="server"></a>

````
$ middleman server
````

## Running the tests

````
$ rake
````

````
$ casperjs test spec/features/responsive_spec.js
````

## Building a production version

````
$ middleman build
````

## Generating the style documentation

* Install [StyleDocco](http://jacobrask.github.io/styledocco/) as a Node package:

````
$ npm install -fg styledocco
````

* Generate the documentation from stylesheet comments.

````
$ styledocco -n twobanjos source/stylesheets
````

View the style guide at `docs/index.html`.

## Acknowledgements

- Much, much appreciation to [Simon Rice](https://github.com/simonrice), for the [Middleman-RSpec](https://github.com/simonrice/middleman-rspec) example.
- The great advice on setting up a typographic grid by [Joshua Hibbert](http://joshnh.com/2011/08/03/how-to-set-up-a-baseline-grid/)
- Inspiration from David Kadavy, [Design for Hackers](http://designforhackers.com/)
- Helpful design patterns from [The A11Y Project](http://a11yproject.com/)
- The fascinating [CSS easings tool](http://easings.net/) by Andrey Sitnik
- [Responsive Web Design Test Automation](http://thejackalofjavascript.com/responsive-web-design-test-automation/) by Arvind Ravulavaru
