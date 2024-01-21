//
//  Result.swift
//  Bucketlist
//
//  Created by OLEKSANDR ISAIEV on 21.01.2024.
//

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable {
    let pageId: Int
    let title: String
    let terms: [String: [String]]?
}
