/**
 * @file A parser for the pseudo langage.
 * @author nicknamely
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "pseudo",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
