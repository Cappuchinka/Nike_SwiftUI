//
//  TypesOfSportView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct TypesOfSportView: View {

    let onComplete: () -> Void

    let sports: [TableRow] = [
        TableRow(imageName: "airMax", title: "Air Max"),
        TableRow(imageName: "baseball", title: "Baseball"),
        TableRow(imageName: "bigAndTall", title: "Big & Tall"),
        TableRow(imageName: "crossTraining", title: "Cross-Training"),
        TableRow(imageName: "dance", title: "Dance"),
        TableRow(imageName: "lacrosse", title: "Lacrosse"),
        TableRow(imageName: "maternity", title: "Maternity"),
        TableRow(imageName: "n7", title: "N7"),
        TableRow(imageName: "nikeSportswear", title: "Nike Sportswear"),
    ]

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()

            ScrollView(.vertical) {
                VStack {
                    ForEach(0..<sports.count, id: \.self) { index in
                        TableRowView(tableRow: sports[index])
                        if index != sports.count - 1 {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1)
                                .opacity(0.4)
                        }
                    }
                }
                .padding(.bottom, 70)
                .padding(.horizontal, 20)
            }

            VStack {
                ProgressView(value: 0.75, total: 1.0)
                    .progressViewStyle(.linear)
                    .tint(.white)
                    .padding(.horizontal, 100)

                Spacer()

                Button(action: onComplete) {
                    Text("Next")
                        .font(.custom("Inter", size: 20))
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .clipShape(Capsule())
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 110)
                }
            }
            .padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TypesOfSportView(onComplete: {})
}
