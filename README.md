# Safe Ops

[![CircleCI](https://circleci.com/gh/ralavay/safe-ops.svg?style=svg)](https://circleci.com/gh/ralavay/safe-ops)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/67934c32a15a4bc79afb40d0584fcc5e)](https://app.codacy.com/app/ralavay/safe-ops)

Some simple scripts to wrap command like `kubectl`, `helm`, `rm`, etc with confirmation step for dangerous operations like `delete` or `modify` a deployment or a release.

Support

- [x] [kubectl](https://github.com/kubernetes/kubectl)
- [x] [helm](https://github.com/helm/helm)
- [x] [rm](https://github.com/coreutils/coreutils/blob/master/src/rm.c)

## Usage

Clone the repo somewhere like `/your/workspace/path/`

Then update your `~/.profile` or `~/.bashrc` with some alias

```bash
# kubectl
alias kubectl="/your/workspace/path/kubectl.sh"

# helm
alias helm="/your/workspace/path/helm.sh"

# rm
alias helm="/your/workspace/path/rm.sh"
```

Source `~/.profile` or `~/.bashrc` then when you try to delete/exec/edit something with `kubectl` or `helm` you will see this

```bash
$ kubectl delete pod/awesome-pod-1
----------------------------------------------------------
- Current cluster :    k8s.production.seriously.com
----------------------------------------------------------
Are you sure? (Only 'yes' will be accepted to approve)
```

```bash
$ helm delete awesome-app
----------------------------------------------------------
- Current cluster :    k8s.staging.seriously.com
----------------------------------------------------------
Are you sure? (Only 'yes' will be accepted to approve)
```
