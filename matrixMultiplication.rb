
=begin

Write a Program to perform a Matrix Multiplication. You should take two matrices as input and display the product as an output. If multiplication is not possible, an error should be thrown

=end


def multiplyTwoMatrices(matrix1,matrix2,rowSize1,rowsize2,colSize1,colSize2)
    if rowSize1 != colSize2 
        return "Multiplication not possible"
    end
    # initalization of 2-D matrix 
    resultant_matrix=Array.new(rowSize1 ){|ele| Array.new(colSize2,0)}

    rowSize1.times do |row|
        colSize2.times do |col|
            colSize1.times do |index|
                # storing the value at resultant_matrix 
                resultant_matrix[row][col] += matrix1[row][index]*matrix2[index][col]
            end
        end
    end

    return resultant_matrix


end
# getting matrix data from user
def getMatrixData(row,col)
    puts "Enter the element by giving space between for a row"
    matrix=[]
    row.times do 
        rowData = gets.chomp.split(' ').map(&:to_i)
        #  checking if user is not entering the correct length of data
        if(rowData.length != col)
            puts "Invalid Data , please try once again"
            # re loop
            redo
        end
    
    matrix << rowData
    end
    return matrix
   
end

# taking row and col size of matrix1
puts  "Enter the size of  rows and columns for First matrix"
rowSize1 , colSize1 = gets.chomp.to_i , gets.chomp.to_i
matrix1=getMatrixData(rowSize1,colSize1)
# taking row and col size of matrix2
puts  "Enter the size of row and columns for Second matrix"
rowsize2,colSize2=gets.chomp.to_i,gets.chomp.to_i
matrix2=getMatrixData(rowsize2,colSize2)




result = multiplyTwoMatrices(matrix1,matrix2,rowSize1,rowsize2,colSize1,colSize2)

puts "Resultant answer is #{result}"

