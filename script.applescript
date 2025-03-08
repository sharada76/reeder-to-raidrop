-- Raindrop.io API token
set apiToken to "<your token>"

-- Get the currently open URL in Reeder (via clipboard)
tell application "System Events"
	keystroke "c" using {option down, shift down} -- Use Reeder's shortcut (⌥⇧C) to copy the link
	delay 0.1 -- Wait for the clipboard to update
end tell

-- Retrieve the URL from the clipboard
set articleURL to the clipboard

-- Get the article title
set pageTitle to do shell script "curl -Ls " & quoted form of articleURL & " | grep -i '<title>' | sed -E 's/.*<title>(.*)<\\/title>.*/\\1/'"

-- Create JSON data
set jsonData to "{\"link\":\"" & articleURL & "\", \"title\":\"" & pageTitle & "\"}"

-- Send a POST request to Raindrop.io using cURL
set curlCommand to "curl -s -X POST https://api.raindrop.io/rest/v1/raindrop -H 'Authorization: Bearer " & apiToken & "' -H 'Content-Type: application/json' -d " & quoted form of jsonData

-- Execute the request
do shell script curlCommand

-- Display a completion message
do shell script "osascript -e 'display notification \"The article has been added to Raindrop.io!\" with title \"Reeder to Raindrop\"'"

