import Foundation
import UIKit

struct QueryTableCellModel {
    let artistText: String
    let musicText: String
    let artistImage: UIImage
}

final class QueryTableViewCell: UITableViewCell {
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    
    func bind(withModel model: QueryTableCellModel) {
        self.artistLabel.text = model.artistText
        self.musicLabel.text = model.musicText
        self.artistImage.image = model.artistImage
    }
}
