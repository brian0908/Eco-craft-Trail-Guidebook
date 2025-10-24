//
//  HomeView.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - Home
struct HomeView: View {
	let chapters: [Chapter]

	@ViewBuilder
	func destination(for link: HighlightLink) -> some View {
		switch link {
		case .intro(let i):  IntroDetailView(intro: i)
		case .method(let m): MethodDetailView(method: m)
		case .caseStudy(let c): CaseDetailView(caseStudy: c)
		case .participate: ParticipateView()
		}
	}

	var body: some View {
		ZStack {
			Image(.bg).resizable().scaledToFill().ignoresSafeArea()
			ScrollView {
				VStack(alignment: .leading, spacing: 24) {
					Text("手作步道工法手冊")
						.font(.largeTitle.bold())
						.padding(.horizontal)

					ForEach(chapters) { chapter in
						VStack(alignment: .leading, spacing: 8) {
							Text(chapter.title)
								.font(.title3.bold())
								.padding(.horizontal)

							ScrollView(.horizontal, showsIndicators: false) {
								HStack(spacing: 0) {
									ForEach(chapter.highlights) { item in
										NavigationLink {
											destination(for: item.link)
										} label: {
											AnnouncementCard(title: item.title, cardHeight: 230) {
												Image(item.imageName)
													.resizable()
													.scaledToFill()
													.frame(height: 150)
													.clipped()
													.clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))

												Text(item.title).font(.headline)
												Text(item.subtitle).font(.footnote)
											}
										}
										.buttonStyle(.plain)
									}
								}
							}
						}
					}
				}
				.padding(.vertical, 16)
				.padding(.top, 80)
				.padding(.bottom, 70)
				.foregroundStyle(.white)
				.tint(.white)
			}
			.scrollIndicators(.hidden)
		}
	}
}
