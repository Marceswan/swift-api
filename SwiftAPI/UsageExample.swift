//
//  UsageExample.swift
//  SwiftAPI
//
//  Created by Marek Kojder on 20.12.2016.
//  Copyright © 2016 XSolve. All rights reserved.
//

import Foundation

class UsageExample {

    let webservice = Webservice()

    func get() {
        if let url = URL(string: "https://www.google.pl") {
            var request = HttpRequest(url: url, method: .get)
            request.onSuccess = .success({ (data: Data, response: HttpResponse?) in
                print("Success: \(data)")
            })
            request.onFailure = .failure({ (error: Error) in
                print("Failure: \(error.localizedDescription)")
            })
            webservice.sendHTTPRequest(request)
        }
    }
}
