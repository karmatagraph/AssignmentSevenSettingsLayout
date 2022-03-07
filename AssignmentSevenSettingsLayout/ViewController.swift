//
//  ViewController.swift
//  AssignmentSevenSettingsLayout
//
//  Created by karma on 3/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var imgLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    // contents of the settings app
    let options = [
        //this is a 2d array so we can separate sections and rows
        ["Sign in to your iPhone"],
        ["Screen Time"],
        ["General", "Accessibility", "Privacy"],
        ["Password"],
        ["Safari", "News","Translate","Maps","Shortcuts", "health", "Siri & Search", "Photos", "Game Center"]

    ]
//    var createdOptions: [Option] = []
//    var options: [Any] = []
    
//    let opt: [Option]=[
//        //
//        [Option(title: "Sign in to your iPhone", img: UIImage(named: "user")!)],
//        [Option(title: "Screen Time", img: UIImage("screentime"))],
//        [Option(title: "General", img: UIImage(named: "set")),Option(title: "Accessibility", img: UIImage(named: "access")),Option(title: "Privacy", img: UIImage(named: "privacy))],
//        [Option(title: "Password", img: UIImage(named: "pass"))],
//        [Option(title: "Safari", img: UIImage(named: "safari")),Option(title: "News", img: UIImage(named: "news")),Option(title: "Maps", img: UIImage(named: "maps")),Option(title: "Shortcuts", img: UIImage("short")),Option(title: "Siri & Search", img: UIImage(named: "siri")),Option(title: "Photos", img: UIImage(named: "photos")),Option(title: "Game Center", img: UIImage(named: "gamec"))]
//    ]
//    // function to create array
//    func createOptions() -> [Option]{
//        var tempOption: [Option] = []
//        let option1 = Option(title: "Sign in to your iPhone", img: UIImage(named: "user")!)
//        let option2 = Option(title: "Screen Time",  img: UIImage(named: "screentime")!)
//        let option3 = Option(title: "General",  img: UIImage(named: "set")!)
//        let option4 = Option(title: "Accessibility",  img: UIImage(named: "access")!)
//        let option5 = Option(title: "Privacy", img: UIImage(named: "privacy")!)
//        
//        tempOption.append(option1)
//        tempOption.append(option2)
//        tempOption.append(option3)
//        tempOption.append(option4)
//        tempOption.append(option5)
//        
//        return tempOption
//    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createdOptions = createOptions()
//        // create the 2d
//         options = [
//            [createdOptions[0]],
//        ]
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        print("the number of section is: \(options.count)")
        return options.count
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        cell.textLabel?.text = options[indexPath.section][indexPath.row]
        
        cell.backgroundColor = .white
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options[section].count
    }
    
}
