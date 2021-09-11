//
//  EventTableViewController.swift
//  remember
//
//  Created by 홍태희 on 2021/09/09.
//

import UIKit

class EventTableViewController: UITableViewController {

    private let sections: [String] = ["Schedule", "Notification"]
        
    @IBAction func eventCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //cell에 들어갈것
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //test code
        let cell = tableView.dequeueReusableCell(withIdentifier: "listcell", for: indexPath)
        cell.textLabel?.text = "section : \(indexPath.section), row : \(indexPath.row)"
        return cell
    }
}
