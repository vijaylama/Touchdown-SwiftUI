//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/7/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
