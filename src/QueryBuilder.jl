
module QueryBuilder
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.5"

include("''_querybuilder.jl")
include("''_toggleswitch.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "query_builder",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "query_builder.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "query_builder.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
