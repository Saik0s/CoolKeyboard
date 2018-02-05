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
        static let avatar: CGSize = CGSize(width: 70, height: 70)
        static let button: CGSize = CGSize(width: 30, height: 30)
    }

//    private let avatar: ASNetworkImageNode = ASNetworkImageNode()
//    private let firstName: ASTextNode = ASTextNode()
//    private let lastName: ASTextNode = ASTextNode()
//    private let city: ASTextNode = ASTextNode()
//    private let country: ASTextNode = ASTextNode()
//    private let streetName: ASTextNode = ASTextNode()
//    private let houseNumber: ASTextNode = ASTextNode()
//    private let username: ASTextNode = ASTextNode()
//    private let sex: ASTextNode = ASTextNode()
//    private let button: ASButtonNode = ASButtonNode()

    public override init() {
        super.init()

        automaticallyManagesSubnodes = true
        setupNodes()
    }

    private func setupNodes() {
        backgroundColor = .white
//        stylize(as: .defaultContainer)
//        avatar.stylize(as: .userAvatar(URL(string: "https://api.24coms.com/demo/users/5/picture")))
//        firstName.stylize(as: .userDefault(user.firstName))
//        lastName.stylize(as: .userDefault(user.lastName))
//        city.stylize(as: .userDefault("city: \(user.city)"))
//        country.stylize(as: .userDefault("country: \(user.country)"))
//        streetName.stylize(as: .userDefault("street: \(user.streetName)"))
//        houseNumber.stylize(as: .userDefault("house: \(user.houseNumber)"))
//        username.stylize(as: .userDefault("username: \(user.username)"))
//        sex.stylize(as: .userDefault("sex: \(user.sex)"))
//        button.stylize(as: .remove)
    }

    public override func layoutSpecThatFits(_: ASSizeRange) -> ASLayoutSpec {
//        let mainStack: ASStackLayoutSpec = ASStackLayoutSpec.vertical()
//        let headerStack: ASStackLayoutSpec = ASStackLayoutSpec.horizontal()
//        let nameStack: ASStackLayoutSpec = ASStackLayoutSpec.vertical()
//
//        avatar.style.preferredSize = Sizes.avatar
//        avatar.style.spacingAfter = 5.0
//
//        nameStack.style.flexGrow = 1.0
//
//        button.style.preferredSize = Sizes.button
//
//        nameStack.alignItems = .start
//        nameStack.children = [firstName, lastName]
//
//        headerStack.alignItems = .center
//        headerStack.children = [avatar, nameStack, button]
//
//        mainStack.children = [
//            headerStack,
//            city,
//            country,
//            streetName,
//            houseNumber,
//            username,
//            sex
//        ]
//        return ASInsetLayoutSpec(
//            insets: UIEdgeInsets(top: 15, left: 10, bottom: 0, right: 10),
//            child: mainStack
//        )
        return ASStackLayoutSpec.vertical()
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
