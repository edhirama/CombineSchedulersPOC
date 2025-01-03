import Dependencies
import SwiftUI

public class ContentModel {
    @Dependency(\.mainQueue) var mainQueue
    public init() {

    }
    let text = "ASDFA"
}
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
