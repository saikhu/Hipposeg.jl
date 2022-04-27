# using EmojiSymbols
module Hipposeg
export moto
# Write your package code here.
function moto(check::Bool)
    moto_message = "We are building something cool here ! 🥀  "
    if check == true
        print(moto_message)
        return true
    else
        return false
    end
end
function readImage()
    print("Read Image Package")
end
    
end
