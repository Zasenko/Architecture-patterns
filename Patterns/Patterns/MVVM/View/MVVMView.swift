//
//  MVVMView.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 14.12.22.
//

import UIKit

///протокол, который доложен реализовать ViewModel данного вью
protocol ViewModelProtocol {
    var hashedString: String { get }
    func getHash(_ string: String, complition: @escaping ()->())
}

class MVVMView: UIViewController {
    
    let viewModel: ViewModelProtocol
    let rootView = MVPRootView()
    
    //MARK: - init's
    
    init() {
        self.viewModel = ViewModel()
        super.init(nibName: nil, bundle: nil)
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
        rootView.button.addTarget(self, action: #selector(buttonTaped(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonTaped(sender: UIButton) {
        guard let inputText = rootView.textField.text else {return}
        
        viewModel.getHash(inputText) {
            self.rootView.lable.text = self.viewModel.hashedString
        }
    }
}
