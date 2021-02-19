//
//  ListViewController.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    private var listViewModel: ListViewModel!
    private var dataSource: ListTableViewDataSource<ListTableViewCell,ListData>!
    var selectedData: ListData?

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        self.showActivityIndicator()
        self.listViewModel =  ListViewModel()
        self.listViewModel.bindListViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        self.dataSource = ListTableViewDataSource(cellIdentifier: "ListTableViewCell", items: self.listViewModel.listData.results, configureCell: { (cell, data) in
            cell.data = data
        })
        
        DispatchQueue.main.async {
            self.hideActivityIndicator()
            self.listTableView.dataSource = self.dataSource
            self.listTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DetailsViewController {
            controller.data = self.selectedData
        }
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedData = self.listViewModel.listData.results[indexPath.row]
        self.performSegue(withIdentifier: "presentDetails", sender: self)
    }
}
