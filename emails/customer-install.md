Hey Folks!

Excited to see you this morning and get your website updated.

I'll be running through a series of steps to make edits to your shopify website, if anyone wants a preview you can see the rough steps here:

https://paloma-software.github.io/paloma-docs/install/shopify.md

Here is your install snippet:

```
<script>(function(window,document){if(window.palcon){console.error("palcon embed already included");return}window.palcon={_c:[]};["init"].forEach((me=>window.palcon[me]=function(){window.palcon._c.push([me,arguments])}));var elt=document.createElement("script");elt.type="module";elt.async=true;elt.src=`https://widget.app.palomaparties.com/shim.js`;var before=document.getElementsByTagName("script")[0];before.parentNode.insertBefore(elt,before)})(window,document);
palcon.init("79be5912-276e-4e8e-a281-3203c1e4e2d1");</script>
```

Here is a sample button you can use (may need to be adjusted):

```
<a class="palconTrigger button button--primary" href="javascript:void(0);">Plan your Event</a>
```
