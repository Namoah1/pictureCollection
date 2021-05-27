//
//  BlownUpViewController.swift
//  PicStargram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

class BlownUpViewController: UIViewController {

    
    @IBOutlet weak var blownUpImageView: UIImageView!
    
    var picture: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blownUpImageView.image = picture
//        view.addSubview(blownUpImageView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
