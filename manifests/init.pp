# == Class: tomcat
#
#
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class tomcat inherits tomcat::params {

  class { 'tomcat::install': } ->
  class { 'tomcat::config': } ->
  class { 'tomcat::service': } ->
  Class['tomcat']

}
