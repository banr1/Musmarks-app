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

    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
        ) -> Int {
        return viewModel.postCellsModels.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "PostTableViewCell"
            ) as! PostTableViewCell
        cell.bind(withModel: viewModel.postCellsModels[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(136)
    }
    
    private func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100.0
    }
    
//    @IBAction func didTapAddButton(_ sender: Any) {
//        viewModel.addPost()
//    }
    
    @IBAction func refreshTable(_ sender: Any) {
        tableView.reloadData()
    }
}

extension TimelineViewController: TimelineViewModelDelegate {
    func reloadTable() {
        tableView.reloadData()
    }
}
