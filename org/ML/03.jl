using Plots

x, y = [1:5...], [1,4,2,3,1]
f₀(x) = sum(y)/length(y)
f₁(x) = -.1x + 2.5
f₂(x) = -.5x^2 + 2.9x -1
f₃(x) = 0.166667x^3 -2x^2 +6.83333x -3.8
f(x) = -(7/12)*x^4 + (43/6)*x^3 - (371/12)*x^2 + (163/3)*x - 29

scatter(x, y, msize=6, label=:none, xlims=(0,5.5), ylims=(0,4.5))
plot!(0:0.1:5.5, f₀, label=:none, c=:red, w=3)
plot!(0:0.1:5.5, f₁, label=:none, c=:red, w=3)
plot!(0:0.1:5.5, f₂, label=:none, c=:red, w=3)
plot!(0:0.1:5.5, f₃, label=:none, c=:red, w=3)
plot!(0:0.1:5.5, f, label=:none, c=:red, w=3)
