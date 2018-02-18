# contrast_agent

A Chef cookbook to install the contrast security agent.

Basically, it will automatically install the contrast agent in a specific directory under the ownership and permissions of a specified user (e.g. a "contrast" user"). This is the default recipe, but more recipes could be added.

It also has a basic recipe for Tomcat to automatically inject our Java agent (creates a wrapper script that sets JAVA_OPTS for the agent and calls startup.sh or equivalent);

attributes/default.rb need to be configured with your particular user/Team Server details. attributes/tomcat.rb need to be configured with your particular Tomcat details.

A simple way to test attributes are all correct is to use chef-client in local mode on a MAC/Unix workstation; sudo chef-client -z -o contrast_agent

Check that contrast.jar is installed in /opt/contrast/.

