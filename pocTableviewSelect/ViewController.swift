//
//  ViewController.swift
//  pocTableviewSelect
//
//  Created by MERABET Eric on 15/06/2020.
//  Copyright © 2020 MERABET Eric (Canal Plus Stagiaire). All rights reserved.
//

import UIKit

struct Store {
    static var audio:[Item] = [
        Item(type: 0, text: "Version Original"),
        Item(type: 0, text: "Version Française"),
    ]
    static var subtitles:[Item] = [
        Item(type: 1, text: "French"),
        Item(type: 1, text: "English"),
        Item(type: 1, text: "None"),
    ]
}

struct Item {
    let type: Int
    let text: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.delegate = self
            tableview.dataSource = self
            let cell = UINib(nibName: "ItemTableViewCell", bundle: nil)
            tableview.register(cell, forCellReuseIdentifier: "myCell")
            tableview.allowsMultipleSelection = true
            tableview.allowsMultipleSelectionDuringEditing = true
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? ItemTableViewCell else {
            return ItemTableViewCell()
        }

        let currentItem = indexPath.section == 0
                                                ? Store.audio[indexPath.row]
                                                : Store.subtitles[indexPath.row]

        if (indexPath.row == 0) {
            tableView.selectRow(at: indexPath, animated: false, scrollPosition: .none)
        } else {
            tableView.deselectRow(at: indexPath, animated: false)
        }

        cell.label.text = currentItem.text

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Audio" : "Subtitles"
    }
}

