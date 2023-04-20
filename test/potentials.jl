# Harmonic potential
nx = 50
x = LinRange(-1,1,nx)
h_pot = HarmonicPotential(nx)
v_harmonic = h_pot(x)
@test size(v_harmonic) == (nx,nx)
plot(x,diag(v_harmonic),title="Harmonic Potential",legend=false)
savefig("test/figures/harmonic.png")

# Free potential
nx = 50
x = LinRange(-1,1,nx)
free_pot = FreePotential(nx)
v_free = free_pot()
@test size(v_free) == (nx,nx)
plot(x,diag(v_free),title="Free Potential",legend=false)
savefig("test/figures/free.png")

# Electron well 
nx = 50
x = LinRange(-1,1,nx)
l = -0.25
u = +0.25
V0 = 1.0
rect_pot = RectangularWellPotential(nx, (l,u), V0)
v_rect = rect_pot(x)
@test size(v_rect) == (nx,nx)
plot(x,diag(v_rect),title="Electron well",legend=false)
savefig("test/figures/rect_well.png")

# Double well potential
nx = 50
x = LinRange(-1,1,nx)
dw_pot = DoubleWellPotential(nx)
v_dw =  dw_pot(x)
@test size(v_dw) == (nx,nx)
plot(x,diag(v_dw),title="Double Well Potential",legend=false)
savefig("test/figures/double_well.png")