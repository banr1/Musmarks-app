import Foundation
import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!

    private lazy var viewModel: SearchViewModel = {
        let interactor = SearchViewModel()
        interactor.delegate = self
        return interactor
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.backgroundImage = UIImage()
        searchBar.backgroundColor = UIColor(
            red: CGFloat(2) / 255.0,
            green: CGFloat(152) / 255.0,
            blue: CGFloat(104) / 255.0,
            alpha: 1
        )
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
        ) -> Int {
        return viewModel.queryCellsModels.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "QueryTableViewCell"
            ) as! QueryTableViewCell
        cell.bind(withModel: viewModel.queryCellsModels[indexPath.row])
        return cell
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(93)
    }
    
}

extension SearchViewController: SearchViewModelDelegate {
    func reloadTable() {
        tableView.reloadData()
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let query = searchBar.text else { return }
        viewModel.searchMusic(byQuery: query)
    }
}
