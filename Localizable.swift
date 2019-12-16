//
//  Localizable.swift
//  MIKS
//
//  Created by Civel Xu on 2019/12/13.
//  Copyright © 2019 xuxiwen. All rights reserved.
//

import Foundation

struct Localizable {

    enum Languages: String, CaseIterable {
        case zh_Hans = "zh-Hans"
        case en
        case ja
    }

    static func allLanguages() -> [Languages] {
        return Languages.allCases
    }

    static var currentLanguage: Languages = getCurrentLanguage()

    static func setCurrentLanguage(_ current: Languages) {
        UserDefaults.standard.setValue(current.rawValue, forKey: LanguageDefaultsKey)
        updateCurrentLanguage()
    }

    private static func getCurrentLanguage() -> Languages {
        guard let value = UserDefaults.standard.value(forKey: LanguageDefaultsKey) as? String,
        let language = Languages(rawValue: value) else {
            /// Default Setting
            return Languages.zh_Hans
        }
        return language
    }

    private static func updateCurrentLanguage() {
        currentLanguage = getCurrentLanguage()
    }

    private static let LanguageDefaultsKey = "Languages.currentLanguage"

}

extension String {
    func localized() -> String {
        guard !isEmpty else { return "" }
        let language = Localizable.currentLanguage.rawValue
        guard let localizedPath = Bundle.main.path(forResource: language, ofType: "lproj"),
            let localizedBundle = Bundle(path: localizedPath) else {
                return self
        }
        return localizedBundle.localizedString(forKey: self, value: nil, table: "Localizable")
    }
}
