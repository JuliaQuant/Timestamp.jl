abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,Day,DateTime)
    value::T
end

typealias TimestampArray{T} Array{Timestamp{T},1}

function Base.show{T}(io::IO, ts::Timestamp{T})
    print(io, ts.timestamp, " | ", ts.value)
end

# show{T}(io::IO, ts::Timestamp{T}) = 
#     try
#        isnull(ts.value) ? print(io, ts.timestamp, " | ", "NA") : nothing
#     catch
#        print(io, ts.timestamp, " | ", ts.value)
# end
