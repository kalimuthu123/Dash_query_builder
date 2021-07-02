# AUTO GENERATED FILE - DO NOT EDIT

''ToggleSwitch <- function(id=NULL, checked=NULL, onChange=NULL, name=NULL, optionLabels=NULL, small=NULL, disabled=NULL) {
    
    props <- list(id=id, checked=checked, onChange=onChange, name=name, optionLabels=optionLabels, small=small, disabled=disabled)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ToggleSwitch',
        namespace = 'query_builder',
        propNames = c('id', 'checked', 'onChange', 'name', 'optionLabels', 'small', 'disabled'),
        package = 'queryBuilder'
        )

    structure(component, class = c('dash_component', 'list'))
}
