# OpenVPN client setup
# Keys should be copied to server before puppet runs
# Requires that dnsmasq be installed and running
class profiles::vpn::client (
    $remote
) {
   class { 'hosts':
    one_primary_ipv4 => false, 
    one_primary_ipv6 => false,
    entries => { '192.168.2.1' => [ 'foo.example.org', 'foo' ] }
   }
}
