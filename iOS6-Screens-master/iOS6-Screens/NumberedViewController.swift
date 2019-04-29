//
//  NumberedViewController.swift
//  iOS6-Screens
//
//  Created by Nelson Gonzalez on 4/29/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {

    let label = UILabel() //Zero size label
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //1. customize the label
        
        label.textColor = .white //Set label color
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.text = "1"
        label.sizeToFit()
        label.center = view.center //Reposition after a new size.
        
        //Need to add it to the view.
        view.addSubview(label)
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true) //call it to pass the same info to this.
        
        //2. Figure out how to display the stack count
        
        if let number = navigationController?.viewControllers.count { //tells us how many there are
            label.text = String(number)
            label.sizeToFit()
            label.center = view.center
        }
    }
    //One way..
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
