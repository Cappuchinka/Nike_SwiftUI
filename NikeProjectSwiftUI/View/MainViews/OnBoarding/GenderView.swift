//
//  GenderView.swift
//  NikeProjectSwiftUI
//
//  Created by volchenkop on 14.12.2025.
//

import SwiftUI

struct GenderView: View {
    let onComplete: () -> Void

    let adults: [TableRow] = [
        TableRow(imageName: "mens", title: "Mens"),
        TableRow(imageName: "womens", title: "Womens"),
    ]

    let children: [TableRow] = [
        TableRow(imageName: "boys", title: "Boys"),
        TableRow(imageName: "girls", title: "Girls"),
    ]

    @State private var selectedAdultIndex: Int? = nil
    @State private var selectedChildrenIndices: Set<Int> = []

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()

            VStack {
                HStack {
                    Text(
                        "First up, which" +
                        "\nproducts do you use" +
                        "\nthe most?"
                    )
                    .font(.custom("Inter", size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)

                    Spacer()
                }
                .padding(.bottom, 24)

                ForEach(0..<adults.count, id: \.self) { index in
                    TableRowView(
                        tableRow: adults[index],
                        isSelected: selectedAdultIndex == index,
                        onTap: {
                            selectedAdultIndex = index
                        }
                    )
                    if index != adults.count - 1 {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 1)
                            .opacity(0.4)
                    }
                }

                HStack {
                    Text("Any others?")
                        .font(.custom("Inter", size: 30))
                        .fontWeight(.medium)
                        .foregroundColor(.gray)

                    Spacer()
                }
                .padding(.top, 70)
                .padding(.bottom, 24)

                ForEach(0..<children.count, id: \.self) { index in
                    TableRowView(
                        tableRow: children[index],
                        isSelected: selectedChildrenIndices.contains(index),
                        onTap: {
                            if selectedChildrenIndices.contains(index) {
                                selectedChildrenIndices.remove(index)
                            } else {
                                selectedChildrenIndices.insert(index)
                            }
                        }
                    )
                    if index != children.count - 1 {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 1)
                            .opacity(0.4)
                    }
                }
            }
            .padding(.horizontal, 20)

            VStack {
                ProgressView(value: 0.6, total: 1.0)
                    .progressViewStyle(.linear)
                    .tint(.white)
                    .padding(.horizontal, 100)

                Spacer()

                NavigationLink(destination: TypesOfSportView(onComplete: onComplete)) {
                    Text("Next")
                        .font(.custom("Inter", size: 20))
                        .foregroundColor(selectedAdultIndex != nil ? Color.black : Color.gray)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .clipShape(Capsule())
                        .background(selectedAdultIndex != nil ? Color.white : Color.white.opacity(0.3))
                        .cornerRadius(30)
                        .padding(.horizontal, 110)
                }
                .disabled(!(selectedAdultIndex != nil))
            }
            .padding(.horizontal, 20)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    GenderView(onComplete: {})
}
