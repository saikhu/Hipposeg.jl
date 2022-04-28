#!/usr/local/julia/bin/julia

using Pkg
activate_path = dirname(Base.PROGRAM_FILE)
Pkg.activate(activate_path)
Pkg.precompile()
Pkg.test()


using Hipposeg
Hipposeg.moto.(true)
println(Hipposeg.pythonExecTest(4))
# print(activate_path)
