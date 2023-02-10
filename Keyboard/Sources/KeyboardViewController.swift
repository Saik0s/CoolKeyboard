import Foundation
import SwiftUI
import UIKit

class KeyboardViewController: UIInputViewController {
  lazy var keyboardViewModel: KeyboardViewModel = .init(textDocumentProxy: textDocumentProxy, controller: self)

  override func viewDidLoad() {
    super.viewDidLoad()

    let inputView = UIHostingController(rootView: KeyboardView(viewModel: keyboardViewModel))
    inputView.view.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(inputView.view)

    NSLayoutConstraint.activate([
      inputView.view.leftAnchor.constraint(equalTo: view.leftAnchor),
      inputView.view.rightAnchor.constraint(equalTo: view.rightAnchor),
      inputView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      inputView.view.topAnchor.constraint(equalTo: view.topAnchor),
    ])

    inputView.view.layoutIfNeeded()
  }
}
