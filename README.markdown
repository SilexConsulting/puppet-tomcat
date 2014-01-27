# Solr Module

[![Build Status](https://travis-ci.org/vamsee/puppet-solr.png)](https://travis-ci.org/vamsee/puppet-solr)

Puppet module to install and configure tomcat7 on Debian systems.  Allows you to customise the http port.

## Quick Start

To install tomcat 7 with the default settings add this into your node:

    include tomcat

To run tomcat on a different port, you can use:

    class { 'tomcat' :
        http_port       => '8888',
    }

## TODO

 * Support other platforms
 * Tests

##License

Apache. Please see the LICENSE file for more information.

## Contact

Contributions welcome.

## Support

Please log tickets and issues in the issues page (https://github.com/SilexConsulting/puppet-tomcat/issues)
