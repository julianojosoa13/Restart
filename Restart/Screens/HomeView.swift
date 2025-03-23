//
//  HomeView.swift
//  Restart
//
//  Created by Juliano RAHAJAHARIMANGA on 23/03/2025.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {            
        VStack(spacing: 20) {
            // HEADER
            Spacer()
            
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            
            // CENTER
            Text("The time that leads to mastery is dependant on the intesity of our focus")
            .font(.title3)
            .multilineTextAlignment(.center)
            .foregroundColor(.secondary)
            .fontWeight(.light)
            .padding()
            
            // FOOTER
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
        } //: VStack
    }
}

#Preview {
    HomeView()
}
