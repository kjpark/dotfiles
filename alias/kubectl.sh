alias kctx="kubectx"
alias kns="kubens"

# i feel like everything below could be turned into a function

alias k="kubectl"

# resource shorthands:
#   d - deploy
#   i - ingress
#   p - pod
#   s - service

alias kc="kubectl config"

alias kd="kubectl describe"
alias kdd="kubectl describe deploy"
alias kdi="kubectl describe ingress"
alias kdp="kubectl describe po"
alias kds="kubectl describe svc"

alias ke="kubectl edit"

alias kg="kubectl get"
alias kgd="kubectl get deploy"
alias kgi="kubectl get ingress"
alias kgp="kubectl get po"
alias kgpw="kubectl get po -o wide"
alias kgpa="kubectl get po -A"
alias kgpaw="kubectl get po -A -o wide"
alias kgs="kubectl get svc"

alias kl="kubectl logs"
