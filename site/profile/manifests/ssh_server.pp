class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
 service { 'sshd': 
  ensure => 'running',
  ensure => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDmvD3zmkUM6kmIz+CWhkAiQt8gfXRSYuAb48NAf6ENgoqXqY8AXRyY+n+1e4UDCbhrXJ/1fLNk9XkB9ysiCMjFFRanLJ9pZq5q1+BQ8J5TQmF5zIDAs+FCceS+UmPPXa5dilLcJabyAXKncIznZjfiNurS0d5cAABriEwYRbKrQe/oFtfeLawROy64JvEjLAUl7tVGVpO3pXqOlglGsaouHfE2Ae1nlKlADFTMk6h4GDK72LOSfxvHctrSRTD0uURoyx1q9jfNcgeWNBKvmaA0+vZmv9mzIqrDch9icmCRcrNeFwx13PnDqPtuAdA3cfEjRGS6AVLxF5v6dGFz8JFT',
    }
  }
