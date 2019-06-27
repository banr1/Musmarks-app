import Foundation
import UIKit

struct QueryTableCellModel {
    let usernameText: String
    let musicText: String
    let commentText: String
    let artistImage: UIImage
}

final class QueryTableViewCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    
    func bind(withModel model: QueryTableCellModel) {
        self.usernameLabel.text = model.usernameText
        self.musicLabel.text = model.musicText
        self.commentLabel.text = model.commentText
        self.artistImage.image = model.artistImage
    }
}
