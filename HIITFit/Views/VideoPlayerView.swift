


import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoName: String
    var body: some View {
        if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Couldn't find \(videoName).mp4")
                .foregroundColor(.red)
        }
    }
}

#Preview {
    VideoPlayerView(videoName: "burpee")
}
