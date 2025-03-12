class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        guard word1.count > 0 else {return word2}
        guard word2.count > 0 else {return word1}
        var mergedString: String = ""
        var maxLength: Int = word1.count > word2.count ? word1.count : word2.count

        for i in 0..<maxLength {
            if i < word1.count {
                mergedString += String(word1[word1.index(word1.startIndex, offsetBy: i)])
            }
            if i < word2.count {
                mergedString += String(word2[word2.index(word2.startIndex, offsetBy: i)])
            }
        }

        // merged string letter by letter
        return mergedString
    }
}