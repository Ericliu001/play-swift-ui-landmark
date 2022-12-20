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

class BaseNavNode<A, Ph: NavHandler, Ch: NavHandler>: NavNode {
    typealias Arg = A
    typealias ParentHandler = Ph
    typealias CurrentHandler = Ch
    
    
    private var currentHandler: Ch? = nil
    private let parent: any NavNode
    
    init<P: NavNode>(_ parentNavNode: P) where P.CurrentHandler == Ph {
       parent = parentNavNode
    }
    
    
    func bind(_ currentHandler: Ch){
        self.currentHandler = currentHandler
    }
    
    func getCurrentHandler() -> Ch? {
        return currentHandler
    }
    
    func navigateInternal() -> Completable {
        parent
            .navigateInternal()
            .andThen(self.navigate()(self.currentHandler!))
        
        // Wait for interactor to be active here.
        }
        
            
    
    
    func navigate() -> (Ch) -> Completable {
        // to be inherited by child classed
        return {Ph -> Completable in Completable.empty()}
    }
}
