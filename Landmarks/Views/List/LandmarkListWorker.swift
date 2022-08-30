//
//  LandmarkListWorker.swift
//  Landmarks
//
//  Created by Eric Liu on 8/29/22.
//

import Foundation
import SwiftUI

class LandmarkListWorker: Worker {
    func createView() -> some View {
        return LandmarkList(worker: self)
            .onAppear{
                self.onAttach()
            }
            .onDisappear{
                self.onDetach()
            }
    }
    
     func onAttach() {
            
    }
    
     func onDetach() {
        
    }

}
