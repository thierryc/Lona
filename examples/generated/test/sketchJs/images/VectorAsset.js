import React from "react"
import { View, StyleSheet, TextStyles, Svg } from
  "@mathieudutour/react-sketchapp"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

let ToggleVector = (props) => {
  return (
    <Svg style={props.style} viewBox={"0 0 48 24"}>
      <Svg.Path
        d={"M12,0.5L36,0.5C42.3512746231,0.5 47.5,5.64872537694 47.5,12L47.5,12C47.5,18.3512746231 42.3512746231,23.5 36,23.5L12,23.5C5.64872537694,23.5 0.5,18.3512746231 0.5,12L0.5,12C0.5,5.64872537694 5.64872537694,0.5 12,0.5Z"}
        fill={"#00C121"}
        stroke={"#008E18"}
        strokeWidth={"1"}
        strokeLinecap={"butt"}

      />
      <Svg.Path
        d={"M12,2L12,2C17.5228474983,2 22,6.47715250169 22,12L22,12C22,17.5228474983 17.5228474983,22 12,22L12,22C6.47715250169,22 2,17.5228474983 2,12L2,12C2,6.47715250169 6.47715250169,2 12,2Z"}
        fill={"#FFFFFF"}

      />
    </Svg>
  );
}
let ToggleVerticalVector = (props) => {
  return (
    <Svg style={props.style} viewBox={"0 0 24 48"}>
      <Svg.Path
        d={"M12,0.5L12,0.5C18.3512746231,0.5 23.5,5.64872537694 23.5,12L23.5,36C23.5,42.3512746231 18.3512746231,47.5 12,47.5L12,47.5C5.64872537694,47.5 0.5,42.3512746231 0.5,36L0.5,12C0.5,5.64872537694 5.64872537694,0.5 12,0.5Z"}
        fill={"#8CDCFF"}
        stroke={"#4FABFF"}
        strokeWidth={"1"}
        strokeLinecap={"butt"}

      />
      <Svg.Path
        d={"M12,2L12,2C17.5228474983,2 22,6.47715250169 22,12L22,12C22,17.5228474983 17.5228474983,22 12,22L12,22C6.47715250169,22 2,17.5228474983 2,12L2,12C2,6.47715250169 6.47715250169,2 12,2Z"}
        fill={"#FFFFFF"}

      />
    </Svg>
  );
}
let CheckCircleVector = (props) => {
  return (
    <Svg style={props.style} viewBox={"0 0 24 24"}>
      <Svg.Path
        d={"M12,0L12,0C18.627416998,0 24,5.37258300203 24,12L24,12C24,18.627416998 18.627416998,24 12,24L12,24C5.37258300203,24 0,18.627416998 0,12L0,12C0,5.37258300203 5.37258300203,0 12,0Z"}
        fill={"#00C121"}

      />
      <Svg.Path
        d={"M6.5,12.6L9.75,15.85L17.25,8.35"}
        fill={"none"}
        stroke={"#FFFFFF"}
        strokeWidth={"2"}
        strokeLinecap={"round"}

      />
    </Svg>
  );
}

export default class VectorAsset extends React.Component {
  render() {


    return (
      <View style={styles.view}>
        <ToggleVector style={styles.vectorGraphic1} />
        <ToggleVerticalVector style={styles.vectorGraphic2} />
        <CheckCircleVector style={styles.vectorGraphic3} />
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
  vectorGraphic1: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    flexDirection: "column",
    justifyContent: "flex-start",
    height: 100
  },
  vectorGraphic2: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    flexDirection: "column",
    justifyContent: "flex-start",
    height: 100
  },
  vectorGraphic3: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.green50,
    flexDirection: "column",
    justifyContent: "flex-start",
    height: 100
  }
})