//
//  CheckViewController.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/6/22.
//

import UIKit

class CheckViewController: UIViewController {
            
    // MARK: - Properties
    let checkView = CheckView()
    let model = OrderModel()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Чек"
        view.addSubview(checkView.tableView)
        view.addSubview(checkView.payButton)
        view.addSubview(checkView.finalTextField)
        
        checkView.tableView.dataSource = self
        checkView.payButtonTarget(self, selector: #selector(payButtonTarget))
        
    }
    
    // MARK: - Actions
    @objc func payButtonTarget() {
        navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: - Table View Data Source
extension CheckViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell") as! OrderCell
        let order = model.orders[indexPath.row]
        cell.nameLabel.text = order.name
        cell.sumLabel.text = "\(order.price) р"
        cell.descriptionLabel.text = order.description
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
