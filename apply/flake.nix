{
  inputs = {
    f.follows = "";
    x.follows = "";
  };

  outputs = { f, x, ... }: {
    value = f.value x.value;
  };
}
