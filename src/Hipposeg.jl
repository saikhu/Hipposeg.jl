# using EmojiSymbols
module Hipposeg
using PyCall
np = pyimport("numpy")
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
    # x = np.array(x)
    # y = x.tolist()
    # print()
    py"""
    def testPy(x):
        import numpy
        re = "The argument is: " + str(x)
        return re
    """
    
    return py"testPy"(x)
end
    
end
