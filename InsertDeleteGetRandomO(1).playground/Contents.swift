import Foundation

class RandomizedSet {
        var dict: [Int: Int]
        var array: [Int]
    init() {
        dict = [:]
        array = []
    }
    
    func insert(_ val: Int) -> Bool {
        if dict[val] != nil {
            return false
        }
        dict[val] = array.count
        array.append(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        if let index = dict[val] {
            let lastValue = array.last!
            array[index] = lastValue
            dict[lastValue] = index
            dict[val] = nil
            array.removeLast()
            return true
        }
        return false

    }
    
    func getRandom() -> Int {
        let randomInteger = Int.random(in: 0..<array.count)
        return array[randomInteger]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
