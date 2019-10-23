//
//  ContentView.swift
//  PodcastAppTest
//
//  Created by MutualMobile on 18/10/19.
//  Copyright © 2019 venkat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var podcasts: [Podcast] = []
    
    var body: some View {
        VStack {
            NavigationView {
                List(podcasts) { podcast in
                    PodcastCell(podcast: podcast)
                }.navigationBarTitle(Text("Podcasts"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(podcasts: testData)
            ContentView(podcasts: testData).environment(\.colorScheme, .dark)
        }
    }
}

struct PodcastCell: View {
    let podcast: Podcast
    var body: some View {
        NavigationLink(destination: PodcastDetails(podcast: podcast)) {
            Image(podcast.imageName).resizable().frame(width: 40, height: 40, alignment: .leading)
            VStack(alignment: .leading) {
                Text(podcast.name)
                Text(podcast.currentEpisode).font(.subheadline)
            }
        }
    }
}
