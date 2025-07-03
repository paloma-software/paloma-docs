# Website Integration Guide for the Paloma Widget

These are the generic steps for installing the Paloma Widget on your website.

Getting the Widget operational on your website is divided into a few parts below. Before getting started, a few prerequisites.

## Prerequisites

### Access to your website

You'll need to know how to login to the backend of your website to make changes. You will need the basic knowledge of how your website works, and how to make changes to it.

Prefer to let us handle it? Let us know, we can do that. [Book a meeting with us](https://cal.com/paloma-bob)

### Design the changes

You will need to know how you would like your website to change. Some best practices to consider:

- The widget should be integrated in a page location that is a natural onramp for Event Inquiry. Ideally if you already have a section for Events or Private Parties, that is a natural place to put a button that will open the widget. It shouldn't be too forward facing such that it is clicked on frequently by folks not interested in an event, and also should not be too hidden that it cannot be found.

Does any of this sound daunting? [Book a meeting with us](https://cal.com/paloma-bob), we'd be happy to walk through it with you together!

## Part 1 - Get the Snippet

The main thing you need handy is the link to your widget. We may have already suppied this to you, and if so you can skip ahead.

1. Login to the Paloma Vendor interface in your browser of choice: https://app.palomaparties.com/ using your dashboard email address (contact us if you're not sure what this is).
1. Click **Settings** at the top.
1. Click on the Venue or Business you're working with right now.
1. Click on the **Links and Installation** submenu (at the left, or on the top if on mobile)
1. Scroll to the **Adding your Widget to your Website** section and click on **Self Installation**.
1. Click on the **Copy** button in the **Widget Code Snippet** section, and paste the content somewhere you can retrieve it later.

## Part 2 - Installing the Snippet

The snippet should be added to all pages you would like to present the widget can access it. This typically means adding it to a global section of your website, but if it will only be present on a single page, then it need only be installed on that page.

This will look a bit different on all platforms, you should be able to adapt to one of the following, and can always reach out to us for help.

### General steps

1. Locate the closing body tag of the page
2. Paste the snippet into the page, just before the closing body tag.
3. Save the page.

### Platform Specific Guides

[Shopify](/install/shopify.md)

[Wordpress](/install/wordpress-elementor.md)

## Part 3 - Adding a Link or Button to Open the Widget

The final step involves editing pages on your website such that your customers can open the widget and begin the inquiry process.

1. While logged in to the backend of your web site, navigate to edit the page that you would like to change.
1. To add a link in to launch the widget, you can use the following custom code block (as would be done in Squarespace)

```html
<p>
  Interested in hosting an event at Aurora Manor?
  <a href="javascript:void(0);" id="palconToggle">Plan your Event</a>
</p>
```

If the above does not work, you can try #! for the href:

```html
<a href="#!" id="palconToggle">Plan your Event</a>
```

If your web platform doesn't allow you to edit the `id`, you can use try following method:

```html
<a
  href="javascript:void(0);"
  onclick="window.dispatchEvent(new Event('palconToggleEvent'))"
  >Plan your Event</a
>
```

And if editing the `href` is not possible, the following snippet should do the trick.

```html
<a
  href="#"
  onclick="event.preventDefault();window.dispatchEvent(new Event('palconToggleEvent'))"
  >Plan your Event</a
>
```

Alternatively and possibly simpler, you can add the `palconTrigger` class to any element. Doing so will mean when that element is clicked, the widget is engaged:

```html
<div class="palconTrigger">Start Event Intake!</div>
```

## Part 4 - Testing

Refresh your site, and test it out!

This all could be streamlined for each platform we support - your feedback is incredibly valuable, so if you have any issues or feedback at all, don't hesitate to reach out at [contact@palomaparties.com](mailto:contact@palomaparties.com?subject=Question%20from%20Paloma%20Docs%20site) or [Book a meeting with us](https://cal.com/paloma-bob).
