//
//  ViewController.swift
//  viewExample
//
//  Created by appcot on 2017/08/05.
//  Copyright © 2017年 appcot. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Identifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // ひとまず今回は10件のみ表示とする
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // forCellReuseIdentifierに設定したIdentifierを指定
        let cell = tableView.dequeueReusableCell(withIdentifier: "Identifier", for: indexPath) as! TableViewCell
        cell.setData(indexPathNumber: indexPath)
        return cell
    }

}

