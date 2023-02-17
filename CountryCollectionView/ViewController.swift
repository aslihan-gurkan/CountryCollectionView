//
//  ViewController.swift
//  CountryCollectionView
//
//  Created by Aslıhan Gürkan on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryCollectionView: UICollectionView!
    
    let countries = ["turkey", "canada", "brazil", "spain", "japan", "uk", "usa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryCollectionView.delegate = self
        countryCollectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = countryCollectionView.dequeueReusableCell(withReuseIdentifier: "countryCell", for: indexPath) as! CountryCell
        
        cell.countryImageView.image = UIImage(named: countries[indexPath.row])
//        cell.layer.cornerRadius = cell.frame.height / 2
        
        return cell
    }
    
    
    
}
