import Foundation
import UIKit

struct PostTableCellModel {
    let usernameText: String
    let musicText: String
    let commentText: String
    let artistImage: UIImage
}

final class PostTableViewCell: UITableViewCell {
    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet private weak var commentLabel: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    
    func bind(withModel model: PostTableCellModel) {
        self.usernameLabel.text = model.usernameText
        self.musicLabel.text = model.musicText
        self.commentLabel.text = model.commentText
        self.artistImage.image = model.artistImage
    }
}
