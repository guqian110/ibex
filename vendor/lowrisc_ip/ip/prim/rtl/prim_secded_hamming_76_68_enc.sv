// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED encoder generated by util/design/secded_gen.py

module prim_secded_hamming_76_68_enc (
  input        [67:0] data_i,
  output logic [75:0] data_o
);

  always_comb begin : p_encode
    data_o = 76'(data_i);
    data_o[68] = 1'b0 ^ ^(data_o & 76'h00AAB55555556AAAD5B);
    data_o[69] = 1'b0 ^ ^(data_o & 76'h00CCD9999999B33366D);
    data_o[70] = 1'b0 ^ ^(data_o & 76'h000F1E1E1E1E3C3C78E);
    data_o[71] = 1'b0 ^ ^(data_o & 76'h00F01FE01FE03FC07F0);
    data_o[72] = 1'b0 ^ ^(data_o & 76'h00001FFFE0003FFF800);
    data_o[73] = 1'b0 ^ ^(data_o & 76'h00001FFFFFFFC000000);
    data_o[74] = 1'b0 ^ ^(data_o & 76'h00FFE00000000000000);
    data_o[75] = 1'b0 ^ ^(data_o & 76'h7FFFFFFFFFFFFFFFFFF);
  end

endmodule : prim_secded_hamming_76_68_enc