# == Class tomcat::config
#
# This class is called from tomcat
#
class tomcat::config(
  $http_port,
) {

  file { '/etc/tomcat7/server.xml':
    content => template( 'tomcat/tomcat/server.xml' )
  }
}

