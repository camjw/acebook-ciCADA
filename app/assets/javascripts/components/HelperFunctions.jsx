function getSettingsData(attribute) {
  return fetch('http://localhost:3000/display_settings' + window.location.pathname)
    .then(response => response.json())
    .then(json => {
      if (attribute === 'font') {
        return json.font
      } else {
        return json.background_colour
      }
    })
}
