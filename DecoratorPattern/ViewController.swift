//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by rayeon lee on 2020/12/08.
//  Copyright © 2020 ryl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let americano = Americano()
        print("\(americano.getDescription())")
        
        let shot = Shot(coffee: americano)
        print("\(shot.getDescription())")
        
        let cream = Cream(coffee: shot)
        print("\(cream.getDescription())") 

        let whip = Whip(coffee: cream)
        print("\(whip.getDescription())")
    
    }


}

