#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

if [ ! -d "DSATracker.xcodeproj" ]; then
  if command -v xcodegen >/dev/null 2>&1; then
    echo "Generating Xcode project with xcodegen..."
    xcodegen generate
  else
    echo "Error: DSATracker.xcodeproj not found and xcodegen is not installed."
    echo "Install xcodegen using: brew install xcodegen"
    exit 1
  fi
fi

# Xcode builds for Apple Silicon (arm64), embeds the extension, and signs
# both targets using the checked-in plists and entitlements.
xcodebuild -project DSATracker.xcodeproj \
  -scheme DSATrackerMac -configuration Release \
  -derivedDataPath build ONLY_ACTIVE_ARCH=YES "ARCHS=arm64"

APP_BUNDLE="build/Build/Products/Release/DSA Tracker.app"
codesign --verify --deep --strict "$APP_BUNDLE"
printf 'Built and verified (Apple Silicon): %s\n' "$APP_BUNDLE"
