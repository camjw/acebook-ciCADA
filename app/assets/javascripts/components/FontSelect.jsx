class FontSelect extends React.Component {
  constructor(props) {
    super(props);
    getSettingsData('font')
      .then(font => {
        document.getElementById('fontSelector').value = font
    })
  }

  render() {
    return (
      <div className='fontSelect'>
        <label htmlFor="font-select">
          Choose a font:
          <select id='fontSelector'>
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
      </div>
    )
  }
}
