//
//  Config.swift
//  PandaMom
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

struct Config {
    static let minimumMajorVersion = 8
    static let minimumMinorVersion = 0

    static let frameworks = [
        "QuartzCore",
        "UIKit",
    ]

    static let typeMap = [
        "void": "Void",
        "BOOL": "Bool",
        "NSInteger": "Int",
        "NSUInteger": "Int",
        "size_t": "Int",
        "unsigned int": "UInt32",
        "float": "Float",
        "double": "Double",
        "SEL": "Selector",
        "NSCalendarUnit": "NSCalendar.Unit",
    ]

    static let genericMap = [
        "Class": (any: "AnyClass", generic: "%@.Type"),
        "id": (any: "Any", generic: "%@"),
        "NSArray": (any: "[Any]", generic: "[%@]"),
        "NSDictionary": (any: "[AnyHashable: Any]", generic: "[%@: %@]"),
    ]

    static let prefixStrippings: Set = [
        "NSCalendar",
        "NSData",
        "NSDate",
        "NSFileWrapper",
        "NSIndexPath",
        "NSLocale",
        "NSProgress",
        "NSSet",
        "NSString",
        "NSTimeInterval",
        "NSTimeZone",
        "NSUndoManager",
        "NSURL",
    ]

    static let typeExceptions = [
        "UIAccessibilityElement.accessibilityContainer": "AnyObject",
        "UIAccessibilityCustomAction.target": "AnyObject",
        "UIAlertView.delegate": "AnyObject",
        "UIBarButtonItem.target": "AnyObject",
    ]

    static let excludedTypes: Set = [
        "CAEmitterBehavior",
        "CAMetalLayer",
    ]

    static let excludedProperties: Set = [
        "CATransition.filter",

        "UIViewController.disablesAutomaticKeyboardDismissal",

        "UILabel.font",
        "UISimpleTextPrintFormatter.font",
        "UITextField.font",
        "UITextView.font",

        "UIGestureRecognizer.state",
    ]

    static let excludedMethods: Set = [
        "UITextChecker.setIgnoredWords",
    ]

    static let optionalMap = [
        "UITextInput": ["UITextField", "UITextView"],
        "UITextInputTraits": ["UISearchBar", "UITextField", "UITextView"],
    ]

    static let propertyNameMap = [
        "UIBezierPath.CGPath": "cgPath",
        "UIPopoverController.popoverBackgroundViewClass": "backgroundViewClass",
        "UIPopoverController.popoverContentSize": "contentSize",
        "UIPopoverController.popoverLayoutMargins": "layoutMargins",
        "UIView.maskView": "mask",
    ]

    static let methodNameMap = [
        "CALayer.setNeedsDisplayInRect": "NeedsDisplayIn",
        "UINavigationItem.setLeftBarButtonItem": "LeftBarButton",
        "UINavigationItem.setRightBarButtonItem": "RightBarButton",
        "UIPopoverController.setContentViewController": "ContentView",
        "UIPopoverController.setPopoverContentSize": "ContentSize",
        "UIView.setNeedsDisplayInRect": "NeedsDisplay",
    ]

    static let frameworkMap = [
        "CL": "CoreLocation",
    ]

    static let escapings: Set = [
        "UIAccessibilityCustomRotorSearch",
    ]

    static let customNameRules = [
        ("alignment", 5..<9),
        ("adjustment", 6..<10),
        ("arrangement", 7..<11),
        ("backgroundcolor", 10..<15),
        ("backgroundimage", 10..<15),
        ("backgroundview", 10..<14),
        ("layoutmargins", 0..<6),
        ("maximum", 3..<7),
        ("minimum", 3..<7),
        ("numberof", 0..<8),
        ("scalefactor", 5..<11),
        ("textattributes", 0..<4),
        ("timingfunction", 6..<14),
        ("tintcolor", 4..<9),
    ]

    static let customNameMap = [
        // CABasicAnimation
        "byValue": "by",
        "fromValue": "from",
        "toValue": "to",

        // CALayer
        "allowsEdgeAntialiasing": "edgeAntialiasable",
        "masksToBounds": "masks",
        "shouldRasterize": "rasterized",

        // UIButton
        "contentEdgeInsets": "contentInsets",
        "imageEdgeInsets": "imageInsets",
        "titleEdgeInsets": "titleInsets",

        // UICollectionView
        "allowsMultipleSelection": "multiSelectable",
        "allowsSelection": "selectable",
        "prefetchDataSource": "prefetchSource",
        "prefetchingEnabled": "prefetchs",
        "remembersLastFocusedIndexPath": "remembersLastFocus",

        // UICollectionViewFlowLayout
        "footerReferenceSize": "footerSize",
        "headerReferenceSize": "headerSize",
        "scrollDirection": "direction",
        "sectionFootersPinToVisibleBounds": "footersPinned",
        "sectionHeadersPinToVisibleBounds": "headersPinned",

        // UIControl
        "contentHorizontalAlignment": "horizontalAlign",
        "contentVerticalAlignment": "verticalAlign",

        // UIGestureRecognizer
        "requiresExclusiveTouchType": "exclusiveTouchType",

        // UILabel
        "adjustsFontSizeToFitWidth": "adjustsFontSize",
        "allowsDefaultTighteningForTruncation": "tightenable",
        "highlightedTextColor": "highlightedColor",
        "lineBreakMode": "lineBreak",
        "preferredMaxLayoutWidth": "maxWidth",
        "textAlignment": "align",
        "textColor": "color",

        // UILongPressGestureRecognizer
        "minimumPressDuration": "minDuration",

        // UINavigationBar
        "barStyle": "style",

        // UIScrollView
        "directionalLockEnabled": "directionLocked",
        "pagingEnabled": "paged",
        "scrollEnabled": "scrollable",
        "scrollIndicatorInsets": "indicatorInsets",
        "showsHorizontalScrollIndicator": "showsHorizontalIndicator",
        "showsVerticalScrollIndicator": "showsVerticalIndicator",

        // UIStackView
        "baselineRelativeArrangement": "baselineArrange",
        "layoutMarginsRelativeArrangement": "marginsArrange",

        // UITableView
        "allowsSelectionDuringEditing": "selectableDuringEditing",
        "allowsMultipleSelectionDuringEditing": "multiSelectableDuringEditing",
        "estimatedSectionFooterHeight": "estimatedFooterHeight",
        "estimatedSectionHeaderHeight": "estimatedHeaderHeight",
        "sectionFooterHeight": "footerHeight",
        "sectionHeaderHeight": "headerHeight",

        // UITapGestureRecognizer
        "numberOfTapsRequired": "taps",
        "numberOfTouchesRequired": "touches",

        // UITextField
        "allowsEditingTextAttributes": "attributesEditable",

        // UITextView
        "textContainerInset": "containerInset",

        // UIView
        "autoresizesSubviews": "autoresizes",
        "autoresizingMask": "autoresizing",
        "clearsContextBeforeDrawing": "clearsContext",
        "clipsToBounds": "clips",
        "contentCompressionResistancePriority": "resistancePriority",
        "contentHuggingPriority": "huggingPriority",
        "contentMode": "mode",
        "multipleTouchEnabled": "multiTouchable",
        "semanticContentAttribute": "semantics",
        "tintAdjustmentMode": "tintAdjust",
        "translatesAutoresizingMaskIntoConstraints": "translatesAutoresizing",
        "userInteractionEnabled": "interactable",

        // Exceptions
        "badgeTextAttributes": "badgeTextAttributes",
        "showsNumberOfCopies": "showsNumberOfCopies",
    ]
}
