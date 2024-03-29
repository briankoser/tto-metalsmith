/* metalsmith and plugins */
var Metalsmith = require('metalsmith');
var assets = require('metalsmith-assets');
var collections = require('metalsmith-collections');
var define = require('metalsmith-define');
var drafts = require('metalsmith-drafts');
var excerpts = require('./custom_plugins/metalsmith-excerpts-fork');
var filepath = require('metalsmith-filepath');
var hyphenate = require('metalsmith-hyphenate');
var ignore = require('metalsmith-ignore');
var inplace = require('./custom_plugins/metalsmith-in-place-fork');
var layouts = require('metalsmith-layouts');
var markdown = require('./custom_plugins/metalsmith-markdown-fork');
var permalinks = require('metalsmith-permalinks');
var serve = require('metalsmith-serve');
var watch = require('metalsmith-watch');



/* main metalsmith function */
Metalsmith(__dirname)
    .source('src')
    .destination('build')
    
    /* define before inplace so inplace can use the globals */
    .use(define({
        development: false,
        cdnlocation: 'http://ttocdn.koser.us',
        sitelocation: 'http://tto.koser.us',
        sitename: 'Ten to One'
    }))
    
    /* drafts before collections so files are removed before being added to collection */
    .use(drafts())
    
    /* collections before inplace so we can loop over them in swig */
    /* collections before markdown so we can just get posts */
    .use(collections({
        episodes: {
            sortBy: 'pubdate',
            reverse: true
        }
    }))
    
    /* excerpts before inplace so we can use swig templates and data in excerpts */
    .use(excerpts())
    
    /* inplace before markdown so we can convert markdown in data after it's in the template */
    /* inplace before layouts because that's how it is in all examples */
    /* inplace before filepath so we can have location of generated pages */
    .use(inplace({
        engine: 'swig'
    }))
    
    /* markdown before hyphenate so we have HTML elements */
    .use(markdown({
        smartypants: false
    }))
    
    .use(hyphenate())
    
    .use(permalinks({
        relative: false
    }))
    
    /* filepath before layouts so we can use the location in our Open Graph metadata */
    .use(filepath({
        absolute: true,
        permalinks: true
    }))
    
    .use(layouts({
        engine: 'swig',
        default: 'default.swig',
        pattern: '**/*.html'
    }))
    
    .use(assets({
        source: './assets'
    }))
    
    .use(serve({
        http_error_files: {
            404: "/404.html"
        }
    }))
    
    .use(watch({
        livereload: true
    }))
    
    .build(function(err){
        if (err) throw err;
    });