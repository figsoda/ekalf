{
  description = "example";

  inputs = {
    # numbers
    n0.url = "path:zero";
    n1 = {
      url = "path:succ";
      inputs.x.follows = "n0";
    };
    n2 = {
      url = "path:succ";
      inputs.x.follows = "n1";
    };
    n3 = {
      url = "path:succ";
      inputs = {
        x.follows = "n2";
      };
    };
    n5 = {
      url = "path:add";
      inputs = {
        x.follows = "n2";
        y.follows = "n3";
      };
    };
    n6 = {
      url = "path:succ";
      inputs.x.follows = "n5";
    };
    n7 = {
      url = "path:succ";
      inputs.x.follows = "n6";
    };
    n9 = {
      url = "path:mul";
      inputs = {
        x.follows = "n3";
        y.follows = "n3";
      };
    };
    n13 = {
      url = "path:add";
      inputs = {
        x.follows = "n6";
        y.follows = "n7";
      };
    };
    n36 = {
      url = "path:mul";
      inputs = {
        x.follows = "n6";
        y.follows = "n6";
      };
    };
    n42 = {
      url = "path:add";
      inputs = {
        x.follows = "n36";
        y.follows = "n6";
      };
    };
    n65 = {
      url = "path:mul";
      inputs = {
        x.follows = "n5";
        y.follows = "n13";
      };
    };
    n91 = {
      url = "path:mul";
      inputs = {
        x.follows = "n7";
        y.follows = "n13";
      };
    };

    # numbers for ascii characters
    n108 = {
      url = "path:mul";
      inputs = {
        x.follows = "n36";
        y.follows = "n3";
      };
    };
    n105 = {
      url = "path:sub";
      inputs = {
        x.follows = "n108";
        y.follows = "n3";
      };
    };
    n115 = {
      url = "path:add";
      inputs = {
        x.follows = "n108";
        y.follows = "n7";
      };
    };
    n116 = {
      url = "path:succ";
      inputs.x.follows = "n115";
    };
    n84 = {
      url = "path:mul";
      inputs = {
        x.follows = "n42";
        y.follows = "n2";
      };
    };
    n111 = {
      url = "path:add";
      inputs = {
        x.follows = "n108";
        y.follows = "n3";
      };
    };
    n114 = {
      url = "path:sub";
      inputs = {
        x.follows = "n115";
        y.follows = "n1";
      };
    };
    n97 = {
      url = "path:add";
      inputs = {
        x.follows = "n91";
        y.follows = "n6";
      };
    };
    n110 = {
      url = "path:add";
      inputs = {
        x.follows = "n108";
        y.follows = "n2";
      };
    };
    n119 = {
      url = "path:add";
      inputs = {
        x.follows = "n110";
        y.follows = "n9";
      };
    };
    n101 = {
      url = "path:succ";
      inputs = {
        x.follows = "n110";
      };
    };

    # characters
    l = {
      url = "path:ascii";
      inputs.x.follows = "n108";
    };
    i = {
      url = "path:ascii";
      inputs.x.follows = "n105";
    };
    s = {
      url = "path:ascii";
      inputs.x.follows = "n115";
    };
    t = {
      url = "path:ascii";
      inputs.x.follows = "n116";
    };
    T = {
      url = "path:ascii";
      inputs.x.follows = "n84";
    };
    o = {
      url = "path:ascii";
      inputs.x.follows = "n111";
    };
    A = {
      url = "path:ascii";
      inputs.x.follows = "n65";
    };
    r = {
      url = "path:ascii";
      inputs.x.follows = "n114";
    };
    a = {
      url = "path:ascii";
      inputs.x.follows = "n97";
    };
    n = {
      url = "path:ascii";
      inputs.x.follows = "n110";
    };
    w = {
      url = "path:ascii";
      inputs.x.follows = "n119";
    };
    e = {
      url = "path:ascii";
      inputs.x.follows = "n101";
    };

    # listToAttrs
    li = {
      url = "path:add";
      inputs = {
        x.follows = "l";
        y.follows = "i";
      };
    };
    lis = {
      url = "path:add";
      inputs = {
        x.follows = "li";
        y.follows = "s";
      };
    };
    list = {
      url = "path:add";
      inputs = {
        x.follows = "lis";
        y.follows = "t";
      };
    };
    listT = {
      url = "path:add";
      inputs = {
        x.follows = "list";
        y.follows = "T";
      };
    };
    listTo = {
      url = "path:add";
      inputs = {
        x.follows = "listT";
        y.follows = "o";
      };
    };
    listToA = {
      url = "path:add";
      inputs = {
        x.follows = "listTo";
        y.follows = "A";
      };
    };
    listToAt = {
      url = "path:add";
      inputs = {
        x.follows = "listToA";
        y.follows = "t";
      };
    };
    listToAtt = {
      url = "path:add";
      inputs = {
        x.follows = "listToAt";
        y.follows = "t";
      };
    };
    listToAttr = {
      url = "path:add";
      inputs = {
        x.follows = "listToAtt";
        y.follows = "r";
      };
    };
    listToAttrs = {
      url = "path:add";
      inputs = {
        x.follows = "listToAttr";
        y.follows = "s";
      };
    };

    # answer
    an = {
      url = "path:add";
      inputs = {
        x.follows = "a";
        y.follows = "n";
      };
    };
    ans = {
      url = "path:add";
      inputs = {
        x.follows = "an";
        y.follows = "s";
      };
    };
    answ = {
      url = "path:add";
      inputs = {
        x.follows = "ans";
        y.follows = "w";
      };
    };
    answe = {
      url = "path:add";
      inputs = {
        x.follows = "answ";
        y.follows = "e";
      };
    };
    answer = {
      url = "path:add";
      inputs = {
        x.follows = "answe";
        y.follows = "r";
      };
    };

    # result
    builtins.url = "path:builtins";
    fListToAttrs = {
      url = "path:getAttr";
      inputs = {
        attrs.follows = "builtins";
        name.follows = "listToAttrs";
      };
    };
    answerPair = {
      url = "path:nameValue";
      inputs = {
        name.follows = "answer";
        value.follows = "n42";
      };
    };
    nil.url = "path:nil";
    pairs = {
      url = "path:cons";
      inputs = {
        x.follows = "answerPair";
        xs.follows = "nil";
      };
    };
    result = {
      url = "path:apply";
      inputs = {
        f.follows = "fListToAttrs";
        x.follows = "pairs";
      };
    };
  };

  outputs = inputs: { inherit (inputs.result) value; };
}
