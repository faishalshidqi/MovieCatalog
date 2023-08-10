import SwiftUI
import SDWebImageSwiftUI

struct MovieRow: View {
    let movie: MoviesModel
var body: some View {
        HStack {
            WebImage(url: movie.poster)
                .resizable()
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
