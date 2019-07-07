class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppetagent.vm':}
  dockeragent::node {'db.puppetagent.vm':}
  host {'web.puppetagent.vm':
    ensure   => present,
    ip       => '172.16.0.2',
  }
  host {'db.puppetagent.vm':
    ensure   => present,
    ip       => '172.16.0.3',
  }
}
