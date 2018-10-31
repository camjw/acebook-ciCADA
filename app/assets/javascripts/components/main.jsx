class Clicker extends React.Component {
  handleClick(event) {
    fetch('https://jsonplaceholder.typicode.com/posts', {
      method: 'POST',
      body: JSON.stringify({
        title: "What's up doc",
        body: 'bar',
        userId: 1
      }),
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      }
    }).then((response) => {
      console.log(response)
      return response.json()
    }).then((json) => {
      document.getElementById('target').innerHTML = json.title
    })
  }
  render() {
    return (
      <div>
        <p id='target'>Hello, { this.props.name }!</p>
        <button onClick = { this.handleClick.bind(this) } >Change font</button>
      </div>
    );
  }
}
