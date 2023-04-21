module SchrodingerEquations
    using LinearAlgebra
    using OrdinaryDiffEq
    include("difference_matrices.jl")
    include("potentials.jl")
    include("solvers.jl")

    export HarmonicPotential, FreePotential, RectangularWellPotential, DoubleWellPotential
    export II, IV, VI, VIII
    export FDLaplacian
end
