//
//  imageViewController.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    var personImage = UIImage(named: "foto1")!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = personImage
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
