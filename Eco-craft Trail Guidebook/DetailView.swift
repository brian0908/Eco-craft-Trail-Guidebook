//
//  DetailView.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - 工法詳情頁
struct MethodDetailView: View {
	let method: Method
	var body: some View {
		List {
			Section("概述") { Text(method.summary) }
			Section("材料") { ForEach(method.materials, id: \.self) { Text($0) } }
			Section("施作步驟") {
				ForEach(method.steps) { s in
					VStack(alignment: .leading, spacing: 4) {
						Text(s.title).font(.headline)
						Text(s.detail).font(.subheadline).foregroundStyle(.secondary)
					}
					.padding(.vertical, 2)
				}
			}
		}
		.listStyle(.insetGrouped)
		.navigationTitle(method.name)
	}
}
// MARK: - 介紹詳情頁
struct IntroDetailView: View {
	let intro: Intro
	var body: some View {
		VStack(){
			Image(intro.imageName)
				.resizable()
				.scaledToFill()
				.frame(maxWidth: .infinity, minHeight: 200, maxHeight: 220)
				.clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
				.overlay(
					RoundedRectangle(cornerRadius: 14, style: .continuous)
						.stroke(.black.opacity(0.06), lineWidth: 1)
				)
				.shadow(color: .black.opacity(0.06), radius: 6, y: 3)
				.padding(.horizontal)
			
			List {
				Section(intro.name) { Text(intro.summary) }
			}
			.listStyle(.insetGrouped)
			.navigationTitle(intro.name)
		}
	}
}

// MARK: - 案例詳情頁
struct CaseDetailView: View {
	let caseStudy: CaseStudy

	var body: some View {
		ZStack {
			Color(.systemGroupedBackground)
				.ignoresSafeArea()

			ScrollView {
				VStack(spacing: 16) {

					// Header image
					Image(caseStudy.imageName)
						.resizable()
						.scaledToFill()
						.frame(maxWidth: .infinity, minHeight: 200, maxHeight: 220)
						.clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
						.overlay(
							RoundedRectangle(cornerRadius: 14, style: .continuous)
								.stroke(.black.opacity(0.06), lineWidth: 1)
						)
						.shadow(color: .black.opacity(0.06), radius: 6, y: 3)
						.padding(.horizontal)

					// Content
					VStack(alignment: .leading, spacing: 18) {

						// 基本資訊
						Group {
							Text("基本資訊")
								.font(.headline)

							VStack(alignment: .leading, spacing: 8) {
								LabeledContent("路段", value: caseStudy.name)
								LabeledContent("地點", value: caseStudy.location)
							}
							.padding(12)
							.background(
								RoundedRectangle(cornerRadius: 12, style: .continuous)
									.fill(.white)
									.shadow(color: .black.opacity(0.05), radius: 4, y: 2)
							)
							.overlay(
								RoundedRectangle(cornerRadius: 12, style: .continuous)
									.stroke(.black.opacity(0.06), lineWidth: 1)
							)
						}
						Group {
							Text("使用工法")
								.font(.headline)

							VStack(spacing: 10) {
								ForEach(caseStudy.usedMethods, id: \.self) { m in
									NavigationLink {
										MethodDetailView(method: m)
									} label: {
										MethodRow(method: m)
									}
									.buttonStyle(.plain)
								}
							}
						}

						Group {
							Text("說明")
								.font(.headline)

							Text(caseStudy.notes)
								.frame(maxWidth: .infinity, alignment: .leading)
								.padding(12)
								.background(
									RoundedRectangle(cornerRadius: 12, style: .continuous)
										.fill(.white)
										.shadow(color: .black.opacity(0.05), radius: 4, y: 2)
								)
								.overlay(
									RoundedRectangle(cornerRadius: 12, style: .continuous)
										.stroke(.black.opacity(0.06), lineWidth: 1)
								)
						}
					}
					.padding(.horizontal)
					.padding(.bottom, 24)
				}
			}
		}
		.navigationTitle(caseStudy.name)
		.navigationBarTitleDisplayMode(.inline)
	}
}

// MARK: - 參與詳情頁
struct ParticipateView: View {
	let orgs: [Org] = [
		Org(
			name: "臺灣千里步道協會",
			imageName: "04",
			intro: "民間非營利組織，推動手作步道、志工工作假期與國家綠道建置，強調就地取材、順應地景與常態維護的公民參與。",
			highlights: ["手作步道工作假期與推廣", "社大與步道師社群培訓", "國家綠道路網建置"],
			website: "https://www.tmitrail.org.tw/",
			facebook: "https://www.facebook.com/tmitrail"
		),
		Org(
			name: "臺大山徑行動社",
			imageName: "03",
			intro: "全國大專院校唯一步道守護社團，定期手作步道體驗與工作假期，參與步道守護與改善，並舉辦綠道與郊山古道健行活動。",
			highlights: ["手作步道山徑維護", "國家綠道健行", "對外合作與服務學習"],
			website: "https://my.ntu.edu.tw/clubactivities/Home",
			facebook: "https://www.facebook.com/trailaction"
		)
	]

	var body: some View {
		ZStack {
			Image(.bg).resizable().scaledToFill().ignoresSafeArea()
			ScrollView {
				VStack(spacing: 20) {
					ForEach(orgs) { org in OrgCard(org: org) }
				}
				.padding(.vertical, 24)
				.padding(.top, 80)
				.padding(.bottom, 80)
				.padding(.horizontal, 50)
				.tint(.white)
			}
			.scrollIndicators(.hidden)
		}
	}
}
