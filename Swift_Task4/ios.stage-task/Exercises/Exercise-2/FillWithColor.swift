import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        if image == [] {
            return []
        }
        
        if row >= image.count || column >= image[0].count || row < 0 || column < 0 {
            return image
        }
        
        var newImage = image
        let oldColor = image[row][column]
        fillFour(&newImage, row, column, newColor, oldColor)
        return newImage
    }
    
    func fillFour(_ newImage: inout [[Int]], _ row: Int, _ column: Int, _ newColor: Int, _ oldColor: Int) {
        if (row >= 0 && row < newImage.count && column >= 0 && column < newImage[0].count && newImage[row][column] == oldColor && newImage[row][column] != newColor) {
            
            if (column < newImage[row].count) {
            newImage[row][column] = newColor
            fillFour(&newImage, row + 1, column, newColor, oldColor)
            fillFour(&newImage, row - 1, column, newColor, oldColor)
            fillFour(&newImage, row, column + 1, newColor, oldColor)
            fillFour(&newImage, row, column - 1, newColor, oldColor)
            }
        }
    }
}
