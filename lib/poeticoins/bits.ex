# defmodule Poeticoins.Packet do

#   def decode(<<_version::3, rest::bits>>), do: decode_type(rest)

#   defp decode_type(<<_version::3, rest::bits>>), do: decode_literal(rest)

#   defp decode_literal(<<1::1, part::4,rest::bits>>), do: [part | decode_literal(rest)]

#   defp decode_literal(<<1::1, part::4,rest::bits>>), do: [part]
# end
