# reeder-to-raidrop

# Reeder to Raindrop Shortcut

This script allows you to quickly save the currently open article in Reeder to Raindrop.io using a keyboard shortcut.

## Prerequisites

Before using this script, make sure you have:

1. **Created an API token on Raindrop.io**
   - Go to [Raindrop.io API](https://raindrop.io)
   - Generate a personal API token
   - Replace `apiToken` in the script with your generated token

2. **Configured Reeder to copy article links with ⌥⇧C**
   - Open Reeder
   - Go to `Preferences > Shortcuts`
   - Set the "Copy Link" shortcut to `⌥⇧C`

3. **Set up the script as a macOS shortcut**
   - Open `Automator` and create a new `Quick Action`
   - Paste the script into an `AppleScript` block
   - Save the action and assign a name
   - Open **Reeder**
   - Go to `Services > Services Settings`
   - Assign a preferred shortcut key to the script

## Usage

1. Open an article in **Reeder**
2. Use the assigned shortcut to trigger the script
3. The article will be saved to **Raindrop.io**, and a notification will appear confirming the action

Now, you can quickly bookmark articles from Reeder to Raindrop.io with ease! 🚀

