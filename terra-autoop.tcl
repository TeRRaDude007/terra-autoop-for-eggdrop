########################################################
# TeRRa AutoOP for Eggdrop v1.0
########################################################
# SETUP: Loading the Script in Eggdrop
# To load this script into your Eggdrop bot, you need to add a source command in your Eggdrop configuration file (typically eggdrop.conf): 
# Load the auto-op script source /path/to/your/scripts/autoop.tcl
# After adding the script to your Eggdrop configuration file, save the changes and restart your Eggdrop bot to load the new script.
# By following these steps, your Eggdrop bot will automatically op specific nicknames when they join the channel.
########################################################


# List of nicknames to be auto-opped
set autoop_nicks {
    "Nick1"
    "Nick2"
    "Nick3"
}

# Bind the join event to the autoop procedure
bind join - * autoop_on_join

proc autoop_on_join {nick uhost hand chan} {
    global autoop_nicks

    # Check if the nickname is in the auto-op list
    if {[lsearch -exact $autoop_nicks $nick] != -1} {
        # Op the user
        putquick "MODE $chan +o $nick"
    }
}

# Output a message to the bot's console for debugging
putlog "Auto-Op script loaded. Monitoring for nicknames: $autoop_nicks"
