//
//  DancersViewController.swift
//  Abilities
//
//  Created by Eric Park on 1/25/17.
//  Copyright © 2017 Abilities Dance. All rights reserved.
//

import UIKit

class DancersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Natalie Eggert",
                 "Arielle Kimbarovsky",
                 "Roselyn Li"]
    var descriptions = [
        "Natalie Eggert has her Bachelor's in Dance and Movement Studies from Emory University in Atlanta (2015). Her choreography and improvisation experience led her to choreograph and perform at Modern Atlanta Dance Festival and Elevate Art Festival in Atlanta. She was drawn to Abilities because she’s interested in being a part of socially conscious movers.",
        "Arielle Kimbarovsky is currently studying at Boston University Questrom School of Business as an undergraduate freshman. She has 13+ years of dance experience in a variety of styles and has participated in flash mobs and assistant teaching in the Chicago area. She loved the concept of Abilities and was excited to be a part of the vision.",
        "Roselyn Li is a graduate student studying Arts Administration at Boston University. As a Chinese classical dancer, she was the deputy head of her dance troupe at Beijing Normal University. She was excited at the chance to dance in a different way in Abilities."]
    var imageNames = [
        "Natalie",
        "Arielle",
        "Roselyn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "DancerInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DancerInfoTableViewCell
        
        cell.setName(name: names[indexPath.section])
        cell.setDescription(desc: descriptions[indexPath.section])
        cell.setImage(dancerName: imageNames[indexPath.section])

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185.0
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.contentView.backgroundColor = UIColor.black
        
        let whiteRoundedView : UIView = UIView(frame: CGRectMake(0, 10, self.view.frame.size.width, 180))
        
        whiteRoundedView.layer.backgroundColor = UIColor.black.cgColor
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 2.0
        whiteRoundedView.layer.shadowOffset = CGSize(width: -1, height: 1)
        whiteRoundedView.layer.shadowOpacity = 0.2
        
        cell.contentView.addSubview(whiteRoundedView)
        cell.contentView.sendSubview(toBack: whiteRoundedView)
    }
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
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
