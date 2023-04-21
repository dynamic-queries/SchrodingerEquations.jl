nx = 50
x = LinRange(-1,1,nx)
D = FDLaplacian(nx,x)
f1 = spy(D)
savefig("test/figures/difference.png")