//
//  NavNode.swift
//  Landmarks
//
//  Created by Eric Liu on 8/29/22.
//
import RxSwift
import Foundation
import RxRelay

protocol NavNode {
    func navigate(args: [String:String]) -> Completable
    
    func requestChild(child: NavNode.Type, args: [String:String]) -> Completable
    
    func commands() -> BehaviorRelay<NavCommand>
    
    func sendEvent(event: NavEvent)
}

struct NavCommand{}

struct NavEvent{}
