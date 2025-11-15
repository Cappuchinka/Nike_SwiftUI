import SwiftUI

struct ItemScroll {
    let label: String
    let imageLabel: String
}

struct ShopView: View {
    
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("searchIcon")
            }
            .padding(.horizontal, 20)
            .padding(.top, 30)
            HStack {
                Text("Shop")
                    .font(.custom("Inter", size: 28))
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.horizontal, 20)

            HStack {
                CategoryTabView()
            }
            .padding(.top, 32)
            
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Must-Haves, Best Sellers & More ")
                            .font(.custom("Inter", size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    HStack {
                        CategoryHScrollView()
                    }
                    .padding(.top, 20)
                    
                    VStack(spacing: 5) {
                        SectionList()
                    }
                    .padding(.top, 20)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
            }
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}



#Preview {
    ShopView()
}
