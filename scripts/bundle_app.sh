#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Xcode builds for Apple Silicon (arm64), embeds the extension, and signs
# both targets using the checked-in plists and entitlements.
xcodebuild -project DSATracker.xcodeproj \
  -scheme DSATrackerMac -configuration Release \
  -derivedDataPath build ONLY_ACTIVE_ARCH=YES "ARCHS=arm64"

APP_BUNDLE="build/Build/Products/Release/DSA Tracker.app"
codesign --verify --deep --strict "$APP_BUNDLE"
printf 'Built and verified (Apple Silicon): %s\n' "$APP_BUNDLE"
