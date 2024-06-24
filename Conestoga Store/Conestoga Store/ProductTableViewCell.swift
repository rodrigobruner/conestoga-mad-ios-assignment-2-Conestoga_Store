//
//  ProductTableViewCell.swift
//  Conestoga Store
//
//  Created by user228347 on 6/23/24.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var labelPrice: UILabel!
    
    
    func set(title:String, description:String, price:Double){
        labelTitle.text = title
        labelDescription.text = description
        labelPrice.text = "$\(String(format: "%.2f", price))"
    }
}
