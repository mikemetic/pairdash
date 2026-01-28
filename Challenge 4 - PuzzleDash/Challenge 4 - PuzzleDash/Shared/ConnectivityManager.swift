//
//  ConnectivityManager.swift
//  Challenge 4 - PuzzleDash
//
//  Created by Michael Williams on 1/27/26.
//

import WatchConnectivity
import Combine

class ConnectivityManager: NSObject, ObservableObject, WCSessionDelegate {
    static let shared = ConnectivityManager()
    
    @Published var highLevelReached: Int = 1

    override init() {
        super.init()
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }

    // This sends the data (e.g., Level 5) to the other device
    func sendProgress(level: Int) {
        let session = WCSession.default
        if session.isReachable {
            session.sendMessage(["level": level], replyHandler: nil) { error in
                print("Error sending message: \(error.localizedDescription)")
            }
        }
    }

    // This receives the data from the other device
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            if let level = message["level"] as? Int {
                self.highLevelReached = level
            }
        }
    }

    // Required Boilerplate for WCSessionDelegate
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {}
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {}
    func sessionDidDeactivate(_ session: WCSession) { session.activate() }
    #endif
}
