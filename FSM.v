module det_101(
    input clk,
    input rstn,
    input in,
    output reg out
);
  parameter IDLE = 3'd0,
            S1   = 3'd1,
            S10  = 3'd2,
            S101 = 3'd3;

  reg [2:0] cur_state, next_state;
  always @(posedge clk or negedge rstn) begin
    if (!rstn)
      cur_state <= IDLE;
    else
      cur_state <= next_state;
  end
  always @(*) begin
    case (cur_state)
      IDLE: begin
        if (in)
          next_state = S1;
        else
          next_state = IDLE;
      end
      S1: begin
        if (!in)
          next_state = S10;
        else
          next_state = S1;  
      end
      S10: begin
        if (in)
          next_state = S101;
        else
          next_state = IDLE;
      end
      S101: begin
        if (in)
          next_state = S1; 
        else
          next_state = S10;
      end
      default: next_state = IDLE;
    endcase
  end
  always @(*) begin
    out = (cur_state == S101) ? 1'b1 : 1'b0;
  end

endmodule

