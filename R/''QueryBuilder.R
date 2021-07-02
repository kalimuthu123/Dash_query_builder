# AUTO GENERATED FILE - DO NOT EDIT

''QueryBuilder <- function(id=NULL, label=NULL, value=NULL, columns=NULL, Parameterarray=NULL, conditionArray=NULL) {
    
    props <- list(id=id, label=label, value=value, columns=columns, Parameterarray=Parameterarray, conditionArray=conditionArray)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'QueryBuilder',
        namespace = 'query_builder',
        propNames = c('id', 'label', 'value', 'columns', 'Parameterarray', 'conditionArray'),
        package = 'queryBuilder'
        )

    structure(component, class = c('dash_component', 'list'))
}
