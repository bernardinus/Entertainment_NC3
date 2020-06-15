//
//  AbilityViewController.swift
//  ABC5besic
//
//  Created by Dimas Pagam on 15/06/20.
//  Copyright © 2020 Dimas Pagam. All rights reserved.
//

import UIKit

class AbilityViewController: UIViewController {

    @IBOutlet var abilityTable: UITableView!
    let Ability = ["ability one","ability two","ability three","ability four"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "AbilityTableViewCell", bundle: nil)
        abilityTable.register(nib, forCellReuseIdentifier: "AbilityTableViewCell")
        abilityTable.delegate = self
        abilityTable.dataSource = self
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

extension AbilityViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Ability.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = abilityTable.dequeueReusableCell(withIdentifier: "AbilityTableViewCell", for: indexPath) as! AbilityTableViewCell
        cell.AbilityName?.text = Ability[indexPath.row]
        return cell
        
    }
    
}
