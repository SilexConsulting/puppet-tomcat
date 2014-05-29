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
  $version      = $tomcat::params::version,
  $java_home    = $tomcat::params::java_home,
  $java_opts    = $tomcat::params::java_opts,
  $jsp_compiler = $tomcat::params::jsp_compiler,
  $security     = $tomcat::params::security,
  $logfile_days = $tomcat::params::logfile_days,
  $jvm_tmp      = $tomcat::params::jvm_tmp,
  $authbind     = $tomcat::params::authbind,
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
