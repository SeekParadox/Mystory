//
//  ViewController.swift
//  MyStory
//
//  Created by Michael Waller on 4/8/24.
//

import UIKit

class ViewController: UIViewController {
    
//    let backStory = StoryObject(name: "Luffy", image: UIImage(named: "gallimimus")!, body: "t")
    
//    let weekness = StoryObject(name: "", image: UIImage(named: "troll")!, body: "I have none. I'm the goat!")
//
//    let power = StoryObject(name: "superPower", image: UIImage(named: "superPower")!, body: "I ate the Gum Gum fruit. So now I can stretch!")
    
    var pages: [StoryObject] = []
    @IBOutlet weak var pfp: UIImageView!
    
    
    let buttonData: [Int: (title: String, image: UIImage?, text: String)] = [
        1: (title: "My Story", image: UIImage(named: "luffy-story"), text: "I'm Monkey D. Luffy and I'm from the East Blue. After I met Shanks, a famous pirate, I decided to embark on an adventure to find the One Piece"),
        2: (title: "My Super Power", image: UIImage(named: "gum-gum"), text: "My super power, I ate the Gum-Gum-Fruit and now I am a man made of rubber! I can stretch as far as the oceans length and I can even reflect bullets!"),
        3: (title: "My Crew", image: UIImage(named: "crew"), text: "My crew consist of only the strongest pirates the world can find. With them each and every day my goal of finding the One Piece gets closer!")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pfp?.image = UIImage(named: "luffy-serious")
        
        pfp?.layer.cornerRadius = pfp.bounds.size.width / 2
        pfp?.clipsToBounds = true
        pfp?.contentMode = .scaleAspectFill

    


        
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Code to execute when the button is tapped
        print("Button was tapped")
        self.performSegue(withIdentifier: "detailSegue", sender: sender)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let destinationVC = segue.destination as? DetailViewController,
           let button = sender as? UIButton {
            print(button.tag)

            let buttonKey = button.tag // Directly use tag if your data keys are integers
            
            // Fetch the data for the button
            if let data = buttonData[buttonKey] {
                destinationVC.theTitle = data.title
                destinationVC.imageToDisplay = data.image
                destinationVC.textToDisplay = data.text
            }
        }
    }
    
}

