import SwiftUI

@main
struct PresnyaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "Тихий старт",
                systemImage: "sunrise",
                description: Text("Здесь появится твой сегодняшний фокус.")
            )
            .navigationTitle("Сегодня")
        }
    }
}

#Preview {
    ContentView()
}
