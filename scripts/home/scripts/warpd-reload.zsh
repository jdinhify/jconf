#!/usr/bin/env zsh

function warpd-reload() {
  launchctl unload /Library/LaunchAgents/com.warpd.warpd.plist
  launchctl load /Library/LaunchAgents/com.warpd.warpd.plist
}