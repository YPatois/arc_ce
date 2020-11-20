# Class arc_ce::arex::ws::jobs
# Configures the ws/jobs blocks in arc.conf
class arc_ce::arex::ws::jobs(
  Boolean $enable = false,
) {

  if $enable {
    concat::fragment { 'arc.conf_arex_ws_jobs':
      target  => '/etc/arc.conf',
      content => template("${module_name}/arex/ws/jobs.erb"),
      order   => 21,
    }
  }
}
