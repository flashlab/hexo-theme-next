hexo.markedRenderer = {
    init: function() {
        // console.log("hexo.markedRenderer init!");
        // Called before rendering 
    },
    complete: function(html) {
        // console.log("hexo.markedRenderer complete!");
        // Called after rendered
        
        // Deal with html here ...
        
        return html;
    },
    image: function(href, title, alt) {
        // Default method can be accessed via:
        // this._super.heading(text, level)
        var orimg = '<img data-original="' + href;
        if (title) orimg += '" title="' + title;
        if (alt) orimg += '" alt="' + alt;
        return orimg + '">';
    }
};