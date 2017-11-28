//
//  ViewController.swift
//  postTestRemajaMuslim
//
//  Created by abdul fatah on 10/26/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var namaSelected:String?
    var gambarSelected:String?
    
    @IBOutlet weak var tableView: UITableView!
    var konsulName = ["13 Tahun Tidak Mengucapkan Selamat Natal","Hukum Mempelajari Ilmu Filsafat","Masih Malas Bangun Shubuh","Tak Ada Mahabarata di Rumah Kita","Yang Jarang Diketahui dari Puasa Asyura"]
    var desc = ["Ini contoh yang baik yang bisa diteladani.","Ada juga ilmu yang fardhu kifayah yang","Dari Ibnu Mas’ud ia pernah berkata, “Di hadapan Nabi","Sungguh tak layak bagi keluarga muslim untuk menyetiakan diri di depan layar televisi","Berpusa Asyura (10 Muharram) saja tanpa hari sebelum atau sesudahnya dibolehkan, tanpa dikatakan makruh. Namun lebih afdhal mengikutkan"]
    var konsulImage = [#imageLiteral(resourceName: "13 Tahun Tidak Mengucapkan Selamat Natal"),#imageLiteral(resourceName: "Hukum Mempelajari Ilmu Filsafat"),#imageLiteral(resourceName: "Masih Malas Bangun Shubuh"),#imageLiteral(resourceName: "Tak Ada Mahabarata di Rumah Kita"),#imageLiteral(resourceName: "Yang Jarang Diketahui dari Puasa Asyura")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return konsulName.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        var kajianNamaLabel = cell.viewWithTag(1)as! UILabel
        var kajianDescLabel = cell.viewWithTag(2)as! UILabel
        var kajianGambar = cell.viewWithTag(3)as! UIImageView
        
        kajianNamaLabel.text = konsulName[indexPath.row]
        kajianDescLabel.text = desc[indexPath.row]
        kajianGambar.image = konsulImage[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row)selected")
        
        namaSelected = self.konsulName[indexPath.row]
        gambarSelected = self.konsulName[indexPath.row]
        
        performSegue(withIdentifier: "passData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passData" {
            let kirimData = segue.destination as! detailViewController
            
            kirimData.passNamaKajian = namaSelected
            kirimData.passGambarKajian = gambarSelected
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

