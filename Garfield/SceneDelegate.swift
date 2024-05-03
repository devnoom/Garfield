import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let catsVC = CatFactsViewController()
        let navigationController = UINavigationController(rootViewController: catsVC)
        navigationController.navigationBar.prefersLargeTitles = true
        let window = UIWindow(windowScene: scene)
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
    
}
