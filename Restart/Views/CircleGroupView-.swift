//
//  CircleGroupView-.swift
//  Restart
//
//  Created by Juliano RAHAJAHARIMANGA on 23/03/2025.
//

import SwiftUI

struct CircleGroupView_: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        
        CircleGroupView_()
    }
}
