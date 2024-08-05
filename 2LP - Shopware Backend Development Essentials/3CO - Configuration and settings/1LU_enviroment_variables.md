---
title: "Environment variables"
slug: "enviroment-variables"
description: "Max 256 characters of description, pure-text"
icon: "" # svg, png? dark mode?
authors: ["Micha Hobert"]
visibility: "public"
---

Every Symonfony project comes with a .env file, shopware is no exception here. This file is used to store environment variables. These variables are used to store sensitive information like database credentials, API keys, etc. The .env file is not committed to the repository. Instead, a .env.dist file is committed to the repository. This file contains the default values for the environment variables. When a developer clones the repository, they can copy the .env.dist file to .env and set the values for the environment variables. This way, the sensitive information is not exposed in the repository.

You can use multiple .env files for different environments. For example, you can have a .env file for the development environment, a .env.prod file for the production environment, and a .env.test file for the testing environment. Find more information about environment variables in the [Symfony documentation](https://symfony.com/doc/current/configuration.html#overriding-environment-values-via-env-local).