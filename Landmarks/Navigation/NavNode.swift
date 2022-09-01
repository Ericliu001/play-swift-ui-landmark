//
//  NavNode.swift
//  Landmarks
//
//  Created by Eric Liu on 8/29/22.
//
import RxSwift
import Foundation

protocol NavNode {
    func navigate(url: URL?) -> Completable
    
    func requestChild(child: NavNode.Type, url: URL?) -> Completable
    
    func commands() -> Observable<NavCommand?>
    
    func sendEvent(event: NavEvent)
    
}


struct NavCommand{
    var destinationClass: NavNode.Type
    var url: URL?
}

struct NavEvent{
    var status: NavStatus = NavStatus.SUCCESS
    var message: String = ""
    
    
    enum NavStatus {
        case SUCCESS, FAILURE
    }
}
