//
//  HomeView.swift
//  DesignCodeiOS15
//
//  Created by mk on 2022/04/17.
//

import SwiftUI

struct HomeView: View {
	
    var body: some View {
		
		ScrollView {
			FeaturedItem()
		}
		.overlay(
			NavigationBar(title: "Featured"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}