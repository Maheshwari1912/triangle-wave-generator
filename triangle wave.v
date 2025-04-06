module triangle_wave (input clk,reset,
                      output reg [3:0] triangle_out);
  reg [3:0] counter;
  reg up_down;
  always@(posedge clk, posedge reset) begin
    if(reset) begin
      counter <= 4'b0;
      up_down <= 1'b1;
    end else begin
      if(up_down) begin
        counter <= 4'd15;
        if(counter == 4'd15) begin
          up_down <= 1'b0;
        end
      end else begin
        counter <= 4'b0;
        if(counter == 4'd0) begin
          up_down <= 1'b1;
        end
      end
      triangle_out <= counter;
    end
  end
endmodule
