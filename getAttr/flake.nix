{
  inputs = {
    attrs.follows = "";
    name.follows = "";
  };

  outputs = { attrs, name, ... }: {
    value = attrs.value.${name.value};
  };
}
