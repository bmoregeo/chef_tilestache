package "python-dev"

for pil_dependency in ["libjpeg-dev", "libjpeg-dev", "libfreetype6", "libfreetype6-dev", "zlib1g-dev"] do
	package pil_dependency
end

package "python-imaging"

python_pip "modestmaps"
python_pip "simplejson"
python_pip "werkzeug"



for pkg in ['libmapnik2.2', 'libmapnik2-dev', 'mapnik-utils', 'python-mapnik'] do
	package pkg
end

python_pip "tilestache"