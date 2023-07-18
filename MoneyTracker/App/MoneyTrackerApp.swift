import SwiftUI

@main
struct MoneyTrackerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            OnboardingScreen()
        }
    }
}
