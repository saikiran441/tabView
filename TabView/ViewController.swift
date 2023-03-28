//
//  ViewController.swift
//  TabView
//
//  Created by Sai Kiran Reddy Pandilla on 09/03/23.
//

import UIKit

class BatsmenViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var hiddenSections = Set<Int>()
    let batsmenData = ["Rohit","Smith","Marnus","Kohli"]
    let batsmenViewData = [
        ["Born on 30 April 1987","No.1 Batsmen","Indian"],
        ["Born on 2 June 1989","No.2 Batsmen","Australian"],
        ["Born on 22 June 1994","No.3 Batsmen","Australian"],
        ["Born on 5 November 1988","No.4 Batsmen","Indian"],
    ]
    
    @IBOutlet weak var batsmenTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.batsmenTableView.delegate = self
        self.batsmenTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.batsmenViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.hiddenSections.contains(section) {
            return 0
        }
        
        return self.batsmenViewData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.batsmenViewData[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionButton = UIButton()
        sectionButton.setTitle(batsmenData[section],
                               for: .normal)
        sectionButton.backgroundColor = .systemBlue
        sectionButton.tag = section
        sectionButton.addTarget(self,
                                action: #selector(self.hideSection(sender:)),
                                for: .touchUpInside)
        
        return sectionButton
    }
    
    @objc
    private func hideSection(sender: UIButton) {
        let section = sender.tag
        
        func indexPathsForSection() -> [IndexPath] {
            var indexPaths = [IndexPath]()
            
            for row in 0..<self.batsmenViewData[section].count {
                indexPaths.append(IndexPath(row: row,
                                            section: section))
            }
            
            return indexPaths
        }
        
        if self.hiddenSections.contains(section) {
            self.hiddenSections.remove(section)
            self.batsmenTableView.insertRows(at: indexPathsForSection(),
                                      with: .fade)
        } else {
            self.hiddenSections.insert(section)
            self.batsmenTableView.deleteRows(at: indexPathsForSection(),
                                      with: .fade)
        }
    }
}


class BowlerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var bowlerTableView: UITableView!
    
    var hiddenSections = Set<Int>()
    let bowlerData = ["Bumrah","Anderson","Starc","Siraj"]
    let batsmenViewData = [
        ["Born on 30 April 1987","No.1 Bowler","Indian"],
        ["Born on 2 June 1989","No.2 Bowler","England"],
        ["Born on 22 June 1994","No.3 Bowler","Australian"],
        ["Born on 5 November 1988","No.4 Bowler","Indian"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bowlerTableView.delegate = self
        self.bowlerTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.batsmenViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.hiddenSections.contains(section) {
            return 0
        }
        
        return self.batsmenViewData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.batsmenViewData[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionButton = UIButton()
        sectionButton.setTitle(bowlerData[section],
                               for: .normal)
        sectionButton.backgroundColor = .systemBlue
        sectionButton.tag = section
        sectionButton.addTarget(self,
                                action: #selector(self.hideSection(sender:)),
                                for: .touchUpInside)
        
        return sectionButton
    }
    
    @objc
    private func hideSection(sender: UIButton) {
        let section = sender.tag
        
        func indexPathsForSection() -> [IndexPath] {
            var indexPaths = [IndexPath]()
            
            for row in 0..<self.batsmenViewData[section].count {
                indexPaths.append(IndexPath(row: row,
                                            section: section))
            }
            
            return indexPaths
        }
        
        if self.hiddenSections.contains(section) {
            self.hiddenSections.remove(section)
            self.bowlerTableView.insertRows(at: indexPathsForSection(),
                                      with: .fade)
        } else {
            self.hiddenSections.insert(section)
            self.bowlerTableView.deleteRows(at: indexPathsForSection(),
                                      with: .fade)
        }
    }
}

class AllRounderViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var allRounderTableView: UITableView!
    var hiddenSections = Set<Int>()
    let allRounderData = ["Ashwin","Green","Jadeja","Axar"]
    let allRounderViewData = [
        ["Born on 30 April 1987","No.1 AllRounder","Indian"],
        ["Born on 2 June 1989","No.2 All Rounder","Australian"],
        ["Born on 22 June 1994","No.3 All Rounder","Australian"],
        ["Born on 5 November 1988","No.4 All Rounder","Indian"],
    ]
    
    @IBOutlet weak var batsmenTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.allRounderTableView.delegate = self
        self.allRounderTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.allRounderViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.hiddenSections.contains(section) {
            return 0
        }
        
        return self.allRounderViewData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.allRounderViewData[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionButton = UIButton()
        sectionButton.setTitle(allRounderData[section],
                               for: .normal)
        sectionButton.backgroundColor = .systemBlue
        sectionButton.tag = section
        sectionButton.addTarget(self,
                                action: #selector(self.hideSection(sender:)),
                                for: .touchUpInside)
        
        return sectionButton
    }
    
    @objc
    private func hideSection(sender: UIButton) {
        let section = sender.tag
        
        func indexPathsForSection() -> [IndexPath] {
            var indexPaths = [IndexPath]()
            
            for row in 0..<self.allRounderViewData[section].count {
                indexPaths.append(IndexPath(row: row,
                                            section: section))
            }
            
            return indexPaths
        }
        
        if self.hiddenSections.contains(section) {
            self.hiddenSections.remove(section)
            self.batsmenTableView.insertRows(at: indexPathsForSection(),
                                      with: .fade)
        } else {
            self.hiddenSections.insert(section)
            self.allRounderTableView.deleteRows(at: indexPathsForSection(),
                                      with: .fade)
        }
    }
}


