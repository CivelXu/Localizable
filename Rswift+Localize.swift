//
//  Rswift+Localize.swift
//  MIKS
//
//  Created by Civel Xu on 2019/12/16.
//  Copyright © 2019 xuxiwen. All rights reserved.
//

import Rswift

let Rstring = R.string.localizable.self

extension StringResource {

    public func localized() -> String {
        return localized(Localizable.currentLanguage.rawValue)
    }

    fileprivate func localized(_ language: String) -> String {
        guard let localizedPath = bundle.path(forResource: language, ofType: "lproj"),
            let localizedBundle = Bundle(path: localizedPath) else {
                return key
        }
        return localizedBundle.localizedString(forKey: key, value: key, table: tableName)
    }

}
