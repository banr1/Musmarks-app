import Foundation
import UIKit

protocol TimelineViewModelDelegate: class {
    func reloadTable()
}

final class TimelineViewModel {
    weak var delegate: TimelineViewModelDelegate!
    private(set) var postCellsModels: [PostTableCellModel] = [
        PostTableCellModel(
            usernameText: "@Taro",
            musicText: "Artist1 / Music1",
            commentText: "So cool!",
            artistImage: UIImage(named: "rockband1")!
        )
    ]
    
    func addPost() {
        self.postCellsModels.append(
            PostTableCellModel(
                usernameText: "@Jiro",
                musicText: "Artist2 / Music2",
                commentText: "So bad!",
                artistImage: UIImage(named: "rockband2")!
            )
        )
        self.delegate.reloadTable()
    }
}
