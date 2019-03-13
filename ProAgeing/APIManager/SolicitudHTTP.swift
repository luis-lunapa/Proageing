//
//  SolicitudHTTP.swift
//  ProAgeing
//
//  Created by Luis Luna on 1/12/19.
//  Copyright © 2019 Luis Luna. All rights reserved.
//

import Foundation
import PromiseKit
import Alamofire

final class SolicitudHTTP {
    private let URL = "https://luislunapa.com/Proageing/API/"
    
    func login (email: String, password: String) -> Promise<Usuario> {
        
        let parameters = [
            "email": email,
            "password": password
        ]
        
        return Promise {
            seal in
            
            Alamofire.request(URL + "login.php", parameters: parameters).responseJSON {
                
                response in
                
                if let jsonData = response.result.value {
                    
                    
                    
                    
                } else {
                    
                    seal.reject(NSError(domain: "login", code: 0, userInfo: ["msg": "Lo sentimos 😥 en estos momentos nuestro servidor no está disponible. Esperamos estar en linea pronto."]))
                    print("login ERROR == \(response.error!)")
                    
                }
                
                
                
            }
            
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
}
