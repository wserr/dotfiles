function checkfolder --description "Shows folders bigger than 1 Gb"
	du -h $argv 2>/dev/null | grep '[0-9\.]\+G'
end
