//
//  ACTION.swift
//  HIVE_NAV_SKELETON
//
//  Created by Kevin Buchholz on 2/15/23.
//

import SwiftUI
import MapKit
import HexGrid

struct InitialActionView: View {
    var viewModel: ActionViewModel
    var body: some View {
        NavigationStack{
           VStack{
             //   Hexagon()
                //    .fill(Color.init(uiColor: .systemBackground))
                    //.frame(width: 650, height: 650)
      //           .padding()
                        
                   VStack {
                       Text("action title")
                           .font(.custom("Futura", size: 40))
                       
                       Text("This will be the quick descriptor of the action. This will be the quick descriptor of the action.")
                           .font(.custom("Futura", size: 20))
                           .padding()
                       
                       Text("This will be the list of steps to follow.")
                           .padding()
                   }
                   .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
                   .padding()
               
          //                    }
                   
                   //The Text components above will pull from preset data that we have defined for each possible action.
                   //Button("Next")
                   NavigationLink(destination: ActionView(viewModel: viewModel))
                   {  Text("Next")
                       
                   }
                }
           .background(
               Image("TileBackgroundLavender"))
            }
        }
    }


struct InitialActionView_Previews: PreviewProvider {
    static var previews: some View {
        var actionViewModel = ActionViewModel()
        InitialActionView(viewModel: actionViewModel)
    }
}
