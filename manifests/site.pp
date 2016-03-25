node 'puppetmq.hacklab' {
  include role::broker
}
node 'puppetdb.hacklab' {
  include role::puppetdb
}
node 'puppetserver.hacklab' {
  include role::puppetmaster
}
node 'puppet-pcpm.hacklab' {
  include role::puppetmaster
  include role::puppetdb
  include role::broker
}
