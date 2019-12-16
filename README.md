# Localizable
Localizable App strings

## 目录结构
### Localizable
- 配置 Languages 种类的枚举
-  String Extension `localized() `

## Rswift+Localize

- 依赖于R.swift StringResource Extension `localized() `
-  为R.swift增加使用自定义统一语言选择，使用 `R.string.localizable.login.localized()`

## IBDesignable+Localize
- 在 IB中增加 localizeKey，提供国际化配置
- 包含 UILabel、UIButton、UITextView、UITextField、UINavigationItem

## iOS 和 Android 国际化协同
- 参考1 ：[Localizable.strings2Excel](https://github.com/CatchZeng/Localizable.strings2Excel)
通过 python脚本实现， strings、xml、xls文件的转换。

- 参考2 ：[localizable-sheet-script](https://github.com/cobeisfresh/localizable-sheet-script?source=post_page-----4d98b4534483----------------------)
使用Google表格和脚本实现， Google表格协调内容编辑， 导出strings和xml提供使用。
