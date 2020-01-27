//
//  ExchangeCoordinator.swift
//  LeBaluchon
//
//  Created by Damien Rojo on 22.01.20.
//  Copyright © 2020 Damien Rojo. All rights reserved.
//

import UIKit

final class ExchangeCoordinator {

     // MARK: - Properties

     private let presenter: UINavigationController

     private let screens: Screens

     // MARK: - Initializer

     init(presenter: UINavigationController, screens: Screens) {
         self.presenter = presenter
         self.screens = screens
     }
     
     // MARK: - Coodinator

    func start() {
        showExchange()
    }

    private func showExchange() {
         let viewController = screens.createExchangeViewController()
         presenter.viewControllers = [viewController]
     }
}