//
//  LoginView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 16.12.2025.
//

import SwiftUI
import SafariServices

struct LoginView: UIViewControllerRepresentable  {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(
        _ uiViewController: SFSafariViewController,
        context: Context
    ) {}
}
		
