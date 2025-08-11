//
//  ExplorerService.swift
//  AirbnbClone
//
//  Created by Zoltan Vegh on 11/08/2025.
//

import Foundation

class ExplorerService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
