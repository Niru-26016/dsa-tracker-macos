#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Xcode performs AppIntent metadata extraction, embeds the extension, and signs
# both targets using the checked-in plists and entitlements.
xcodebuild -project DSATracker.xcodeproj \
  -scheme DSATrackerMac -configuration Release \
  -derivedDataPath build ONLY_ACTIVE_ARCH=NO "ARCHS=arm64 x86_64"

APP_BUNDLE="build/Build/Products/Release/DSA Tracker.app"
codesign --verify --deep --strict "$APP_BUNDLE"
printf 'Built and verified: %s\n' "$APP_BUNDLE"
