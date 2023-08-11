import SwiftUI

struct MoviesList: View {
    var body: some View {
        NavigationView {
            List(movies) {
                movie in
                ZStack {
                    MovieRow(movie: movie)
                    /*NavigationLink(destination: MovieDetail(movie: movie)) {
                        EmptyView()
                    }*/
                }
            }.navigationBarTitle("Movie Catalog", displayMode: .large)
        }
    }
}

struct MoviesList_Previews: PreviewProvider {
    static var previews: some View {
        MoviesList()
    }
}
