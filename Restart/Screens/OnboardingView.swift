//
//  OnboardingView.swift
//  Restart
//
//  Created by Juliano RAHAJAHARIMANGA on 23/03/2025.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
               .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
         
    }
}

#Preview {
    OnboardingView()
}
