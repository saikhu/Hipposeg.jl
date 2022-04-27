#!/usr/local/julia/bin/julia

using Pkg
activate_path = dirname(Base.PROGRAM_FILE) 
Pkg.activate(activate_path) 
Pkg.precompile()

using Hipposeg
moto.(true)
# print(activate_path)
