import Foundation
import UIKit

struct PostTableCellModel {
    let usernameText: String
    let commentText: String
}

final class PostTableViewCell: UITableViewCell {
    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet private weak var commentLabel: UILabel!
    
    func bind(withModel model: PostTableCellModel) {
        self.usernameLabel.text = model.usernameText
        self.commentLabel.text = model.commentText
    }
}
