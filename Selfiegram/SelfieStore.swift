//
//  SelfieStore.swift
//  Selfiegram
//
//  Created by Yu-Chiang Kuo on 2019/1/30.
//  Copyright © 2019 Yu-Chiang Kuo. All rights reserved.
//
import UIKit.UIImage
import Foundation

class Selfie: Codable {
    let created: Date
    let id: UUID
    var title = "New Selfie!"
    
    //var image: UIImage? {
        //get {
            
        //}
        //set {}
    //}
    
    init(title: String)
    {
        self.title = title
        self.created = Date()
        self.id = UUID()
    }
    
    enum SelfieStoreError: Error {
        case cannotSaveImage(UIImage?)
    }
}

enum SelfieStoreError: Error
{
    case cannotSaveImage(UIImage?)
}

final class SelfieStore {
    static let shared = SelfieStore()
    
    func getImage(id: UUID) -> UIImage? {
        return nil
    }
    
    func setImage(id: UUID, image: UIImage?) throws {
        throw SelfieStoreError.cannotSaveImage(image)
    }
    
    func listSelfies() throws -> [Selfie] {
        return []
    }
    
    func delete(selfie: Selfie) throws {
        throw SelfieStoreError.cannotSaveImage(nil)
    }
    
    func delete(id: UUID) throws {
        throw SelfieStoreError.cannotSaveImage(nil)
    }
    
    func load(id: UUID) -> Selfie? {
        return nil
    }
    
    func save(selfie: Selfie) throws {
        throw SelfieStoreError.cannotSaveImage(nil)
    }
}
