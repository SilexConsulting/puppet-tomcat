# == Class tomcat::install
#
class tomcat::install{
  include tomcat::params

  package { $tomcat::params::package_name:
    ensure => present,
  }

}
