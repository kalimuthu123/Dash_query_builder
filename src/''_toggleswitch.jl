# AUTO GENERATED FILE - DO NOT EDIT

export ''_toggleswitch

"""
    ''_toggleswitch(;kwargs...)

A ToggleSwitch component.

Keyword arguments:
- `id` (String; required)
- `checked` (Bool; required)
- `disabled` (Bool; optional)
- `name` (String; optional)
- `optionLabels` (Array; optional)
- `small` (Bool; optional)
"""
function ''_toggleswitch(; kwargs...)
        available_props = Symbol[:id, :checked, :disabled, :name, :optionLabels, :small]
        wild_props = Symbol[]
        return Component("''_toggleswitch", "ToggleSwitch", "query_builder", available_props, wild_props; kwargs...)
end

