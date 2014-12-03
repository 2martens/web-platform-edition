2martens Web Platform Edition
=============================

--> All references and the whole file will be changed <--

Welcome to the 2martens Web Platform Edition. This Symfony distribution 
combines the 2martens Web Platform with the Symfony full stack framework.

It is a standalone community platform that can be extended with additional
features and whole applications through it's ACP. The following bundles 
are already included in this distribution:

* Core bundle (the very base of the web platform)
* Frontend Essentials bundle (provides frontend access to Core functionality: e.g. login/registration)
* Content bundle (feature bundle that provides a WYSIWYG editor)
* Language bundle (feature bundle for multilingual user content)
* Media bundle (feature bundle to include media from different providers: e.g. YouTube)
* Upload bundle (feature bundle for upload functionality)
* Mail bundle (feature bundle for mail sending, supports Double-Opt-In)
* Community bundle (feature bundle for community-related features: e.g. UCP, notifications)
* Poll bundle (feature bundle for sophisticated polls)
* Conversation bundle (feature bundle for conversations)
* Sanction bundle (feature bundle for sanctions/warnings with consequences)

This set of bundles does not include an application (e.g forum) yet but is 
the bare bone of every modern community-oriented website. From within the 
ACP it is very easy to install new bundles.

The Core bundle itself already delivers the most essential components of 
the platform, including an ACP in which you can find all administrative 
tasks of every installed bundle. Furthermore you can deactivate every 
bundle and often even sub features. **The same mechanism is also used to 
deactivate buggy features via patch until they have been fixed. This 
prevents the situation that a single error breaks the entire system.** 
(evaluate)

This document contains information on how to download, install, and start
using the Web Platform. For a more detailed explanation, see the [Installation][1]
chapter of the Web Platform Documentation.

1) Installing the Web Platform Edition
--------------------------------------

There are different options for installing the web platform. Which one you choose, depends mainly on the usage of that particular installation.

### Git + Composer
* clone a fork of this repository
* install dependencies with Composer (look at next option for details)

This option is very useful, if you want to develop your own application 
based on the platform.

### Composer all the way

The second possibility is to install this Web Platform only with [Composer][3].

If you don't have Composer yet, download it following the instructions on
http://getcomposer.org/ or just run the following command:

    curl -s http://getcomposer.org/installer | php

Then, use the `create-project` command to generate a new Web Platform application:

    php composer.phar create-project twomartens/web-platform-edition path/to/install

Composer will install the Web Platform and all its dependencies under the
`path/to/install` directory.

This option is very useful for a manual deployment, if you only want to
use the platform without developing for it.

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

TODO: evaluate additional step

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
