# Docker shortcuts
alias docker="winpty docker"
alias whaler="docker run -v //var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage -sV=1.36"
alias run="docker run -it --rm --entrypoint sh"

# Kubernetes shortcuts
alias k="kubectl"
alias context="kubectl config use-context"

alias namespace="kubectl config set-context --current --namespace"
alias pods="kubectl get pods"
alias svc="kubectl get svc"
alias logs="kubectl logs"
alias ingress="kubectl get ingress"
alias secrets="kubectl get secrets"
alias describe="kubectl describe"
alias secret="kubectl get secret -o yaml"

exc () {
	kubectl exec -it $1 -- sh
}

# Linux helpful commands
alias devl="cd /c/devl"
alias ls="ls -alrt"

decode () {
	echo -n "$1" | base64 -d
}

encode () {
	echo -n "$1" | base64
}

# Set default directory
# cd /c/devl

# Source any other files needed
source ~/.kube_contexts # Contains aliases for kube contexts, looks like: alias <Context name>="kubectl config use-context <Context name>"