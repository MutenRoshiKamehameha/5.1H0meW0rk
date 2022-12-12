//
//  ViewController.swift
//  5.1H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    var zakazy = [Zakaz(image20: "imageZakaz", name20: "Oasis", description20: "1 shavuha", description220: "2 hot dog", price20: "400"),Zakaz(image20: "imageZakaz", name20: "Oasis", description20: "1 shavuha", description220: "2 hot dog", price20: "400"),Zakaz(image20: "imageZakaz", name20: "Oasis", description20: "1 shavuha", description220: "2 hot dog", price20: "400")]
    
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return zakazy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "zakaz_cell", for: indexPath) as! ZakazTableViewCell
        cell.name.text = zakazy[indexPath.row].name20
        cell.image1.image = UIImage(named: "\(zakazy[indexPath.row].image20)")
        cell.description1.text = zakazy[indexPath.row].description20
        cell.description2.text = zakazy[indexPath.row].description220
        cell.price.text = zakazy[indexPath.row].price20
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
}
