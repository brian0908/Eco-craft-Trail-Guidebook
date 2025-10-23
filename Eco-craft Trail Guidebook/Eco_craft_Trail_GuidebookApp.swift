//
//  Eco_craft_Trail_GuidebookApp.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/21/25.
//

import SwiftUI

@main
struct Eco_craft_Trail_GuidebookApp: App {
	init() {
		let ap = UINavigationBarAppearance()
		ap.configureWithTransparentBackground()
		ap.backgroundEffect = nil
		ap.backgroundColor = .clear
		ap.shadowColor = .clear
		ap.titleTextAttributes      = [.foregroundColor: UIColor.black,
									   .font: UIFont.boldSystemFont(ofSize: 17)]
		ap.largeTitleTextAttributes = [.foregroundColor: UIColor.black,
									   .font: UIFont.boldSystemFont(ofSize: 34)]
	}

	var body: some Scene {
		WindowGroup { ContentView() }
	}
}
