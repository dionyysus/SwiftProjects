//
//  ViewController.swift
//  Wordle App
//
//  Created by Gizem Coşkun on 15.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        provide(input: "katir")
        
    }

    private let words = ["biber",
                         "helva",
                         "gazoz",
                         "hurma",
                         "ceviz",
                         "badem",
                         "kitap",
                         "katir"]
    
    private var inputWords: [String] = []
    
    private let targetWord = "kitap"
    
    private let alphabet: CharacterSet = {
        var characterSet = CharacterSet.lowercaseLetters
        characterSet.insert(charactersIn: "çğıöşü")
        return characterSet
    }()

    private var inputCharacters: [String] = []
    
    private var currentInput: String = "" {
        didSet {
            if currentInput.count == 5 {
                provide(input: currentInput)
            }
        }
    }
    
    private func tryToProvide(input: String) {
        let lastCharacter = String(input[input.index(input.startIndex,
                                                     offsetBy: input.count - 1)])
        guard !inputCharacters.contains(lastCharacter) else {
            return
        }
        
        guard alphabet.isSuperset(of: CharacterSet(charactersIn: input)) else {
            return
        }
        currentInput = input
    }
    
    private func provide(input: String) {
        
         
        guard !inputWords.contains(input) else{
            print("already entered")
            return
        }
        
        inputWords.append(input)
        
        var matchedIndexes: [Int] = []
        var nearlyMatchedIndexes: [Int] = []
        
        for i in 0..<5 {
            let inputCharacter = input[input.index(input.startIndex, offsetBy: i)]
            let targetCharacter = targetWord[targetWord.index(targetWord.startIndex,
                                                              offsetBy: i)]
            
            inputCharacters.append(String(inputCharacter))
            
            if inputCharacter == targetCharacter {
                matchedIndexes.append(i)
            } else if( targetWord.contains(inputCharacter)){
                nearlyMatchedIndexes.append(i)
            } else {
                print("character couldn't found: \(inputCharacter)")
            }
        }
        
        print("matched: \(matchedIndexes)")
        print("can be match: \(nearlyMatchedIndexes)")
        
    }
    


}



