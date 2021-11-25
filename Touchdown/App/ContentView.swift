//
//  ContentView.swift
//  Touchdown
//
//  Created by Igor Efimov on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0 > 20 ? 0 : (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10))
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 6) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns:gridLayout, spacing:15){
                            ForEach(products){product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(.horizontal)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
