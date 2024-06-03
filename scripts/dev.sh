tmux new-session -d -s backend -n backend "cd ~/repos/api-v3/ && nvim" 
tmux new-window -n portal "cd ~/repos/service-admin-portal/ && nvim"
tmux -2 attach-session -d
