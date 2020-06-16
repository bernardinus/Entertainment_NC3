//
//  LeaderboardViewController.swift
//  ABC5BasicClient
//
//  Created by Aldo on 14/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController {

    @IBOutlet var tableview: UITableView!
    let name = ["aldo", "dimas", "nermamrd"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "LeaderboardTableViewCell", bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: "LeaderboardTableViewCell")
        tableview.delegate = self
        tableview.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LeaderboardViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderboardTableViewCell", for: indexPath) as! LeaderboardTableViewCell
        cell.nametext?.text = name[indexPath.row]
        return cell
    }
}
