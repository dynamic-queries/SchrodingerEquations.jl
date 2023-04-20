abstract type AbstractOrder end
struct II<:AbstractOrder end 
struct IV<:AbstractOrder end 
struct VI<:AbstractOrder end 
struct VIII<:AbstractOrder end

mutable struct FDLaplacian
    nx::Int
    D::AbstractArray
end 

function (fd::FDLaplacian)(::II)

end 

function (fd::FDLaplacian)(::IV)

end 

function (fd::FDLaplacian)(::IV)

end 

function (fd::FDLaplacian)(::VI)

end 

function (fd::FDLaplacian)(::VIII)

end