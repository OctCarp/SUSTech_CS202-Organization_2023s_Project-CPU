`include "vhead.svh"

module vga_ctrl (
    input clk,
    input rst,
    input vga_ctrl,
    input [15:0] data_in,
    output reg [35:0] data
);
    wire [3:0] mode = data_in[3:0];
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            data <= {_SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE};
        end else if (!vga_ctrl) begin
            data <= data;
        end else begin
            case (mode)
                4'b0000: begin
                    data <= {_vP, _vO, _vW, _SPACE, _SPACE, _SPACE};
                end
                4'b0001: begin
                    data <= {_vO, _vD, _vD, _SPACE, _SPACE, _SPACE};
                end
                4'b0010: begin
                    data <= {_vO, _vR, _SPACE, _SPACE, _SPACE, _SPACE};
                end
                4'b0011: begin
                    data <= {_vN, _vO, _vR, _SPACE, _SPACE, _SPACE};
                end
                4'b0100: begin
                    data <= {_vX, _vO, _vR, _SPACE, _SPACE, _SPACE};
                end
                4'b0101: begin
                    data <= {_vL, _vE, _vS, _vS, _SPACE, _SPACE};
                end
                4'b0110: begin
                    data <= {_vL, _vE, _vS, _vS, _SPACE, _vU};
                end
                4'b0111: begin
                    data <= {_vI, _vN, _vP, _vU, _vT, _SPACE};
                end
                4'b1000: begin
                    data <= {_vS, _vU, _vM, _SPACE, _SPACE, _SPACE};
                end
                4'b1001: begin
                    data <= {_vS, _vT, _vA, _vC, _vK, _SPACE};
                end
                4'b1010: begin
                    data <= {_vP, _vU, _vS, _vH, _SPACE, _SPACE};
                end
                4'b1011: begin
                    data <= {_vP, _vO, _vP, _SPACE, _SPACE, _SPACE};
                end
                4'b1100: begin
                    data <= {_vA, _vD, _vD, _SPACE, _SPACE, _SPACE};
                end
                4'b1101: begin
                    data <= {_vS, _vU, _vB, _SPACE, _SPACE, _SPACE};
                end
                4'b1110: begin
                    data <= {_vM, _vU, _vT, _vI, _SPACE, _SPACE};
                end
                4'b1111: begin
                    data <= {_vD, _vI, _vV, _SPACE, _SPACE, _SPACE};
                end

                // default: begin
                //     data <= {_vW, _vA, _vI, _vT, _SPACE, _SPACE};
                // end
            endcase
        end
    end

endmodule
