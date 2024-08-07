---
title: "Environment variables"
slug: "enviroment-variables"
description: "Learning unit about all environment variables"
icon: ""
authors: ["Micha Hobert"]
visibility: "public"
---

# Learning Objectives

By the end of this unit, you will be able to:

- Know which environment variables are mandatory
- Understand how to use different .env files
- Recognize if an environment variable is missing

Every Symonfony project comes with a .env file, shopware is no exception here. This file is used to store environment variables. These variables are used to store sensitive information like database credentials, API keys, etc. The .env file is not committed to the repository. Instead, a .env.dist file is committed to the repository. This file contains the default values for the environment variables. When a developer clones the repository, they can copy the .env.dist file to .env and set the values for the environment variables. This way, the sensitive information is not exposed in the repository.

You can use multiple .env files for different environments. For example, you can have a .env file for the development environment, a .env.prod file for the production environment, and a .env.test file for the testing environment. Find more information about environment variables in the [Symfony documentation](https://symfony.com/doc/current/configuration.html#overriding-environment-values-via-env-local).


# Mandatory environment variables

```text
APP_ENV=prod
APP_URL=http://127.0.0.1:8000
APP_SECRET=a96d5c315965b3e4861574e99dbc323e
INSTANCE_ID=0992fcb3ed7620772a383c586b80a714
BLUE_GREEN_DEPLOYMENT=0
DATABASE_URL=mysql://root:root@localhost/shopware

```

## Storefront

The `STOREFRONT_PROXY_URL` environment variable is used to define the URL of the Storefront proxy. This is the URL that the Storefront uses to communicate with the backend. This is typically the URL of the backend server.

If your shop has a lot of content that can be cached, you can enable the HTTP cache by setting the `SHOPWARE_HTTP_CACHE_ENABLED` environment variable to `1`. This will cache the content of the shop and serve it to the users without having to regenerate it every time.

The `SHOPWARE_HTTP_DEFAULT_TTL` environment variable is used to define the default time-to-live (TTL) of the cache. This is the amount of time that the content will be cached before it is regenerated. The default value is 7200 seconds (2 hours).

```text
STOREFRONT_PROXY_URL=http://localhost
SHOPWARE_HTTP_CACHE_ENABLED=1
SHOPWARE_HTTP_DEFAULT_TTL=7200
``` 


## Elasticsearch / Opensearch

Due to a change in the license of Elasticsearch, OpenSearch was founded. You can choose to use Elasticsearch or OpenSearch. We do use both Names in the following examples, but they aim to the same service.

OpenSearch is a powerful search engine that is integrated into Shopware to provide powerful and flexible search capabilities. However, it is not always necessary to use it and adds additional complexity to the system.

Check beforehand if your project needs the power of OpenSearch or if the default search engine is enough for your project. We always recommend using the default search engine first and only switch to OpenSearch if necessary.

If you want to use OpenSearch, you need to set the `SHOPWARE_ES_ENABLED` and `SHOPWARE_ES_INDEXING_ENABLED` environment variables to `1`.

The `OPENSEARCH_URL` environment variable is used to define the URL of the OpenSearch server. Those instances typically run on port 9200.

The SHOPWARE_ES_INDEX_PREFIX environment variable is used to define the prefix of the OpenSearch index. Especially helpful when running muliple Shopware instances on the same OpenSearch server/cluster. 

For example, if you have two Shopware instances, you can set the `SHOPWARE_ES_INDEX_PREFIX` environment variable to `tireshop` and `computershop`, to create two separate indexes.

The `SHOPWARE_ES_THROW_EXCEPTION` environment variable is used to define if an exception should be thrown if an error occurs during the OpenSearch request. On development this should always be set to `1`, otherwise you will not see any errors and the MySQL fallback handles the request.


```text
OPENSEARCH_URL=http://localhost:9200
SHOPWARE_ES_ENABLED=0
SHOPWARE_ES_INDEXING_ENABLED=0
SHOPWARE_ES_INDEX_PREFIX=sw
SHOPWARE_ES_THROW_EXCEPTION=1
```

## Symfony Messenger

The Symfony Messenger component is used to send messages between different parts of the application. It can be used to send messages to a message queue, to send emails, or to perform other tasks asynchronously.

This is especially interesting for shops that have a high volume of orders and need to process them in the background or for shops that have most of their orders processed in a short time frame (deals, flash sales, etc.).

The Symfony Messenger component can be configured to use different transports to send messages. The default transport is the `doctrine` transport, which stores messages in the database. This is a good choice for development environments, as it does not require any additional setup.

```text
# Default transport
MESSENGER_TRANSPORT_DSN=doctrine://default?auto_setup=0
# AMQP transport
MESSENGER_TRANSPORT_DSN=amqp://guest:guest@localhost:5672/%2f/messages
# Redis transport
MESSENGER_TRANSPORT_DSN=redis://localhost:6379/messages
```

All of the above have their benefits and drawbacks. The `doctrine` transport is the easiest to set up, but it is not suitable for production environments with high message volume. The `amqp` transport is a good choice for production environments, as it is fast and reliable. The `redis` transport is a good choice for production environments with high message volume, as it is fast and reliable.

## Symfony Mailer

The Symfony Mailer component is used to send emails from the application. It can be configured to use different mailers to send emails. The default mailer is the `null` mailer, which does not send any emails. This is a good choice for development environments, as it does not require any additional setup.

```text
# Default mailer
MAILER_DSN=null://null
```

The most common mailer is the `smtp` mailer, which sends emails using an SMTP server. This is a good choice for production environments, as it is fast and reliable.

Here is an example of the most common one used around the world, the Gmail SMTP server:

```text
MAILER_DSN=smtp://username:password@smtp.gmail.com:587?encryption=tls&auth_mode=login
```

## Symfony Lock

The Symfony Lock component is used to handle concurrently running processes. It can be configured to use different stores to store locks. The default store is the `flock` store, which stores locks in the filesystem. This is a good choice for development environments, as it does not require any additional setup.

Depending on your filesystem / hardware, this is not the best choice for production environments. If you are using a cluster, you should use the `redis` store, as it is fast and reliable. All available stores can be found in the [Symfony documentation](https://symfony.com/doc/current/components/lock.html#available-stores).

```text
# Default store
LOCK_DSN=flock
# Redis store
LOCK_DSN=redis://localhost
```


Questions:

1. What is the purpose of the .env file?
    - [ ] To store sensitive information like database credentials, API keys, etc.
    - [ ] To store the default values for the environment variables
    - [ ] To store the values for the environment variables
    - [ ] To store the values for the environment variables and commit them to the repository

2. What does the Symfony Messenger component do?
    - [ ] Send emails from the application
    - [ ] Send messages between different parts of the application
    - [ ] Handle concurrently running processes
    - [ ] Send messages to a message queue

3. When should I use Elasticsearch / OpenSearch?
    - [ ] Always
    - [ ] Only if you have a lot of content that can be cached
    - [ ] Only if you have a high volume of orders
    - [ ] Only if you need powerful and flexible search capabilities

