class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
               }
      service {'sshd':
                ensure => 'running',
                enable => 'true',
               }
      ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC++H3RhUjUKIAjqRnUYJBES1rQ28cfqqDzBpoa5P60JPi7pwNCAJUFwsnHb6iStrqn13WSP3KkgpflpZLcoEVGTiOcgOJPIwEejLPxwun2fjuCd+iKMlnSSa5rCEFKHSigIithTEXUjtjV2HnbbRhPKZCb1yty27bISS/qrTDJNCbrvLBarlAqlrD35ajn5L8tKF8TweZo9W8iXtbZLxzYiRJoUD2/t63efInmmPEwiQDR0Vht9Jbm7qq5TUp8aeA7aIZFA2rD6x0BqBm89G5HwtpPkaiZZa8ldtL6PHMJq0/La2lXkoNBc0775beBbbGde7yhLFmSkM9dXh/y7bAL',
                }
}      
