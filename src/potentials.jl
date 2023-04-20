#--------------------------------------------------#
mutable struct HarmonicPotential
    nx::Int
    ω::Float64
    V::AbstractArray

    function HarmonicPotential(nx::Int,ω::Float64=1/32)
        new(nx,ω,zeros(nx,nx))
    end 
end

function (potential::HarmonicPotential)(x::Union{AbstractVector,StepRangeLen,LinRange})
    v = (0.5*potential.ω^2) .* x.^2
    potential.V = diagm(v)
    @views potential.V
end 
#--------------------------------------------------#
mutable struct FreePotential
    nx::Int
    V::AbstractArray

    function FreePotential(nx::Int)
        new(nx,zeros(nx,nx))
    end 
end 

function (potential::FreePotential)()
    @views potential.V
end 
#--------------------------------------------------#
mutable struct RectangularWellPotential
    nx::Int
    xlower::Float64
    xupper::Float64
    V0::Float64
    V::AbstractArray

    function RectangularWellPotential(nx::Int,limits::Tuple,V0::Float64)
        new(nx, limits[1], limits[2], V0, zeros(nx,nx))
    end 
end

function (potential::RectangularWellPotential)(x::Union{AbstractVector,StepRangeLen,LinRange})
    mask = (x .< potential.xlower) .| (x .> potential.xupper)
    v = zeros(potential.nx)
    v[mask] .= 0.0
    v[.!(mask)] .= potential.V0
    potential.V .= diagm(v)
    @views potential.V 
end 
#--------------------------------------------------#
mutable struct DoubleWellPotential
    nx::Int
    VB::Float64 # eV
    length_scale::Float64 # nm
    V::AbstractArray 

    function DoubleWellPotential(nx::Int,vb::Float64=1.0,a::Float64=1.0)
        new(nx,vb,a,zeros(nx,nx))
    end 
end 

function (potential::DoubleWellPotential)(x::Union{AbstractVector,StepRangeLen,LinRange})
    x0 = potential.length_scale/(4*√2)
    v = potential.VB * (-0.25*(x./x0).^2 + 0.015625*(x./x0).^4)
    potential.V = diagm(v)
    @views potential.V
end 
#--------------------------------------------------#
mutable struct MorsePotential
    nx::Int
    V::AbstractArray

    function MorsePotential(nx::Int)
        new(nx,zeros(nx,nx))
    end 
end

function (potential::MorsePotential)()

end 
#--------------------------------------------------#
mutable struct LinearPotential
    nx::Int
    V0::Float64
    V::AbstractArray

    function LinearPotential(nx::Int)
        new(nx,zeros(nx,nx))
    end 
end 
#--------------------------------------------------#
mutable struct ExponentialPotential
    nx::Int
    V::AbstractArray

    function ExponentialPotential(nx::Int)
        new(nx,zeros(nx,nx))
    end 
end 
#--------------------------------------------------#
mutable struct NaI_Potential
    nx::Int
    V::AbstractArray

    function NaI_Potential(nx::Int)
        new(nx,zeros(nx,nx))
    end 
end 
#--------------------------------------------------#
