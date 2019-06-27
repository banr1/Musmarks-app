import Foundation
import UIKit

protocol SearchViewModelDelegate: class {
    func reloadTable()
}

final class SearchViewModel {
    weak var delegate: SearchViewModelDelegate!
    private(set) var queryCellsModels: [QueryTableCellModel] = []
    
}
