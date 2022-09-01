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

class BasicNavNode: NavNode {
    private let commandRelay = BehaviorRelay<NavCommand?>(value: nil)
    
    private let eventChannel = BehaviorRelay<NavEvent?>(value: nil)
    
    var predecessor: NavNode
    
    init(predecessor: NavNode){
        self.predecessor = predecessor
    }
    
    func navigate(url: URL?) -> Completable {
        return predecessor.navigate(url: url)
            .andThen(
                requestChild(child: BasicNavNode.self, url: url)
            )
    }
    
    func requestChild(child: NavNode.Type, url: URL?) -> Completable {
        commandRelay.accept(NavCommand(destinationClass: child, url: url))
        return  eventChannel.first().asCompletable()
    }
    
    
    func commands() -> Observable<NavCommand?> {
        return commandRelay.asObservable()
    }
    
    func sendEvent(event: NavEvent) {
         eventChannel.accept(event)
    }
    
}
