import React from "react"
import { View, StyleSheet, TextStyles } from "@mathieudutour/react-sketchapp"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class FitContentParentSecondaryChildren extends React.Component {
  render() {


    return (
      <View style={styles.container}>
        <View style={styles.view1} />
        <View style={styles.view3} />
        <View style={styles.view2} />
      </View>
    );
  }
};

let styles = StyleSheet.create({
  container: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.bluegrey50,
    flex: 0,
    flexDirection: "row",
    justifyContent: "flex-start",
    paddingTop: 24,
    paddingRight: 24,
    paddingBottom: 24,
    paddingLeft: 24
  },
  view1: {
    alignItems: "flex-start",
    backgroundColor: colors.blue500,
    flexDirection: "column",
    justifyContent: "flex-start",
    width: 60,
    height: 60
  },
  view3: {
    alignItems: "flex-start",
    backgroundColor: colors.lightblue500,
    flexDirection: "column",
    justifyContent: "flex-start",
    width: 100,
    height: 120
  },
  view2: {
    alignItems: "flex-start",
    backgroundColor: colors.cyan500,
    flexDirection: "column",
    justifyContent: "flex-start",
    width: 100,
    height: 180
  }
})