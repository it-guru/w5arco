The variables (set it f.e. in your inventory/group_vars/all.yml) ...

* tos_client_system_id

* tos_client_s_token


... you have to extract from ...

https://tos-cn.telekom.de/resources/client-autoconfig/tos-client-autoconfig.tar

... from the config.sh . (Sorry, but i can't publish them on github).

To make the installation working, you need to add the following
sequence to the blueprint in the runcmd section:

```
 - echo -ne "TPC2:" >/etc/MachineID
 - echo "${resource.w5system.id}" | sed -e 's#^.*/##' >> /etc/MachineID
```

The rollout concept is derived from from Benedikts ...
https://yam-united.telekom.com/pages/src-dt-it/apps/wiki/wiki-4/list/view/b47cee95-c0b3-47d7-8c06-1e1f70ada339
