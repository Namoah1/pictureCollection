//
//  pictureCollectionViewController.swift
//  PicStargram
//
//  Created by Nana Adwoa Odeibea Amoah on 5/26/21.
//  Copyright © 2021 Nana Adwoa Odeibea Amoah. All rights reserved.
//

import UIKit

class pictureCollectionViewController: UICollectionViewController {

    let dataSource: [UIImage] = [UIImage(named: "fufu")!, UIImage(named: "waakye")!, UIImage(named: "banku")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = pictureCollectionViewCell()
        
        if let pictureCell = collectionView.dequeueReusableCell(withReuseIdentifier: "pictureCell", for: indexPath) as? pictureCollectionViewCell {
            
            pictureCell.configure(with: dataSource[indexPath.row])
            cell = pictureCell
            
        }
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedImage = dataSource[indexPath.row]
        performSegue(withIdentifier: "BlowUpSegue", sender: selectedImage)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let blowUpVC = segue.destination as? BlownUpViewController {
            if let selectedImage = sender as? UIImage {
                blowUpVC.picture = selectedImage //fix
                //blowUpVC.blownUpImageView.image = selectedImage //previous line
                
            }
        }
    }
    

}
