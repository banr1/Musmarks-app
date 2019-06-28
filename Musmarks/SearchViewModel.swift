import Foundation
import UIKit

protocol SearchViewModelDelegate: class {
    func reloadTable()
}

final class SearchViewModel {
    weak var delegate: SearchViewModelDelegate!
    private(set) var queryCellsModelsBox = [
        QueryTableCellModel(
            artistText: "Artist1",
            musicText: "Music1-1",
            artistImage: UIImage(named: "music1-1")!
        ),
        QueryTableCellModel(
            artistText: "Artist1",
            musicText: "Music1-2",
            artistImage: UIImage(named: "music1-2")!
        ),
        QueryTableCellModel(
            artistText: "Artist2",
            musicText: "Music2-1",
            artistImage: UIImage(named: "music2-1")!
        ),
        QueryTableCellModel(
            artistText: "Artist3",
            musicText: "Music3-1",
            artistImage: UIImage(named: "music3-1")!
        ),
        QueryTableCellModel(
            artistText: "Artist3",
            musicText: "Music3-2",
            artistImage: UIImage(named: "music3-2")!
        ),
        QueryTableCellModel(
            artistText: "Artist4",
            musicText: "Music4-1",
            artistImage: UIImage(named: "music4-1")!
        ),
        QueryTableCellModel(
            artistText: "Artist4",
            musicText: "Music4-2",
            artistImage: UIImage(named: "music4-2")!
        )
    ]
    private(set) var queryCellsModels: [QueryTableCellModel] = []
    
    func searchMusic(byQuery query: String?) {
        guard let query = query else { return }
        queryCellsModels = queryCellsModelsBox.filter {($0.artistText == query) || ($0.musicText == query)}
        delegate?.reloadTable()
    }
}
