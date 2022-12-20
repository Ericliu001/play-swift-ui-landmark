//
//  BasicNavNode.swift
//  Landmarks
//
//  Created by Eric Liu on 9/1/22.
//

import Foundation
import RxSwift
import RxRelay
import UIKit

class BaseNavNode<Arg, Ph: NavHandler, Ch: NavHandler>: NavNode {
    typealias Arg = Arg
    
    private var currentHandler: Ch? = nil
    
    init<P: NavNode>(_ parentNavNode: P) where P.CurrentHandler == Ch {
       
    }
    
    
    func bind(_ currentHandler: Ch){
        
    }
    
    func getCurrentHandler() -> Ch? {
        return currentHandler
    }
    
    func navigate() -> (Ph) -> Completable {
        return {Ph -> Completable in Completable.empty()}
    }
}
