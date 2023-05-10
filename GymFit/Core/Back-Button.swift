//
//  Back-Button.swift
//  GymFit
//
//  Created by Andrei Goulart Mansilla Vince on 5/10/23.
//

import SwiftUI

struct Back_Button: View {
    @Binding var showReminders: Bool
    @State var showHome = false
    var body: some View {
        Button {
            showHome.toggle()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundColor(Color.white)
                .padding()
                .frame(width: (UIScreen.main.bounds.width / 3.2) - 55)
                .background(Color.red)
                .clipShape(Capsule())
                .shadow(radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .fullScreenCover(isPresented: $showHome) {
            HomeView()
        }
    }
    
}

struct Back_Button_Previews: PreviewProvider {
    static var previews: some View {
        Back_Button(showReminders: .constant(true))
        
    }
}
