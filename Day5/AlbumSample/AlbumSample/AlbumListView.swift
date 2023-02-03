//
//  ContentView.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(AlbumStore.get().albums, id: \.albumTitle) { album in
                        AlbumItemView(album: album)
                    }
                }
            }
//            .onAppear {
//                AlbumStore.get().load()
//            }
            .navigationTitle("Albums")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}

struct AlbumItemView: View {
    let album: Album
    var body: some View {
        HStack {
            albumImage()
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64)
            VStack(alignment: .leading) {
                Text(album.albumTitle)
                    .font(.headline)
                    .lineLimit(2)
                    .foregroundColor(Color("albumTitleColor"))
                Text(album.artistName)
                    .font(.footnote)
                    .foregroundColor(Color("artistNameColor"))
                    .padding(.top, 4)
            }
        }
    }
    func albumImage() -> Image {
        Image(systemName: "music.note.list")
    }
}

struct AlbumItemView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            AlbumItemView(album: Album(artistName: "김태우", albumTitle: "2집 T-School", image: "img"))
            AlbumItemView(album: Album(artistName: "Various Artists", albumTitle: "서바이벌 나는 가수다 경연 1 (80년대 명곡 부르기)", image: "img"))
            AlbumItemView(album: Album(artistName: "Ke$ha", albumTitle: "I Am The Dance Commander + I Command You To Dance - The Remix Album (US Explicit Ver.)", image: "img"))
        }
    }
}
