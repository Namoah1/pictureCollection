//
//  pictureCollectionViewCell.swift
//  PicStargram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

class pictureCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    func configure(with picture: UIImage){
        pictureImageView.image = picture
    }
}
