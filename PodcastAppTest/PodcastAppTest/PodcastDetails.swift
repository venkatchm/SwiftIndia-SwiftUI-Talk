//
//  PodcastDetails.swift
//  PodcastAppTest
//
//  Created by MutualMobile on 18/10/19.
//  Copyright © 2019 venkat. All rights reserved.
//

import SwiftUI

struct PodcastDetails: View {
    let podcast: Podcast
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Image(podcast.imageName).resizable().frame(width: 100, height: 100)
                Text(podcast.name).font(.largeTitle)
                PodcastPlayerButton(isPlaying: $isPlaying)
            }
        }
    }
}

struct PodcastDetails_Previews: PreviewProvider {
    static var previews: some View {
        PodcastDetails(podcast: testData[0])
    }
}

struct PodcastPlayerButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(action:
            {
                self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle").font(.largeTitle)
        }
    }
}
