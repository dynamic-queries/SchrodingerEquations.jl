using SchrodingerEquations
using Test
using Plots
using LinearAlgebra
using LaTeXStrings

@testset "SchrodingerEquations.jl" begin
    include("potentials.jl")
    include("difference.jl")
end
