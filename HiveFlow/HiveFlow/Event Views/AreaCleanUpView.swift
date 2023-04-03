//
//  AreaCleanUpView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/21/23.
//

import SwiftUI

struct AreaCleanUpView: View {
    var viewModel: ActionViewModel
    var body: some View {
        NavigationStack{
           VStack{
                   VStack {
                       Text("area clean up")
                           .font(.custom("Futura", size: 40))
                           .padding(5)
                       
                       Text("Do you want to clean up a park or a vacant lot in your neighborhood?\nHere are some steps to help you succeed!")
                           .font(.custom("Futura", size: 20))
                           .padding(5)
                       
                       Text("1. Notify your district manager.\n2. Gather supplies.\n     (Contractor bags, yard tools,\n      water, snacks, etc.)\n3. Invite people you know in person\n     or share to social media.\n4. Clean up, bag up trash, collect\n     junk and waste into piles.\n5. Contact city garbage and\n     recycling service if you need a\n     special pickup.\n(You can also leave the bags on the curb if its at a vacant lot, or at the trash cans in  the park for regular pickup on trash day.)")
                           .font(.custom("Futura", size: 20))
                           .padding(10)
                   }
                   .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
                   .padding()
                   //The Text components above will pull from preset data that we have defined for each possible action.
                   //Button("Next")
                   NavigationLink(destination: ActionView(viewModel: viewModel))
                   {  Text("Next")
                   }
                   .buttonStyle(.bordered)
                   .buttonBorderShape(.capsule)
                   .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
            }
           .background(
               Image("TileBackgroundLavender"))
            }
        }
    }


struct AreaCleanUpView_Previews: PreviewProvider {
    static var previews: some View {
        var actionViewModel = ActionViewModel()
        AreaCleanUpView(viewModel: actionViewModel)
    }
}

