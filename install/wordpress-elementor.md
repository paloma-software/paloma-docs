# Installing the Paloma Widget on a Wordpress Site with the Elementor Plugin

Elementor is a powerful Wordpress plugin that can be used to help visually build your site. The following steps are specific to Elementor to enable the Paloma widget on the site.

Note that Plugins like Elementor tend to change frequently, these steps are as of April 2025 using v3.7.26 and Pro v3.25.4.

Also note, these steps can be adapted to using vanilla Wordpress, but you'll need to use a plugin that allows custom scripts. We recommend [WPCode](https://wpcode.com/).

## Add the Snippet

1. Login to your Wordpress backend
1. On the menu at the left, find Elementor, click it's menu, and chose `Custom Code`
1. Click the `New Code` button to add a new piece of custom code
1. Give it name like `Paloma Widget Snippet` so you can identify it later
1. For Location, choose `<body> - End`.
1. Paste in your unique Paloma Snippet into the edit box, complete with script tags
1. Hit `Publish`
1. When prompted for a condition, leave it as is on the `Entire Site` option, and click `Save & Close`.

## Add a Button

The script is now added, now you need to add a button to trigger the widget.

1. In the main Wordpress page, go to Pages
1. Find the page you'd like to edit, and choose to edit it
1. Assuming its an Elementor page, click the open Elementor
1. Find the location of where you'd like to add the button, and either add a new button, or duplicate an existing one.
1. For button id, add `palconToggle`.
1. Ensure the `Link` field is empty (you may need to change the text color of the button as without the link it might think its disabled)
1. Add in the following custom code to ensure there is a pointer when hovered:

#palconToggle {
  cursor: pointer;
}

1. Preview your page via the :eye: icon to the left of `Publish` to ensure the Widget is visible when the button is clicked, and ensure it disappears when the X is clicked on the widget.
1. Once you're satisfied with your button, click to `Publish` your page.

That's it!
