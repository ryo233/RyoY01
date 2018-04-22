//
//  TeachViewController.swift
//  RyoY01
//
//  Created by Ryo on 2018/4/16.
//  Copyright © 2018年 Ryo. All rights reserved.
//

import UIKit

class TeachViewController: UIViewController {
    @IBOutlet weak var teachButton: UIButton!
    @IBOutlet weak var teachImageView: UIImageView!
    @IBAction func teachButton(_ sender: Any) {
        if teachImageView.image == UIImage(named: "teach01") {
            teachImageView.image = UIImage(named: "teach02")
        }else if teachImageView.image == UIImage(named: "teach02") {
            teachImageView.image = UIImage(named: "teach03")
        }else if teachImageView.image == UIImage(named: "teach03") {
            teachImageView.image = UIImage(named: "teach04")
        }else if teachImageView.image == UIImage(named: "teach04") {
            teachImageView.image = UIImage(named: "teach05")
        }else if teachImageView.image == UIImage(named: "teach05") {
            teachImageView.image = UIImage(named: "teach06")
        }else if teachImageView.image == UIImage(named: "teach06") {
            teachImageView.isHidden = true
            teachButton.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teachImageView.image = UIImage(named: "teach01")
        teachImageView.isHidden = false
        teachButton.isHidden = false

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
