//
// GreetingsViewController.swift
// Created by Igor Tarasenko on 05/02/18.
// Copyright © 2018 Igor Tarasenko
// Licensed under the MIT license, see LICENSE.md file
//

import Foundation
import AsyncDisplayKit

public class GreetingsViewController: ASViewController<GreetingsNode> {
    public static func make() -> UIViewController {
        return GreetingsViewController()
    }

    private init() {
        let node = GreetingsNode()
        super.init(node: node)

        bindInput()
    }

    public required init?(coder _: NSCoder) {
        fatalError("Not Implemented")
    }

    deinit {
    }

    func bindInput() {
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
    }

    public override func viewWillTransition(
        to size: CGSize,
        with coordinator: UIViewControllerTransitionCoordinator
        ) {
        super.viewWillTransition(to: size, with: coordinator)

        coordinator.animate(alongsideTransition: { _ in
            self.node.transitionLayout(
                with: ASSizeRange(min: size, max: size),
                animated: true,
                shouldMeasureAsync: true
            )
        }, completion: nil)
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
