
# Install dependencies for building and python imaging
for apt_dependency in ["python-dev", "build-essentail", "libjpeg-dev", "libjpeg-dev", "libfreetype6", "libfreetype6-dev", "zlib1g-dev", "python-imaging"] do
	package apt_dependency
end

# Install pip packages for 
for pip_pkg in ["modestmaps", "simplejson", "werkzeug", "uwsgi", "python-shapely"] do
	python_pip pip_pkg
end

for pkg in ['libmapnik2.2', 'libmapnik2-dev', 'mapnik-utils', 'python-mapnik'] do
	package pkg
end


python_pip "tilestache"