import SwiftUI

final class ScreenBuilder {
    func createNavigationController() -> UINavigationController {
        let rootView = createOnboardingScreen()
        let navigationController = UINavigationController(rootViewController: rootView)
        navigationController.navigationBar.isHidden = true
        return navigationController
    }

    private func createOnboardingScreen() -> UIHostingController<OnboardingScreen> {
        UIHostingController(rootView: OnboardingScreen())
    }
}
