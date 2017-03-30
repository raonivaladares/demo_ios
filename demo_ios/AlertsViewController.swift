import UIKit

class AlertsViewController: UIViewController {
  
  
  @IBAction func callAlertAction(_ sender: UIButton) {
    AlertHelper.message(viewController: self, title: "Simple Alert", message: "This is a simple alert")
  }
}
