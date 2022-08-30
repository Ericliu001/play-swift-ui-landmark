//
//  Worker.swift
//  Landmarks
//
//  Created by Eric Liu on 8/29/22.
//

import Foundation

protocol Worker {
    
    func onAttach()
    
    func onDetach()
}


class DummyWorker: Worker {
     func onAttach() {
        // no-op
    }
    
     func onDetach() {
        // no-op
    }
}
