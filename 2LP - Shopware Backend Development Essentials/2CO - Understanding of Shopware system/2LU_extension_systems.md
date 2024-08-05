---
title: "Extension Systems"
slug: "extension-systems"
description: "Max 256 characters of description, pure-text"
icon: "" # svg, png? dark mode?
authors: ["Micha Hobert"]
visibility: "public"
---

As mentioned before, Shopware provides two main extension systems: the Plugin system and the App system. Both systems allow developers to extend the functionality of Shopware, but they are used in different scenarios and have different characteristics.

**Plugin System**

The Plugin system is a traditional way of extending Shopware. Plugins are installed directly on the Shopware instance and have direct access to the Shopware core. They can modify almost every aspect of the Shopware system, including the database, services, storefront, and administration.

Plugins are typically used when you need to deeply integrate with the Shopware system, such as adding new database tables, modifying the checkout process, or changing the way products are handled.

Here are some key characteristics of the Plugin system:

- Plugins have direct access to the Shopware core.
- They can modify almost every aspect of the Shopware system.
- They are installed directly on the Shopware instance.
- They are typically used for deep integrations with the Shopware system.

**App System**

The App system is a newer way of extending Shopware. Apps are standalone applications that interact with Shopware via APIs. They do not have direct access to the Shopware core and cannot modify it. Instead, they use the APIs provided by Shopware to interact with the system.

Apps are typically used when you want to integrate with external systems or provide additional functionality that does not require deep integration with the Shopware system. For example, you might use an app to integrate with a third-party payment gateway, provide additional reporting functionality, or integrate with a CRM system.

Here are some key characteristics of the App system:

- Apps are standalone applications that interact with Shopware via APIs.
- They do not have direct access to the Shopware core and cannot modify it.
- They are typically used for integrations with external systems or additional functionality that does not require deep integration with the Shopware system.

In summary, if you need to deeply integrate with the Shopware system and modify its core functionality, you would typically use the Plugin system. If you want to integrate with external systems or provide additional functionality that does not require deep integration with the Shopware system, you would typically use the App system.

Both systems have their strengths and weaknesses, and the choice of which one to use will depend on the specific requirements of your project.



# TODO add a short quiz to see which is better for what use case