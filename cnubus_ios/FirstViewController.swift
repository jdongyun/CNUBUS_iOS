//
//  FirstViewController.swift
//  cnubus_ios
//
//  Created by Dongyun on 2017. 4. 5..
//  Copyright © 2017년 CNU. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("HIHI")
        Alamofire.request("https://cnubus.dyun.kr/location/").responseJSON { response in
            print("hi")
            if let json = response.result.value {
                let js = json as! [String: AnyObject]
                print(js["bus_list"]![0]!)
                for i in 0...5{
                    print(i)
                }
                let js2 = js["bus_list"]![0] as! NSDictionary
                print(js2["id"]!)
                
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
/*
class Location: NSObject {
    var id: String
    var lat:Double
    var lng:Double
    var accu: Double
    var route:String
    var time:Int
    init(jsonDic : NSDictionary) {
        self.id = jsonDic["id"] != nil ? jsonDic["id"] as! String! : nil
        self.lat = jsonDic["lat"] != nil ? jsonDic["lat"] as! String! : nil
        self.lng = jsonDic["lng"] != nil ? jsonDic["lng"] as! String! : nil
        
        self.accu = jsonDic["accu"] != nil ? jsonDic["accu"] as! String! : nil
        
    }
}
*/
