class role::puppetmaster {
  include profile::ntp
  include profile::puppet::server
  include profile::puppet::hiera
  include profile::mcollective::server
}
