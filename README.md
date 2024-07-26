⌨️ Group Box / Card View.
=======

<img src="https://github.com/user-attachments/assets/4e859429-3238-40b0-8abc-6c7b7ae8604a" width="270" height="520">
<img src="https://github.com/user-attachments/assets/5e58bb5b-5e1a-4039-aac5-cbaa904d9f52" width="270" height="520">

-------

`ContentView`
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
-----

`MusicGroupBoxStyle` ViewModifier 
`````ruby
struct MusicGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
                .bold()
                .foregroundStyle(.pink)
            configuration.content
        }
        .padding()
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
    }
}

extension GroupBoxStyle where Self == MusicGroupBoxStyle {
    static var music: MusicGroupBoxStyle { .init() }
}
`````
-----

`MusicPlayerView`
`````ruby
struct MusicPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.secondary)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Cool Song Title")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
            }
            .padding(.bottom, 8)
            
            ProgressView(value: 0.4, total: 1)
                .tint(.secondary)
                .padding(.bottom, 20)
            
            HStack(spacing: 30) {
                Image(systemName: "backward.fill")
                Image(systemName: "pause.fill")
                Image(systemName: "forward.fill")
            }
            .foregroundStyle(.secondary)
            .font(.title)
        }
    }
}
`````
-----
