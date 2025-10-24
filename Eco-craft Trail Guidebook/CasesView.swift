//
//  CasesView.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI
// MARK: - 案例列表頁
struct CasesView: View {
	let cases: [CaseStudy]
	var body: some View {
		ZStack {
			Image(.bg).resizable().scaledToFill().ignoresSafeArea()
			List {
				ForEach(cases) { item in
					NavigationLink {
						CaseDetailView(caseStudy: item)
					} label: {
						HStack {
							VStack(alignment: .leading, spacing: 4) {
								Text(item.name).font(.headline).foregroundStyle(.white)
								Text(item.location).font(.subheadline).foregroundStyle(.white.opacity(0.85))
							}
							Spacer()
							if let first = item.usedMethods.first {
								Text(first.name).font(.footnote).foregroundStyle(.white.opacity(0.85))
							}
						}
					}
					.listRowBackground(
						RoundedRectangle(cornerRadius: 12, style: .continuous)
							.glassEffect(.clear.interactive(), in: .rect(cornerRadius: 12))
					)
				}
			}
			.scrollIndicators(.hidden)
			.scrollContentBackground(.hidden)
			.background(Color.clear)
			.listStyle(.insetGrouped)
			.padding(.top, 80)
		}
	}
}
