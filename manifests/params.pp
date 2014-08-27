# == Class tomcat::params
#
# This class is meant to be called from tomcat
# It sets variables according to platform
#
class tomcat::params(
  $version      = 7,
  $java_home    = undef,
  $java_opts    = '-Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC',
  $jsp_compiler = undef,
  $security     = undef,
  $logfile_days = undef,
  $jvm_tmp      = undef,
  $authbind     = undef,
  $http_port    = "8080",
) {
  $package_name = "tomcat${version}"
  $service_name = "tomcat${version}"

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
