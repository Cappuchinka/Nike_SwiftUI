import SwiftUI

struct ShopView: View {
    let categoriesTabs = ["Men", "Women", "Kids"]
    
    let categories: [ItemScroll] = [
        ItemScroll(label: "Best Sellers", imageLabel: "bestSellers"),
        ItemScroll(label: "Featured In Nike Air", imageLabel: "featuredInNikeAir"),
        ItemScroll(label: "Just Do It", imageLabel: "justDoIt"),
    ]
    
    let sections: [ItemScroll] = [
        ItemScroll(label: "New&Featured", imageLabel: "newFeatured"),
        ItemScroll(label: "Shooes", imageLabel: "sectionShooes"),
        ItemScroll(label: "Sales", imageLabel: "sales"),
    ]
    
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
                CategoryTabView(categoriesTabs: categoriesTabs)
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
                        CategoryHScrollView(categories: categories, typeCard: "bottom", typeAlignment: "categories")
                    }
                    .padding(.top, 20)
                    
                    VStack(spacing: 5) {
                        SectionList(sections: sections)
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
