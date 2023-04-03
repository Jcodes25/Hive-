//
//  ContentView.swift
//  HIVE_NAV_SKELETON
//
//  Created by Kevin Buchholz on 2/15/23.
//

import SwiftUI

struct ActionView: View {
    
    @StateObject var viewModel: ActionViewModel
    @FocusState private var isFocusedTextField: Bool
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                
                DatePicker(
                    "Pick a date",
                    selection: $date,
                    in: Date()...,
                    displayedComponents: [.date, .hourAndMinute])
                .padding()
                
                .datePickerStyle(.graphical)
                .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
                .padding()

                TextField("Type address", text: $viewModel.searchableText)
                    .padding()
                    .autocorrectionDisabled()
                    .focused($isFocusedTextField)
                    .font(.title)
                    .onReceive(
                        viewModel.$searchableText.debounce(
                            for: .seconds(1),
                            scheduler: DispatchQueue.main
                        )
                    ) {
                        viewModel.searchAddress($0)
                    }
                    .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
                    .padding()
                    .overlay{
                        ClearButton(text: $viewModel.searchableText)
                            .padding(.trailing)
                            .padding(.top, 8)
                    }
                    .onAppear {
                        isFocusedTextField = true
                    }

                List(self.viewModel.results) { address in
                    AddressRow(address: address, date: date)
                        .listRowBackground(backgroundColor)
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
            }
            .background(
                  Image("TileBackgroundLavender"))
        }
    }
    
    var backgroundColor: Color = Color.init(uiColor: .systemGray6)
}

struct ActionView_Previews: PreviewProvider {
    
    static var previews: some View {
        var actionViewModel = ActionViewModel()
        ActionView(viewModel: actionViewModel)
    }
}
