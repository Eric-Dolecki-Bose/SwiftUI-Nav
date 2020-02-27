//
//  VideoIdea.swift
//  SwiftUI Nav
//
//  Created by Eric Dolecki on 2/26/20.
//  Copyright © 2020 Eric Dolecki. All rights reserved.
//

import Combine

final class VideoIdea: ObservableObject {
    @Published var title: String = ""
    @Published var contentIdea: String = ""
}
