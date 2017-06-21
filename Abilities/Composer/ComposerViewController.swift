//
//  ComposerViewController.swift
//  Abilities
//
//  Created by Eric Park on 1/27/17.
//  Copyright © 2017 Abilities Dance. All rights reserved.
//

import UIKit

class ComposerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet var tableView: UITableView!
    
    var names = [
        "Manuel García-Baró",
        "Eva Redamonti",
        "Andrew Choe",
        "Natalia Perez"]
    var descriptions = [
        "Manuel is a Berklee alumni. Currently residing in Boston, he composes and teaches music. He was drawn to Abilities because it sounded like a powerful idea. As a result, he has created some powerful and beautiful cello composition that works well with the founder’s intentions. http://www.manuelgarciabaro.com/",
        "Eva Redamonti is a Composition Major at Berklee College of Music in her eighth semester. She was drawn to the familial tensions within “Abilities” and found working with dancers very rewarding. As a result, she has created an organic piece full of woodwind instruments and more that fits well with the piece.",
        "Andrew Choe is also an eighth semester student at Berklee College of Music. He was excited to jump in and collaborate with Eva and be a part of Abilities. As a result, he has created his own twist to familial dynamics that puts a gorgeous close to the piece.",
        "Natalia Perez is a Berklee alumni. Currently residing in California, she composes for game audio, film, and more. She was eager to delve into the founder’s romantic past that “Abilities” was based off of. As a result, she accurately portrayed the story with music. Nataliaperezmusic.com"]
    var imageNames = [
        "Maneul",
        "Eva",
        "Andrew",
        "Natalia"]
    
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
        return 1;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count;
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

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
