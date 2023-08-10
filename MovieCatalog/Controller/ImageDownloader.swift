import Foundation
import SDWebImageSwiftUI

class ImageDownloader: Operation {
    private let movie: MoviesModel
    
    init(movie: MoviesModel) {
        self.movie = movie
    }
    
    override func main() {
        if isCancelled {
            return
        }
        guard let imageData = try? Data(contentsOf: self.movie.poster) else { return }
        if isCancelled {
            return
        }
        if !imageData.isEmpty {
            self.movie.image = WebImage(url: self.movie.poster)
            self.movie.state = .downloaded
        }
        else {
            self.movie.image = nil
            self.movie.state = .failed
        }
    }
}
