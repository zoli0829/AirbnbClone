//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Zoltan Vegh on 10/08/2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBarView()
                
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                Text("Listing detail view...")
            }
            // removed the padding fron the parent view
        }
    }
}

#Preview {
    ExploreView()
}
