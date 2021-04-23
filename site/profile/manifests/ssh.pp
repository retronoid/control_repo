class profile::ssh {
  include ssh
  #include ssh::server
  #include ssh::client
  ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDcvc7mKctPza/VjkpKaxBcfVFKEwB+mh9o0nIZ8f/a181HQIJFxkv0Wg7nQhCNkW3NDmu38QMkGwQqWfIjeeSPTC2RXUPylkxB5DDluysMVEbsKxas4hLp6PkeN9Tsn/+MNXK4fIu6IflO/2qZndz3csIxkVrLow9NlhLj+/SPKj+HZCqA3INcqdw9eK8+XdAq0s4x6YabSmnUQXh6LvbbrjVoi9zGKNykMf1YbI1lwXbFKrPPT2ZchgVJvygWFXsQz7T/wjF3NQI3q/0gqpvYa/vhi33ol1cFvgIs/yT/uUL0e+BIhGMT0w4JHICfXl8JP5H9sfyyRCFalixizHmz',
	} 
}
