//
//  DefailViewController.swift
//  MyStory
//
//  Created by Michael Waller on 4/10/24.
//

import UIKit

class DetailViewController: ViewController{

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
       
       // You might opt to use variables to store data passed from prepare(for:sender:)
       var imageToDisplay: UIImage?
       var textToDisplay: String?
        var theTitle: String?

       override func viewDidLoad() {
           super.viewDidLoad()
           pageTitle.text = theTitle
           imageView.image = imageToDisplay
           textView.text = textToDisplay
           
       }

}
