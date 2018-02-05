//
// GreetingsNode.swift
// Created by Igor Tarasenko on 05/02/18.
// Copyright © 2018 Igor Tarasenko
// Licensed under the MIT license, see LICENSE.md file
//

import Foundation
import AsyncDisplayKit

public class GreetingsNode: ASDisplayNode {
    private enum Sizes {
        static let inputField: CGSize = CGSize(width: 100, height: 30)
        static let settingsButton: CGSize = CGSize(width: 70, height: 30)
    }

    private let textInput: ASEditableTextNode = ASEditableTextNode()
    private let settings: ASButtonNode = ASButtonNode()

    public override init() {
        super.init()

        automaticallyManagesSubnodes = true
        setupNodes()
    }

    private func setupNodes() {
        backgroundColor = .white

        settings.setTitle("Settings", with: nil, with: .black, for: .normal)
        settings.addTarget(self, action: #selector(settingsPressed), forControlEvents: .touchUpInside)
    }

    @objc private func settingsPressed() {
        let preferencePath: String = "App-Prefs:root=General&path=Keyboard"

        if let url = URL(string: preferencePath) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }

    public override func layoutSpecThatFits(_: ASSizeRange) -> ASLayoutSpec {
        textInput.style.preferredSize = Sizes.inputField
        settings.style.preferredSize = Sizes.settingsButton

        let stackLayout: ASStackLayoutSpec = ASStackLayoutSpec.vertical()
        stackLayout.children = [textInput, settings]
        stackLayout.style.flexGrow = 1
        stackLayout.alignItems = .center
        stackLayout.justifyContent = .center

        return stackLayout
    }

    public override func animateLayoutTransition(_ context: ASContextTransitioning) {
        super.animateLayoutTransition(context)
    }

    // MARK: - Main thread
    public override func didLoad() {
        super.didLoad()
    }

    public override func layout() {
        super.layout()
    }
}
