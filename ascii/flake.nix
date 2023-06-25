{
  inputs = {
    x.follows = "";
  };

  outputs = { x, ... }: {
    value = builtins.elemAt (import ./table.nix) x.value;
  };
}
