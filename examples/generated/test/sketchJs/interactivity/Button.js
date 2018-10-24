import React from "react"
import { Text, View, StyleSheet, TextStyles } from
  "@mathieudutour/react-sketchapp"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class Button extends React.Component {
  render() {

    let Text$text
    let View$backgroundColor
    let View$hovered
    let View$onPress
    let View$pressed
    View$backgroundColor = colors.blue100

    Text$text = this.props.label
    View$onPress = this.props.onTap
    if (View$hovered) {
      View$backgroundColor = colors.blue200
    }
    if (View$pressed) {
      View$backgroundColor = colors.blue50
    }
    if (this.props.secondary) {
      View$backgroundColor = colors.lightblue100
    }
    return (
      <View
        style={[ styles.view, { backgroundColor: View$backgroundColor } ]}
        onPress={View$onPress}
      >
        <Text style={styles.text}>
          {Text$text}
        </Text>
      </View>
    );
  }
};

let styles = StyleSheet.create({
  view: {
    alignItems: "flex-start",
    backgroundColor: colors.blue100,
    flex: 0,
    flexDirection: "column",
    justifyContent: "flex-start",
    paddingTop: 12,
    paddingRight: 16,
    paddingBottom: 12,
    paddingLeft: 16
  },
  text: {
    ...TextStyles.get("button"),
    alignItems: "flex-start",
    flex: 0,
    flexDirection: "column",
    justifyContent: "flex-start"
  }
})