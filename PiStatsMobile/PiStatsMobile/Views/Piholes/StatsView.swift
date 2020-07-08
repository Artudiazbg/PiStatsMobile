//
//  StatsView.swift
//  PiStatsMobile
//
//  Created by Fernando Bunn on 04/07/2020.
//

import SwiftUI

struct StatsView: View {
    @ObservedObject var dataProvider: PiholeDataProvider
    
    var body: some View {
        VStack(alignment: .leading, spacing: UIConstants.Geometry.defaultPadding) {
            HStack {
                if dataProvider.status == .allEnabled {
                    Image(systemName: "checkmark.shield.fill")
                        .foregroundColor(Color("TotalQueries"))
                        .font(.title2)
                } else {
                    Image(systemName: "xmark.shield.fill")
                        .foregroundColor(Color("DomainsOnBlockList"))
                        .font(.title2)
                }

                
                Text(dataProvider.name)
                    .foregroundColor(.primary)
                    .font(.title2)
                    .fontWeight(.bold)
            }
            HStack {
                StatsItemView(type: .totalQueries, label: dataProvider.totalQueries)
                StatsItemView(type: .queriesBlocked, label: dataProvider.queriesBlocked)
            }
            HStack {
                StatsItemView(type: .percentBlocked, label: dataProvider.percentBlocked)
                StatsItemView(type: .domainsOnBlockList, label: dataProvider.domainsOnBlocklist)
            }
            Divider()
            Button(action: { }, label: {
                HStack (spacing: 0) {
                    Label(UIConstants.Strings.disableButton, systemImage: "stop.fill")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, minHeight: 48)
                .background(Color(.systemBlue))
                .cornerRadius(UIConstants.Geometry.defaultCornerRadius)
            })
        }
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(UIConstants.Geometry.defaultCornerRadius)
        .shadow(radius: UIConstants.Geometry.shadowRadius)
        .padding()
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(dataProvider: PiholeDataProvider.previewData())
    }
}
