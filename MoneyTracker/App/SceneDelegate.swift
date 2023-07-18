import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let screenBuilder = ScreenBuilder()
        let coordinator = Coordinator(screenBuilder: screenBuilder)
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = coordinator.start()
        window?.makeKeyAndVisible()
    }
}
