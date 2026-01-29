//
//  WatchToiOSConnector.swift
//  PairdashWatch Watch App
//
//  Created by Michael Williams on 1/29/26.
//

import Foundation
import WatchConnectivity

class WatchToiOSConnector: NSObject, WCSessionDelegate {
    
    var session: WCSession
    
    init(session: WCSession = .default)
    
    {
        self.session = session
        super.init()
        session.delegate = self
        session.activate()
    }
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: (any Error)?) {
        
    }
    
    func sessionReachabilityDidChange(_ session: WCSession) {
        
    }
}
