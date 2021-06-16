# AUTO GENERATED FILE - DO NOT EDIT

export ''_querybuilder

"""
    ''_querybuilder(;kwargs...)

A QueryBuilder component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `Parameterarray` (Bool | Real | String | Dict | Array; optional): The Parameterarray displayed in the input.
- `columns` (Bool | Real | String | Dict | Array; optional): The columns displayed in the input.
- `conditionArray` (Bool | Real | String | Dict | Array; optional): The conditionArray displayed in the input.
- `label` (Bool | Real | String | Dict | Array; optional): A label that will be printed when this component is rendered.
- `value` (Bool | Real | String | Dict | Array; optional): The value displayed in the input.
"""
function ''_querybuilder(; kwargs...)
        available_props = Symbol[:id, :Parameterarray, :columns, :conditionArray, :label, :value]
        wild_props = Symbol[]
        return Component("''_querybuilder", "QueryBuilder", "query_builder", available_props, wild_props; kwargs...)
end

