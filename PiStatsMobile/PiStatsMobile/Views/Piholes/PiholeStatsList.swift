//
//  PiholeStatsList.swift
//  PiStatsMobile
//
//  Created by Fernando Bunn on 05/07/2020.
//

import SwiftUI


final class StatsListConfig: ObservableObject {
    @Published var selectedPiHole: Pihole?
    @Published var isSetupPresented = false
    
    func openPiholeSetup(_ pihole: Pihole? = nil) {
        selectedPiHole = pihole;
        isSetupPresented = true
    }
}

struct PiholeStatsList: View {
    @StateObject private var viewModel = StatsListConfig()
    @EnvironmentObject private var piholeProviderListManager: PiholeDataProviderListManager

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(piholeProviderListManager.providerList, id: \.id) { provider in
                    StatsView(dataProvider: provider)
                        .onTapGesture() {
                            viewModel.openPiholeSetup(provider.piholes.first)
                        }
                }
                
                Button(action: {
                    viewModel.openPiholeSetup()
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: UIConstants.Geometry.addPiholeButtonHeight, height: UIConstants.Geometry.addPiholeButtonHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image(systemName: UIConstants.SystemImages.addPiholeButton)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                })
                .shadow(radius: UIConstants.Geometry.shadowRadius)
                .padding()
                if piholeProviderListManager.isEmpty {
                    Text(UIConstants.Strings.addFirstPiholeCaption)
                }
            }
            .sheet(isPresented: $viewModel.isSetupPresented) {
                PiholeSetupView(pihole: viewModel.selectedPiHole)
                    .environmentObject(piholeProviderListManager)
            }
        }.navigationTitle(UIConstants.Strings.piholesNavigationTitle)
        .onAppear {
            if piholeProviderListManager.isEmpty {
                viewModel.openPiholeSetup()
            }
        }
    }
}


struct PiholeStatsList_Previews: PreviewProvider {
    static var previews: some View {
        PiholeStatsList()
    }
}
