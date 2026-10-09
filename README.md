W5 Subproject

ARCO

**A**nsible **R**ole **Co**llection

This repo is a collection of roles to general purpose use. The roles
are a wasted product split from my internal w5ansible project.

To use them, you can simply clone this repo f.e. at ...
```
/usr/local/w5arco
```
... and add in your ~/.ansible.cfg them to your roles path like this:
```
[defaults]
roles_path            = /usr/local/w5ansible/roles:/usr/local/w5arco/roles
```

In general, I assume that as few root rights as possible are used with 
my Ansible roles. All variable data for ansible is stored in the 
directory defined by the variable ansiblesrv_var_base.
In my project, i define it at inventory/group_vars/all.yml as 
`/usr/local/var/w5ansible` .

Everyboy which should run ansible playbooks, must be in the group "ansible"
and these group needs to have group-write (2770) access to 
`/usr/local/var/w5ansible`.

