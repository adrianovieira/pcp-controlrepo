class role::puppetmaster {
  include profile::ntp
  include profile::puppet::hiera
  include profile::puppet::server
  include profile::mcollective::server
}
