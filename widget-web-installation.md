# Integrating the Paloma Widget with your Website

Getting the Widget operational on your website is broken down into a few parts below. Before getting started, a few prerequisites.

## Prerequisites

### Access to your website

You'll need to know how to login to the backend of your website to make changes. You will need the basic knowledge of how your website works, and how to make changes to it

### Design the changes

You will need to know how you would like your website to change. Some best practices to consider:

- The widget should be integrated in a way / place that is a natural onramp for Event Inquiry. Ideally if you already have a section for Events or Private Parties, that is a natural place to put a button or link that will engage it. It shouldn't be too forward facing such that it is clicked on frequently by folks not interested in an event, and also should not be too hidden that it cannot be found.

Does any of this sound daunting? [Book a meeting with us](https://calendly.com/bob-gv_a), we'd be happy to walk through it with you together!

## Part 1 - Get the Snippet

The main thing you need handy is the link to your widget. If you already have that, you can skip ahead.

1. Login to the Paloma Vendor interface in your browser of choice: https://app.palomaparties.com/
1. Click **Businesses** at the top.
1. Click on the Venue or Business you're working with right now.
1. Click on the **Widget** submenu on the left (or top if on mobile)
1. Scroll down to the **Integration** section.
1. Click on the **Copy Website Snippet** button, and paste the content somewhere you can retrieve it later.

## Part 2 - Installing the Snippet

The snippet should be added to a global section of your website so that your website pages can access it.

1. Login to the backend of your website
   ...

TODO

## Part 3 - Adding a Link or Button to Open the Widget

The final step involves editing pages on your website such that your customers can open the widget and begin the inquiry process.

1. While logged in to the backend of your web site, navigate to edit the page that you would like to change.
1. To add a link in to launch the widget, you can use the following custom code block (as would be done in Squarespace)

```html
<p>
  Interested in hosting an event at Bob’s Pasta Shack?
  <a href="javascript:void(0);" id="palconToggle"
    >Start your event planning right now!</a
  >
</p>
```

If it diesn't allow you to edit the `id`, you can following the following method:

```html
<a
  href="javascript:void(0);"
  onclick="window.dispatchEvent(new Event('palconToggleEvent'))"
  >Start Event Intake!</a
>
```

And if editing the `href` is not possible, the following snippet should do the trick.

```html
<a
  href="#"
  onclick="event.preventDefault();window.dispatchEvent(new Event('palconToggleEvent'))"
  >Start Event Intake!</a
>
```

Alternatively, you can add the `palconTrigger` class to any element. Doing so will mean when that element is clicked, the widget is engaged:

```html
<div class="palconTrigger">Start Event Intake!</div>
```

## Part 4 - Testing

Refresh your site, and test it out!

This all could be streamlined for each platform we support - your feedback is incredibly valuable, so if you have any issues or feedback at all, don't hesitate to reach out at contact@palomaparties.com or [Book a meeting with us](https://calendly.com/bob-gv_a).
