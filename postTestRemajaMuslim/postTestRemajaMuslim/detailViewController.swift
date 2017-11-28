//
//  detailViewController.swift
//  postTestRemajaMuslim
//
//  Created by abdul fatah on 10/26/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    @IBOutlet weak var labelKajian: UILabel!
    @IBOutlet weak var gambarKajian: UIImageView!
    var passNamaKajian:String?
    var passGambarKajian:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelKajian.text = passNamaKajian
        gambarKajian.image = UIImage(named: passGambarKajian!)
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
