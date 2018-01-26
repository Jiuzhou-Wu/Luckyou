//
//  UserDefaultHelp.swift
//  RNGTest
//
//  Created by RideShark on 2018-01-25.
//  Copyright © 2018 RideShark. All rights reserved.
//

import Foundation

extension UserDefaults {
    func getTotalPicks() -> String {
        return "Total Pick Times: " + String(integer(forKey: "count"))
    }
    
    func onePick(){
        set(integer(forKey: "count")+1, forKey: "count")
        synchronize()
    }
    
    func tenPick(){
        set(integer(forKey: "count")+10, forKey: "count")
        synchronize()
    }
    
    func getOwnedCards() -> Any {
        if(array(forKey: "cardsOwned") != nil){
            return array(forKey: "cardsOwned") as! Array<String>
        } else{
            return "Error"
        }
    }
    
    func cardOwned(targetCard: String) -> Bool{
        var flag = false;
        if(array(forKey: "cardsOwned") != nil){
            for card in array(forKey: "cardsOwned")!{
                if(flag){
                }else{
                    if(String(describing: card) == targetCard){
                        flag = true
                    }
                }
            }
        }else{
        }
        return flag
    }
    
    func cardInsideCardPool(targetCard: String, cardPool: [String]) -> Bool {
        var flag = false;
        for card in cardPool{
            if(flag){
            }else{
                if(card == targetCard){
                    flag = true
                }
            }
        }
        return flag
    }
    
    func addOwnedCard(card: String){
        var ownedCard: [String]
        if(array(forKey: "cardsOwned") != nil){
            ownedCard = array(forKey: "cardsOwned") as! [String]
        }else {
            ownedCard = [String]()
        }
        ownedCard.append(card)
        removeObject(forKey: "cardsOwned")
        set(ownedCard, forKey: "cardsOwned")
        synchronize()
    }
}
