###
# Offline Scanner Client configuration
###

#### Mandatory parameters

# S-Token for authentication at the collector API.
# It can be generated in the UI.
S_TOKEN="{{tos_client_s_token}}"

# This setting is used to automatically assign your machine to an existing
# system while registering. System IDs can be looked up in the UI.
# In most cases, your machine needs to be assigned to a system before it can
# be scanned.
SYSTEM_ID="{{tos_client_system_id}}"

# Machine name as it will be shown in the UI. Uses the hostname by default.
# WARNING: Do not use spaces here!
#MACHINE_NAME="my-new-machine"
MACHINE_NAME="$(uname -n)"

#### Optional parameters

# A custom Machine ID can be defined here.
# If undefined, the application will generate it randomly during registration.
# This variable is also used when updating the Collector on a machine that
# has already been registered but doesn't have the Collector installed yet.
# HINT: When scanning a machine, the machine ID stored in the Collector's
# configuration is used, not the one given by this variable. This variable is
# used by registration and update modes only.
# Only valid UUIDs according to RFC-4122 are allowed.
MACHINE_ID=""

# A custom Machine Number can be defined here.
# The Machine Number is a user defined optional value that is part of the
# Machine's metadata. It can be used for environment specific machine identifiers
# such as Cloud Instance IDs or IDs from external inventory systems.
MACHINE_NUMBER="$(cat /etc/MachineID)"

# This setting can be used to define the Risk Level during registration.
# Available Risk-IDs can be looked up in the UI.
RISK_ID=""

# This setting can be used to define a Component ID (UUID) which will be
# assigned during registration.
# Component Labels can be created in the UI. Afterwards, the ID is available
# there as well.
COMPONENT_ID=""

# URL of an HTTP proxy used to reach the collector API
# PROXY_URL FORMAT "http://<ip>:<port>"
PROXY_URL=""

##### Environment specific configuration
##### WARNING: This parameter is pre-set and normally should not be changed,
##### except you reach the server over NAT or a reverse proxy
COLLECTOR_URL="https://tos-cn.telekom.de"
