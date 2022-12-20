//
//  NavNode.swift
//  Landmarks
//
//  Created by Eric Liu on 8/29/22.
//
import RxSwift
import Foundation

protocol NavNode {
    associatedtype Arg
    
    associatedtype ParentHandler: NavHandler
    
    associatedtype CurrentHandler: NavHandler
    
    func bind(_ currentHandler: CurrentHandler)
    
    func getCurrentHandler() -> CurrentHandler?
    
    func navigateInternal() -> Completable
}
