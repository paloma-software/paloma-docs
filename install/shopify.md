## Installing the Paloma Widget on a Shopify Site

Shopify uses liquid templates to build it's sites. A root page in the template will need to be edited to add the script, and then a custom button or link needs to be added to make it work.

# Add the Snippet

1. Login to your Shopify backend
1. On the menu at the left, find Online Store, and click on Themes
1. In the Themes section, click the "Customize" button on the current theme
1. In the ... in the top left, click it, and chose "Edit Code"
1. Choose the `theme.liquid`, and edit that file. Right before the closing `</body>` tag, add the snippet we've provided you.

1. Hit Save in the top left corner.

# Add a Button

The script is now added, now you need to add a button.

1. Go into the theme, and find the "Edit Code" option
1. Find the liquid file that corresponds to the page you want to edit
1. The simplest option is to just add a new button in wherever makes sense. The below code is what an example primary button might look like that will trigger the widget to open:

```
<a class="palconTrigger button button--primary" href="javascript:void(0);">Plan your Event</a>
```

# Advanced

If the above simple button doesn't work, there are infinite other options. Below are just a couple.

## Edit an Existing Button

1. Any button on the page that is there during initial page load with the class `palconTrigger` will open the widget.
1. On the `image-banner.liquid` page, there is configuration for two buttons on the main hero section. Add a class named `palconTrigger` to the class list of the button to whichver of the two buttons you prefer, and when clicked that button will trigger the paloma widget.

## Add a link in the Navigation Menu

1. For links in the header menu, need to add on into Navigation, and change the link to #. Then find the corresponding id of the header item, and add the following script to the main script you added back in the install portion:

```
togglePaloma = () => { const iframe = document.getElementById("palcon-iframe"); if (iframe) iframe.style.display = iframe.style.display === "none" ? "block" : "none"; };
document.getElementById('HeaderMenu-plan-your-event').addEventListener('click', function() { togglePaloma(); });
```
