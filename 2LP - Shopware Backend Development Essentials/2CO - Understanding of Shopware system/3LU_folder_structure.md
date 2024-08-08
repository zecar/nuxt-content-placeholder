---
title: "Folder structure"
slug: "folder-structure"
description: "Max 256 characters of description, pure-text"
icon: ""
authors: ["Micha Hobert"]
visibility: "public"
---

# Learning Objectives

By the end of this unit, you will be able to:

- Know the main directories of a Shopware 6 project
- Understand which directories are writable and which are not
- Recognize where to place your custom code


Shopware 6 follows a specific directory structure that is important to understand for development. It is leaned towards Symfony, a PHP framework that Shopware is built on. 

If you are using PHPStorm, you can use the built-in [Symfony plugin](https://plugins.jetbrains.com/plugin/7219-symfony-support) to navigate through the codebase more easily.


Here's a brief overview of the main directories and their purposes:


```text
<project root>
├── bin
└── config
└── custom
    ├── apps
    ├── plugins
    └── static-plugins
└── public
    ├── bundles
    ├── media
    ├── theme
    ├── thumbnail
    └── sitemap    
└── src
    ├── Core
    ├── Storefront
    └── Administration
└── vendor
└── var
└── .env
└── composer.json
└── composer.lock
```

## bin
This directory contains executable files. The most important file here is the `console` file, which is used to run Symfony console commands.

## config
The config directory contains configuration files for Shopware and its services. For example, the `packages/` subdirectory contains configuration for different environments (dev, prod, etc.).

## custom
This directory is where apps, custom plugins, and themes are stored. The difference between plugins and static-plugins is that plugins installed from the Shopware Store or required via Composer, while static-plugins are manually installed plugins that are added to the source repository.

## public
This directory is the web root of your Shopware installation. It contains the `index.php` file, which is the entry point for all requests, and assets like images, stylesheets, and JavaScript files.

::: info
This is your entrypoint for your webserver (nginx,apache2,caddy etc.). Make sure to point your webserver to this directory.
:::

## src
This directory contains the source code of Shopware. It's divided into several subdirectories, each representing a different domain of the application (Core, Storefront, Administration, etc.).

## vendor
This directory is where all libraries installed via Composer are stored.

## var
This directory is used for various system files like logs, cache, and session files.

## Files

If you have worked with symfony before, you will recognize most of the files in the root directory of a Shopware project. However, let's take a look at the most important ones:


### .env
This is a file where environment variables can be defined. These variables can be used in the application for things like database configuration.

### composer.json and composer.lock
These files are used by Composer, a dependency management tool for PHP. The `composer.json` file defines the project dependencies, while the `composer.lock` file contains the exact versions of these dependencies that should be installed.

The `composer.json` is also your entrypoint if you want to add custom repositories for your internal composer packages (for example, your company Gitlab instance).

# TODO any other important files?