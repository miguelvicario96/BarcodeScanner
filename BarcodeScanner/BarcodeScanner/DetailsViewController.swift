//
//  DetailsViewController.swift
//  BarcodeScanner
//
//  Created by Miguel Ángel Vicario Flores  on 2/14/19.
//  Copyright © 2019 Miguel Ángel Vicario Flores . All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var codeLabel: UILabel!
    var scannedCode:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        print(scannedCode!)
        
        if let scannedCode = scannedCode {
            codeLabel.text = scannedCode
        }
    }

    @IBAction func scanButton(_ sender: UIButton) {
        
        let scanViewController = ViewController()
        present(scanViewController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
