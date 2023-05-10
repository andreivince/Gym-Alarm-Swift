//
//  HomeView.swift
//  GymFit
//
//  Created by Andrei Goulart Mansilla Vince on 5/9/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showWorkouts = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("fire")
                Button {
                    showWorkouts.toggle()
                } label: {
                    Image("button")
                }
                
                .fullScreenCover(isPresented: $showWorkouts) {
                    Workouts()
                }

            }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
