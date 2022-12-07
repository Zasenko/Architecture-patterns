//
//  MVCViewController.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 22.11.22.
//

import UIKit

class MVCViewController: UIViewController {
    
    let rootView = MVCView()
    let model: MVCModelProtocol
    
    init() {
        self.model = MVCModel()
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add target for Button
        rootView.button.addTarget(self, action: #selector(buttonTaped(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonTaped(sender: UIButton) {
        guard let inputText = rootView.textField.text else {return}
        let hashedText = model.hash(inputText)
        rootView.lable.text = hashedText
    }
}
