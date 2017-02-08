## Ansible Controler

### Setup

Install ansible (ansigenome for the plot)
```
$ pip install --user ansible ansigenome
```

Add to `.bashrc`:
```bash
export PATH=$PATH:$HOME/.local/bin
```

Get ansible playbook from contrib:
```
$ git clone https://github.com/kubernetes/contrib
$ cd contrib/ansible
```

Playbooks are easy to understand but the pace of development might be too fast (as everything on k8s). Having a graph of the dependencies of each ansible role might help to grap it.
```
$ dot <(ansigenome export -f dot roles/) -Tpng -o roles.png
```
