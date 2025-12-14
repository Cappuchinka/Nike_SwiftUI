//
//  TableRowView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct TableRowView: View {
    let tableRow: TableRow

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(height: 80)
            HStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 64, height: 64)
                    .overlay(
                        Image(tableRow.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 64, height: 64)
                            .clipped()
                            .clipShape(Circle())
                    )
                    .padding(.trailing, 20)

                Text(tableRow.title)
                    .font(.custom("Inter", size: 23))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                Spacer()

                ZStack {
                    Circle()
                        .stroke(Color.white, lineWidth: 2)
                        .frame(width: 24, height: 24)

    //                if isSelected {
    //                    Circle()
    //                        .fill(Color.white)
    //                        .frame(width: 14, height: 14)
    //                }
                }
            }
        }
    }
}
//
//#Preview {
//    TableRowView()
//}
