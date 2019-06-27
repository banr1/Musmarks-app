import Foundation
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(
            red: CGFloat(55) / 255.0,
            green: CGFloat(55) / 255.0,
            blue: CGFloat(64) / 255.0,
            alpha: 1
        )
        self.tabBar.unselectedItemTintColor = .white
        self.tabBar.barTintColor = UIColor(
            red: CGFloat(2) / 255.0,
            green: CGFloat(152) / 255.0,
            blue: CGFloat(104) / 255.0,
            alpha: 1
        )
    }
}
