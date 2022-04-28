# using EmojiSymbols
module Hipposeg
using PyCall
# export moto pythonExecTest 
# Write your package code here.
function moto(check::Bool)
    moto_message = "We are building something cool here ! 🥀  "
    if check == true
        println(moto_message)
        return true
    else
        return false
    end
end



function pythonExecTest(x)
    # x = 100
    py"""
    def testPy(x):
        re = "The argument is: " + str(x)
        return re
    """
    
    return py"testPy"(x)
end
    
end
