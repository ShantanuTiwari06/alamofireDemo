//
//  ViewController.swift
//  alamofireTest
//
//  Created by Shantanu Tiwari on 26/09/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://api.androidhive.info/contacts/")
            .response { (response) in
                debugPrint(response)
        }
        
        let header : HTTPHeaders = [
            .accept("application/json")
        ]
        
        AF.request("https://httpbin.org/get" , headers: header)
            .responseJSON { (response) in
                print(response)
        }
    }
}

