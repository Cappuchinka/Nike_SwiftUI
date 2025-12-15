//
//  StartView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 16.12.2025.
//

import SwiftUI

struct StartView: View {
    @State private var isShowOnboardings = UserDefaults.standard.bool(forKey: "isShowOnbordings")

    var body: some View {
        if !isShowOnboardings {
            NavigationStack() {
                GreetingView(onComplete: {
                    UserDefaults.standard.setValue(true, forKey: "isShowOnbordings")
                    isShowOnboardings = true
                })
            }
        } else {
            RootView()
        }
    }
}

#Preview {
    StartView()
}
