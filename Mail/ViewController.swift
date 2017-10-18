//
//  ViewController.swift
//  Mail
//
//  Created by macbookUser on 18/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var correos = [["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return correos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.remitente.text = correos[indexPath.row]["remitente"]
        cell.asunto.text = correos[indexPath.row]["asunto"]
        cell.contenido.text = correos[indexPath.row]["contenido"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }


}

