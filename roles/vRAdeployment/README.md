To use the Deployment of blueprints with this role, you need a Service
User in the AD (X-Account).

In my installation i have set this in global variables on the ansible
server at ...
```
W5ANSIBLE_ADCONTROLER=emea1.cds.t-internal.com
W5ANSIBLE_ADUSER=X12354466
W5ANSIBLE_ADPASS=XXXXX
W5ANSIBLE_ADDOMAIN=emea1
```
... because on my ansible server, only ansible authorizied users have access.

If you want run this on a standard workplace, you can do this via cygwin
and cbFw access.

If you want to run it on a server, you need to get a firewall allow rule
from the PSPC Team for your server IP.


