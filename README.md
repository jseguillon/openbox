# Openstack devops toolbox

This Docker image contains 4 tools for devops working on OpenStack env :
 - OpenStack command line,
 - Terraform,
 - Ansible,
 - Git

It also includes a `openrc.sh` file as default Openstack env config and a mount point :
 - ./source/:/usr/share/source.

## How to use

Launch Docker container and bash into it :
```
git clone
docker-compose up -d
docker exec -it openbox bash
```

You get logged as root and placed in `/usr/share/source` path.

Tune your openrc then source it :
```
vi openrc.sh  
# change your env

source openrc.sh
```

The box contains a very short script that asks for you Openstack password. Much safer than storing your pass in `openrc.sh` :
```
os_pass
```

When your settings are done, you cant test Openstack connectivity by testing server lists for example :
```
openstack server list
```

## You're done !

Now it's time to code your Terraform, your ansible scripts, and all the stuffs you need for your Infra As Code.

The directory `/usr/share/source` is mounted to your local `./source`.

## Notes

Yeah i know, Docker is not a tool for creating fat boxes like this one. But it's so helpfull when you daily use those 4 tools, i could'nt resist to share it with you.

Feel free to fork if you want to add/remove/modify any piece of this stack.

## Licence

MIT
