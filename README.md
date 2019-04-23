# Kube-it-safe

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/67934c32a15a4bc79afb40d0584fcc5e)](https://app.codacy.com/app/ralavay/k8s-safety?utm_source=github.com&utm_medium=referral&utm_content=ralavay/k8s-safety&utm_campaign=Badge_Grade_Dashboard)
[![CircleCI](https://circleci.com/gh/ralavay/k8s-safety.svg?style=svg)](https://circleci.com/gh/ralavay/k8s-safety)

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
