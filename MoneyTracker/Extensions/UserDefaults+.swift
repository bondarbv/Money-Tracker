import Foundation.NSUserDefaults

extension UserDefaults {
    var wasOnboardingScreenShown: Bool {
        get { UserDefaults.standard.bool(forKey: "wasOnboardingScreenShown") }
        set { UserDefaults.standard.setValue(newValue, forKey: "wasOnboardingScreenShown") }
    }
}
