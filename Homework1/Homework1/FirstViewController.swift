
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func buttonClicked(sender: AnyObject) {
        labelText.text = "hello world!"
        
    }
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var ageInput: UITextField!
    
    @IBAction func buttonClicked2(sender: AnyObject) {
        
        var name:String = nameInput.text!
        var age:String = ageInput.text!
        
        

        var greeting:String = "Hello " + name + ", you are " + age + " years old!"
    
        print(greeting)
        
    }
    
    @IBAction func buttonClicked3(sender: AnyObject) {
        
        var ageInput2:String = ageInput.text!
        
        var ageNumber:Int = Int(ageInput2)!
        
        
        if(ageNumber > 21) {
            print("You can drink")
        }
        if(ageNumber > 18) {
            print("You can vote")
        }
        if(ageNumber > 16) {
            print("You can drive")
        }
    }
    
    @IBAction func buttonClicked4(sender: AnyObject) {
        
        var ageInput2:String = ageInput.text!
        var ageNumber:Int = Int(ageInput2)!

        if(ageNumber > 16 && ageNumber < 18) {
            print("You can drive")
        }
        else if(ageNumber > 18 && ageNumber < 21) {
            print("You can drive and vote")
        }
        else if(ageNumber > 21) {
            print("You can drive, vote and drink (but not at the same time!")
            
        }
        
    }
    
    
    
  /*
  TODO one: hook up a button in interface builder to a new action (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
  
  TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW action (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
  TODO three: Hook up the button to a NEW action (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
  TODO four: Hook up the button to a NEW action (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
  */
}
