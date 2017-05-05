//
//  NextViewController.swift
//  HowlLogin
//
//  Created by 유명식 on 2017. 5. 5..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit

protocol myProtocol{
    func sendStringFromNextViewToMainView(str:String)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    @IBAction func close(_ sender: Any) {
        delegate?.sendStringFromNextViewToMainView(str: label.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
    var receiveStr = "";
    
    var delegate :myProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = receiveStr
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
