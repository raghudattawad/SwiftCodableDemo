//
//  ViewController.swift
//  SwiftCodableDemo
//
//  Created by Raghavendra Dattawad on 10/15/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
        guard let url = URL(string: "https://api.github.com/users/shashikant86") else { return
            
        }

        URLSession.shared.dataTask(with: url) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(MyGitHub.self, from: data)
           
                print(gitData)
                print(gitData.name!)
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    
    
    
    
    }



}
