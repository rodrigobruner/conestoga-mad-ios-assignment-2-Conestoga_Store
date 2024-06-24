//
//  ViewController.swift
//  Conestoga Store
//
//  Created by user228347 on 6/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var products: [Product] = [
        Product(title: "IBM Tablet", description: "Sutudent#", price: 999.00),
        Product(title: "Dell", description: " 2.7Ghz", price: 1299.99),
        Product(title: "Apple", description: "2Ghz", price: 2299.99),
        Product(title: "HP", description: "2.3Ghz", price: 299.99)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnMonitor(_ sender: Any) {
        print("Monitor")
        
        let alertController = UIAlertController(title: "Oops we had an error", message: "No monitors yet. Check back later!", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Handle OK button tap
        }

        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }
    

}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell
        
        let product:Product = products[indexPath.row]
        cell.set(title: product.title, description: product.description, price: product.price)
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
}
