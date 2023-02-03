//
//  PoiDetailView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI
import MapKit


struct PoiDetailView: View {
    let poi: PoiItem
    @State var region: MKCoordinateRegion
    init(poi: PoiItem) {
        self.poi = poi
        let lat = CLLocationDegrees(poi.REFINE_WGS84_LAT) ?? 0
        let lng = CLLocationDegrees(poi.REFINE_WGS84_LOGT) ?? 0
        let center = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        self.region = MKCoordinateRegion(center: center, span: span)
    }
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                PropertyView(imageName: "tram.circle") {
                    Text(poi.SIGUN_NM)
                }
                PropertyView(imageName: "location.circle") {
                    Text(poi.SIGUN_CD)
                }
                PropertyView(imageName: "fork.knife.circle") {
                    Text(poi.REPRSNT_FOOD_NM)
                }
                PropertyView(imageName: "house.circle") {
                    Text(poi.REFINE_ROADNM_ADDR)
                }
                PropertyView(imageName: "phone.circle") {
                    Text(poi.TASTFDPLC_TELNO)
                }
                Map(coordinateRegion: $region)
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fit)
            }
        }
        .navigationTitle(poi.RESTRT_NM)
    }
}

struct PropertyView<Content: View>: View {
    let imageName: String
    let content: ()->Content
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 30, height: 30)
            content()
        }
        .padding(10)
    }
}


struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PoiDetailView(poi: load())
        }
    }
    static func load() -> PoiItem {
        let item = try? JSONDecoder().decode(PoiItem.self, from: json.data(using: .utf8)!)
        return item!
    }
    static let json =
        "{" +
        " \"SIGUN_NM\": \"의정부시\", " +
        " \"SIGUN_CD\": \"41150\"," +
        " \"RESTRT_NM\": \"핏제리아 루카\"," +
        " \"REPRSNT_FOOD_NM\": \"마르게리따 피자\"," +
        " \"TASTFDPLC_TELNO\": \"031-851-3589\"," +
        " \"RM_MATR\": null," +
        " \"REFINE_LOTNO_ADDR\": \"경기도 의정부시 민락동 776-2번지\"," +
        " \"REFINE_ROADNM_ADDR\": \"경기도 의정부시 송현로82번길 17\"," +
        " \"REFINE_ZIP_CD\": \"11813\"," +
        " \"REFINE_WGS84_LOGT\": \"127.0904053\"," +
        " \"REFINE_WGS84_LAT\": \"37.7454846\"" +
        "}"
    
}
