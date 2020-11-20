# Class arc_ce::arex::ws
# Configures the ws blocks in arc.conf
class arc_ce::arex::ws(
  Boolean $enable = false,
) {

  if $enable {
    concat::fragment { 'arc.conf_arex_ws':
      target  => '/etc/arc.conf',
      content => template("${module_name}/arex/ws.erb"),
      order   => 20,
    }
  }

  # arex/ws/jobs blocks
  contain 'arc_ce::arex::ws::jobs'
}
