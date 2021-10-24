//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

class ___VARIABLE_moduleIdentifier___Coordinator {
    let navigationController: UINavigationController
    weak var parentCoordinator: ___VARIABLE_moduleIdentifier___CoordinatorOutput!
    weak var view: ___VARIABLE_moduleIdentifier___ViewInput!
    weak var viewModel: ___VARIABLE_moduleIdentifier___ViewModelInput!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension ___VARIABLE_moduleIdentifier___Coordinator: ___VARIABLE_moduleIdentifier___CoordinatorInput {
    func start___VARIABLE_moduleIdentifier___() {
        let model = ___VARIABLE_moduleIdentifier___Model()
        let view = ___VARIABLE_moduleIdentifier___ViewController()
        let viewModel = ___VARIABLE_moduleIdentifier___ViewModel()
        
        view.viewModel = viewModel
        viewModel.coordinator = self
        viewModel.model = model
        model.output = viewModel
        viewModel.output = view
        self.view = view
        self.viewModel = viewModel
        
        navigationController.pushViewController(view, animated: false)
    }
    
    func stop___VARIABLE_moduleIdentifier___() {
        navigationController.popViewController(animated: true)
        
        parentCoordinator.resign___VARIABLE_moduleIdentifier___()
    }
}
