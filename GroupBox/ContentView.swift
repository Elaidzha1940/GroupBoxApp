//  /*
//
//  Project: GroupBox
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.07.2024
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GroupBox("My Content") {
                Text("This is my groupbox. Isn't it cool. It's like a card view. Awesome!")
            }
            .frame(width: 250)
            
            GroupBox {
                Text("This is my groupbox. Isn't it cool. It's like a card view. Awesome!")
            } label: {
                Label("Now Playing", systemImage: "music.note")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct MusicPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 20)
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
