//
//  ViewController.swift
//  tableview
//
//  Created by Usuário Convidado on 09/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var minhaTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTable.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = "Bom dia"
        
        return celula
    }

}

