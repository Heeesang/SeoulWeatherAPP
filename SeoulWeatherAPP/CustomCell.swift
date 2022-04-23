//
//  CustomCell.swift
//  SeoulWeatherAPP
//
//  Created by 곽희상 on 2022/04/22.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell{
    
    static let cellId = "CellId"
    
    let icon = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {
        
    }
}
