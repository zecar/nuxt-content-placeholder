---
title: "The core"
slug: "the-core"
description: "Max 256 characters of description, pure-text"
icon: ""
authors: ["Micha Hobert"]
visibility: "public"
---

# Learning Objectives

By the end of this unit, you will be able to:

- Know the key components of the Shopware 6 Core
- Understand which directories are writable and which are not
- Recognize where to place your custom code

The Shopware 6 Core is the heart of the Shopware system. It includes the essential components and services that power both the frontend and backend of the platform.

![https://images.ctfassets.net/nqzs8zsepqpi/59a52424-a89e-4c9e-8151-0795aed3fe22/0b3f2a05a04e19bb56319e86e21c9ce6/Blog_Thumbnail__api-grafik-new?fm=jpg&w=430&q=80](https://images.ctfassets.net/nqzs8zsepqpi/59a52424-a89e-4c9e-8151-0795aed3fe22/0b3f2a05a04e19bb56319e86e21c9ce6/Blog_Thumbnail__api-grafik-new?fm=jpg&w=430&q=80)

Here are some key components of the Shopware 6 Core:

## Symfony Framework 
Shopware 6 is built on top of the Symfony framework, which provides a robust and flexible foundation for the system. Symfony provides many features out of the box, such as routing, security, and dependency injection, which are used extensively in Shopware.

## Domain-Driven Design (DDD) 
Shopware 6 follows the principles of DDD. This means that the system is designed around the business domain, with clear boundaries between different parts of the system. This makes the system easier to understand and maintain.

## Entities  
Entities represent the different types of data in the system, such as products, orders, and customers. Each entity has its own class, which defines its properties and behavior.

## Services Services
in Shopware 6 are used to encapsulate business logic. They are typically used to perform operations on entities, such as creating a new order or updating a product.

## Repositories Repositories
Used to manage entities. They provide methods for finding, creating, updating, and deleting entities.

## APIs
Shopware 6 provides a comprehensive set of APIs that allow developers to interact with the system programmatically. This includes APIs for managing products, orders, customers, and more.

## Events and Subscribers
Shopware 6 uses an event-driven architecture. Events are dispatched when something happens in the system, and subscribers can listen for these events and perform actions in response.

## Plugins
The core also provides a robust plugin system that allows developers to extend the functionality of Shopware. Plugins can add new features, modify existing behavior, and integrate with external systems.

## Database Abstraction Layer (DAL)
Shopware 6 uses a database abstraction layer to interact with the database. This allows developers to work with entities and repositories without having to write SQL queries directly.

## Administration and Storefront
The core also includes the Administration and Storefront components. The Administration is a single-page application (SPA) built with Vue.js that provides a modern and intuitive interface for managing the online store. The Storefront is a headless commerce solution that allows developers to build custom frontend applications using modern JavaScript frameworks while leveraging Shopware's powerful backend.