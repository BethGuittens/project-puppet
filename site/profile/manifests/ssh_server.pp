class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3XK8esFJYY95cxo5dw/szWaiXWQu7Jvhhyia6cvUnJb7H/5QbuYiOJJm6x4hqVzZi51Wxqa07y+9nf8sgbT/05DbHXq5dhyBexuu+iNitIT7lDL4aErz4vZuXGD/7/T3Ejm3l9calo4xAnoxq8xoirfEqLO+SmeHYKMAxSTzrf5wDit3gQoMyLZgGWNJK5i9YVJfa0DjQdgr8apDjHHRh6XzXj3ZEvT3/H0SKGztDj+utdpJdyo2tWXj26NvlHC4ssZuuaFt457kdVBn1K9orPBULg7yo6617t0LfbvC4ezMC5z+MWDZRrIIMHapGg41HBPxpBd8aDan0v+WTQDjt',
  }  
}
