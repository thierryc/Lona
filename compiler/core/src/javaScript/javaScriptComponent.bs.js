// Generated by BUCKLESCRIPT VERSION 2.1.0, PLEASE EDIT WITH CARE
'use strict';

var List                              = require("bs-platform/lib/js/list.js");
var Block                             = require("bs-platform/lib/js/block.js");
var Curry                             = require("bs-platform/lib/js/curry.js");
var Pervasives                        = require("bs-platform/lib/js/pervasives.js");
var Json_decode                       = require("bs-json/src/Json_decode.js");
var Color$LonaCompilerCore            = require("../core/color.bs.js");
var Layer$LonaCompilerCore            = require("../core/layer.bs.js");
var Logic$LonaCompilerCore            = require("../core/logic.bs.js");
var Decode$LonaCompilerCore           = require("../core/decode.bs.js");
var StringMap$LonaCompilerCore        = require("../containers/stringMap.bs.js");
var JavaScriptAst$LonaCompilerCore    = require("./javaScriptAst.bs.js");
var SwiftDocument$LonaCompilerCore    = require("../swift/swiftDocument.bs.js");
var JavaScriptLogic$LonaCompilerCore  = require("./javaScriptLogic.bs.js");
var JavaScriptFormat$LonaCompilerCore = require("./javaScriptFormat.bs.js");

function createStyleAttributeAST(_, _$1, layer, styles) {
  return /* JSXAttribute */Block.__(10, [{
              name: "style",
              value: /* ArrayLiteral */Block.__(16, [/* :: */[
                    /* Identifier */Block.__(2, [/* :: */[
                          "styles",
                          /* :: */[
                            JavaScriptFormat$LonaCompilerCore.styleVariableName(layer[/* name */1]),
                            /* [] */0
                          ]
                        ]]),
                    /* :: */[
                      /* ObjectLiteral */Block.__(17, [Layer$LonaCompilerCore.mapBindings((function (param) {
                                  return /* Property */Block.__(18, [{
                                              key: /* Identifier */Block.__(2, [/* :: */[
                                                    param[0],
                                                    /* [] */0
                                                  ]]),
                                              value: JavaScriptLogic$LonaCompilerCore.logicValueToJavaScriptAST(param[1])
                                            }]);
                                }), styles)]),
                      /* [] */0
                    ]
                  ]])
            }]);
}

function layerToJavaScriptAST(colors, textStyles, variableMap, layer) {
  var match = Layer$LonaCompilerCore.splitParamsMap(Layer$LonaCompilerCore.parameterMapToLogicValueMap(layer[/* parameters */2]));
  var match$1 = Layer$LonaCompilerCore.LayerMap[/* find_opt */24](layer, variableMap);
  var match$2 = Layer$LonaCompilerCore.splitParamsMap(match$1 ? match$1[0] : StringMap$LonaCompilerCore.empty);
  var main = StringMap$LonaCompilerCore.assign(match[1], match$2[1]);
  var styleAttribute = createStyleAttributeAST(colors, textStyles, layer, match$2[0]);
  var attributes = Layer$LonaCompilerCore.mapBindings((function (param) {
          return /* JSXAttribute */Block.__(10, [{
                      name: param[0],
                      value: JavaScriptLogic$LonaCompilerCore.logicValueToJavaScriptAST(param[1])
                    }]);
        }), main);
  return /* JSXElement */Block.__(11, [{
              tag: Layer$LonaCompilerCore.layerTypeToString(layer[/* typeName */0]),
              attributes: /* :: */[
                styleAttribute,
                attributes
              ],
              content: List.map((function (param) {
                      return layerToJavaScriptAST(colors, textStyles, variableMap, param);
                    }), layer[/* children */3])
            }]);
}

function getStyleValue(colors, value) {
  var match = value[/* ltype */0];
  switch (match.tag | 0) {
    case 1 : 
        if (match[0] === "Color") {
          var data = Json_decode.string(value[/* data */1]);
          var match$1 = Color$LonaCompilerCore.find(colors, data);
          if (match$1) {
            return /* Identifier */Block.__(2, [/* :: */[
                        "colors",
                        /* :: */[
                          match$1[0][/* id */0],
                          /* [] */0
                        ]
                      ]]);
          } else {
            return /* Literal */Block.__(1, [value]);
          }
        } else {
          return /* Literal */Block.__(1, [value]);
        }
        break;
    case 0 : 
    case 2 : 
        return /* Literal */Block.__(1, [value]);
    
  }
}

function toJavaScriptStyleSheetAST(colors, layer) {
  var createStyleObjectForLayer = function (layer) {
    var styleParams = Curry._2(StringMap$LonaCompilerCore.filter, (function (key, _) {
            return Layer$LonaCompilerCore.parameterIsStyle(key);
          }), layer[/* parameters */2]);
    return /* Property */Block.__(18, [{
                key: /* Identifier */Block.__(2, [/* :: */[
                      JavaScriptFormat$LonaCompilerCore.styleVariableName(layer[/* name */1]),
                      /* [] */0
                    ]]),
                value: /* ObjectLiteral */Block.__(17, [List.map((function (param) {
                            return /* Property */Block.__(18, [{
                                        key: /* Identifier */Block.__(2, [/* :: */[
                                              param[0],
                                              /* [] */0
                                            ]]),
                                        value: getStyleValue(colors, param[1])
                                      }]);
                          }), Curry._1(StringMap$LonaCompilerCore.bindings, styleParams))])
              }]);
  };
  var styleObjects = List.map(createStyleObjectForLayer, Layer$LonaCompilerCore.flatten(layer));
  return /* VariableDeclaration */Block.__(12, [/* AssignmentExpression */Block.__(13, [{
                  left: /* Identifier */Block.__(2, [/* :: */[
                        "styles",
                        /* [] */0
                      ]]),
                  right: /* CallExpression */Block.__(9, [{
                        callee: /* Identifier */Block.__(2, [/* :: */[
                              "StyleSheet",
                              /* :: */[
                                "create",
                                /* [] */0
                              ]
                            ]]),
                        arguments: /* :: */[
                          /* ObjectLiteral */Block.__(17, [styleObjects]),
                          /* [] */0
                        ]
                      }])
                }])]);
}

function importComponents(getComponentFile, rootLayer) {
  var match = Layer$LonaCompilerCore.getTypeNames(rootLayer);
  return /* record */[
          /* absolute : :: */[
            /* ImportDeclaration */Block.__(3, [{
                  source: "react-native",
                  specifiers: List.map((function (typeName) {
                          return /* ImportSpecifier */Block.__(4, [{
                                      imported: Layer$LonaCompilerCore.layerTypeToString(typeName),
                                      local: /* None */0
                                    }]);
                        }), match[/* builtIn */0])
                }]),
            /* [] */0
          ],
          /* relative */List.map((function (componentName) {
                  return /* ImportDeclaration */Block.__(3, [{
                              source: Curry._1(getComponentFile, componentName).replace(".component", ""),
                              specifiers: /* :: */[
                                /* ImportDefaultSpecifier */Block.__(5, [componentName]),
                                /* [] */0
                              ]
                            }]);
                }), match[/* custom */1])
        ];
}

function generate(name, colorsFilePath, textStylesFilePath, colors, textStyles, getComponent, getComponentFile, json) {
  var rootLayer = Decode$LonaCompilerCore.Component[/* rootLayer */1](getComponent, json);
  var logic = Logic$LonaCompilerCore.addVariableDeclarations(Decode$LonaCompilerCore.Component[/* logic */2](json));
  var assignments = Layer$LonaCompilerCore.parameterAssignmentsFromLogic(rootLayer, logic);
  var rootLayerAST = layerToJavaScriptAST(colors, textStyles, assignments, rootLayer);
  var styleSheetAST = toJavaScriptStyleSheetAST(colors, rootLayer);
  var logicAST = JavaScriptAst$LonaCompilerCore.optimize(JavaScriptLogic$LonaCompilerCore.toJavaScriptAST(logic));
  var match = importComponents(getComponentFile, rootLayer);
  return JavaScriptAst$LonaCompilerCore.prepareForRender(/* Program */Block.__(21, [SwiftDocument$LonaCompilerCore.joinGroups(/* Empty */0, /* :: */[
                      match[/* absolute */0],
                      /* :: */[
                        Pervasives.$at(/* :: */[
                              /* ImportDeclaration */Block.__(3, [{
                                    source: colorsFilePath.replace(".json", ""),
                                    specifiers: /* :: */[
                                      /* ImportDefaultSpecifier */Block.__(5, ["colors"]),
                                      /* [] */0
                                    ]
                                  }]),
                              /* :: */[
                                /* ImportDeclaration */Block.__(3, [{
                                      source: textStylesFilePath.replace(".json", ""),
                                      specifiers: /* :: */[
                                        /* ImportDefaultSpecifier */Block.__(5, ["textStyles"]),
                                        /* [] */0
                                      ]
                                    }]),
                                /* [] */0
                              ]
                            ], match[/* relative */1]),
                        /* :: */[
                          /* :: */[
                            /* ExportDefaultDeclaration */Block.__(19, [/* ClassDeclaration */Block.__(6, [{
                                      id: name,
                                      superClass: /* Some */["React.Component"],
                                      body: /* :: */[
                                        /* MethodDefinition */Block.__(7, [{
                                              key: "render",
                                              value: /* FunctionExpression */Block.__(8, [{
                                                    id: /* None */0,
                                                    params: /* [] */0,
                                                    body: /* :: */[
                                                      logicAST,
                                                      /* :: */[
                                                        /* Return */Block.__(0, [rootLayerAST]),
                                                        /* [] */0
                                                      ]
                                                    ]
                                                  }])
                                            }]),
                                        /* [] */0
                                      ]
                                    }])]),
                            /* [] */0
                          ],
                          /* :: */[
                            /* :: */[
                              styleSheetAST,
                              /* [] */0
                            ],
                            /* [] */0
                          ]
                        ]
                      ]
                    ])]));
}

var Ast = 0;

var Render = 0;

exports.Ast                       = Ast;
exports.Render                    = Render;
exports.createStyleAttributeAST   = createStyleAttributeAST;
exports.layerToJavaScriptAST      = layerToJavaScriptAST;
exports.getStyleValue             = getStyleValue;
exports.toJavaScriptStyleSheetAST = toJavaScriptStyleSheetAST;
exports.importComponents          = importComponents;
exports.generate                  = generate;
/* Layer-LonaCompilerCore Not a pure module */
