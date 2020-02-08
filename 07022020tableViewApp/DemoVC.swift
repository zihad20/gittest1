//
//  DemoVC.swift
//  07022020tableViewApp
//
//  Created by A on 07/02/2020.
//  Copyright © 2020 MatrixTeam. All rights reserved.
//

import UIKit

class DemoVC: UIViewController {

    @IBOutlet weak var demoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        demoTableView.delegate = self
        demoTableView.dataSource = self
        let nib = UINib(nibName: TableViewCell.id, bundle: nil)
        self.demoTableView.register(nib, forCellReuseIdentifier: TableViewCell.id)
    }
    
}

extension DemoVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = demoTableView.dequeueReusableCell(withIdentifier: "cell")
//        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//        cell?.textLabel?.text = "test"
//        cell?.detailTextLabel?.text = "dsbsdjbc"
//
//        //cell?.imageView?.image = #imageLiteral(resourceName: "download")
//        cell?.imageView?.image = UIImage(named: "download")
//
//        let itemSize = CGSize.init(width: 40, height: 40) // your custom size
//        UIGraphicsBeginImageContextWithOptions(itemSize, false, UIScreen.main.scale);
//        let imageRect = CGRect.init(origin: CGPoint.zero, size: itemSize)
//        cell?.imageView?.image!.draw(in: imageRect)
//        cell?.imageView?.image! = UIGraphicsGetImageFromCurrentImageContext()!;
//        UIGraphicsEndImageContext()
//        
//        cell?.imageView?.layer.cornerRadius = (itemSize.width) / 2
//        cell?.imageView?.clipsToBounds = true
//
//        return cell ?? UITableViewCell()
        
        
        
//        let cell = demoTableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as? TableViewCell
//        cell?.titleLabel.text = "HELLO"
//        cell?.descriptionLabel.text = "DFGDFG DFG"
//        cell?.serialLabel.text = "1"
//        return cell ?? UITableViewCell()
        
        guard let cell = demoTableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as? TableViewCell else{
            return UITableViewCell()
        }
        cell.serialLabel.text = "1"
        cell.descriptionLabel.text = "SDF sdf"
        cell.titleLabel.text = "SD RT"
        return cell
        
        
    }
}
