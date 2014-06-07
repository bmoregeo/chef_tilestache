python_pip "PIL"
python_pip "modestmaps"
python_pip "simplejson"
python_pip "werkzeug"

apt_repository 'mapnik' do
	uri "http://ppa.launchpad.net/mapnik/v2.1.0/ubuntu"
	distribution node['lsb']['codename']
	components ['main']
	keyserver 'keyserver.ubuntu.com'
	key "5D50B6BA"
end

for pkg in ['libmapnik', 'libmapnik-dev', 'mapnik-utils', 'python-mapnik'] do
	package pkg
end

python_pip "tilestache"