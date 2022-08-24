<div align="center">
    <h1>Redmine Sentry Client</h1>
    <p>Report internal redmine errors to sentry</p>
</div>

[![GitHub license](https://img.shields.io/github/license/jop-software/redmine_sentry_client?style=for-the-badge)](https://github.com/jop-software/redmine-sentry-client/blob/main/LICENSE)
![Redmine Version](https://img.shields.io/badge/Redmine-5.0-red?style=for-the-badge "redmine version")

## Introduction
This redmine plugin allows you to specify a sentry dsn, to report errors.  
The plugin is tested with redmine version **5.0**

## Redmine Versions


| Plugin Version | Redmine Version |
|---|---|
| 1.x | 4.x |
| 2.x | 5.x |

## Installation
You can follow the default way to install redmine plugins.
1. Download the plugin sources. Either from the [Plugins Directory](https://www.redmine.org/plugins/redmine_sentry_client) or the [Git Repository](https://github.com/jop-software/redmine_sentry_client)
1. unpack the downloaded archive into your `<redmine-installation>/plugins` directory.
2. Install dependencies with `bundle install`.
3. Restart redmine.

## Configuration
Please provide you'r sentry dsn in the plugin configuration.  
Keep in mind to restart redmine after adding the DSN, because the sentry client only gets registerd if this configuration is provided

You also can configure some parts with environment variables:

| Environment variable | Description | Default |
| --- | --- | --- |
| SENTRY_ACTIVE | Toogle weather the sentry integration should be active or not. | true |

## Test
In the configuration of the plugin is a button to trigger a test error.  
Alternatively you can visit the `/sentry` route to trigger the same behaviour

## License
See [LICENSE](./LICENSE) file for more information

<p align="center">&copy; 2021-2022 <a href="https://jop-software.de">jop-software Inh. Johannes Przymusinski</a></p>