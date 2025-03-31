//
//  HomeView.swift
//  Restart
//
//  Created by Juliano RAHAJAHARIMANGA on 23/03/2025.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // HEADER
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(	.easeInOut(duration: 4).repeatForever(), value: isAnimating)
                    
            }
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
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VStack
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

#Preview {
    HomeView()
}
