import React from "react"
import { View, StyleSheet } from "react-native"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class FixedParentFillAndFitChildren extends React.Component {
  render() {


    return (
      <View style={styles.view}>
        <View style={styles.view1}>
          <View style={styles.view4} />
          <View style={styles.view5} />
        </View>
        <View style={styles.view2} />
        <View style={styles.view3} />
      </View>
    );
  }
};

let styles = StyleSheet.create({
  view: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    flexDirection: "column",
    justifyContent: "flex-start",
    paddingTop: 24,
    paddingRight: 24,
    paddingBottom: 24,
    paddingLeft: 24,
    height: 600
  },
  view1: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.red50,
    flex: 0,
    flexDirection: "row",
    justifyContent: "flex-start",
    paddingTop: 24,
    paddingRight: 24,
    paddingBottom: 24,
    paddingLeft: 24
  },
  view2: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.indigo100,
    flex: 1,
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  view3: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.teal100,
    flex: 1,
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  view4: {
    alignItems: "flex-start",
    backgroundColor: colors.red200,
    flexDirection: "column",
    justifyContent: "flex-start",
    width: 60,
    height: 100
  },
  view5: {
    alignItems: "flex-start",
    backgroundColor: colors.deeporange200,
    flexDirection: "column",
    justifyContent: "flex-start",
    marginLeft: 12,
    width: 60,
    height: 60
  }
})