//
//  ViewModel.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 14.12.22.
//

import Foundation

///протокол, который доложен реализовать Model
protocol MVVMModelProtocol {
    func getHash(_ string: String) -> String
}

class ViewModel {
    
    var model: MVVMModelProtocol
    var hash = ""
    
    //MARK: - init's
    init() {
        self.model = MVVMModel()
    }
}

extension ViewModel: ViewModelProtocol {
    
    var hashedString: String {
        return self.hash
    }
    
    func getHash(_ string: String, complition: @escaping () -> ()) {
        hash = model.getHash(string)
        complition()
    }
}
