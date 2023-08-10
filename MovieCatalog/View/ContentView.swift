import SwiftUI

struct ContentView: View {
    var body: some View {
        MoviesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 14")
    }
}
