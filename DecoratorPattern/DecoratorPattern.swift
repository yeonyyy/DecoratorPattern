//
//  DecoratorPattern.swift
//  DecoratorPattern
//
//  Created by rayeon lee on 2020/12/08.
//  Copyright © 2020 ryl. All rights reserved.
//

import Foundation

protocol Coffee{
    
    func getDescription() -> String
}

class Latte : Coffee{
    
    func getDescription() -> String {
        return "latte"
    }
}

class Americano : Coffee{
    
    func getDescription() -> String {
        return "americano"
    }
}

class Mocha : Coffee{
    
    func getDescription() -> String {
        return "mocha"
    }
}

protocol Decorator : Coffee {
    
    var coffee : Coffee { get set }
    
    func getDescription() -> String
}


class Cream: Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Cream"
    }
}

class Shot: Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Shot"
    }
}

class Whip : Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Whip"
    }
}
