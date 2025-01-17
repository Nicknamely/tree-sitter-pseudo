package tree_sitter_pseudo_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_pseudo "github.com/nicknamely/tree-sitter-pseudo.git/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_pseudo.Language())
	if language == nil {
		t.Errorf("Error loading Pseudo grammar")
	}
}
