class generatedata{

vcsrepo { "/vagrant/webroot/generatedata":
  ensure => present,
  provider => git,
  source => 'https://github.com/benkeen/generatedata.git',
  revision => 'master',
  owner    => 'root',
  group => 'root'
}

file { "/vagrant/webroot/generatedata/settings.php":
    mode   => 440,
    owner  => root,
    group  => root,
    source => "puppet:///modules/generatedata/settings.php"
}

}



