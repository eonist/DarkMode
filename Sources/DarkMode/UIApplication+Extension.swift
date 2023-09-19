#if os(iOS)
import UIKit

extension UIApplication {
    /**
     * This function allows you to override the user interface style for all windows in all connected scenes.
     * This can be useful for implementing features like a 'Dark Mode' toggle.
     *
     * - Parameter userInterfaceStyle: The desired user interface style. This can be either .light or .dark.
     *
     * ## Usage Example:
     * Determine the current mode, then switch to the opposite mode:
     * ```
     * let currentMode: UIUserInterfaceStyle = self.isDarkMode ? .light : .dark
     * UIApplication.shared.override(currentMode)
     * ```
     */
    public func override(_ userInterfaceStyle: UIUserInterfaceStyle) {
        if #available(iOS 13.0, *), supportsMultipleScenes {
            connectedScenes.forEach { connectedScene in
                // Check if the connected scene is a UIWindowScene, then override its style
                if let scene = connectedScene as? UIWindowScene {
                    scene.windows.override(userInterfaceStyle)
                }
            }
        } else {
            // If the iOS version is less than 13.0 or does not support multiple scenes, override the style for all windows
            windows.override(userInterfaceStyle)
        }
    }
}
#endif