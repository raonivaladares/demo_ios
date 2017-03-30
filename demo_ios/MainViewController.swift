import UIKit

class MainViewController: UITableViewController {
  
  fileprivate var menuItems: [MenuItem]!
  
  // MARK: View life-cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    menuItems = menuSource()
  }
  
  // MARK: Private methods
  private func menuSource() -> [MenuItem]{
    var menuItems: [MenuItem] = []
    let alerts = MenuItem(title: "Alerts", imageName: "iconAlert")
  
    menuItems.append(alerts)
    return menuItems
  }
}

// MARK: Extensions
extension MainViewController {
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuItems.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath) as! MenuItemCell
    
    let item = menuItems[indexPath.row]
    cell.build(title: item.title, imageName: item.imageName)
    
    return cell
  }
}



