import Foundation

public extension Int {
    
    var roman: String? {
        let romanDict: KeyValuePairs <Int, String> = [

            1000:"M",
            900:"CM",
            500:"D",
            400:"CD",
            100:"C",
            90:"XC",
            50:"L",
            40:"XL",
            10:"X",
            9:"IX",
            5:"V",
            4:"IV",
            1:"I"

        ]
        
        guard self > 0 else { return nil }
        guard self <= 3999  else { return nil }
         
        var result = ""
        var n = self
        
        for (value, letters) in romanDict {
            while n >= value {
                    n -= value
                    result += letters
                    }
                }
                
                return result
    }
}
