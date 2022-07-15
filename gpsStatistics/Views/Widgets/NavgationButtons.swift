//
//  NavgationButtons.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 15.07.2022.
//

import SwiftUI

struct NavgationButtonsView: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink (destination: SettingsView()) {
                    Image(systemName: "gear")
                }
                Spacer()
                NavigationLink(destination: RecordsView()) {
                    Image(systemName: "line.3.horizontal.circle")
                }
            }
            .padding(.horizontal)
            .font(.system(.title))
            Spacer()
        }
    }
}

struct NavgationButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavgationButtonsView()
    }
}
