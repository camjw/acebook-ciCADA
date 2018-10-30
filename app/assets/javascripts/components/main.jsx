window.Main = createReactClass({
  render: function() {
     return <h1>{this.props.title}</h1>
  }
})

const url = 'https://images.unsplash.com/photo-1506377711776-dbdc2f3c20d9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=896382c9f514b7af66733f2390f08eb0&auto=format&fit=crop&w=1950&q=80';
const sectionStyle = {
  width: '100%',
  height: '600px',
  backgroundImage: `url(${url})`
}

class Section extends React.Component {
  render() {
    return (
      <section style ={ sectionStyle }>
      </section>
    );
  }
}

class Clicker extends React.Component {

  handleClick(event) {
    const possible_fonts = ['Times New Roman', 'Arial', 'Century Gothic', 'Comic Sans']
    divstyle = {
      font: possible_fonts[Math.floor(Math.random() * possible_fonts.length)]
    }
    console.log(document.getElementById('targetdiv'))
    document.getElementById('targetdiv').style = divstyle
  }

  render() {
    return (
      <div id='targetdiv'>
        <p>Hello, { this.props.name }!</p>
        <button onClick = { this.handleClick.bind(this) } >Change font</button>
      </div>
    );
  }
}
