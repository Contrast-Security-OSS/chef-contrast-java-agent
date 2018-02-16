default[:contrast_agent][:owner] = "contrast"
default[:contrast_agent][:owner_group] = "contrast"
default[:contrast_agent][:install_path] = "/opt/contrast"

default[:contrast_agent][:teamserver_url] = "https://app.contrastsecurity.com"
default[:contrast_agent][:teamserver_org_uuid] = "ORG_UUID_AS_PER_UI"

default[:contrast_agent][:api_key] = "API_KEY_AS_PER_UI"

default[:contrast_agent][:username] = "HANDLE@awesome.com"
default[:contrast_agent][:service_key] = "YOUR_SERVICE_KEY_AS_PER_UI"

# java, dotnet, ruby, node, dot_net_profiler. 
default[:contrast_agent][:agent_type] = "java"

