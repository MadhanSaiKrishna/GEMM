// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Oct  1 03:05:32 2026
// Host        : node06.local running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_21,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_21 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BzpXTEKA8BVsrspByEDp/11GmM+rxG9XMJJJnmPNjGdQQboQwi++OZU3ieaWxVBebPZFocPwODUK
3YSjgSy7gDq0QaoBQZG6dZMAag7Ne0KGfWsP1RqdsPfVxeH8Qx/6wZgpp78UM9HQGzTHo1GLZBWS
D4wUYwEsU87u9Zpk3qs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vpBJkG8TIIvbLGijR8Bv2vcecc3ZXSLh67+33TG+HIWVhhxrrYg0y/8AvFRWiudkKCNlAbPuc21/
CBoxEnV/LjWMInbIFuSDIvOG8YntNXFMyV5vsO6fmRNacW9hih9Fw2He/tr75B/S25kFdFus6dUq
8UyHbnShYb39EGpaT8QIg/FBg3M4scSnbKUQgZvAjUqPbPp24vO/T8m2aU7Vep++Wl0eSykhEgjW
MjtHYZn7kE2KKNgxYa/KQbvvP0Gf7nFLvEI10dGiGLxPd1u7V370HoIZjYKDtyR0kzX4BKMwwKoS
NulYuGY6BDWl62DKHwhGYkf0IS+HXlSikk4liQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E48CjVwTRLHIDhOzAwgts1XbVc6DxcxGnoR9OV1zjKj3qFL1M/uWMiuaVq+LhoGPTQ5A4NG56fLV
5VV7/BgXKg/VECNvgEEYeQT/wj1+DvDdp504/7nU3sBA13uhhPSNa7nI0u6LqO2vksEZLQzkRkWh
eiuYdOOIEGb7fsy61HI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mGOeQ9tc5jI6QAZv7QO4L3cVfVa/LhRQbJW/zRcR+rZXpzRvcDHrXUpbvJJmZiGLu+GO43OagOrs
JJje6ctkHjBbdnaclDtJoVMLYaE/wmkaFn8jO0jKVzfHGwOJ2tex55X80BDpAb6poBcWi5LL2/MV
xkMZZcV65cGDdTRFLmf5M7lifrLkaqOwgdAma9Voud8egHaPwtITXN1T707M5717wNjUoA3xzaNq
SxtdD6rBT/R0rpWqnetxcdcm+cyJtDFAiFXfWYtheZfJQzLzNNr0+gOtIl2Vsj819K1053mMlIIA
7rPm0YsAyCmhhBgGHTJ5hsvbewhsG/oMhPnwyA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ir2SU2p9N+IdgqX22ItQaWq9hixnYLt4vKaB894e/xFxWuXoMzqHcfYR7vBCuujeMXpoSBBVJBEb
aL1CBX494Fct8JbU64s8drP+5zp7Ik5bO/BP6UDP0zR1Lk8gBldA0NhA+4R/NtFKoHBXV9Hyqb4c
eeRiQKbkzwOpniYRNK9KaDFaR6nhBrUIiemCW1UApV1qD7qZSafxFn0I1XFe05NsAyumBdNUFj8N
/AFeTcU7CjC3SR0TehjOq+M4ajm2Eg6C7r7+jIhJqgWudMuX6NhOX9KPvLKao3POKANouaF9rkjY
U4F5L9YRkFYwysEBCskyCWTzM9gmnFEcNtTHjg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qCdZIR2lY555ysNYtBeic8wRf70LXFEa31kdQ5kzdBTiiODubBlmOjZkSwgV2tYDTGtnwtOcvF0s
Elys3IPJllruqyEsPok2IPTWRmwZhhM+jT2m6JHal3xelQUa9aATbp6zuYJOJn1D31DpNoLD1DfZ
AJ2P+MTOyy8gQujheVqkOqmJgl9dQ5ZjrA8GPkJ9UYXWhUlpQvCj6ti6jVbVXZj72iqxdK9GnHk1
nHncVoywR5bxthUHs3N/GYvfrYpt+JEdVOIjkVAiquKOJWaRb7l5XP3P5JaVRnbNQyQdLJ9N5kKL
Dlvam6j2UzbfKWdcZaFoiHHE+Zgccsm1OviOFg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSQvBzpc2EEF090FbGf60i+fTpGqmZdwcvY+ujlnv2k4tn/UH5GonGALqhl46o5ss7Gi3/Z7ywi
nHOkluAL7B3eyqfuCiFqVyjpsJBKi1PGbIY5SQeLsEwU3ScOXCqOe4o0e8Ew0CzN2ieBjiRJo8Ci
4a2G7m9qSVvm10eUHWJjk7dBLAv39V1IDpNupW2sc6ExAehKASl2a1UyTfxU5xNcesaw9/ET326O
Ife91Cm76aO/Pnu/pvnAULbURniJRYxzfYzAjdZTF31GZhPmFaXRA/YBNGtjpq3zHk8wrQwLN+N7
j8LFGwUNTUKWqj7ronPDeIxcosTol4FIpCiPYw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gIe/tZRqjW0No3A5MCNWTIBlKvh9R8myhpu8uDYycW7kxN72cZojsq8Of1nYbk8iBoLnq5157CZs
0fBjlhoAzspgFPQV4yMLrZS6TusQ5yKtuqypUAjE7LJQFedz+y9ZETdxdVbOvYtWzKea0U3Fzv1k
tjOq+Cj90aPa3GGDyNfRqYx61Dpi2RHlFaByI/7zxFMWhJGmyMgTWlbwsEwdgHI7k0a7fRC/XY8g
RnZ4JXrhTHxkuK9jvS51fLbz9aaydUJ/XbKyrF1vGgzE4mG+74ggIbKzZ5xQtggLa0hWmCHzpeHp
ufwT86ozoQbfgn7FqbIbsWrG9GEF6TgFxFzBmZ7h5rhU5F6Y0NNtWEP1yVpq1WTsybH1KdfqnRLX
/fUjCypGHbL2vrR99Xa/zKUrEfG+GrGPWhqHX55NLQHuHuoCn6gaQZrG9hvMfqVczMXZxM1922Dd
8HrKwlNCvVtT/3daJVNr7+Tb5Atyq/jFISaNwYMM8xXyJiUIE4Ytd8OJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bM8gxHQieXQanVvZmD3hi66fOv5Uf/ir2vAxD6v2EOriOQSZBYrhXdRSaeTTm2qXbKAnKSsP+a/7
LMXmNnigIUvTNvsbQgr2yJifLo03H1WEwoBJwZIw7sDUSLpnQZx5EWv9XQwlAt2w86uuvWVQr0Tt
iN14uUJYdHV1344RX91A6rlSZ0AKu1CjeJN8t2AQl4IjKke0JQMiimZFuk34xuO0gcNE2YOfiQMS
v4AJOHL2LPEu+7TGgOxT9Uhpp91WdVWcKkPzCK4t41zgP2/8oAUiHhtzKXSnVgPe26RuNX1lsJki
eq9qM846JZxMsSbL8ipW3GG+i5qdsUATs6fzEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kwJ6Q71uc9bPegeb1ytad4J3iQkoEBblCyV3UQfZOdiW1rDzfyAaVUoa9mS4XrfRsDlQfVRHBhvL
eVMmapH9l6BrSwIhz6DCnoH6W2/NMkL6uqS1cXT9X2xK//t+lUGjPOAH1jE5Fj6T5uQaROacGeeE
nbNfXy9tqV2HZ18qdM68c0xKg0/Qp3Kj7xFF83jUq/nnpQrvsTCEDOyknMjgcHUUgt8AP2oVxRT5
rXvX/2nFBClFCugAdgO+bqY44cr+vQ2qBuPjNCMpoLt7iWFpXzthEaUoJSGPH6QSJLv33c9pwWPU
eib9cnzlx+XNFaLe3i3/3Zp30PPnk0osNkxD4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ckmb4dWDpAZAGAIVUn02YtfbkK3GxAuwJy6uBEXF8442TvhBd+VebHNHGgYyyNdb7cKMew7Ihod4
NLgbAwZVkdrtd4bHtJVVZeEnGG9+kAbFOzPhSu5wUmCNfLmdMN/2dkUwASCj681QZtR7Y/atMOM+
WMbBEK5ddfXkCLgrAd4FGC1MfGLc0MqY6LUwH9haai4ICPApVdSeuWSMaubHa7KaZtCfOP0XfhuM
gnzZnOb+MUEd2Vhn/OjVESjqW4rYYxu2FSP71dpG5TznpyVHKq+PqZ9z2DnFU1ldoe+zwEosFrx4
oCuFduC9IBNSOgy/Si7ouaDl09xJ/9ZWgQtjSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BzpXTEKA8BVsrspByEDp/11GmM+rxG9XMJJJnmPNjGdQQboQwi++OZU3ieaWxVBebPZFocPwODUK
3YSjgSy7gDq0QaoBQZG6dZMAag7Ne0KGfWsP1RqdsPfVxeH8Qx/6wZgpp78UM9HQGzTHo1GLZBWS
D4wUYwEsU87u9Zpk3qs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vpBJkG8TIIvbLGijR8Bv2vcecc3ZXSLh67+33TG+HIWVhhxrrYg0y/8AvFRWiudkKCNlAbPuc21/
CBoxEnV/LjWMInbIFuSDIvOG8YntNXFMyV5vsO6fmRNacW9hih9Fw2He/tr75B/S25kFdFus6dUq
8UyHbnShYb39EGpaT8QIg/FBg3M4scSnbKUQgZvAjUqPbPp24vO/T8m2aU7Vep++Wl0eSykhEgjW
MjtHYZn7kE2KKNgxYa/KQbvvP0Gf7nFLvEI10dGiGLxPd1u7V370HoIZjYKDtyR0kzX4BKMwwKoS
NulYuGY6BDWl62DKHwhGYkf0IS+HXlSikk4liQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E48CjVwTRLHIDhOzAwgts1XbVc6DxcxGnoR9OV1zjKj3qFL1M/uWMiuaVq+LhoGPTQ5A4NG56fLV
5VV7/BgXKg/VECNvgEEYeQT/wj1+DvDdp504/7nU3sBA13uhhPSNa7nI0u6LqO2vksEZLQzkRkWh
eiuYdOOIEGb7fsy61HI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mGOeQ9tc5jI6QAZv7QO4L3cVfVa/LhRQbJW/zRcR+rZXpzRvcDHrXUpbvJJmZiGLu+GO43OagOrs
JJje6ctkHjBbdnaclDtJoVMLYaE/wmkaFn8jO0jKVzfHGwOJ2tex55X80BDpAb6poBcWi5LL2/MV
xkMZZcV65cGDdTRFLmf5M7lifrLkaqOwgdAma9Voud8egHaPwtITXN1T707M5717wNjUoA3xzaNq
SxtdD6rBT/R0rpWqnetxcdcm+cyJtDFAiFXfWYtheZfJQzLzNNr0+gOtIl2Vsj819K1053mMlIIA
7rPm0YsAyCmhhBgGHTJ5hsvbewhsG/oMhPnwyA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ir2SU2p9N+IdgqX22ItQaWq9hixnYLt4vKaB894e/xFxWuXoMzqHcfYR7vBCuujeMXpoSBBVJBEb
aL1CBX494Fct8JbU64s8drP+5zp7Ik5bO/BP6UDP0zR1Lk8gBldA0NhA+4R/NtFKoHBXV9Hyqb4c
eeRiQKbkzwOpniYRNK9KaDFaR6nhBrUIiemCW1UApV1qD7qZSafxFn0I1XFe05NsAyumBdNUFj8N
/AFeTcU7CjC3SR0TehjOq+M4ajm2Eg6C7r7+jIhJqgWudMuX6NhOX9KPvLKao3POKANouaF9rkjY
U4F5L9YRkFYwysEBCskyCWTzM9gmnFEcNtTHjg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qCdZIR2lY555ysNYtBeic8wRf70LXFEa31kdQ5kzdBTiiODubBlmOjZkSwgV2tYDTGtnwtOcvF0s
Elys3IPJllruqyEsPok2IPTWRmwZhhM+jT2m6JHal3xelQUa9aATbp6zuYJOJn1D31DpNoLD1DfZ
AJ2P+MTOyy8gQujheVqkOqmJgl9dQ5ZjrA8GPkJ9UYXWhUlpQvCj6ti6jVbVXZj72iqxdK9GnHk1
nHncVoywR5bxthUHs3N/GYvfrYpt+JEdVOIjkVAiquKOJWaRb7l5XP3P5JaVRnbNQyQdLJ9N5kKL
Dlvam6j2UzbfKWdcZaFoiHHE+Zgccsm1OviOFg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSQvBzpc2EEF090FbGf60i+fTpGqmZdwcvY+ujlnv2k4tn/UH5GonGALqhl46o5ss7Gi3/Z7ywi
nHOkluAL7B3eyqfuCiFqVyjpsJBKi1PGbIY5SQeLsEwU3ScOXCqOe4o0e8Ew0CzN2ieBjiRJo8Ci
4a2G7m9qSVvm10eUHWJjk7dBLAv39V1IDpNupW2sc6ExAehKASl2a1UyTfxU5xNcesaw9/ET326O
Ife91Cm76aO/Pnu/pvnAULbURniJRYxzfYzAjdZTF31GZhPmFaXRA/YBNGtjpq3zHk8wrQwLN+N7
j8LFGwUNTUKWqj7ronPDeIxcosTol4FIpCiPYw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gIe/tZRqjW0No3A5MCNWTIBlKvh9R8myhpu8uDYycW7kxN72cZojsq8Of1nYbk8iBoLnq5157CZs
0fBjlhoAzspgFPQV4yMLrZS6TusQ5yKtuqypUAjE7LJQFedz+y9ZETdxdVbOvYtWzKea0U3Fzv1k
tjOq+Cj90aPa3GGDyNfRqYx61Dpi2RHlFaByI/7zxFMWhJGmyMgTWlbwsEwdgHI7k0a7fRC/XY8g
RnZ4JXrhTHxkuK9jvS51fLbz9aaydUJ/XbKyrF1vGgzE4mG+74ggIbKzZ5xQtggLa0hWmCHzpeHp
ufwT86ozoQbfgn7FqbIbsWrG9GEF6TgFxFzBmZ7h5rhU5F6Y0NNtWEP1yVpq1WTsybH1KdfqnRLX
/fUjCypGHbL2vrR99Xa/zKUrEfG+GrGPWhqHX55NLQHuHuoCn6gaQZrG9hvMfqVczMXZxM1922Dd
8HrKwlNCvVtT/3daJVNr7+Tb5Atyq/jFISaNwYMM8xXyJiUIE4Ytd8OJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bM8gxHQieXQanVvZmD3hi66fOv5Uf/ir2vAxD6v2EOriOQSZBYrhXdRSaeTTm2qXbKAnKSsP+a/7
LMXmNnigIUvTNvsbQgr2yJifLo03H1WEwoBJwZIw7sDUSLpnQZx5EWv9XQwlAt2w86uuvWVQr0Tt
iN14uUJYdHV1344RX91A6rlSZ0AKu1CjeJN8t2AQl4IjKke0JQMiimZFuk34xuO0gcNE2YOfiQMS
v4AJOHL2LPEu+7TGgOxT9Uhpp91WdVWcKkPzCK4t41zgP2/8oAUiHhtzKXSnVgPe26RuNX1lsJki
eq9qM846JZxMsSbL8ipW3GG+i5qdsUATs6fzEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kwJ6Q71uc9bPegeb1ytad4J3iQkoEBblCyV3UQfZOdiW1rDzfyAaVUoa9mS4XrfRsDlQfVRHBhvL
eVMmapH9l6BrSwIhz6DCnoH6W2/NMkL6uqS1cXT9X2xK//t+lUGjPOAH1jE5Fj6T5uQaROacGeeE
nbNfXy9tqV2HZ18qdM68c0xKg0/Qp3Kj7xFF83jUq/nnpQrvsTCEDOyknMjgcHUUgt8AP2oVxRT5
rXvX/2nFBClFCugAdgO+bqY44cr+vQ2qBuPjNCMpoLt7iWFpXzthEaUoJSGPH6QSJLv33c9pwWPU
eib9cnzlx+XNFaLe3i3/3Zp30PPnk0osNkxD4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ckmb4dWDpAZAGAIVUn02YtfbkK3GxAuwJy6uBEXF8442TvhBd+VebHNHGgYyyNdb7cKMew7Ihod4
NLgbAwZVkdrtd4bHtJVVZeEnGG9+kAbFOzPhSu5wUmCNfLmdMN/2dkUwASCj681QZtR7Y/atMOM+
WMbBEK5ddfXkCLgrAd4FGC1MfGLc0MqY6LUwH9haai4ICPApVdSeuWSMaubHa7KaZtCfOP0XfhuM
gnzZnOb+MUEd2Vhn/OjVESjqW4rYYxu2FSP71dpG5TznpyVHKq+PqZ9z2DnFU1ldoe+zwEosFrx4
oCuFduC9IBNSOgy/Si7ouaDl09xJ/9ZWgQtjSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2816)
`pragma protect data_block
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
daOiECxrjbjglUAbByRHJwXbkj9jcxQ=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
