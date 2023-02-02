//
//  MainViewController.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 2.02.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .blue
        setupTableView()
    }


}
