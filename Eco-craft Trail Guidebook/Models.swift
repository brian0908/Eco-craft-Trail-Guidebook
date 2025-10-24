//
//  Models.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - Models
struct Chapter: Identifiable { let id = UUID(); let title: String; let highlights: [Highlight] }

enum HighlightLink: Hashable {
	case method(Method)
	case intro(Intro)
	case caseStudy(CaseStudy)
	case participate
}

struct Highlight: Identifiable, Hashable {
	let id = UUID()
	let title: String
	let subtitle: String
	let imageName: String
	let link: HighlightLink
}

struct MethodCategory: Identifiable { let id = UUID(); let name: String; let methods: [Method] }
struct Method: Identifiable, Hashable {
	let id = UUID()
	let name: String
	let summary: String
	let steps: [Step]
	let materials: [String]
}
struct Step: Identifiable, Hashable { let id = UUID(); let title: String; let detail: String }

struct CaseStudy: Identifiable, Hashable {
	let id = UUID()
	let name: String
	let location: String
	let usedMethods: [Method]
	let notes: String
	let imageName: String
}

struct Intro: Identifiable, Hashable { let id = UUID(); let name: String; let summary: String; let imageName: String }

struct Org: Identifiable {
	let id = UUID()
	let name: String
	let imageName: String?
	let intro: String
	let highlights: [String]
	let website: String?
	let facebook: String?
}
