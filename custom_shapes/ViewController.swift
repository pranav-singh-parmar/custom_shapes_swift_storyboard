//
//  ViewController.swift
//  custom_shapes
//
//  Created by Pranav Singh on 26/09/22.
//

import UIKit

//https://www.appcoda.com/bezier-paths-introduction/
//https://medium.com/orion-innovation-turkey/uibezierpath-is-a-class-that-allows-us-to-make-vector-drawings-with-swift-e9bc3cb41ad9

enum CustomShapes: Int {
    case Rectangle = 0, Triangle
}

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var shapesTV: UITableView!

    //MARK: - Custom Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        shapesTV.delegate = self
        shapesTV.dataSource = self
    }
}

//MARK: - UITableView Delegate and DataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomShapesTableViewCell.self), for: indexPath) as! CustomShapesTableViewCell
        
        let customShape = CustomShapes(rawValue: indexPath.row) ?? .Rectangle
        cell.setUpCustomShapeView(forShape: customShape)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

