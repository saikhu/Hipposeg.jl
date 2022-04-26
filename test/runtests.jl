using Hipposeg
using Test

@testset "Hipposeg.jl" begin
    # Write your tests here.
    moto_message = "We are building something cool here ! 🥀  "
    @test Hipposeg.moto(true) == true
end
