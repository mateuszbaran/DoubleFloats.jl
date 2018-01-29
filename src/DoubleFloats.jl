module DoubleFloats

export Double, FastDouble,
       MultipartFloat, AbstractDouble,
       Emphasis, Accuracy, Performance,
       hi, lo,
       spread, sld, tld,
       nan, inf
       
if VERSION >= v"0.7.0-"
    import Base.IEEEFloat
else
    const IEEEFloat = Union{Float64, Float32, Float16}
end


using AccurateArithmetic

abstract type MultipartFloat{T} <: AbstractFloat end
abstract type AbstractDouble{T} <: MultipartFloat{T} end

include("traits.jl")
include("type/DoubleFloat.jl")

include("ops/prelims.jl")
include("ops/intfloat.jl")
include("ops/floatarith.jl")
include("ops/arith.jl")


end # module DoubleFloats
