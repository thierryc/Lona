/* private class ImageWithBackgroundColor: NSImageView {
     var fillColor: NSColor = NSColor.clear

     override func draw(_ dirtyRect: NSRect) {
         fillColor.set()
         bounds.fill()
         super.draw(dirtyRect)
     }
   } */
let generateImageWithBackgroundColor =
    (options: Options.options, swiftOptions: SwiftOptions.options) =>
  SwiftAst.[
    ClassDeclaration({
      "name": "ImageWithBackgroundColor",
      "inherits": [TypeName("NSImageView")],
      "modifier": Some(PrivateModifier),
      "isFinal": false,
      "body": [
        VariableDeclaration({
          "modifiers": [],
          "pattern":
            IdentifierPattern({
              "identifier": SwiftIdentifier("fillColor"),
              "annotation": None,
            }),
          "init":
            Some(
              MemberExpression([
                SwiftIdentifier(
                  SwiftDocument.colorTypeName(swiftOptions.framework),
                ),
                SwiftIdentifier("clear"),
              ]),
            ),
          "block": None,
        }),
        Empty,
        FunctionDeclaration({
          "name": "draw",
          "modifiers": [OverrideModifier],
          "parameters": [
            Parameter({
              "annotation": TypeName("NSRect"),
              "externalName": Some("_"),
              "localName": "dirtyRect",
              "defaultValue": None,
            }),
          ],
          "body": [
            FunctionCallExpression({
              "name":
                MemberExpression([
                  SwiftIdentifier("fillColor"),
                  SwiftIdentifier("set"),
                ]),
              "arguments": [],
            }),
            FunctionCallExpression({
              "name":
                MemberExpression([
                  SwiftIdentifier("bounds"),
                  SwiftIdentifier("fill"),
                ]),
              "arguments": [],
            }),
            FunctionCallExpression({
              "name":
                MemberExpression([
                  SwiftIdentifier("super"),
                  SwiftIdentifier("draw"),
                ]),
              "arguments": [
                FunctionCallArgument({
                  "name": None,
                  "value": SwiftIdentifier("dirtyRect"),
                }),
              ],
            }),
          ],
          "result": None,
          "throws": false,
        }),
      ],
    }),
    Empty,
  ];

let generateVectorGraphic =
    (
      config: Config.t,
      options: Options.options,
      swiftOptions: SwiftOptions.options,
      vectorAssignments: list(Layer.vectorAssignment),
      assetUrl: string,
    ) => {
  let svg = Config.Find.svg(config, assetUrl);

  SwiftAst.[
    ClassDeclaration({
      "name": Format.vectorClassName(assetUrl),
      "inherits": [
        TypeName(swiftOptions.framework == UIKit ? "UIView" : "NSBox"),
      ],
      "modifier": Some(PrivateModifier),
      "isFinal": false,
      "body":
        [
          vectorAssignments
          |> List.map((vectorAssignment: Layer.vectorAssignment) => {
               let initialValue =
                 switch (
                   Svg.find(svg, vectorAssignment.elementName),
                   vectorAssignment.paramKey,
                 ) {
                 | (Some(Path(_, params)), Fill) =>
                   switch (params.style.fill) {
                   | Some(fill) => Some(LiteralExpression(Color(fill)))
                   | None => Some(LiteralExpression(Color("transparent")))
                   }
                 | (Some(Path(_, params)), Stroke) =>
                   switch (params.style.stroke) {
                   | Some(stroke) => Some(LiteralExpression(Color(stroke)))
                   | None => Some(LiteralExpression(Color("transparent")))
                   }
                 | (Some(_), _) => None
                 | (None, _) => None
                 };

               VariableDeclaration({
                 "modifiers": [AccessLevelModifier(PublicModifier)],
                 "pattern":
                   IdentifierPattern({
                     "identifier":
                       SwiftIdentifier(
                         SwiftFormat.vectorVariableName(vectorAssignment),
                       ),
                     "annotation": None,
                   }),
                 "init": initialValue,
                 "block": None,
               });
             }),
          swiftOptions.framework == SwiftOptions.AppKit ?
            [
              VariableDeclaration({
                "modifiers": [OverrideModifier],
                "pattern":
                  IdentifierPattern({
                    "identifier": SwiftIdentifier("isFlipped"),
                    "annotation": Some(TypeName("Bool")),
                  }),
                "init": None,
                "block":
                  Some(
                    GetterBlock([
                      ReturnStatement(
                        Some(LiteralExpression(Boolean(true))),
                      ),
                    ]),
                  ),
              }),
            ] :
            [],
          [
            FunctionDeclaration({
              "name": "draw",
              "modifiers": [OverrideModifier],
              "parameters": [
                Parameter({
                  "annotation": TypeName("CGRect"),
                  "externalName": Some("_"),
                  "localName": "dirtyRect",
                  "defaultValue": None,
                }),
              ],
              "body":
                [
                  swiftOptions.framework == SwiftOptions.AppKit ?
                    [
                      SwiftAst.Builders.functionCall(
                        ["super", "draw"],
                        [(None, ["dirtyRect"])],
                      ),
                      Empty,
                    ] :
                    [],
                  SwiftSvg.convertNode(swiftOptions, vectorAssignments, svg),
                ]
                |> List.concat,
              "result": None,
              "throws": false,
            }),
          ],
        ]
        |> SwiftDocument.joinGroups(Empty),
    }),
    Empty,
  ];
};