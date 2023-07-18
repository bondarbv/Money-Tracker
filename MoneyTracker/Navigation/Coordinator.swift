import UIKit
import SwiftUI

final class Coordinator {
    private let screenBuilder: ScreenBuilder
    private let navigationController: UINavigationController

    init(screenBuilder: ScreenBuilder) {
        self.screenBuilder = screenBuilder
        self.navigationController = screenBuilder.createNavigationController()
    }

    func start() -> UINavigationController {
        pushOnboardingScreen()
        return navigationController
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
