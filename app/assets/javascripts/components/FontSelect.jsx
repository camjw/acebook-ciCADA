class FontSelect extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className='fontSelect'>
        <label htmlFor="font-select">
          Choose a font:
          <select id='fontSelector'>
            <option value="Arial">Arial</option>
            <option value="Arial Black">Arial Black</option>
            <option value="Arial Narrow">Arial Narrow</option>
            <option value="Book Antiqua">Book Antiqua</option>
            <option value="Bookman">Bookman</option>
            <option value="Comic Sans MS">Comic Sans</option>
            <option value="Courier">Courier</option>
            <option value="Courier New">Courier New</option>
            <option value="Garamond">Garamond</option>
            <option value="Georgia">Georgia</option>
            <option value="Helvetica">Helvetica</option>
            <option value="Impact">Impact</option>
            <option value="Lobster">Lobster</option>
            <option value="Palatino">Palatino</option>
            <option value="Times">Times</option>
            <option value="Times New Roman">Times New Roman</option>
            <option value="Trebuchet">Trebuchet</option>
            <option value="Verdana">Verdana</option>
          </select>
        </label>
      </div>
    )
  }
}
