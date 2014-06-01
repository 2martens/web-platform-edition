2martens Web Platform Edition
=============================

--> All references and the whole file will be changed <--

Welcome to the 2martens Web Platform Edition. This Symfony2 distribution
comes with the 2martens Web Platform in addition to all the great things
you already with the Symfony Standard Edition.

This distribution can be used to develop applications and plugins for the
Web Platform that make use of the package system. Furthermore it is a
production ready community platform. The distribution alone already provides
this frontend functionality:

- user registration and login
- conversations between users
- members list
- Dashboard
- minimal frontend message system (allows you to write short contents
  that appear in the Dashboard)

This basic setup allows you to create a community long before your actual
project is programmed (if you decide to go crazy and develop a fully customized
project instead of using applications).

On the backend side you get a full ACP that will be used by every plugin
and application for this web platform.

This document contains information on how to download, install, and start
using the Web Platform. For a more detailed explanation, see the [Installation][1]
chapter of the Web Platform Documentation.

1) Installing the Web Platform Edition
----------------------------------

When it comes to installing the Web Platform Edition, you have the
following options.

### GUI process
The best and easiest way to install the Web Application is downloading
the bundled archive (TODO: link) which provides a graphical installation process.

This graphical process provides these features
- multilingual installation process (German, English as of now)
- composer.phar already bundled (will be updated with selfupdate)
- unpacking the archive (the download archive contains both installation
  process files and the source archive; the latter is unpacked here)
- using Composer to install the dependencies (no dev requirements)
- configuration of global database (parameters.yml)
- creation of necessary tables in that database
- filling the database with needed contents (user groups, package information, etc.)
- creation of first user (member of admin group which has access to all ROLE_* controlled
  areas)
- switching to ACP
- cleanup (removing installation files)
- post-install configuration (each bundle can specify steps, the user
  is guided through all of them)
  - this configuration process is optional and can be skipped
  - for beginners it is **highly recommended** to use this guided process

This installation process allows the installation of simple webspace while
avoiding a massive FTP upload duration (uploading the unpacked version to webspace).

### Composer + Symfony2 Standard Edition

There is an alternative installation procedure as well. You can download
the [Symfony2 Standard Edition][2] and then install this library via Composer.

IMPORTANT: You are not done then. You have to manually call the installation
process (TODO: how) to install the database contents.

### Composer all the way

The final possibility is to install this Web Platform only with [Composer][3].

If you don't have Composer yet, download it following the instructions on
http://getcomposer.org/ or just run the following command:

    curl -s http://getcomposer.org/installer | php

Then, use the `create-project` command to generate a new Web Platform application:

    php composer.phar create-project twomartens/web-platform-edition path/to/install

Composer will install the Web Platform and all its dependencies under the
`path/to/install` directory.

IMPORTANT: You are not done then. You have to manually call the installation
process (TODO: how) to install the database contents.

2) Checking your System Configuration
-------------------------------------

Before starting coding, make sure that your local system is properly
configured for the Web Platform.

Execute the `check.php` script from the command line:

    php app/check.php

The script returns a status code of `0` if all mandatory requirements are met,
`1` otherwise.

Access the `config.php` script from a browser:

    http://localhost/path/to/web/platform/app/web/config.php

If you get any warnings or recommendations, fix them before moving on.

3) Getting started with the Web Platform
----------------------------------------

This distribution is meant to be the starting point for your Web Platform
applications.

Since the Web Platform is based upon Symfony you should first learn Symfony.

A great way to start learning Symfony is via the [Quick Tour][4], which will
take you through all the basic features of Symfony2.

Once you're feeling good, you can move onto reading the official
[Symfony2 book][5].

If you are done with Symfony documentation and you are still interested,
you can start reading the [Web Platform Documentation][6].

What's inside?
---------------

The Web Platform Edition is configured with the following defaults:

  * Twig is the only configured template engine;

  * Doctrine ORM/DBAL is configured;

  * Swiftmailer is configured;

  * Annotations for everything are enabled.

It comes pre-configured with the following bundles:

  * **FrameworkBundle** - The core Symfony framework bundle

  * [**SensioFrameworkExtraBundle**][7] - Adds several enhancements, including
    template and routing annotation capability

  * [**DoctrineBundle**][8] - Adds support for the Doctrine ORM

  * [**TwigBundle**][9] - Adds support for the Twig templating engine

  * [**SecurityBundle**][10] - Adds security by integrating Symfony's security
    component

  * [**SwiftmailerBundle**][11] - Adds support for Swiftmailer, a library for
    sending emails

  * [**MonologBundle**][12] - Adds support for Monolog, a logging library

  * [**AsseticBundle**][13] - Adds support for Assetic, an asset processing
    library

  * **WebProfilerBundle** (in dev/test env) - Adds profiling functionality and
    the web debug toolbar

  * **SensioDistributionBundle** (in dev/test env) - Adds functionality for
    configuring and working with Symfony distributions

  * [**SensioGeneratorBundle**][14] (in dev/test env) - Adds code generation
    capabilities
    
TODO: add further bundles as they are developed

All libraries and bundles included in the Web Platform Edition are
released under the MIT or BSD license.

Enjoy!

[1]:  https://github.com/2martens/web-platform-docs/installation.rst
[2]:  http://symfony.com/download
[3]:  http://getcomposer.org/
[4]:  http://symfony.com/doc/2.4/quick_tour/the_big_picture.html
[5]:  http://symfony.com/doc/2.4/index.html
[6]:  https://github.com/2martens/web-platform-docs/index.rst
[7]:  http://symfony.com/doc/2.4/bundles/SensioFrameworkExtraBundle/index.html
[8]:  http://symfony.com/doc/2.4/book/doctrine.html
[9]:  http://symfony.com/doc/2.4/book/templating.html
[10]: http://symfony.com/doc/2.4/book/security.html
[11]: http://symfony.com/doc/2.4/cookbook/email.html
[12]: http://symfony.com/doc/2.4/cookbook/logging/monolog.html
[13]: http://symfony.com/doc/2.4/cookbook/assetic/asset_management.html
[14]: http://symfony.com/doc/2.4/bundles/SensioGeneratorBundle/index.html
