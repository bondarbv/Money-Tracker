import SwiftUI

final class Coordinator: ObservableObject {
    let navigationController = UINavigationController()

    init() {
        setupNavigationController()
    }

    func pushMainScreen() {
        pushScreen(MainScreen())
    }

    func popScreen() {
        navigationController.popViewController(animated: true)
    }

    func popToRootScreen() {
        navigationController.popToRootViewController(animated: true)
    }

    private func pushScreen(_ screen: some View) {
        let viewController = UIHostingController(rootView: screen)
        navigationController.pushViewController(viewController, animated: true)
    }

    private func setupNavigationController() {
        let rootViewController = UserDefaults.standard.wasOnboardingScreenShown
            ? UIHostingController(rootView: MainScreen().environmentObject(self))
            : UIHostingController(rootView: OnboardingScreen().environmentObject(self))
        navigationController.viewControllers = [rootViewController]
        navigationController.navigationBar.isHidden = true
    }
}
