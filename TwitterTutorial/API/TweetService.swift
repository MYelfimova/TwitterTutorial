//
//  TweetService.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 29/06/2021.
//

import Firebase

struct TweetService {
    
    static let shared = TweetService()
    
    func uploadTweet(caption: String, completion: @escaping(Error?, DatabaseReference) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let values = [
            "caption": caption,
            "likes": 0,
            "retweets": 0,
            "uid": uid,
            "timestamp": Int(NSDate().timeIntervalSince1970) ] as [String : Any]
        
        REF_TWEETS.childByAutoId().updateChildValues(values, withCompletionBlock: completion)
    }
    
}
