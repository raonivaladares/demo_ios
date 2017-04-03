import UIKit

class AlertsViewController: UIViewController {
  
  
  @IBOutlet weak var choicesLabel: UILabel!
  
  
  @IBAction func callAlertAction(_ sender: UIButton) {
    AlertHelper.alert(viewController: self, title: "Simple Alert", message: "This is a simple alert")
  }
  
  
  @IBAction func callAlertChoiceAction(_ sender: UIButton) {
    let yesAction = UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You chose: Yes"
      self.choicesLabel.text = text
    })
    
    let noAction = UIAlertAction(title: "No", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You chose: No"
      self.choicesLabel.text = text
    })
    
    var actions: [UIAlertAction] = []
    actions.append(noAction)
    actions.append(yesAction)
    AlertHelper.alert(viewController: self, title: "Choice Alert", message: "Choose something", actions: actions)
  }
  
  
  @IBAction func alertManyChoices(_ sender: UIButton) {
    let normalAction = UIAlertAction(title: "Normal", style: .default, handler: { (action: UIAlertAction!) in
      let text = "You chose: Normal"
      self.choicesLabel.text = text
    })
    
    let desctutiveAction = UIAlertAction(title: "Destructive", style: .destructive, handler: { (action: UIAlertAction!) in
      let text = "You chose: Destrutive"
      self.choicesLabel.text = text
    })
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
      let text = "You chose: Cancel"
      self.choicesLabel.text = text
    })
    
    var actions: [UIAlertAction] = []
    actions.append(normalAction)
    actions.append(desctutiveAction)
    actions.append(cancelAction)
    AlertHelper.alert(viewController: self, title: "Choice Alert", message: "Choose something", actions: actions)
  }
  
  var textField: UITextField! = UITextField()
  @IBAction func alertWithInputAction(_ sender: UIButton) {
    let action = UIAlertAction(title: "Ok", style: .default, handler: { (_) in
      let text = "You wrote: \(self.textField?.text ?? "")"
      self.choicesLabel.text = text
    })
    AlertHelper.alertWithInput(viewController: self, title: "Input Alert", message: "Type something", textFieldConfiguration: configurationTextField,  sucessActions: action)
  }
  
  func configurationTextField(textField: UITextField!) {
    textField.placeholder = "Write something"
    self.textField = textField
  }
}
