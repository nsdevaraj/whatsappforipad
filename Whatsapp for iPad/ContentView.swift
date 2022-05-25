import SwiftUI
import BetterSafariView

struct ContentView: View {
    @State private var presentingSafariView = false
    var body: some View {
        SafariView(
            url: URL(string: "https://web.whatsapp.com/")!,
            configuration: SafariView.Configuration(
                entersReaderIfAvailable: false,
                barCollapsingEnabled: true
            )
        )
        .preferredBarAccentColor(.clear)
        .preferredControlAccentColor(.accentColor)
        .dismissButtonStyle(.done)
        .offset(x: 0, y: -88)
        Button(action: {
            self.presentingSafariView = true
        }) {
            Text("Buy me a Coffee ☕ !!")
        }
        .safariView(isPresented: $presentingSafariView) {
            SafariView(
                url: URL(string: "https://www.buymeacoffee.com/nsdevaraj")!,
                configuration: SafariView.Configuration(
                    entersReaderIfAvailable: false,
                    barCollapsingEnabled: true
                )
            )
            .preferredBarAccentColor(.clear)
            .preferredControlAccentColor(.accentColor)
            .dismissButtonStyle(.done)
        }
    }
}
