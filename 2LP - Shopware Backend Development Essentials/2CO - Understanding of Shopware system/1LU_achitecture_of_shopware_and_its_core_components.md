---
title: "Shopware architecture and its core components"
slug: "shopware-architecture-and-its-core-components"
description: "Max 256 characters of description, pure-text"
icon: ""
authors: ["Micha Hobert"]
visibility: "public"
---

# Learning Objectives

By the end of this unit, you will be able to:

- Know the core components of the Shopware system
- Understand the architecture of Shopware
- Recognize the role of each component in the system

Shopware is a highly flexible, powerful, and customizable eCommerce platform built on a technical stack that includes PHP, Elasticsearch, MySQL, and more. It follows a modular architecture, which means it's composed of several core components that work together to provide a comprehensive eCommerce solution. 

All those components are connected, and interact with each other, to provide a seamless shopping experience for customers and an easy-to-use development environment for developers.

Here is a visual overview of the Shopware architecture:

![img](https://images.ctfassets.net/nqzs8zsepqpi/59a52424-a89e-4c9e-8151-0795aed3fe22/0b3f2a05a04e19bb56319e86e21c9ce6/Blog_Thumbnail__api-grafik-new?fm=jpg&w=430&q=80)

Let's dive into the core components of the Shopware system and check them out one by one:

## Core
This is the heart of the Shopware system. It includes the essential classes and services that power both the frontend and backend of the platform. It's built using Symfony, a popular PHP framework, and follows the principles of domain-driven design (DDD).

## Frontend
This is the part of Shopware that customers interact with. It includes product listings, shopping cart functionality, and the checkout process. The frontend is built using a responsive design to ensure a seamless shopping experience across various devices. You can either use the Storefront that comes with the Shopware or build your own frontend using the StoreApi provided by Shopware.

## Administration
This is the administrative area of Shopware. It's where store owners and administrators manage products, orders, customer data, and other store settings. The backend is designed to be user-friendly and intuitive, making it easy for non-technical users to manage the online store. It is built with Vue.js and is fully responsive.

## Database
Shopware uses MySQL as its primary database. It stores all the data related to products, orders, customers, and more.

## Search 
 Elasticsearch (optional) is integrated into Shopware to provide powerful and flexible search capabilities. It allows customers to quickly and easily find the products they're looking for.

## APIs
Shopware provides two main APIs that allow developers to interact with the platform programmatically. This makes it possible to integrate Shopware with other systems and to extend its functionality.

### StoreApi
The StoreApi is a RESTful API that allows developers to interact with the Shopware system programmatically. It provides endpoints for managing products, orders, customers, and more. The StoreApi is typically used to build custom frontend applications that interact with the Shopware backend.

### AdminApi
The AdminApi is a RESTful API that allows developers to interact with the Shopware administration programmatically. It provides endpoints for managing products, orders, customers, and more. The AdminApi is typically used to build custom administration interfaces or to connect with ERP/PIM systems.

## Themes
Shopware uses a theme system to control the look and feel of the frontend. Themes can be customized to match the branding of the store.

## CLI
 Shopware provides a command-line interface (CLI) that allows developers to perform various tasks such as installing and updating the system, managing plugins, and more.

## Extension Systems
Shopware provides two main extension systems: the Plugin system and the App system. Both systems allow developers to extend the functionality of Shopware, but they are used in different scenarios and have different characteristics. You will learn more about it in the next learning unit.

### Plugin System
Shopware has a robust plugin system that allows developers to extend the platform's functionality. There are many plugins available that provide additional features such as payment gateways, shipping methods, SEO tools, and more.

### App System
The App system is a newer way of extending Shopware. Apps are standalone applications that interact with Shopware via APIs. They do not have direct access to the Shopware core and cannot modify it. Instead, they use the APIs provided by Shopware to interact with the system. It is great for external data integrations.