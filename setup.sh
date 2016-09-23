#/bin/bash

sonos_api=https://github.com/jishi/node-sonos-http-api.git
harmony_api=https://github.com/maddox/harmony-api.git
hass_config_files=https://github.com/finish06/home_assistant_configuration.git


#Clone necessary github repos
git clone "$sonos_api"
git clone "$harmony_api"

#Run docker compose to setup necessary docker components
docker-compose up -d

#Set HASS up configuration folders
mkdir ~/configuration_files/
git clone "$hass_config_files" ~/configuration_files/hass

#Set up harmony remote config
ln -s config_files/node_harmony ~/configuration_files/
