//
//  Constants.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 26/06/2021.
//

import Firebase

//let DB_REF = Database.database(url: "https://twittertutorial-74bc9-default-rtdb.europe-west1.firebasedatabase.app").reference()
// added the link to plist - now no need to use it!
let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_image")
