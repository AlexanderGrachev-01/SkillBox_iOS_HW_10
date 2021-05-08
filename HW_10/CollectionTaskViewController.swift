//
//  CollectionTaskViewController.swift
//  HW_10
//
//  Created by Александр Грачев on 02.02.2021.
//

import UIKit

class CollectionTaskViewController: UIViewController {
    
    var imageList = ["sneakers1.png", "sneakers2.png", "sneakers3.png", "sneakers4.png", "sneakers5.png", "sneakers6.png"]
    
    var sneakersNames = ["NikeAir1", "NikeAir2", "NikeAir3", "NikeAir4", "NikeAir5", "NikeAir6"]
    
    var sneakersPrice = [4990, 5990, 1990, 6490, 1990, 9990]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}



extension CollectionTaskViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SneakersCell", for: indexPath) as! SneakersCollectionViewCell
        cell.sneakersImageView.image = UIImage(named: imageList[indexPath.row])
        cell.sneakersNameLabel.text = sneakersNames[indexPath.row]
        cell.sneakersPriceLabel.text = "\(sneakersPrice[indexPath.row])"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = UIScreen.main.bounds.size.width / 2
        return CGSize(width: w, height: w)
    }
}
