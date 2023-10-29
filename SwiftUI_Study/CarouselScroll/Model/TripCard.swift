//
//  TripCard.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 10/29/23.
//

import SwiftUI

// Trip Card Model
struct TripCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}

// Image Cards
var tripCards: [TripCard] = [
    .init(title: "서울 숲", subTitle: "forest", image: "서울숲"),
    .init(title: "서울 숲 어딘가", subTitle: "넬름이 아빠", image: "서울숲2"),
    .init(title: "미쁘동", subTitle: "세희님 반 이상 남긴건 비밀", image: "점심식사"),
    .init(title: "2호선", subTitle: "subway", image: "지하철"),
    .init(title: "돈룩업", subTitle: "dont look up", image: "돈룩업2"),
    .init(title: "돈룩업2", subTitle: "dont look up", image: "돈룩업"),
    .init(title: "Picture4", subTitle: "별빛술담", image: "술집"),
    .init(title: "Picture5", subTitle: "유사 인생네컷", image: "유사")
]
