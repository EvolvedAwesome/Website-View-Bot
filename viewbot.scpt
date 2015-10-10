#										#
#		Created by: John Cole 				#
# 		On the: 8th October 2015			#
#										#

# Sets the amount of times the webpage is opened and closed
property repeatNumber : 1000000

# Set the Target url
property targetUrl : "http://www.google.com/"

# The time to wait for to load the webpage
property waitTime : 5

# The web browser to use
property webApplication : "Safari"

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
		tell application webApplication
			close (every window)
		end tell
	end tell
end repeat
