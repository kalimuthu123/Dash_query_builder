import query_builder
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

biomarkerarray=[
		    {
			   "id":1,
               "name" : "hbc",
			   "value" : "hbc"
            },
			{
			   "id" :2,
               "name" : "hbc2",
			   "value" : "hbc2"
            },
             {
			   "id":3,
               "name" : "hbc3",
			   "value" : "hbc3"
            },
			{
			   "id" :4,
               "name" : "hbc4",
			   "value" : "hbc4"
            },
             {
			   "id":5,
               "name" : "hb45",
			   "value" : "hbc45"
            },
			{
			   "id" :6,
               "name" : "hbc26",
			   "value" : "hbc26"
            },
             {
			   "id":7,
               "name" : "hbc56",
			   "value" : "hbc"
            },
			{
			   "id" :8,
               "name" : "hbc256",
			   "value" : "hbc2"
            },
            {
			   "id":9,
               "name" : "hb459",
			   "value" : "hbc45"
            },
			{
			   "id" :10,
               "name" : "hbc2610",
			   "value" : "hbc2610"
            },
             {
			   "id":11,
               "name" : "hbc5611",
			   "value" : "hbc11"
            },
			{
			   "id" :12,
               "name" : "hbc25612",
			   "value" : "hbc212"
            },
            {
			   "id":13,
               "name" : "hb45139",
			   "value" : "hbc4135"
            },
			{
			   "id" :14,
               "name" : "hbc261440",
			   "value" : "hbc261440"
            },
             {
			   "id":15,
               "name" : "hbc561551",
			   "value" : "hbc1551"
            },
			{
			   "id" :16,
               "name" : "hbc2566612",
			   "value" : "hbc21662"
            },
		]

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
