import SwiftUI

struct Priority: Identifiable {
    let id: String
    let title: String
    var completed: Bool
}

@main
struct PresnyaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var priorities = [
        Priority(id: "first-step", title: "Выбрать один следующий шаг", completed: false),
        Priority(id: "small-win", title: "Сделать что-то небольшое для себя", completed: false)
    ]

    var body: some View {
        NavigationStack {
            List {
                Section {
                    Text("Не нужно успеть всё. Достаточно выбрать ближайшее важное действие.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
                }

                Section("Сегодня") {
                    ForEach($priorities) { $priority in
                        Button {
                            priority.completed.toggle()
                        } label: {
                            HStack(spacing: 12) {
                                Image(systemName: priority.completed ? "checkmark.circle.fill" : "circle")
                                    .foregroundStyle(priority.completed ? .green : .secondary)
                                Text(priority.title)
                                    .strikethrough(priority.completed)
                                    .foregroundStyle(priority.completed ? .secondary : .primary)
                                Spacer()
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }

                Section {
                    Label("Мягкий фокус", systemImage: "leaf")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("Сегодня")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("Добавить приоритет")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
