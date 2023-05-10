//
//  HomeView.swift
//  GymFit
//
//  Created by Andrei Goulart Mansilla Vince on 5/9/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showWorkouts = false
    @State private var showReminders = false
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("fire_red")
                    Spacer()
                    Button {
                        showWorkouts.toggle()
                    } label: {
                        Text("Timer")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                            .background(Color.red)
                            .clipShape(Capsule())
                            .font(.title)
                            .shadow(radius: 6)
                    }
                    .padding(.bottom, 5)
                    Button {
                        showReminders.toggle()
                    } label: {
                        Text("Reminders")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                            .background(Color.red)
                            .clipShape(Capsule())
                            .font(.title)
                            .shadow(radius: 6)
                    }
                    Spacer()
                    
                    .fullScreenCover(isPresented: $showReminders) {
                        Reminders()
                    }
                    .fullScreenCover(isPresented: $showWorkouts) {
                        Workouts()
                    }
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
