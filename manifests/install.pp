# == Class tomcat::install
#
class tomcat::install {
  package { $tomcat::params::package_name:
    ensure => present,
  }
}
