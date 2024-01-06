//
//  FaceIDView.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 05.01.2024.
//

import LocalAuthentication
import SwiftUI

struct FaceIDView: View {
    @State private var isUnlocked = false
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            } else {
                ContentUnavailableView("Locked",
                                       systemImage: "person.slash",
                                       description: Text("You do not have biometrick"))
            }
        }
        .onAppear(perform: authenticate)
    }
    
    private func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometric
        }
    }
}

#Preview {
    FaceIDView()
}
