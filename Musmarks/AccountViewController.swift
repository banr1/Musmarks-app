import Foundation
import UIKit

class AccountViewController: UIViewController {
    @IBOutlet weak var accountImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountImage.image = UIImage(named: "@Banri")
        usernameLabel.text = Store.shared.username
    }
}
