class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppetagent.vm':}
  dockeragent::node {'db.puppetagent.vm':}
}
