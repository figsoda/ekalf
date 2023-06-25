{
  inputs = {
    x.follows = "";
    y.follows = "";
  };

  outputs = { x, y, ... }: {
    value = x.value + y.value;
  };
}
