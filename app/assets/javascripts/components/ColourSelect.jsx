class ColourSelect extends React.Component {
  constructor(props) {
    super(props);
    getSettingsData()
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
