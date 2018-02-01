HTMLWidgets.widget({

  name: 'remiotic',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        x.props.points = HTMLWidgets.dataframeToD3(x.props.data)
        delete x.props.data

        var frame = React.createElement(
          Semiotic[x.frame],
          x.props
        )

        ReactDOM.render(
          frame,
          el
        )

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
