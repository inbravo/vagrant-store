name             'neusns'
maintainer       'Impetus'
maintainer_email 'amit.dixit@impetus.co.in'
license          'All rights reserved'
description      'Installs/Configures neusns'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "java"
depends "cassandra"
depends "rabbitmq"
depends "redis"
