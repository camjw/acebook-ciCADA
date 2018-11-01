const FONT_POST_URL = "http://" + window.location.host + "/change_settings"

class SubmitButton extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this)
    getSettingsData()
      .then(data => {
        document.getElementById('colourSelector').value = data.background_colour
        document.getElementById('fontSelector').value = data.font
    })
  }

  sendDataToRails(font, colour, route) {
    fetch(FONT_POST_URL, {
      method: 'POST',
      body: JSON.stringify({
        userId: route.slice(1),
        background_colour: colour,
        font: font
      }),
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      }
    })
  }

  handleSubmit(event) {
    font = document.getElementById('fontSelector').value
    colour = document.getElementById('colourSelector').value
    this.sendDataToRails(font, colour, window.location.pathname)
    document.getElementById('profileBody').style.fontFamily = font
    document.body.style.backgroundColor = colour
  }

  render() {
    return (
      <div className='SubmitButton'>
        <button onClick={this.handleSubmit}>Change settings</button>
      </div>
    )
  }
}
