# reading log files
# @param logName {string}
Log.read_log() {
  local logName=$1
  if [ "$logName" ]; then
    local filename="$HOME/$logName.log"
    if [ -e "$filename" ]; then
      while read -r line
      do
        txt=$line
        LOG_READ=$(echo "$txt")
      done < "$filename"
    else
      error_echo "incorrect logname name"
    fi
  else
    error_echo "nane for logname"
  fi
}

# delete log file by name
Log.delete_log() {
  local logName=$1
  rm "$HOME"/"$logName".log
}
