//
//  FactsModal.swift
//  Garfield
//
//  Created by MacBook Air on 02.05.24.
//

import Foundation

// Model representing a single fact
struct Facts: Codable {
    let fact: String
    let length: Int
}

// Model representing the entire JSON response
struct FactsResponse: Codable {
    let currentPage: Int
    let data: Facts
    let firstPageURL: String
    let from: Int
    let lastPage: Int
    let lastPageURL: String
    let links: [Link]
    let nextPageURL: String?
    let path: String
    let perPage: Int
    let prevPageURL: String?
    let to: Int
    let total: Int

    enum CodingKeys: String, CodingKey {
        case currentPage = "current_page"
        case data
        case firstPageURL = "first_page_url"
        case from
        case lastPage = "last_page"
        case lastPageURL = "last_page_url"
        case links
        case nextPageURL = "next_page_url"
        case path
        case perPage = "per_page"
        case prevPageURL = "prev_page_url"
        case to
        case total
    }
}

// Model representing links in the response
struct Link: Codable {
    let url: String?
    let label: String
    let active: Bool
}

