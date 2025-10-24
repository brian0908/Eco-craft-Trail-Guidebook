//
//  MethodsView.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - Methods
struct MethodsView: View {
	let categories: [MethodCategory]
	var body: some View {
		ZStack {
			Image(.bg).resizable().scaledToFill().ignoresSafeArea()
			TabView {
				ForEach(categories) { category in
					NavigationStack {
						List {
							Section(header: Text(category.name).foregroundStyle(.white)) {
								ForEach(category.methods) { method in
									NavigationLink {
										MethodDetailView(method: method)
									} label: {
										VStack(alignment: .leading, spacing: 4) {
											Text(method.name).font(.headline).foregroundStyle(.white)
											Text(method.summary).font(.subheadline).foregroundStyle(.white.opacity(0.9))
										}
									}
									.listRowBackground(
										RoundedRectangle(cornerRadius: 12, style: .continuous)
											.glassEffect(.clear.interactive(), in: .rect(cornerRadius: 12))
									)
								}
							}
						}
						.scrollIndicators(.hidden)
						.scrollContentBackground(.hidden)
						.background(.clear)
						.listStyle(.insetGrouped)
						.navigationBarTitleDisplayMode(.inline)
						.toolbarBackground(.clear, for: .navigationBar)
						.toolbarBackgroundVisibility(.hidden, for: .navigationBar)
					}
					.background(.clear)
				}
			}
			.tabViewStyle(.page(indexDisplayMode: .always))
			.indexViewStyle(.page(backgroundDisplayMode: .always))
			.padding(.vertical, 100)
			.padding(.top, 20)
		}
	}
}

// MARK: - 工法介紹頁
struct MethodRow: View {
	let method: Method

	var body: some View {
		HStack(alignment: .center, spacing: 12) {
			Image(systemName: "hammer.fill")
				.font(.title3)
				.frame(width: 28, height: 28)

			VStack(alignment: .leading, spacing: 4) {
				Text(method.name)
					.font(.headline)
					.lineLimit(1)
				Text(method.summary)
					.font(.subheadline)
					.foregroundStyle(.secondary)
					.lineLimit(2)
			}

			Spacer(minLength: 8)

			Image(systemName: "chevron.right")
				.font(.footnote.weight(.bold))
				.foregroundStyle(.secondary)
		}
		.padding(.horizontal, 14)
		.padding(.vertical, 12)
		.frame(maxWidth: .infinity, alignment: .leading)
		.background(
			RoundedRectangle(cornerRadius: 12, style: .continuous)
				.fill(.white)
				.shadow(color: .black.opacity(0.05), radius: 4, y: 2)
		)
		.overlay(
			RoundedRectangle(cornerRadius: 12, style: .continuous)
				.stroke(.black.opacity(0.06), lineWidth: 1)
		)
		.contentShape(Rectangle())
	}
}
