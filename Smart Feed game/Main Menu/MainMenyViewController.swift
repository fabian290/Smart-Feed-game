//
//  MainMenyViewController.swift
//  Smart Feed game
//
//  Created by fabian hernandez on 5/18/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import UIKit

class MainMenyViewController: UIViewController {
    
    @IBOutlet weak var giftImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        let proofConceptGif = UIImage.gif(name: "gifcube")
        giftImageView.image = proofConceptGif
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
           // this is the autolayout for the gif image
        
        giftImageView.translatesAutoresizingMaskIntoConstraints = false
        giftImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        giftImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        giftImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        giftImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        giftImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
       
        
        // Do any additional setup after loading the view.
        
        
    }
    
    

    

}
