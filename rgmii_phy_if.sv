/*

Copyright (c) 2015-2018 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

/*
 * RGMII PHY interface
 */
module rgmii_phy_if #
(
    // target ("SIM", "GENERIC", "XILINX", "ALTERA")
    parameter TARGET = "GENERIC",
    // IODDR style ("IODDR", "IODDR2")
    // Use IODDR for Virtex-4, Virtex-5, Virtex-6, 7 Series, Ultrascale
    // Use IODDR2 for Spartan-6
    parameter IODDR_STYLE = "IODDR2",
    // Clock input style ("BUFG", "BUFR", "BUFIO", "BUFIO2")
    // Use BUFR for Virtex-5, Virtex-6, 7-series
    // Use BUFG for Ultrascale
    // Use BUFIO2 for Spartan-6
    parameter CLOCK_INPUT_STYLE = "BUFIO2",
    // Use 90 degree clock for RGMII transmit ("TRUE", "FALSE")
    parameter USE_CLK90 = "TRUE"
)
(
    input  wire        clk,
    input  wire        clk90,
    input  wire        rst,

    /*
     * GMII interface to MAC
     */
    output wire        mac_gmii_rx_clk,
    output wire        mac_gmii_rx_rst,
    output wire [7:0]  mac_gmii_rxd,
    output wire        mac_gmii_rx_dv,
    output wire        mac_gmii_rx_er,
    output wire        mac_gmii_tx_clk,
    output wire        mac_gmii_tx_rst,
    output wire        mac_gmii_tx_clk_en,
    input  wire [7:0]  mac_gmii_txd,
    input  wire        mac_gmii_tx_en,
    input  wire        mac_gmii_tx_er,

    /*
     * RGMII interface to PHY
     */
    input  wire        phy_rgmii_rx_clk,
    input  wire [3:0]  phy_rgmii_rxd,
    input  wire        phy_rgmii_rx_ctl,
    output wire        phy_rgmii_tx_clk,
    output wire [3:0]  phy_rgmii_txd,
    output wire        phy_rgmii_tx_ctl,

    /*
     * Control
     */
    input  wire [1:0]  speed
);


endmodule
