class ColourSelect extends React.Component {
  constructor(props) {
    super(props);
    fetch('http://localhost:3000/display_settings/1')
      .then(response => response.json())
      .then(data => {
        document.getElementById('colourSelector').value = data.background_colour
    })
  }

  render() {
    return (
      <div className='colourSelect'>
        <label htmlFor="colour-select">
          Choose a background colour:
          <select id='colourSelector'>
            <option value="#FFFFFF">White</option>
            <option value="#FF0000">Red</option>
          </select>
        </label>
      </div>
    )
  }
}
