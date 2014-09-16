# == Class tomcat::config
#
# This class is called from tomcat
#
class tomcat::config(
  $authbind,
  $http_port,
  $java_home,
  $java_opts,
  $jsp_compiler,
  $jvm_tmp,
  $logfile_days,
  $package_name,
  $security,
  $version,
) {

  file { "/etc/${package_name}/server.xml":
    content => template( "tomcat/server.xml.${version}" )
  }
  file { "/etc/default/${package_name}":
    ensure  => file,
    content => template('tomcat/tomcat_default.erb'),
  }

}
