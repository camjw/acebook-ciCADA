function getSettingsData(attribute) {
  return fetch('http://localhost:3000/display_settings' + window.location.pathname)
    .then(response => response.json())
}
