defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others

# Add Safari
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add Mail
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Mail.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add Address Book
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Address Book.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add Dictionary
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Dictionary.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add DVD Player
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/DVD Player.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


# restart the Dock
#killall -HUP Dock