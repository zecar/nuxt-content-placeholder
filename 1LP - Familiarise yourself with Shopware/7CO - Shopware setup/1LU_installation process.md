---
title: ""
slug: ""
description: ""
icon: "" # svg, png? dark mode?
authors: []
visibility: "public"
---



# Introduction

Shopware can be installed on different OS like Windows, Linux and Mac. The following section gives you detailed installation via devenv.

::youtube-embed(link="https://www.youtube.com/watch?v=bcyu7RuXqMQ")
::

This module will guide you through a clean-slate installation process of essential tools required for setting up Shopware. We assume no software beyond essentials like Chrome is installed on your system. By the end of this module, you will have a functional Shopware installed on your local machine using DevEnv.

 
## Installing essential tools : Visual Studio Code and iTerm2

Visual Studio Code (VS Code) and iTerm2 are essential tools for development. VS Code serves as the Integrated Development Environment (IDE), while iTerm2 provides access to the Unix-based command-line interface on macOS.

### Installing iTerm2

- Go to the [iTerm2 website](https://iterm2.com/downloads.html) > Navigate to the Downloads section > Download the latest stable version.

![iterm2](../../assets/LP1/iterm2.jpg)

- Extract the downloaded .zip file

- Move the iTerm2 application to your Applications folder.

- Navigate to the Applications folder and double-click the iTerm2 icon to launch it.

### Installation of VS Code

The installation process for VS Code is similar to iTerm2. Download [VS Code](https://code.visualstudio.com/download) and follow the installation instructions.

![vscode](../../assets/LP1/vscode.jpg)
 
## Installation of Shopware

Next, we will install Shopware using DevEnv, a tool built on top of Nix.

Nix is a powerful package manager for Unix-like operating systems that focuses on reproducible builds. DevEnv leverages Nix to rapidly set up development environments, automating the start of essential services like databases and web servers.

So first you need to install Nix.

### Installation of Nix

Open your terminal and run the following command to install Nix:

```shell
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

![nix](../../assets/LP1/nix.jpg)

### Installation of Cachix

Cachix works with Nix to share and cache binary packages, significantly reducing build times.

1. Before installing Cachix, you must become a tructed user. To do so, run the below command: 

```shell
echo "trusted-users = root ${USER}" | sudo tee -a /etc/nix/nix.conf && sudo pkill nix-daemon
```

2. Next, install cachix :

```shell
nix-env -iA cachix -f https://cachix.org/api/v1/install
```

3. Use Cachix with Devenv

```shell
cachix use devenv
```

### Installation of DevEnv

1. With Nix and Cachix set up, install DevEnv with the below command:

```shell
nix-env -iA devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
```

2. Instruct Cachix to use Shopware’s cache with this command:

```shell
cachix use shopware
```
 
### Setting up of Shopware

1. Install Necessary Packages for Composer:

```shell
nix-shell -p php82 php82Packages.composer
```

2. Create Shopware Project

```shell
composer create-project shopware/production <project-name>
```

3. Navigate to the project directory:

```shell
cd <project-name>
```

4. Check if all the necessary folders are present within the Shopware directory:

```shell
ls -a
```

5. Install Devenv in the project

```shell
composer require devenv
```

6. Start Devenv Environment

```shell
devenv up
```

### Configuration of Shopware

1. Check for Port conflicts:

```shell
netstat -p tcp -van | grep '^Proto\|LISTEN'
```

 2. Edit the `.env` file for database management. To do so, open the current folder in VS Code using `code .` and navigate to `.env` file.

3. Modify the DATABASE_URL in the `.env` file:

```shell
DATABASE_URL="mysql://shopware:shopware@127.0.0.1:3306/shopware?sslmode=disable&charset=utf8mb4"
```

4. Enter Devenv shell:

```shell
devenv shell
```

5. Next try to access your store using `localhost:8000` in your browser. This turns out to be an error page. This is a normal event as the shop has not been configured yet.

![localhost-error](../../assets/LP1/localhost_error2.jpg).

So now navigate to `localhost:8000/admin`. The default username is admin and the password is shopware.

6. Configure initial setting - Follow the prompts to set up demo data, sales channels, and other initial configurations.
 
### Managing sales channel
 
To configure sales channels:

1. Add Domain:

- Navigate to the storefront configuration.

- Switch to http and use localhost:8000.

- Set the language, currency, and localization as needed.

- Save the configuration and refresh the storefront to see the changes.

![demostore](../../assets/LP1/demostore.jpg)

Now the store is setup locally in your system. All that you could do next is to extend Shopware.

### Extending Shopware

For further customization via plugins, apps, or themes, open Shopware file system in VS Code and refer to our [documentataion](https://developer.shopware.com/docs/)


### Stopping DevEnv

To stop DevEnv, return to the terminal where DevEnv is running and press Ctrl + C.

### Conclusion

You have successfully installed and configured Shopware on your local machine using DevEnv. You are now equipped to extend Shopware's functionality and start developing your projects. For further details and advanced configurations, refer to the [official documentation](https://developer.shopware.com/) and developer guides.
