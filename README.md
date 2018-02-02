# contrast_agent

A Chef cookbook to install the contrast security agent.
A Chef newbie project.

Future ideas to make it work on various platforms, for various apps, and to possibly automatically start a given application with the agent running.

Simple way to test attributes are all correct is to use chef-client in local mode on a MAC/Unix workstation;
sudo chef-client -z -o contrast_agent

Check that contrast.jar is installed in /opt/contrast/.
