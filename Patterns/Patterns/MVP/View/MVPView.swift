//
//  MVPView.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 07.12.22.
//

import UIKit

//то, что доложен реализовать презентер данного вью
protocol MVPPresenterProtocol {
    func getHash(_ string: String)
}

class MVPView: UIViewController {

    let presenter: MVPPresenterProtocol
    let rootView = MVPRootView()
    
    init() {
        self.presenter = Presenter()
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
        rootView.button.addTarget(self, action: #selector(buttonTaped(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonTaped(sender: UIButton) {
        guard let inputText = rootView.textField.text else {return}
        //View отправляет уведомление о пользовательском взаимодействии Presenter-у
        presenter.getHash(inputText)
    }
}

extension MVPView: PresenterRootView {
    
    // view получает уведомление от Presenter для обновления интерфейса
    func showHash(_ string: String) {
        rootView.lable.text = string
    }
    
    
}
