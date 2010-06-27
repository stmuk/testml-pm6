use v6;

class TestML::Document;

has $meta = TestML::Document::Meta.new;
has $tests = TestML::Document::Tests.new;
has $data = TestML::Document::Data.new;

#-----------------------------------------------------------------------------
class TestML::Document::Meta;

has $data = {
    TestML => '',
    Data => [],
    Title => '',
    Plan => 0,
    BlockMarker => '===',
    PointMarker => '---',
};

#-----------------------------------------------------------------------------
class TestML::Document::Tests;

has $statements = [];

#-----------------------------------------------------------------------------
class TestML::Statement;

has $points = [];
has $left_expression = [];
has $assertion_operator;
has $right_expression = [];

#-----------------------------------------------------------------------------
class TestML::Expression;

has $transforms = [];

#-----------------------------------------------------------------------------
class TestML::Transform;

has $name;
has $args = [];

#-----------------------------------------------------------------------------
class TestML::Document::Data;

has $blocks = [];

#-----------------------------------------------------------------------------
class TestML::Block;

has $label = '';
has $points = {};
