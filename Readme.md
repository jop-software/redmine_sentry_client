<div align="center">
    <h1>Redmine Sentry Client</h1>
    <p>Report internal redmine errors to sentry</p>
</div>

## Installation

1. Install dependencies with `bundle install`
2. Restart redmine

## Configuration
Please provide you'r sentry dsn in the plugin configuration.  
Keep in mind to restart redmine after adding the DSN, because the sentry client only gets registerd if this configuration is provided

## Test
You can test the integration by accessing the `/sentry` route.   
This will raise an internal error that will get reported to sentry

## License
See [LICENSE](./LICENSE) file for more information

<p align="center">&copy; 2021 jop-software Inh. Johannes Przymusinski</p>