# AUTO GENERATED FILE - DO NOT EDIT

export ''_toggleswitch

"""
    ''_toggleswitch(;kwargs...)

A ToggleSwitch component.

Keyword arguments:
- `id` (String; required)
- `checked` (Bool; required)
- `name` (String; optional)
- `optionLabels` (Array; optional)
- `small` (Bool; optional)
- `disabled` (Bool; optional)
"""
function ''_toggleswitch(; kwargs...)
        available_props = Symbol[:id, :checked, :name, :optionLabels, :small, :disabled]
        wild_props = Symbol[]
        return Component("''_toggleswitch", "ToggleSwitch", "query_builder", available_props, wild_props; kwargs...)
end

