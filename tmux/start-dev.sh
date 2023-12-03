tmux new-session -d -s backend -n backend "cd ~/repos/api-v3/ && nvim ."
tmux new-window -n sgrebackend "cd ~/repos/sgre-as-backend-services/ && nvim ."
tmux new-window -n rustbackend "cd ~/repos/sgre-checklist-backend/ && nvim ."
tmux new-window -n portal "cd ~/repos/service-admin-portal/ && nvim ."
tmux new-window -n sgreportal "cd ~/repos/sgre-portal/ && nvim ."
tmux new-window -n sgreapp "cd ~/repos/sgre-app/ && nvim ."
tmux -2 attach-session -d
