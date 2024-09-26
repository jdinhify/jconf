#!/usr/bin/env zsh

function warpdReload() {
  launchctl unload /Library/LaunchAgents/com.warpd.warpd.plist
  launchctl load /Library/LaunchAgents/com.warpd.warpd.plist
}