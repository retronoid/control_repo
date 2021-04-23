class role::master_server {
   include profile::base
   include profile::ssh
   include profile::agent_nodes
}
