import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Início", systemImage: "house")
                }

            ClassificacaoView()
                .tabItem {
                    Label("Classificação", systemImage: "trophy")
                }

            DesempenhoView()
                .tabItem {
                    Label("Desempenho", systemImage: "chart.line.uptrend.xyaxis")
                }
        }
    }
}

