//
//  Model.swift
//  CareMarion
//
//  Created by Ilya Shpilko on 3/10/22.
//

import Foundation

struct Order {
    
    var name: String
    var description: String
    var price: Int
    
    init(index: Int) {
        
        switch index {
        case 0:
            name = "Салат цезарь"
            description = "Помидор, салат айсберг, сухарики, курица"
            price = 300
        case 1:
            name = "Салат Греческий"
            description = "Помидор, салат айсберг, сухарики, курица"
            price = 400
        default:
            name = "Упс...."
            description = "Что-то пошло не так."
            price = 0
        }
    }
}

class OrderModel {
    
    var sumOrder: Int
    var orders: [Order]
    
    init() {
        var orders = [Order]()
        var sum = 0
        
        for index in 0 ..< 2 {
            let order = Order(index: index)
            orders.append(order)
            sum += order.price
        }
        
        self.orders = orders
        self.sumOrder = sum
    }
}
