# == Class: tomcat
#
#
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class tomcat (
  $http_port = "8080",
) inherits tomcat::params {

  # validate parameters here

  class { 'tomcat::install': } ->
  class { 'tomcat::config':
    http_port => $http_port,
  } ~>
  class { 'tomcat::service': } ->
  Class['tomcat']


}
