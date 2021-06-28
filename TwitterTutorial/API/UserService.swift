//
//  UserService.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 27/06/2021.
//

import Foundation
import Firebase

struct UserService {
    
    static let shared = UserService()
    
    func fetchUser(completion: @escaping(User) -> Void) {
        // 1 - get uid from FIR, 2 - get dictionary from users/uid
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        //print("DEBUG: user \(uid) data fetched!")
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
            
            //print("DEBUG: dictionary \(dictionary)")
            //print("DEBUG: user is : \(user)")
        }
    }
    
}
