import AppKit

@main
final class DSATrackerMacApp: NSObject, NSApplicationDelegate {
    static func main() {
        let app = NSApplication.shared
        let delegate = DSATrackerMacApp()
        app.delegate = delegate
        app.run()
    }

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Pure silent background container for WidgetKit extension.
        // No windows, no desktop UI.
        NSApp.setActivationPolicy(.accessory)
    }
}
