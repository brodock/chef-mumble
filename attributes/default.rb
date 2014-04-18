require "securerandom"
default['mumble']['ice']['listen_ip']           = '127.0.0.1'
default['mumble']['ice']['listen_port']         = 6502
set_unless['mumble']['ice']['secretread']       = SecureRandom.base64(32).gsub(/\W/, "")
set_unless['mumble']['ice']['secretwrite']      = SecureRandom.base64(32).gsub(/\W/, "")

default['mumble']['autoban']['attempts']        = 10
default['mumble']['autoban']['timeframe']       = 120
default['mumble']['autoban']['time']            = 300

default['mumble']['welcometext']                = '<br />Welcome to this server running <b>Murmur</b>.<br />Enjoy your stay!<br />'
default['mumble']['port']                       = 64738
default['mumble']['host']                       = ''
set_unless['mumble']['serverpassword']          = SecureRandom.base64(8).gsub(/\W/, "")

default['mumble']['bandwidth']                  = 72000
default['mumble']['users']                      = 100
default['mumble']['textmessagelength']          = 0
default['mumble']['imagemessagelength']         = 0
default['mumble']['allowhtml']                  = 'true'
default['mumble']['logdays']                    = 31

default['mumble']['bonjour']                    = 'false'
default['mumble']['register_name']              = 'Mumble Server'
default['mumble']['uname']                      = 'mumble-server'
default['mumble']['certrequired']               = 'False'
set_unless['mumble']['superuser']['passwd']     = SecureRandom.base64(16).gsub(/\W/, "")
