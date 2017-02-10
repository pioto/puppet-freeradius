# Enable status-server
class freeradius::status_server (
  $port     = '18121',
  $listen   = '*',
) {
  freeradius::site { 'status':
    content => template('freeradius/sites-enabled/status.erb'),
  }
}
