{
  inputs = {
    x.follows = "";
  };

  outputs = { x, ... }: {
    value = x.value + 1;
  };
}
