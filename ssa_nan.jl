using LinearAlgebra
using Statistics

function fssa(x, m)
    i = findall(!isnan, x)
    x[i] .= x[i] .- mean(x[i])
    nt = length(x)
    
    # Reorient the data if it's not a row vector
    if size(x, 1) > size(x, 2)
        x = x'
    end
    
    # Form the trajectory matrix
    X = zeros(m, nt - m + 1)
    for i = 1:m
        X[i, :] .= x[i:nt - m + i]
    end
    
    # Covariance of the trajectory matrix
    r = fill(NaN, m, m)
    for i = 1:m
        j = findall(!isnan, X[i, :])
        for k = i:m
            n = findall(!isnan, X[k, :])
            o = intersect(j, n)
            ol = length(o)
            Xm = mean(X[k, o])
            r[i, k] = dot(X[i, o] .- mean(X[i, o]), X[k, o] .- mean(X[k, o])) / (ol - m + 1)
            r[k, i] = r[i, k]  # Symmetry
        end
    end
    
    # Eigenvalues and eigenvectors of the covariance matrix
    e, l, _ = svd(r)
    ln = diagm(l) / sum(l)
    
    # Calculate principal components using matrix operations
    X0 = copy(X)
    X0[isnan.(X0)] .= 0
    A = e' * X0
    
    # Initialize rc matrix
    rc = fill(NaN, m, nt)
    
    for i = 1:m
        j = 1:nt
        k = i:m
        rc[i, j] .= sum(A[i, k] .* e[j, i], dims=2)
    end
    
    xc = sum(rc, dims=1)
    rc[isnan.(rc)] .= NaN
    i = findall(!isnan, x)
    j = findall(isnan, x)
    check = sqrt(sum((x[i] .- xc[1, i]) .* (x[i] .- xc[1, i])) / nt)
    
    rc[:, j] .= NaN
    
    return e, ln, A, rc, check
end

# Test the function
x = [1.0, 2.0, 3.0, NaN, 5.0, 6.0, 7.0]
m = 3
e, ln, A, rc, check = fssa(x, m)

println("Eigenvalues: ", ln)
println("Eigenvectors: ", e)
println("Principal Components: ", A)
println("Reconstructed Components: ", rc)
println("Check Value: ", check)
