import UIKit
import SwiftUI

final class Coordinator {
    let navigationController = UINavigationController()

    init() {
        navigationController.navigationBar.isHidden = true
    }

    func start() {
        pushOnboardingScreen()
    }

    func pushOnboardingScreen() {
        let screen = OnboardingScreen()
        let viewController = UIHostingController(rootView: screen)
        navigationController.pushViewController(viewController, animated: true)
    }

    func pushMainScreen() {
        let screen = MainScreen()
        let viewController = UIHostingController(rootView: screen)
        navigationController.pushViewController(viewController, animated: true)
    }
}
