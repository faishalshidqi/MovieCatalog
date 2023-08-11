import SwiftUI
import SDWebImageSwiftUI

struct MovieRow: View {
    let movie: MoviesModel
    /*private let pendingOperations = PendingOperations()
    
    fileprivate func toggleSuspendOperations(isSuspended: Bool) {
        pendingOperations.downloadQueue.isSuspended = isSuspended
    }
    
    fileprivate func startDownload(movie: MoviesModel, indexPath: IndexPath) {
        guard pendingOperations.downloadInProgress[indexPath] == nil else {return}
        let downloader = ImageDownloader(movie: movie)
            
        downloader.completionBlock! {
            if downloader.isCancelled { return }
            DispatchQueue.main.async {
                self.pendingOperations.downloadInProgress.removeValue(forKey: indexPath)
            }
        }
        
        pendingOperations.downloadInProgress[indexPath] = downloader
        pendingOperations.downloadQueue.addOperation(downloader)
    }
    
    fileprivate func startOperations(movie: MoviesModel, indexPath: IndexPath) {
        if movie.state == .new {
            startDownload(movie: movie, indexPath: indexPath)
        }
    }*/
    var body: some View {
        HStack {
            WebImage(url: movie.poster)
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 110)
            Text(movie.title)
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: movies[0])
    }
}
