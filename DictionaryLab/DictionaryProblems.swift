import Foundation

// Find the most frequently occurring character in a given string

func mostFrequentlyOccurringChar(in str: String) -> Character {
    var emptyArr = [Character]()
    for char in str {
        emptyArr.append(char)
    }
    let mappedArr = emptyArr.map{($0,1)}
    let newArr = Dictionary(mappedArr,uniquingKeysWith: +)
    let finalArr = newArr.sorted(by: {$0.value > $1.value})
    return finalArr[0].key
}



// Find the first indicies whose values sum to a given number

func pairSum(arr: [Int], target: Int) -> (Int, Int) {
    return (0,0)
}
// Find the second most frequently occurring character in a given string

func secondMostFrequentlyOccurringChar(in str: String) -> Character {
    var emptyArr = [Character]()
    for char in str {
        emptyArr.append(char)
    }
    let mappedArr = emptyArr.map{($0,1)}
    let newArr = Dictionary(mappedArr,uniquingKeysWith: +)
    let finalArr = newArr.sorted(by: {$0.value > $1.value})
    return finalArr[finalArr.index(after: 0)].key
}

// https://leetcode.com/problems/ransom-note/

// Given an arbitrary ransom note string and another string containing letters from all
// the magazines, write a function that will return true if the ransom note can be
// constructed from the magazines ; otherwise, it will return false.

// Each letter in the magazine string can only be used once in your ransom note.

// Submit to the leetcode link for more tests

func canConstruct(note: String, from originalLetters: String) -> Bool {
  var canConstruct = true
    var dict1 = Dictionary<Character,Int>()
    var dict2 = Dictionary<Character,Int>()

    for i in originalLetters {
        if dict1[i] == nil {
            dict1[i] = 1
        } else {
            dict1[i] = dict1[i]! + 1
        }
        
    }
    for i in note {
        if dict2[i] == nil {
            dict2[i] = 1
        } else {
            dict2[i] = dict2[i]! + 1
        }
        
    }
    for (_,letter) in dict2.enumerated() {
        if dict1[letter.key] == nil {
            canConstruct = false
        }
        if let unwrappedDict = dict1[letter.key] {
       
            
            if letter.value > unwrappedDict {
            canConstruct = false
        }
        }
        
    
}
    return canConstruct
}
// Return whether or not an input array contains duplicates

func containsDuplicates(arr: [Int]) -> Bool {
    
   var trueOrFalse = false
    let mappedArr = arr.map{($0,1)}
    let newArr = Dictionary(mappedArr,uniquingKeysWith: +)
    
    for i in newArr {
        if i.value > 1 {
          trueOrFalse = true
            
            break
        }
    }
    
return trueOrFalse
    
}

// Find all values that appear exactly once in a given array of Strings

func uniqueValues(in arr: [String]) -> [String] {
   
  var emptyArr = [String]()
    let mappedArr = arr.map{($0,1)}
    let dictionary = Dictionary(mappedArr,uniquingKeysWith: +)
    
    for word in arr {
        if dictionary[word] == 1 {
          emptyArr.append(word)
        }
    }
    return emptyArr
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    let mappedArr = arr.map{($0,1)}
    let dictionary = Dictionary(mappedArr,uniquingKeysWith: +).sorted(by: {$0.value > $1.value})
    
    var emptyArr = [Int]()
     var greatest = dictionary[0].key
    for i in arr {
       
        if i == greatest {
            emptyArr.append(i)
        }
        
    }
   return emptyArr
}

