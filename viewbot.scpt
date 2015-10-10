#										#
#		Created by: John Cole 				#
# 		On the: 8th October 2015			#
#										#

# Sets the amount of times the webpage is opened and closed
property repeatNumber : 0

# Set the Target url
property targetUrl : ""

# The time to wait for to load the webpage
property waitTime : 0

# The web browser to use
property webApplication : ""

# Selection dialogues

display dialog "What is the website url that you are View Botting? " buttons {"OK"} default answer "http://www.mywebsite.com/"
set targetUrl to text returned of result

display dialog "How Many Times do you want to view this page? " buttons {"OK"} default answer "1000"
set repeatNumber to text returned of result

display dialog "What is the time (seconds) between page views? " buttons {"OK"} default answer "7"
set waitTime to text returned of result

# Displays if 'other' was selected
display dialog "What Web Browser do you want to use?" default answer "Safari" buttons {"OK"} default button 1
set webApplication to text returned of result

# Displays that the loop is running
# Automatically exits after 2 seconds
display dialog "Script is running" buttons {"Cancel"} giving up after 1

# Main Repeat Loop

repeat repeatNumber times
	tell application webApplication
		
		# Opens the webpage
		open location targetUrl
		
		# Waits a prespecified amount of time to let the webpage load
		# and count a view
		delay waitTime
		
		# Closes the webpage to prevent the computer from
		# running out of ram and crashing
		close (every window)
	end tell
end repeat
