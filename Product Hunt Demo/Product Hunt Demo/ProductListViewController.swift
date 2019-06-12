//
//  ViewController.swift
//  Product Hunt Demo
//
//  Created by RAMDHAN CHOUDHARY on 12/06/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    let productImageNameArray = ["h1","h2","h3","h4","h5","h6","h7","h8","h9","h10","h11",]
    var selectedImageName = "h1"
    
    //MARK : View controller's life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register Collection View Cell
        self.productCollectionView.register(UINib(nibName: "ProductViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductViewCell")
        customNavigationBarButtons()
    }
    
    func customNavigationBarButtons()
    {
        //Set Controller title
        self.title = "Product Hunt News Feed"
        
        //Add custom profile bar button
        let profileButton = UIButton(type: .custom)
        profileButton.setImage(UIImage(named: "profile_rounded"), for: .normal)
        profileButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        profileButton.addTarget(self, action: #selector(self.profileBarButtonClicked), for: .touchUpInside)
        profileButton.widthAnchor.constraint(equalToConstant: 38).isActive = true
        profileButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        profileButton.layer.cornerRadius = 19
        profileButton.layer.borderWidth = 2
        profileButton.layer.borderColor = UIColor.red.cgColor
        let profileBarButton = UIBarButtonItem(customView: profileButton)
        self.navigationItem.setLeftBarButton(profileBarButton, animated: true)
    }
    
    @objc func profileBarButtonClicked(){
        print("Show user profile controller")
    }

    //MARK : Collection view data source and delegate methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productImageNameArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ProductViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductViewCell", for: indexPath) as! ProductViewCell
        cell.productImageView.image = UIImage(named: productImageNameArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedImageName = productImageNameArray[indexPath.row]
        performSegue(withIdentifier: "showProductDetailsController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showProductDetailsController") {
            let controller = segue.destination as? ProductDetailsController
            controller?.selectedImageName = selectedImageName
        }
    }
    
}

