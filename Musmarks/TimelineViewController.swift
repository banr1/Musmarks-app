import Foundation
import UIKit

class TimelineViewController: UITableViewController {
    
    private lazy var viewModel: TimelineViewModel = {
        let interactor = TimelineViewModel()
        interactor.delegate = self
        return interactor
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    private func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100.0
    }
    
}

extension TimelineViewController: TimelineViewModelDelegate {
    func reloadTable() {
        tableView.reloadData()
    }
}
