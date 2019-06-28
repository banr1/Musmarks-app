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
            musicText: "Artist1 / Music1-1",
            commentText: "好き！",
            artistImage: UIImage(named: "music1-1")!
        ),
        PostTableCellModel(
            usernameText: "@Jiro",
            musicText: "Artist2 / Music2-1",
            commentText: "嫌い！",
            artistImage: UIImage(named: "music2-1")!
        ),
        PostTableCellModel(
            usernameText: "@Saburo",
            musicText: "Artist1 / Music1-2",
            commentText: "エモい！",
            artistImage: UIImage(named: "music1-2")!
        ),
        PostTableCellModel(
            usernameText: "@Shiro",
            musicText: "Artist3 / Music3-1",
            commentText: "かっこいい！",
            artistImage: UIImage(named: "music3-1")!
        ),
        PostTableCellModel(
            usernameText: "@Jiro",
            musicText: "Artist3 / Music3-2",
            commentText: "ださい！",
            artistImage: UIImage(named: "music3-2")!
        )
    ]
    
    func addPost() {
        self.postCellsModels.append(
            PostTableCellModel(
                usernameText: Store.shared.username,
                musicText: "Artist4 / Music4-1",
                commentText: "おしゃれ!",
                artistImage: UIImage(named: "music4-1")!
            )
        )
        self.delegate.reloadTable()
    }
}
