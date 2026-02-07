function gpus
    git push --set-upstream origin $(git status | head -n +1 | awk '{print $NF}')
end
