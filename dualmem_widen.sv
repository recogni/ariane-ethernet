
module dualmem_widen(clka, clkb, dina, dinb, addra, addrb, wea, web, douta, doutb, ena, enb);

   input wire clka, clkb;
   input  [15:0] dina;
   input  [63:0] dinb;
   input  [10:0] addra;
   input   [8:0] addrb;
   input   [1:0]        wea;
   input   [1:0]        web;
   input   [0:0]        ena, enb;
   output [15:0]      douta;
   output [63:0]      doutb;

   genvar r;
   wire [47:0]        dout;


// infer_dpram #(.RAM_SIZE(11), .BYTE_WIDTH(8)) ram1 // RAM_SIZE is in words
// (
// .ram_clk_a(clka),
// .ram_en_a(|ena),
// .ram_we_a({wea[1],wea[1],wea[1],wea[1],wea[0],wea[0],wea[0],wea[0]}),
// .ram_addr_a(addra),
// .ram_wrdata_a({dina,dina,dina,dina}),
// .ram_rddata_a({dout,douta}),
// .ram_clk_b(clkb),
// .ram_en_b(|enb),
// .ram_we_b({web[1],web[1],web[1],web[1],web[0],web[0],web[0],web[0]}),
// .ram_addr_b({2'b0,addrb}),
// .ram_wrdata_b(dinb),
// .ram_rddata_b(doutb)
//  );
      
endmodule // dualmem
