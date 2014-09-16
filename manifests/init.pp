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
  $authbind     = $tomcat::params::authbind,
  $http_port    = $tomcat::params::http_port,
  $java_home    = $tomcat::params::java_home,
  $java_opts    = $tomcat::params::java_opts,
  $jsp_compiler = $tomcat::params::jsp_compiler,
  $jvm_tmp      = $tomcat::params::jvm_tmp,
  $logfile_days = $tomcat::params::logfile_days,
  $security     = $tomcat::params::security,
  $version      = $tomcat::params::version,
) inherits tomcat::params {

  # validate parameters here
  $package_name = "tomcat${version}"
  $service_name = "tomcat${version}"

  class { 'tomcat::install':
    package_name => $package_name,
  } ->
  class { 'tomcat::config':
    authbind     => $authbind,
    http_port    => $http_port,
    java_home    => $java_home,
    java_opts    => $java_opts,
    jsp_compiler => $jsp_compiler,
    jvm_tmp      => $jvm_tmp,
    logfile_days => $logfile_days,
    package_name => $package_name,
    security     => $security,
    version      => $version,
  } ~>
  class { 'tomcat::service':
    service_name => $service_name,
  } ->
  Class['tomcat']

}
