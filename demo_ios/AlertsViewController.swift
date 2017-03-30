import UIKit

class AlertsViewController: UIViewController {
  
  
  @IBOutlet weak var choicesLabel: UILabel!
  
  
  @IBAction func callAlertAction(_ sender: UIButton) {
    AlertHelper.message(viewController: self, title: "Simple Alert", message: "This is a simple alert")
  }
  
  
  @IBAction func callAlertChoiceAction(_ sender: UIButton) {
    let yesAction = UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You choose: Yes"
      self.choicesLabel.text = text
    })
    
    let noAction = UIAlertAction(title: "No", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You choose: No"
      self.choicesLabel.text = text
    })
    
    var actions: [UIAlertAction] = []
    actions.append(noAction)
    actions.append(yesAction)
    AlertHelper.message(viewController: self, title: "Choice Alert", message: "Choose something", actions: actions)
  }
  
  
  @IBAction func alertManyChoices(_ sender: UIButton) {
    let normalAction = UIAlertAction(title: "Normal", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You choose: Normal"
      self.choicesLabel.text = text
    })
    
    let desctutiveAction = UIAlertAction(title: "Destructive", style: .destructive, handler: { (action: UIAlertAction!) in
      let text = "You choose: Destrutive"
      self.choicesLabel.text = text
    })
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
      let text = "Cancel"
      self.choicesLabel.text = text
    })
    
    var actions: [UIAlertAction] = []
    actions.append(normalAction)
    actions.append(desctutiveAction)
    actions.append(cancelAction)
    AlertHelper.message(viewController: self, title: "Choice Alert", message: "Choose something", actions: actions)
  }
  
  
}
