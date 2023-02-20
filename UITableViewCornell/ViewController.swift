//
//  ViewController.swift
//  UITableViewCornell
//
//  Created by Barış Savaş on 16.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var tableView = UITableView()
    let reuseIdentifier = "cafeteriaCellReuse"
    let cellHeight: CGFloat = 90
    var cafs: [Cafeteria] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cafeteria"
        view.backgroundColor = .systemBlue
        let okenshields = Cafeteria(name: "okenshields", isFavorite: false, rating: .terrible, networkSpeed: .good)
        let rpcc = Cafeteria(name: "rpcc", isFavorite: false, rating: .moderate, networkSpeed: .good)
        let appel = Cafeteria(name: "appel", isFavorite: false, rating: .moderate, networkSpeed: .terrible)
        let becker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .moderate)
        let befcker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .good)
        let becdker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .moderate)
        let becsker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .terrible)
        let becwsker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .terrible)
        let becrwker = Cafeteria(name: "becker", isFavorite: false, rating: .moderate, networkSpeed: .good)
        cafs = [okenshields, rpcc, appel, becker, befcker, becdker, becsker, becwsker, becrwker]
        // MARK: Initialize tableView
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        // tableView.delegate = self
        tableView.register(CafTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        setupConstraints()
    }
    func setupConstraints() {
        // Setup the constraints for our views
//        NSLayoutConstraint.activate([
//            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.right.equalTo(view)
            make.left.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cafs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as?
            CafTableViewCell {
            let cafeteria = cafs[indexPath.row]
            cell.configure(caf: cafeteria)
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
