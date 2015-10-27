
import UIKit

class ThirdViewController: UIViewController {
  /*
  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
  
  */
    
    @IBAction func calculateButton(sender: AnyObject) {
        
        var numberInputText = numberInput.text!
        
        var numberInputInt:Int = Int(numberInputText)!
        
        
//        if (numberInputInt % 2) == 0 {
//            print("is even")
//        }
//            else {
//            print("is not even")
//        }
    
        if (numberInputInt % 2) == 0 {
            displayText.text = "is even"
        }
        else {
            displayText.text = "is not even"
        }
        
        
//            else if (numberInputInt % 2) < 0 || (numberInputInt % 2) > 0 {
//            
//            displayText.text = "is not even"
//        }

        
    }
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var displayText: UILabel!

}
