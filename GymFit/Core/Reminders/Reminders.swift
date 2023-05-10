//
//  Reminders.swift
//  GymFit
//
//  Created by Andrei Goulart Mansilla Vince on 5/10/23.
//

import SwiftUI

struct Reminders: View {
    @State var showReminders = false
    var body: some View {
        ZStack {
            Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)

            VStack {
                Back_Button(showReminders: $showReminders)
                    .padding(.leading)
                    .padding(.top, 4)
                Spacer()
            }
                VStack {
                Text("Workout hard everyday!")
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                    .background(Color.red)
                    .clipShape(Capsule())
                Text("One gram of protein for each 1 lbs")
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                    .background(Color.red)
                    .clipShape(Capsule())
                Text("Curisioty Kills")
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                    .background(Color.red)
                    .clipShape(Capsule())
                Text("Workout hard everyday!")
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width / 1.1) - 55)
                    .background(Color.red)
                    .clipShape(Capsule())
                
            }
        }


    }
}

struct Reminders_Previews: PreviewProvider {
    static var previews: some View {
        Reminders()
    }
}
