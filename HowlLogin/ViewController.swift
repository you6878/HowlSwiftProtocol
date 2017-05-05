//
//  ViewController.swift
//  HowlLogin
//
//  Created by 유명식 on 2017. 5. 5..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController,myProtocol {

    func sendStringFromNextViewToMainView(str: String) {
        
        login_state_label.text = str + "님이 로그아웃 하셨습니다."
        
    }
    @IBOutlet weak var login_state_label: UILabel!
    
    
    @IBOutlet weak var pass: UITextField!
  
    @IBOutlet weak var id: UITextField!

    @IBAction func loginButton(_ sender: Any) {
        
        
        
        if(pass.text == "1234"){
            
           performSegue(withIdentifier: "login", sender: nil)
        }else{
                    //다음 화면 안넘어 코드
            let alert = UIAlertController(title: "아이디 확인", message: "비말번호가 맞지 않습니다.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)

        }
    
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "login"){
            
            let nextVC:NextViewController = segue.destination as! NextViewController
            nextVC.receiveStr = id.text!
            nextVC.delegate = self
            
        }
        
    }
    



}

