//
//  HomeView.swift
//  DesignCodeiOS15a
//
//  Created by mk on 2022/07/12.
//

import SwiftUI

struct HomeView: View {
	
	@State var hasScrolled = false
	
    var body: some View {
		ZStack {
			Color("Background")
				.ignoresSafeArea()
			
			ScrollView {
				scrollDetection
				
				featured
				
				Color.clear.frame(height: 1000)
			}
			.coordinateSpace(name: "scroll")
			.onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
				withAnimation(.easeInOut) {
					hasScrolled = value < 0 ? true : false
				}
			})
			.safeAreaInset(edge: .top, content: {
				Color.clear.frame(height: 70)
			})
			.overlay(
				NavigationBar(hasScrolled: $hasScrolled, title: "Featured")
			)
		}
    }
	
	var scrollDetection: some View {
		GeometryReader { proxy in
			//Text("\(proxy.frame(in: .named("scroll")).minY)")
			Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
		}
		.frame(height: 0)
	}
	
	var featured: some View {
		TabView {
			ForEach(courses) { item in
				FeaturedItem(course: item)
			}
		}
		.tabViewStyle(.page(indexDisplayMode: .never))
		.frame(height: 430)
		.background(
			Image("Blob 1")
				.offset(x: 250, y: -100)
		)
	}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
