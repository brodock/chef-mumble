node.default['mumble']['mysql']['database'] = 'mumble'
node.default['mumble']['mysql']['username'] = "mumble"
node.set_unless['mumble']['mysql']['password'] = SecureRandom.base64(32).gsub(/\W/, "")
node.default['mumble']['mysql']['host'] = 'localhost'
node.default['mumble']['mysql']['port'] = '3306'
node.default['mumble']['mysql']['prefix'] = ''

include_recipe "mumble::default"
