{
  inputs = {
    name.follows = "";
    value.follows = "";
  };

  outputs = { name, value, ... }: {
    value = {
      name = name.value;
      inherit (value) value;
    };
  };
}
