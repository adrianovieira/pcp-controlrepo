class role::puppetmaster {
  include profile::ntp
  include profile::puppet::server
  include profile::puppet::hiera
  include profile::puppet::r10k
  include profile::mcollective::server
  
  Class['profile::ntp'] -> 
  Class['profile::puppet::server'] -> 
  Class['profile::puppet::hiera'] ->
  Class['profile::puppet::r10k'] ->
  Class['profile::mcollective::server']
  
}
