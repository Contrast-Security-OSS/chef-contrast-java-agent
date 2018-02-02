#
# Cookbook:: contrast_agent
# Recipe:: default
#
# David Dooley

group node[:contrast_agent][:owner_group]

user node[:contrast_agent][:owner] do
  group node[:contrast_agent][:owner_group]
  system true
  shell '/bin/false'
end

directory node[:contrast_agent][:install_path] do
  owner node[:contrast_agent][:owner]
  group node[:contrast_agent][:owner_group]
  mode '0755'
  action :create
end

remote_file "#{node[:contrast_agent][:install_path]}/contrast.jar" do
  source "#{node[:contrast_agent][:teamserver_url]}/Contrast/api/ng/#{node[:contrast_agent][:teamserver_org_uuid]}/agents/default/#{node[:contrast_agent][:agent_type]}"
  group node[:contrast_agent][:owner_group]
  owner node[:contrast_agent][:owner]
  mode '0644'
  action :create
  headers({'Authorization' => "#{
    Base64.encode64("#{node[:contrast_agent][:username]}:#{node[:contrast_agent][:service_key]}").gsub("\n", "")}",
    'API-Key' => "#{node[:contrast_agent][:api_key]}"
  })
end
