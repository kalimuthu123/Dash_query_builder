# AUTO GENERATED FILE - DO NOT EDIT

''ToggleSwitch <- function(id=NULL, checked=NULL, disabled=NULL, name=NULL, onChange=NULL, optionLabels=NULL, small=NULL) {
    
    props <- list(id=id, checked=checked, disabled=disabled, name=name, onChange=onChange, optionLabels=optionLabels, small=small)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ToggleSwitch',
        namespace = 'query_builder',
        propNames = c('id', 'checked', 'disabled', 'name', 'onChange', 'optionLabels', 'small'),
        package = 'queryBuilder'
        )

    structure(component, class = c('dash_component', 'list'))
}
