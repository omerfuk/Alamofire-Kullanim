//
//  ViewController.swift
//  Alamofire Kullanim
//
//  Created by Ömer Faruk Kılıçaslan on 4.05.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func kisiEkle(){
        let parametreler:Parameters = ["kisi_ad":"TESTALAMOFIRE","kisi_tel":"999999"]
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: parametreler).responseJSON{ response in
            
            if let data = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        print(json)
                    }
                    
                } catch  {
                    print(error.localizedDescription)
                }
            }
            
        }
            
    }

}

