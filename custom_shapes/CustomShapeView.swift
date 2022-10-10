//
//  CustomShapeView.swift
//  custom_shapes
//
//  Created by Pranav Singh on 26/09/22.
//

import UIKit

class CustomShapeView: UIView {
    
    private var bezierPath: UIBezierPath!
    
    var shape: CustomShapes!

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = UIColor.darkGray
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        self.createRectangle()

        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        bezierPath.fill()

        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        bezierPath.stroke()
    }
    
    private func createRectangle() {
        bezierPath = UIBezierPath()
        
        bezierPath.move(to: CGPoint(x: 0.0, y: 40.0))

        // Create a line between the starting point and the bottom-left side of the view.
        bezierPath.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))

        // Create the bottom line (bottom-left to bottom-right).
        bezierPath.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))

        // Create the vertical line from the bottom-right to the top-right side.
        //bezierPath.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))

        // Close the path. This will create the last line automatically.
        bezierPath.close()

        
        
    }

}
