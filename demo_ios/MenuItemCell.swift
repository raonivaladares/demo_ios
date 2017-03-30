import UIKit

class MenuItemCell: UITableViewCell {
  
  @IBOutlet private weak var title: UILabel!
  @IBOutlet private weak var icon: UIImageView!
  
  func build(title: String, imageName: String) {
    self.title.text = title
    self.icon.image = UIImage(named: imageName)
  }
}
