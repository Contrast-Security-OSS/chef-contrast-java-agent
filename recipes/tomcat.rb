#
# Cookbook:: contrast_agent
# Recipe:: tomcat
#
# David Dooley

include_recipe "contrast_agent::default"

template "#{node[:contrast_agent][:tomcat_path]}/contrast_startup.sh" do
  source 'contrast_startup.sh.erb'
  mode '0755'
  owner node[:contrast_agent][:tomcat_owner]
  group node[:contrast_agent][:tomcat_group] 
  variables(:contrast => "#{node[:contrast_agent][:install_path]}/contrast.jar",
    :tomcat_path => node[:contrast_agent][:tomcat_path],
    :tomcat_startup => node[:contrast_agent][:tomcat_startup]
  )
end
