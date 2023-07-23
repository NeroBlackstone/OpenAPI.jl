# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""TestModel

    TestModel(;
        limited_by="time",
        default_date=OpenAPI.str2date("2011-11-11"),
        default_datetime=OpenAPI.str2zoneddatetime("2011-11-11T11:11:11Z"),
        max_val=100,
        message="success",
        name="new",
        compute=nothing,
    )

    - limited_by::String
    - default_date::Date
    - default_datetime::ZonedDateTime
    - max_val::Int64
    - message::String
    - name::String
    - compute::ComputeType
"""
Base.@kwdef mutable struct TestModel <: OpenAPI.APIModel
    limited_by::Union{Nothing, String} = "time"
    default_date::Union{Nothing, Date} = OpenAPI.str2date("2011-11-11")
    default_datetime::Union{Nothing, ZonedDateTime} = OpenAPI.str2zoneddatetime("2011-11-11T11:11:11Z")
    max_val::Union{Nothing, Int64} = 100
    message::Union{Nothing, String} = "success"
    name::Union{Nothing, String} = "new"
    compute = nothing # spec type: Union{ Nothing, ComputeType }

    function TestModel(limited_by, default_date, default_datetime, max_val, message, name, compute, )
        OpenAPI.validate_property(TestModel, Symbol("limited_by"), limited_by)
        OpenAPI.validate_property(TestModel, Symbol("default_date"), default_date)
        OpenAPI.validate_property(TestModel, Symbol("default_datetime"), default_datetime)
        OpenAPI.validate_property(TestModel, Symbol("max_val"), max_val)
        OpenAPI.validate_property(TestModel, Symbol("message"), message)
        OpenAPI.validate_property(TestModel, Symbol("name"), name)
        OpenAPI.validate_property(TestModel, Symbol("compute"), compute)
        return new(limited_by, default_date, default_datetime, max_val, message, name, compute, )
    end
end # type TestModel

const _property_types_TestModel = Dict{Symbol,String}(Symbol("limited_by")=>"String", Symbol("default_date")=>"Date", Symbol("default_datetime")=>"ZonedDateTime", Symbol("max_val")=>"Int64", Symbol("message")=>"String", Symbol("name")=>"String", Symbol("compute")=>"ComputeType", )
OpenAPI.property_type(::Type{ TestModel }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TestModel[name]))}

function check_required(o::TestModel)
    o.name === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ TestModel }, name::Symbol, val)
    if name === Symbol("limited_by")
        OpenAPI.validate_param(name, "TestModel", :enum, val, ["time", "cost", "unlimited"])
    end
    if name === Symbol("default_date")
        OpenAPI.validate_param(name, "TestModel", :format, val, "date")
    end
    if name === Symbol("default_datetime")
        OpenAPI.validate_param(name, "TestModel", :format, val, "date-time")
    end
    if name === Symbol("max_val")
        OpenAPI.validate_param(name, "TestModel", :enum, val, [100, 200, 300])
    end
end
