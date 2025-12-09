
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView(){
                .tabItem {
                    Label ("Inicio", systemImage: "house")
                }
            }
        }
    }
}
