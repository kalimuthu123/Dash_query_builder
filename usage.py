import query_builder
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

biomarkerarray=[{"label": "diagnosis details", "value": "diagnosis details"}, {"label": "diagnosis details1", 'value': 'diagnosis details1'},{'label': 'diagnosis summary', 'value': 'diagnosis summary'}, {'label': 'provisonal diagnosis', 'value': 'provisonal diagnosis'}]

conditionArray = [
            {
               "name": "contains",
			   "symbol": "LIKE"
            }
		]
labels = [{"parameter": " ", "condition": " " , "value" : "" , "combinator" : " "}]
app.layout = html.Div([
    query_builder.QueryBuilder(
        id='input',
        value='my-value',
        columns = labels,
        conditionArray = conditionArray ,
        Parameterarray =  biomarkerarray
    ),
    html.Div(id='output')
])


@app.callback(Output('output', 'children'), [Input('input', 'value')])
def display_output(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
