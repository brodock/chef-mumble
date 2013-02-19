default['mumble']['mysql']['database'] = 'mumble'
default['mumble']['mysql']['username'] = "mumble"
set_unless['mumble']['mysql']['password'] = SecureRandom.base64(32).gsub(/\W/, "")
default['mumble']['mysql']['host'] = 'localhost'
default['mumble']['mysql']['port'] = '3306'
default['mumble']['mysql']['prefix'] = ''