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
    let actionSheet = MenuItem(title: "ActionSheet", imageName: "iconAlert")
    let popOvers = MenuItem(title: "PopOvers", imageName: "iconAlert")
    let tables = MenuItem(title: "Tables", imageName: "iconAlert")
    let notification = MenuItem(title: "Notification", imageName: "iconAlert")
  
    menuItems.append(alerts)
    menuItems.append(actionSheet)
    menuItems.append(popOvers)
    menuItems.append(tables)
    menuItems.append(notification)
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
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    switch indexPath.row {
    case 1:
      performSegue(withIdentifier: "TablesSegue", sender: self)
    default:
      performSegue(withIdentifier: "AlertsSegue", sender: self)
    }
  }
}



