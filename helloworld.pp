file {'helloworld':
    path => /tmp/helloworld.sh
    ensure => present,
    content => 'echo "Hello world!"',
    mode => "0755",
}
