
# Install dependencies for building and python imaging
for apt_dependency in ["python-dev", "build-essential", "libjpeg-dev", 
	                   "libjpeg-dev", "libfreetype6", "libfreetype6-dev", 
	                   "zlib1g-dev", "python-imaging"] do
	package apt_dependency
end

# Install pip packages for 
for pip_dependency in ["modestmaps", "simplejson", "werkzeug", "uwsgi", "Shapely"] do
	python_pip pip_dependency
end

for tilestache_dependency in ['libmapnik2.2', 'libmapnik2-dev', 'mapnik-utils', 'python-mapnik', 'gdal-bin', 'python-gdal'] do
	package tilestache_dependency
end


python_pip "tilestache"