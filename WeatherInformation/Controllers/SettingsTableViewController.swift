//
//  SettingsTableViewController.swift
//  WeatherInformation
//
//  Created by Satyadip Singha on 08/04/22.
//  Copyright © 2022 Satyadip Singha. All rights reserved.
//

import Foundation
import UIKit

protocol SettingsDelegate {
    func settingsDone(vm: SettingsViewModel)
}

class SettingsTableViewController: UITableViewController {
    
    private var settingsViewModel = SettingsViewModel()
    let cellReuseIdentifier = "SettingsCell"
    var delegate: SettingsDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //Mark:- Update view model and dismiss view
    
    @IBAction func done() {
        if let delegate = self.delegate {
            delegate.settingsDone(vm: settingsViewModel)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    //Mark:- Tableview datasources and Delegates 
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.visibleCells.forEach { cell in
            cell.accessoryType = .none
        }
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
            let unit = Unit.allCases[indexPath.row]
            settingsViewModel.selectedUnit = unit 
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsViewModel.units.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let settingsItem = settingsViewModel.units[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.text = settingsItem.displayName
        if settingsItem == settingsViewModel.selectedUnit {
            cell.accessoryType = .checkmark
        }
        return cell
        
    }
    
    
}
