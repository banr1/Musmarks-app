import Foundation

protocol TimelineViewModelDelegate: class {
    func reloadTable()
}

final class TimelineViewModel {
    weak var delegate: TimelineViewModelDelegate!
    private(set) var postCellsModels: [PostTableCellModel] = [
        PostTableCellModel(usernameText: "Taro", commentText: "It's so fun!"),
        PostTableCellModel(usernameText: "Jiro", commentText: "terrible"),
        PostTableCellModel(usernameText: "Saburo", commentText: "Funtastic!")
    ]
    
    
}
