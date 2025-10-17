terra autoop v1.0 tcl script for eggdrop!

Loading the Script in Eggdrop

To load this script into your Eggdrop bot, you need to add a source command in your Eggdrop configuration file (typically eggdrop.conf):
# Load the auto-op script
source /path/to/your/scripts/autoop.tcl
Make sure to replace /path/to/your/scripts/autoop.tcl with the actual path to your autoop.tcl script.
Explanation: autoop_nicks: This list contains the nicknames that should be automatically opped when they join the channel.
bind join - * autoop_on_join: This line binds the join event to the autoop_on_join procedure.
autoop_on_join: This procedure checks if the joining nickname is in the autoop_nicks list and if so, ops the user using the putquick command to send the MODE +o command to the IRC server.
putlog: This command outputs a message to the bot's log for debugging purposes, indicating that the script is loaded and the nicknames it is monitoring.
Save and Restart

After adding the script to your Eggdrop configuration file, save the changes and restart your Eggdrop bot to load the new script.
By following these steps, your Eggdrop bot will automatically op specific nicknames when they join the channel.
