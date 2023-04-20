# Harmonic potential
nx = 50
x = LinRange(-1,1,nx)
h_pot = HarmonicPotential(nx)
v_harmonic = h_pot(x)
@assert size(v_harmonic) == (nx,nx)
plot(x,diag(v_harmonic),title=L"Harmonic Potential")
savefig("test/harmonic.png")

# Free potential
nx = 50
x = LinRange(-1,1,nx)
free_pot = FreePotential(nx)
v_free = free_pot()
@assert size(v_free) == (nx,nx)
plot(x,diag(v_free),title=L"Free Potential")
savefig("test/free.png")

# Electron well 
nx = 50
x = LinRange(-1,1,nx)
l = 0.25
u = 0.75
V0 = 1 
rect_pot = RectangularWellPotential(nx, (l,u), V0)
v_rect = rect_pot(x)
@assert size(v_rect) == (nx,nx)
plot(x,diag(v_rect),title=L"Electron well")
savefig("test/rect_well.png")

# Double well potential
nx = 50
x = LinRange(-1,1,nx)
dw_pot = DoubleWellPotential(nx)
v_dw =  dw_pot(x)
@assert size(v_dw) == (nx,nx)
plot(x,diag(v_dw),title=L"Double Well Potential")
savefig("test/double_well.png")