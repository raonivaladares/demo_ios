import UIKit

struct AlertHelper {
  static func alert(viewController: UIViewController, title: String, message: String, actions: [UIAlertAction]? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    if let actions = actions {
      for action in actions {
          alertController.addAction(action)
      }
    } else {
      let okAction = UIAlertAction(title: "OK", style: .default)
      alertController.addAction(okAction)
    }
    viewController.present(alertController, animated: true)
  }
  
  static func alertWithInput(viewController: UIViewController, title: String, message: String, textFieldConfiguration: @escaping (UITextField) -> Void, sucessActions: UIAlertAction) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
    alertController.addTextField(configurationHandler: textFieldConfiguration)
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
    alertController.addAction(cancelAction)
    alertController.addAction(sucessActions)
    viewController.present(alertController, animated: true)
  }
}
