import React from "react"
import { Text, View, StyleSheet, TextStyles } from
  "@mathieudutour/react-sketchapp"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class TextStyleConditional extends React.Component {
  render() {

    let Text$textStyle
    Text$textStyle = textStyles.headline

    if (this.props.large) {
      Text$textStyle = textStyles.display2
    }
    return (
      <View style={styles.view}>
        <Text style={[ styles.text, { ...Text$textStyle } ]}>
          {"Text goes here"}
        </Text>
      </View>
    );
  }
};

let styles = StyleSheet.create({
  view: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    flex: 0,
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text: {
    ...TextStyles.get("headline"),
    alignItems: "flex-start",
    flex: 0,
    flexDirection: "column",
    justifyContent: "flex-start"
  }
})