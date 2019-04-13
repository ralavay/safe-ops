# Kube-it-safe

Some simple scripts to wrap command like `kubectl`, `helm`, etc with confirmation step for dangerous operations like `delete` or `modify` a deployment or a release, etc.

## Usage

Clone the repo somewhere like `/your/workspace/path/scripts/`

Then update your `~/.profile` or `~/.bashrc` with some alias

```
# kubectl
alias kubectl="/your/workspace/path/scripts/kubectl.sh"

# helm
alias helm="/your/workspace/path/scripts/helm.sh"
```

Source `~/.profile` or `~/.bashrc` then when you try to delete/exec/edit something with `kubectl` or `helm` you will see this

```
$ kubectl delete pod/awesome-pod-1
----------------------------------------------------------
- K8s cluster:    k8s.production.seriously.com
----------------------------------------------------------
Are you sure? (Only 'yes' will be accepted to approve)
```

```
helm delete awesome-app
----------------------------------------------------------
- K8s cluster:    k8s.staging.seriously.com
----------------------------------------------------------
Are you sure? (Only 'yes' will be accepted to approve)
```
