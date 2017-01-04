export default {
    from: 'src',
    to: 'dist',
    // files extension
    // ext: 'tag',
    // html parser
    // template: 'html',
    // js parser
    type: 'babel',
    // css parser
    // style: 'bar',
    parsers: {
        // html: {
        //   foo: (html, opts, url) => require('foo').compile(html),
        // },
        // css: {
        //   bar: (tagName, css, opts, url) => require('bar').compile(css),
        // },
        // js: {
        //   baz: (js, opts, url) => require('baz').compile(js),
        // },
    },
    // special options that may be used to extend
    // the default riot parsers options
    parserOptions: {
        js: {},
        template: {},
        style: {}
    }
};