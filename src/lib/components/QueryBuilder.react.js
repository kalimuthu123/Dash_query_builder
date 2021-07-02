import React, {Component} from 'react';
import PropTypes from 'prop-types';
window.$ = window.jQuery = require('jquery');
import './QueryBuilder.css'
import Switch from 'react-input-switch';

/**
 * QueryBuilder is an QueryBuilder component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class QueryBuilder extends Component {
  
    constructor(props) {
    super(props);
    this.state = {
    	users: this.props.columns,
		conditionArray : this.props.conditionArray,
		Parameterarray  : this.props.Parameterarray,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  
  addClick(){
    this.setState(prevState => ({ 
    	users: [...prevState.users, { parameter: " ", condition: " " , value: " " , combinator : " " }]
    }))
  }
  
  shouldComponentUpdate(nextProps, nextState) {
    console.log("nextProps",nextProps)
	console.log("nextState",nextState)
	this.props.setProps({ value : nextState.users });
    return true;
  }
  
  createUI(){
     return this.state.users.map((el, i) => (
       <div key={i} className="condition-row">
		  
		  <div className="condition-column">
		       <label> Parameter </label>
               <select
                    onChange={e => {
                      this.handleparameterChange(e.target.value, i);
                    }}
                    value={ el.parameter || " " }
                  >
                    <option value=" " >
                      Select your option
                    </option>
                    {this.props.Parameterarray.map(biodata => (
                      <option
                        value={biodata.value}
                        data={biodata}
                        key={biodata.label}
                      >
                        {biodata.value}
                      </option>
                    ))}
                </select>
		  </div>
		  <div className="condition-column">
		       <label>Condition </label>
               <select
                    onChange={e => {
                      this.handleConditionChange(e.target.value, i);
                    }}
                    value={ el.condition || " " }
                  >
                    <option value=" " >
                      Select your option
                    </option>
                    {this.props.conditionArray.map(socidata => (
                      <option
                        value={socidata.symbol}
                        data={socidata}
                        key={socidata.name}
                      >
                        {socidata.name}
                      </option>
                    ))}
                  </select>
		  </div>
		  
		  <div className="condition-column">
		       <label>Value</label>
               <input className="value_input" placeholder="value"  name="value"  value={ el.value || '' } onChange={this.handleChange.bind(this, i)} />
		  </div>
		  
		  <div className="condition-column">
		       <label>    </label>
    	       <input type='button' value='remove' className="condition-remove" onClick={this.removeClick.bind(this, i)}/>
		  </div>
		  
		  <div className="condition-column">
				 <Switch
                    value={ el.combinator || 'or'  }
                    on="or"
                    off="and"
                    onChange={this.onNewsletterChange.bind(this, i)}
                 />
				 {el.combinator}
		    </div>
       </div>          
     ))
  }
  
  handleChange(i, e) {
  	 const { name, value } = e.target;
     let users = [...this.state.users];
     users[i] = {...users[i], [name]: value};
     this.setState({ users });
	 this.props.setProps({ value : users });
  }
  
  onNewsletterChange(i , e ) {
	let users = [...this.state.users];
    users[i] = {...users[i], ["combinator"]: e };
    this.setState({ users });
	this.props.setProps({ value : users });
  };
  
  handleConditionChange(socialName, i ) {
	  
	let users = [...this.state.users];
    users[i] = {...users[i], ["condition"]: socialName};
    this.setState({ users });
	this.props.setProps({ value : users });
  }
  
  handleparameterChange(biomarker, i ) {
	let users = [...this.state.users];
    users[i] = {...users[i], ["parameter"]: biomarker};
    this.setState({ users });
	this.props.setProps({ value : users });
  }
  
  
  removeClick(i){
     let users = [...this.state.users];
     users.splice(i, 1);
     this.setState({ users });
  }
  
  handleSubmit(event) {
    //alert('A name was submitted: ' + JSON.stringify(this.state.users));
    event.preventDefault();
  }
		 
	
    render() {
        const {id, label, setProps, value ,columns} = this.props;

        return (
            <div id={id}>
			    <form onSubmit={this.handleSubmit}>
                   <input type='button' value='add more' onClick={this.addClick.bind(this)}/>
                        {this.createUI()}
                </form>
            </div>
        );
    }
}

QueryBuilder.defaultProps = {};

QueryBuilder.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.any,

    /**
     * The value displayed in the input.
     */
    value: PropTypes.any,
 
    /**
     * The columns displayed in the input.
     */
    columns : PropTypes.any,
	
    /**
     * The Parameterarray displayed in the input.
     */
    Parameterarray: PropTypes.any,
	
	/**
     * The conditionArray displayed in the input.
     */
    conditionArray: PropTypes.any,
	
    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};
