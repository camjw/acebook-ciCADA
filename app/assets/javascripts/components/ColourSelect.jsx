class ColourSelect extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className='colourSelect'>
        <label htmlFor="colour-select">
          Choose a background colour:
          <select id='colourSelector'>
            <option value="#FFFFFF">White</option>
            <option value="#fd5c63">AirBnB</option>
            <option value="#ff6a00">Alibaba</option>
            <option value="#ff9900">Amazon</option>
            <option value="#a4c639">Android</option>
            <option value="#990033">Arizona State University</option>
            <option value="#0033a1">Boeing</option>
            <option value="#d52685">BT</option>
            <option value="#472f92">Cadbury</option>
            <option value="#52057f">Channel 4</option>
            <option value="#ed1c16">Coca-Cola</option>
            <option value="#05cc47">DeviantArt</option>
            <option value="#007ee5">Dropbox</option>
            <option value="#3b5998">Facebook</option>
            <option value="#ed174f">Five Guys</option>
            <option value="#4a742c">Geocaching</option>
            <option value="#f5f5f5">Github</option>
            <option value="#fca326">Gitlab</option>
            <option value="#fbbc05">Google</option>
            <option value="#1e8cbe">Gravatar</option>
            <option value="#ff4000">Hacker News</option>
            <option value="#6762a6">Heroku</option>
            <option value="#fd9827">Hi5</option>
            <option value="#cb272c">Humble Bundle</option>
            <option value="#ffcc00">IKEA</option>
            <option value="#c13584">Instagram</option>
            <option value="#f7df1e">JavaScript</option>
            <option value="#2bde73">Kickstarter</option>
            <option value="#f6ec35">LEGO</option>
            <option value="#a31f34">MIT</option>
            <option value="#ffc600">McDonald's</option>
            <option value="#589636">MongoDB</option>
            <option value="#fc3d21">NASA</option>
            <option value="#e50914">Netflix</option>
            <option value="#6cc24a">Node.js</option>
            <option value="#4e2a84">Northwestern University</option>
            <option value="#76b900">NVIDIA</option>
            <option value="#e2002a">ÖBB</option>
            <option value="#3aa4c6">Periscope</option>
            <option value="#003087">Playstation</option>
            <option value="#ffde57">Python</option>
            <option value="#c7053d">Raspberry Pi</option>
            <option value="#c7053d">React</option>
            <option value="#cc0000">Red Hat</option>
            <option value="#ff4500">Reddit</option>
            <option value="#cc342d">Ruby</option>
            <option value="#0088ff">Shazam</option>
            <option value="#3eb991">Slack</option>
            <option value="#1db954">Spotify</option>
            <option value="#f48024">Stack Overflow</option>
            <option value="#cc0000">Tesla</option>
            <option value="#6441a5">Twitch</option>
            <option value="#00cccc">Unity</option>
            <option value="#00b488">Vine</option>
            <option value="#d7182a">WWE</option>
            <option value="#52b043">XBOX</option>
            <option value="#ff4000">Y Combinator</option>
            <option value="#ff0000">YouTube</option>
            <option value="#f79a3e">Zendesk</option>
          </select>
        </label>
      </div>
    )
  }
}
