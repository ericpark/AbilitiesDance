//
//  DancerInfoTableViewCell.swift
//  Abilities
//
//  Created by Eric Park on 1/27/17.
//  Copyright © 2017 Abilities Dance. All rights reserved.
//

import UIKit

class DancerInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var profileView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setName(name: String){
        self.nameLabel.text = name
        
    }
    func setDescription(desc: String){
        self.descriptionLabel.text = desc
        self.descriptionLabel.sizeToFit()
    }
    func setImage(dancerName: String){
        self.profileView.image = UIImage(named: dancerName)
    }
}
