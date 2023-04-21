abstract type AbstractOrder end
struct II<:AbstractOrder end 
struct IV<:AbstractOrder end 
struct VI<:AbstractOrder end 
struct VIII<:AbstractOrder end

mutable struct FDLaplacian
    nx::Int
    x::Union{AbstractVector,StepRangeLen,LinRange}
    D::AbstractArray

    function FDLaplacian(nx::Int, x::Union{AbstractVector, StepRangeLen, LinRange})
        new(nx,x,zeros(nx,nx))
    end 
end 

function (fd::FDLaplacian)(::II)
    md = -2*ones(fd.nx)
    sd = 1*ones(fd.nx-1)
    dx = fd.x[2]-fd.x[1]
    kx = 1/(dx)^2
    fd.D = kx * (diagm(0=>md) .+ diagm(1=>sd) .+ diagm(-1=>sd))
    @views fd.D
end 

function (fd::FDLaplacian)(::IV)

end 

function (fd::FDLaplacian)(::IV)

end 

function (fd::FDLaplacian)(::VI)

end 

function (fd::FDLaplacian)(::VIII)

end