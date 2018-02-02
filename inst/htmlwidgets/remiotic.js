HTMLWidgets.widget({

  name: 'remiotic',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        var width = el.offsetWidth
        var height = el.offsetHeight

        // if x.data is array assume it is in proper form
        //   as an array of objects or array of arrays
        if(Array.isArray(x.data)) {
          x.props[x.props.shape] = x.data
        } else {  // if not transform columns into rows
          x.props[x.props.shape] = HTMLWidgets.dataframeToD3(x.data)
        }

        x.props.size = [width, height]

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
