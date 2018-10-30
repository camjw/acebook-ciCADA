class Clicker extends Component {
  handleClick(event) {}
  render() {
    return (
      <div>
        <p>Hello, {this.state.name}!</p>
        <button onClick={this.handleClick.bind(this)}>Click</button>
      </div>
    );
  }
}
