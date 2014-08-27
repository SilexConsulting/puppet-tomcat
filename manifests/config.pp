# == Class tomcat::config
#
# This class is called from tomcat
#
class tomcat::config inherits tomcat::params {

  file { "/etc/tomcat${tomcat::params::version}/server.xml":
    content => template( 'tomcat/server.xml' )
  }

  file { "/etc/default/tomcat${tomcat::params::version}":
    ensure  => file,
    content => template('tomcat/tomcat_default.erb'),
  }
}
