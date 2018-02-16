name 'contrast_agent'
maintainer 'David Dooley'
maintainer_email 'david.dooley@contrastsecurity.com'
license 'MIT'
description 'Installs the Contrast Security agent'
long_description 'Installs the Contrast Security agent. Contains a Tomcat recipe that creates a script that sets JAVA_OPTS and wraps around the tomcat startup script'
version '0.2.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/ddooley77/contrast_agent/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/ddooley77/contrast_agent'
