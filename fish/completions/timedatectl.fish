# All subcommands that timedatectl knows - this is useful for later.
set -l commands status set-time set-timezone list-timezones set-local-rtc set-ntp

# Disable file completions for the entire command
# because it does not take files anywhere
# Note that this can be undone by using "-F".
#
# File completions also need to be disabled
# if you want to have more control over what files are offered
# (e.g. just directories, or just files ending in ".mp3").
complete -c timedatectl -f

# This line offers the subcommands
# -"status",
# -"set-timezone",
# -"set-time"
# -"list-timezones"
# if no subcommand has been given so far.
#
# The `-n`/`--condition` option takes script as a string, which it executes.
# If it returns true, the completion is offered.
# Here the condition is the `__fish_seen_subcommand_from` helper function.
# It returns true if any of the given commands is used on the commandline,
# as determined by a simple heuristic.
# For more complex uses, you can write your own function.
# See e.g. the git completions for an example.
#
complete -c timedatectl -n "not __fish_seen_subcommand_from $commands" \
    -a "status set-time set-timezone list-timezones"

# If the "set-timezone" subcommand is used,
# offer the output of `timedatectl list-timezones` as completions.
# Each line of output is used as a separate candidate,
# and anything after a tab is taken as the description.
# It's often useful to transform command output with `string` into that form.
complete -c timedatectl -n "__fish_seen_subcommand_from set-timezone" \
    -a "(timedatectl list-timezones)"

# Completion candidates can also be described via `-d`,
# which is useful if the description is constant.
# Try to keep these short, because that means the user gets to see more at once.
complete -c timedatectl -n "not __fish_seen_subcommand_from $commands" \
    -a "set-local-rtc" -d "Maintain RTC in local time"

# We can also limit options to certain subcommands by using conditions.
complete -c timedatectl -n "__fish_seen_subcommand_from set-local-rtc" \
    -l adjust-system-clock -d 'Synchronize system clock from the RTC'

# These are simple options that can be used everywhere.
complete -c timedatectl -s h -l help -d 'Print a short help text and exit'
complete -c timedatectl -l version -d 'Print a short version string and exit'
complete -c timedatectl -l no-pager -d 'Do not pipe output into a pager'
