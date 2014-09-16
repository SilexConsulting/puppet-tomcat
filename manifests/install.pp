# == Class tomcat::install
#
class tomcat::install (
  $package_name,
) {
  package { $package_name:
    ensure => present,
  }
}
