# Enable XDebug ("0" | "1")
$use_xdebug = "0"

# Default path
Exec 
{
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

class apt_update {
    exec 
    { 
        'apt-get update':
            command => '/usr/bin/apt-get update',
            require => Exec['add php55 apt-repo']
    }
}

include bootstrap
include other #curl
include php55 #specific setup steps for 5.5
include php
include apache
include mysql
include phpmyadmin
include composer
include nodejs
include yeoman
include laravel_app
include later


