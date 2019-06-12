//
//  ProductDetailsController.swift
//  Product Hunt Demo
//
//  Created by RAMDHAN CHOUDHARY on 12/06/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ProductDetailsController: UIViewController {

    var selectedImageName = "h1"
    @IBOutlet weak var productImageView: UIImageView!

    //MARK : View Controller's Life cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Product Details"
        productImageView.image = UIImage(named:selectedImageName )
    }

}
