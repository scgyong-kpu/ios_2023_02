//
//  AlbumStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import Foundation

struct Album: Decodable {
    let artistName: String
    let albumTitle: String
    let image: String
}

struct AlbumResponse: Decodable {
    let albums: [Album]
}
