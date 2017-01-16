//
//  FileManagerProtocol.swift
//  SwiftAPI
//
//  Created by Marek Kojder on 16.01.2017.
//  Copyright © 2017 XSolve. All rights reserved.
//

import Foundation

protocol FileManagerProtocol {
    func copyFile(from source: URL, to destination: URL ) -> Error?
}
