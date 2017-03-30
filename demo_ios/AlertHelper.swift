import UIKit

struct AlertHelper {
  static func message(viewController: UIViewController, title: String, message: String, actions: [UIAlertAction]? = nil) {
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
}
