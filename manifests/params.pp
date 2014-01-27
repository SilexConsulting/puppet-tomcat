# == Class tomcat::params
#
# This class is meant to be called from tomcat
# It sets variables according to platform
#
class tomcat::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'tomcat7'
      $service_name = 'tomcat7'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
