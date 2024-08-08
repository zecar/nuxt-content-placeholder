---
title: "Plugin configuration"
slug: "plugin-configuration"
description: "Learning unit about plugin configuration"
icon: ""
authors: ["Micha Hobert"]
visibility: "public"
---


# Learning Objectives

By the end of this unit, you will be able to:

- Know how to add an input field to your plugin
- # TODO Add more learning objectives

# Introduction

In this learning unit, you will learn how to create a text input field in your plugin. This will make your plugin more flexible and reusable for different use cases.

## Real-world example

Imagine you are developing a plugin that needs a configuration value to only show a certain feature on the frontend on a specific date. Let's say you want to show a banner on the homepage on a specific date, one of the most common one "black friday".

To achieve this, you need to add a configuration field to your plugin that allows the user to enter the date when the banner should be displayed.

## Adding config.xml to plugin

To add configurations to your plugin, you need to create a `config.xml` file in the `src/Resources` directory of your plugin. This file will contain all the configurations for your plugin.

```txt
└── plugins
    └── MyPlugin
        ├── src
        │   ├── Resources
        │   │   └── config
        │   │       └── config.xml 
        │   └── MyPlugin.php
        └── composer.json
```

## Input date field

The date field is a common input field type that allows the user to select a date from a calendar. To add a date field to your plugin, you need to add the following code to your `config.xml` file:


```xml
<input-field type="date">
    <name>specialEventDate</name>
    <label>Date</label>
    <defaultValue>2024-11-29T00:00:00</defaultValue>
</input-field>
```


Great, we can now check in our PHP code for this value and if the date is today, we can show the banner. However, this would be very static.

How about we add a translated text field to the configuration, so the user can enter the text for the banner in different languages?

## Snippet field

To add a snippet field to your plugin, you need to add the following code to your `config.xml` file:

```xml
<component name="sw-snippet-field">
<name>bannerText</name>
<label>Text for the banner</label>
<snippet>myPlugin.banner.text</snippet>
</component>
```

Perfect, and what about the colors? Let's add a color picker to the configuration so we can also use the banner in different colors (for example red for valentines day).

## Color picker field

To add a color picker field to your plugin, you need to add the following code to your `config.xml` file:

```xml
<input-field type="color">
    <name>bannerBackgroundColor</name>
    <label>Color for the banner</label>
    <defaultValue>#000000</defaultValue>
</input-field>

<input-field type="color">
    <name>bannerTextColor</name>
    <label>Text color for the banner</label>
    <defaultValue>#FFFFFF</defaultValue>
</input-field>    
```

You see, there are a lot of options for how to enhance your plugin config and make it more flexible. You can also add more complex fields like an entity select field or a multi select fields.
This could come in handy if you only want to show the banner on desktop and tablet devices (selecting the viewports in a multi-select field).

If you want to explore all options, please visit our [official developer documentation](https://developer.shopware.com/docs/guides/plugins/plugins/plugin-fundamentals/add-plugin-configuration.html).


Quiz: 
1. What is the purpose of the `config.xml` file in a Shopware plugin?
    - [ ] To store the plugin's PHP code
    - [x] To define the plugin's configuration
    - [ ] To store the plugin's configuration
2. Should components be placed before or after inputs?
    - [ ] Before
    - [x] After


