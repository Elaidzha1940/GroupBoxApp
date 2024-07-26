⌨️ Group Box / Card View.
=======

<img width="374" alt="1" src="https://github.com/user-attachments/assets/4e859429-3238-40b0-8abc-6c7b7ae8604a">
<img width="374" alt="2" src="https://github.com/user-attachments/assets/5e58bb5b-5e1a-4039-aac5-cbaa904d9f52">

-------

`````ruby
struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.cyan.gradient.opacity(0.7))
                .ignoresSafeArea()
            
            VStack {
                GroupBox("My Content") {
                    Text("This is my groupbox. Isn't it cool. It's like a card view. Awesome!")
                }
                .frame(width: 250)
                .groupBoxStyle(.music)
                
                GroupBox {
                    GroupBox {
                        MusicPlayerView()
                    }
                    .groupBoxStyle(.music)
                } label: {
                    Label("Now Playing", systemImage: "music.note")
                }
                .groupBoxStyle(.music)
            }
            .padding()
        }
    }
}
`````
