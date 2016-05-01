class profile::activemq {

  $activemq_mco_password = hiera('profiles::activemq::mco_password')

  yumrepo { 'activemq-lkiesow':
    ensure   => 'present',
    baseurl  => 'http://copr-be.cloud.fedoraproject.org/results/lkiesow/apache-activemq-dist/epel-7-x86_64',
    descr    => 'ActiveMQ Contrib repo',
    enabled  => '1',
    gpgcheck => '0',
  }

  firewall { '100 allow activemq':
    dport  => [61613, 61614],
    proto  => tcp,
    action => accept,
  }

  yumrepo { 'puppetlabs-deps':
    ensure   => 'present',
    baseurl  => 'http://yum.puppetlabs.com/el/7/dependencies/$basearch',
    descr    => 'Puppet Labs Dependencies El 7 - $basearch',
    enabled  => '1',
    gpgcheck => '1',
  }

  class  { 'java':
    distribution => 'jdk',
    version      => 'latest',
  }

  class { '::activemq':
    mco_password => $activemq_mco_password,
    package      => 'activemq-dist',
  }

}
