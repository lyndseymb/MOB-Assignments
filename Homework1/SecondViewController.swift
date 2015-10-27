
import UIKit

class SecondViewController: UIViewController {
  
  //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    
    @IBAction func addButtonClicked(sender: AnyObject) {
        
        var latestInput:Int = Int(numberInput.text!)!

        
        var addtoTotal:Int = Int(displaySum.text!)!
        
        
        var Sum = latestInput + addtoTotal
        
    //   OR     addtoTotal = latestInput + addtoTotal

        
        displaySum.text = String(Sum)
    
}

    
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var displaySum: UILabel!
    
}
