#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."

bash scripts/bundle_app.sh
APP_BUNDLE="build/Build/Products/Release/DSA Tracker.app"
VERSION=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$APP_BUNDLE/Contents/Info.plist")
WIDGET_BUNDLE="$APP_BUNDLE/Contents/PlugIns/DSATrackerWidgetExtension.appex"
WIDGET_VERSION=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$WIDGET_BUNDLE/Contents/Info.plist")
[[ "$VERSION" == "$WIDGET_VERSION" ]] || { echo 'App and widget versions differ.' >&2; exit 1; }
lipo "$APP_BUNDLE/Contents/MacOS/DSA Tracker" -verify_arch arm64
lipo "$WIDGET_BUNDLE/Contents/MacOS/DSATrackerWidgetExtension" -verify_arch arm64

mkdir -p dist
ARCHIVE_NAME="DSA-Tracker-macOS-v${VERSION}.zip"
ditto -c -k --sequesterRsrc --keepParent "$APP_BUNDLE" "dist/$ARCHIVE_NAME"
printf 'Release archive: dist/%s\n' "$ARCHIVE_NAME"

