# AUTO GENERATED FILE - DO NOT EDIT

''QueryBuilder <- function(id=NULL, Parameterarray=NULL, columns=NULL, conditionArray=NULL, label=NULL, value=NULL) {
    
    props <- list(id=id, Parameterarray=Parameterarray, columns=columns, conditionArray=conditionArray, label=label, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'QueryBuilder',
        namespace = 'query_builder',
        propNames = c('id', 'Parameterarray', 'columns', 'conditionArray', 'label', 'value'),
        package = 'queryBuilder'
        )

    structure(component, class = c('dash_component', 'list'))
}
