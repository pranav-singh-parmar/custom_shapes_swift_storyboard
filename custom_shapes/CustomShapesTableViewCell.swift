//
//  CustomShapesTableViewCell.swift
//  custom_shapes
//
//  Created by Pranav Singh on 10/10/22.
//

import UIKit

class CustomShapesTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    
    
    //MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //MARK: - Custom Methods
    func setUpCustomShapeView(forShape shape: CustomShapes) {
        let width: CGFloat
        let height: CGFloat
        
        switch shape {
        case .Rectangle:
            width = 240
            height = 160
        default:
            width = 160
            height = 160
        }
        

        let deviceDimemsion = UIScreen.main.bounds.size
        
        let customShapeView = CustomShapeView(frame: CGRect(x: deviceDimemsion.width/2 - width/2,
                                              y: 20,
                                              width: width,
                                              height: height))
        customShapeView.shape = shape
        self.contentView.addSubview(customShapeView)
    }
}
