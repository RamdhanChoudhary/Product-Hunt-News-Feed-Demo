//
//  ProductViewCell.swift
//  Product Hunt Demo
//
//  Created by RAMDHAN CHOUDHARY on 12/06/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {

    @IBOutlet weak var productContainerView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productTaglineLabel: UILabel!
    @IBOutlet weak var productDescriptionTextView: UITextView!
    @IBOutlet weak var upvoteButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    
    
    //MARK : Collection Cell View life cycle method
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Cell container, buttons layer customization
        customRoundedBorder(customView: productContainerView, cornerRadius:10 )
        customRoundedBorder(customView: upvoteButton, cornerRadius: 5)
        customRoundedBorder(customView: commentButton, cornerRadius: 5)
    }

}

extension UICollectionViewCell
{
    func customRoundedBorder(customView:UIView, cornerRadius:CGFloat)
    {
        customView.layer.cornerRadius = cornerRadius
        customView.layer.borderWidth = 1
        customView.layer.borderColor = UIColor(red:32/255, green:92/255, blue:132/255, alpha: 1).cgColor
    }
}
