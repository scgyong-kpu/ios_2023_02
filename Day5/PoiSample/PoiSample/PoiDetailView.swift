//
//  PoiDetailView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/02/03.
//

import SwiftUI

struct PoiDetailView: View {
    let poi: PoiItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(poi.RESTRT_NM)
                .font(.title)
                .lineLimit(2)
                .foregroundColor(.blue)
            Text(poi.REPRSNT_FOOD_NM)
                .font(.body)
                .foregroundColor(.gray)
        }
    }
}

struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PoiDetailView(poi: load())
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
