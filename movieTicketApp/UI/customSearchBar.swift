//
//  customSearchBar.swift
//  movieTicketApp
//
//  Created by Sampel on 27/11/2023.
//

import SwiftUI

struct customSearchBar: View {
    @State private var searchTab  = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            TextField("search", text: $searchTab)
            
            Image(systemName: "mic.fill")
        }
        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing:8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundColor(.white.opacity(0.6))
        .cornerRadius(10)
    }
}

struct customSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        customSearchBar()
    }
}
