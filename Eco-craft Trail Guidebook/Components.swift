//
//  Components.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - Reusable Cards
struct AnnouncementCard<Content: View>: View {
	let title: String
	var cardHeight: CGFloat = 280
	@ViewBuilder var content: () -> Content

	var body: some View {
		VStack(spacing: 0) {
				VStack(alignment: .leading, spacing: 12) { content() }
					.frame(maxWidth: 280, alignment: .leading)
					.padding(12)
		}
		.frame(height: cardHeight)
		.frame(maxWidth: 300)
		.clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
		.glassEffect(.clear.interactive(), in: .rect(cornerRadius: 22))
		.padding(.horizontal, 5)
	}
}

struct GlassButton: View {
	let icon: String
	let title: String
	var action: () -> Void

	var body: some View {
		Button(action: action) {
			Label {
				Text(title)
					.font(.subheadline.bold())
					.foregroundStyle(.white)          // ← 文字白
			} icon: {
				Image(systemName: icon)
					.foregroundStyle(.white)          // ← 圖示白
			}
			.padding(.horizontal, 14)
			.padding(.vertical, 8)
			.background(
				Capsule().glassEffect(.clear.interactive(), in: .capsule)
			)
		}
		.buttonStyle(.plain)
		.tint(.white)                                   // ← 保持互動/高亮為白
	}
}

// MARK: - Participate
struct OrgCard: View {
	let org: Org
	@Environment(\.openURL) var openURL
	var cardHeight: CGFloat = 350

	var body: some View {
		VStack(spacing: 2) {
			// Header 圖
			ZStack {
				RoundedRectangle(cornerRadius: 22, style: .continuous)
					.fill(.clear)
					.frame(height: 140)
					.overlay {
						if let name = org.imageName, UIImage(named: name) != nil {
							Image(name)
								.resizable()
								.scaledToFill()
								.frame(maxWidth: .infinity, minHeight: 140, maxHeight: 140)
								.clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
						} else {
							RoundedRectangle(cornerRadius: 22, style: .continuous)
								.fill(LinearGradient(colors: [.gray.opacity(0.38), .black.opacity(0.28)],
													 startPoint: .topLeading, endPoint: .bottomTrailing))
								.overlay(
									Image(systemName: "person.2.sequence")
										.resizable().scaledToFit().frame(width: 90, height: 120)
										.foregroundStyle(.white.opacity(0.9))
								)
								.frame(height: 140)
						}
					}
			}

			// 內容（可捲動）
			ScrollView {
				VStack(alignment: .leading, spacing: 10) {
					// ---- 白色文字區塊 ----
					Group {
						Text(org.name)
							.font(.title3.bold())

						Text(org.intro)
							.font(.body)
							.fixedSize(horizontal: false, vertical: true)

						Rectangle()
							.frame(height: 1)
							.foregroundStyle(.white.opacity(0.25))

						VStack(alignment: .leading, spacing: 6) {
							ForEach(org.highlights, id: \.self) { line in
								Label(line, systemImage: "checkmark.circle")
									.font(.subheadline)
							}
						}
					}
					.foregroundStyle(.white)

					HStack(spacing: 30) {
						if let urlStr = org.website, let url = URL(string: urlStr) {
							GlassButton(icon: "safari", title: "官網") { openURL(url) }
						}
						if let urlStr = org.facebook, let url = URL(string: urlStr) {
							GlassButton(icon: "network", title: "社群") { openURL(url) }
						}
					}
					.frame(maxWidth: .infinity, alignment: .center)
					.padding(.top, 6)
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(12)
			}
			.scrollIndicators(.hidden)
		}
		.frame(height: cardHeight)
		.frame(maxWidth: 300)
		.padding(.horizontal, 16)
		.padding(.vertical, 16)
		.background(
			RoundedRectangle(cornerRadius: 22, style: .continuous)
				.glassEffect(.clear.interactive(), in: .rect(cornerRadius: 22))
		)
		.clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
	}
}
