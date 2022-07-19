//
//  FeaturedItem.swift
//  DesignCodeiOS15a
//
//  Created by mk on 2022/07/14.
//

import SwiftUI

struct FeaturedItem: View {
	
	var course: Course = courses[0]
	
    var body: some View {
		VStack(alignment: .leading, spacing: 8) {
			Spacer()
			Image(course.logo)
				.resizable(resizingMode: .stretch)
				.aspectRatio(contentMode: .fit)
				.frame(width: 26, height: 26)
				.cornerRadius(10)
				.padding(9)
				.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
				.strokeStyle(cornerRadius: 16)
			Text(course.title)
				.font(.largeTitle)
				.fontWeight(.bold)
				.foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
			Text(course.subtitle.uppercased() )
				.font(.footnote)
				.fontWeight(.semibold)
				.foregroundStyle(.secondary)
			Text(course.text)
				.font(.footnote)
				.multilineTextAlignment(.leading)
				.lineLimit(2)
				.frame(maxWidth: .infinity, alignment: .leading)
				.foregroundColor(.secondary)
		}
		.padding(.all, 20)
		.padding(.vertical, 20)
		.frame(height: 350)
		.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
		.shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
		.strokeStyle()
		.padding(.horizontal, 20)
		.background(Image("Blob 1").offset(x: 250, y: -100))
		.overlay(
			Image(course.image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(height: 230)
				.offset(x: 32, y: -80)
		)
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
