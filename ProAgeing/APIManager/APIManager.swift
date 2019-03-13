//
//  APIManager.swift
//  ProAgeing
//
//  Created by Luis Luna on 1/12/19.
//  Copyright © 2019 Luis Luna. All rights reserved.
//

import Foundation


final class APIManager {
    
    private init () {}
    
    private let solicitud: SolicitudHTTP = SolicitudHTTP()
    
    private let persistency: Persistencia = Persistencia()
    
    func solicitudServidor() -> SolicitudHTTP {
        
        return self.solicitud
    }
    
    func persistencia() -> Persistencia {
        return self.persistency
    }
}
