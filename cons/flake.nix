{
  inputs = {
    x.follows = "";
    xs.follows = "";
  };

  outputs = { x, xs, ... }: {
    value = [ x.value ] ++ xs.value;
  };
}
