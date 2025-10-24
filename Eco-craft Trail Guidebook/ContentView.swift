//
//  ContentView.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/23/25.
//

import SwiftUI
import UIKit

// MARK: - Tabs
enum AppTab: Int, CaseIterable, Identifiable {
	case home, methods, cases, participate
	var id: Int { rawValue }
	var title: String {
		switch self {
		case .home: return "首頁"
		case .methods: return "工法"
		case .cases: return "案例"
		case .participate: return "參與"
		}
	}
	var systemImage: String {
		switch self {
		case .home: return "house"
		case .methods: return "hammer"
		case .cases: return "book.closed"
		case .participate: return "person.2.fill"
		}
	}
}

// MARK: - ContentView
struct ContentView: View {
	@State var selection: AppTab = .home
	var body: some View {
		TabView(selection: $selection) {
			Tab(value: .home) {
				NavigationStack {
					HomeView(chapters: chapters)
						.toolbar(.hidden, for: .navigationBar)
				}
			} label: { Label("首頁", systemImage: AppTab.home.systemImage) }

			Tab(value: .methods) {
				NavigationStack {
					MethodsView(categories: categories)
						.navigationTitle("工法")
						.navigationBarTitleDisplayMode(.inline)
				}
			} label: { Label("工法", systemImage: AppTab.methods.systemImage) }

			Tab(value: .cases) {
				NavigationStack {
					CasesView(cases: caseStudies)
						.navigationTitle("案例")
						.navigationBarTitleDisplayMode(.inline)
				}
			} label: { Label("案例", systemImage: AppTab.cases.systemImage) }

			Tab(value: .participate) {
				NavigationStack {
					ParticipateView()
						.navigationTitle("參與")
						.navigationBarTitleDisplayMode(.inline)
				}
			} label: { Label("參與", systemImage: AppTab.participate.systemImage) }
		}
	}
}












// MARK: - Preview
//#Preview { ContentView() }
