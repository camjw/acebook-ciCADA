const FONT_POST_URL = "https://jsonplaceholder.typicode.com/posts"

class FontSelect extends React.Component {
  constructor(props) {
    super(props);
    this.state = { value: null }
    this.handleChange = this.handleChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleChange(event) {
    this.setState({ value: event.target.value })
  }

  postToDatabase(font, route) {
    fetch(FONT_POST_URL, {
      method: 'POST',
      body: JSON.stringify({
        userId: route.slice(1),
        font: font
      }),
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      }
    }).then((response) => {
      return response.json()
    }).then((json) => {
      console.log(json)
    })
  }

  handleSubmit(event) {
    document.body.style.fontFamily = this.state.value
    this.postToDatabase(this.state.value, window.location.pathname)
  }

  render() {
    return (
      <div className='fontSelect'>
        <label htmlFor="font-select">
          Choose a font:
          <select value={this.state.value} onChange={this.handleChange}>
            <option value="Times New Roman">Times New Roman</option>
            <option value="Arial Narrow">Arial Narrow</option>
            <option value="Comic Sans MS">Comic Sans</option>
            <option value="Impact">Impact</option>
            <option value="Georgia">Georgia</option>
            <option value="Book Antiqua">Book Antiqua</option>
            <option value="Palatino">Palatino</option>
            <option value="Helvetica">Helvetica</option>
            <option value="Lobster">Lobster</option>

          </select>
        </label>
        <button onClick={this.handleSubmit}>Change font</button>
      </div>
    )
  }
}
