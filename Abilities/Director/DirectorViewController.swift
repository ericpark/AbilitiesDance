//
//  DirectorViewController.swift
//  Abilities
//
//  Created by Eric Park on 1/25/17.
//  Copyright © 2017 Abilities Dance. All rights reserved.
//

import UIKit

class DirectorViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!

    @IBOutlet var letterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize.height = 1000
        self.letterLabel.sizeToFit()
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
