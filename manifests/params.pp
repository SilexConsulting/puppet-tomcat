# == Class tomcat::params
#
# This class is meant to be called from tomcat
# It sets variables according to platform
#
class tomcat::params {
  case $::osfamily {
    'Debian': {
      $version      = 6,
      $java_home    = undef,
      $java_opts    = '-Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC',
      $jsp_compiler = undef,
      $security     = undef,
      $logfile_days = undef,
      $jvm_tmp      = undef,
      $authbind     = undef
      $package_name = "tomcat${version}"
      $service_name = "tomcat${version}"
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
