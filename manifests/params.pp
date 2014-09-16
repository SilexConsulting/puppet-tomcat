# == Class tomcat::params
#
# This class is meant to be called from tomcat
# It sets variables according to platform
#
class tomcat::params {
  $authbind     = undef
  $http_port    = "8080"
  $java_home    = undef
  $java_opts    = '-Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC'
  $jsp_compiler = undef
  $jvm_tmp      = undef
  $logfile_days = undef
  $security     = undef
  $version      = 7

  case $::osfamily {
    'Debian': {
    }
    'RedHat': {
    }

    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
