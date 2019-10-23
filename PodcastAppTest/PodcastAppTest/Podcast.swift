//
//  Podcast.swift
//  PodcastAppTest
//
//  Created by MutualMobile on 18/10/19.
//  Copyright © 2019 venkat. All rights reserved.
//

import SwiftUI

struct Podcast: Identifiable {
    let id = UUID()
    let name: String
    let currentEpisode: String
    let imageName: String
}

#if DEBUG
let testData = [
    Podcast(name: "Swift By Sundell", currentEpisode: "Swift for Machine Learning", imageName: "swiftBySundell"),
    Podcast(name: "The Swift Community Podcast", currentEpisode: "Our thoughts on Xcode 11", imageName: "theSwiftCommunity"),
    Podcast(name: "Swift Unwrapped", currentEpisode: "Standard Library Preview Package", imageName: "swiftUnwrapped"),
    Podcast(name: "Swift Over Coffee", currentEpisode: "Live from AltConf", imageName: "SwiftOverCoffee"),
    Podcast(name: "The Raywenderlich.com", currentEpisode: "Discussion on Server side swift", imageName: "raywenderlich")
]

#endif
