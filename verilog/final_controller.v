module final_controller(
		input clk,
		input not_r,
		input c_and_l,
		input en_s,
		input l_or_notc,
		output reg s_NR,
		output reg en_NR,
		output reg s_NG,
		output reg en_NG,
		output reg s_NY,
		output reg en_NY,
		output reg s_ER,
		output reg en_ER,
		output reg s_EG,
		output reg en_EG,
		output reg s_EY,
		output reg en_EY,
		output reg [1:0]s_IC,
		output reg en_IC
	);

	parameter RR1 = 4'd0;
	parameter GR = 4'd1;
	parameter YR = 4'd2;
	parameter RR2 = 4'd3;
	parameter RG = 4'd4;
	parameter RY = 4'd5;

	reg [3:0] state, next_state;
	initial state = RR1;

	always @(posedge clk)
		state <= next_state;

	always_ff@(posedge clk) begin
		s_NR = 0;
		en_NR = 0;
		s_NG = 0;
		en_NG = 0;
		s_NY = 0;
		en_NY = 0;
		s_ER = 0;
		en_ER = 0;
		s_EG = 0;
		en_EG = 0;
		s_EY = 0;
		en_EY = 0;
		s_IC = 2'b00;
		en_IC = 0;
		case(state)
			RR1: begin
				s_IC = 2'b01;
				en_IC = 1;
				s_NR = 1;
				en_NR = 1;
				s_NG = 0;
				en_NG = 1;
				s_NY = 0;
				en_NY = 1;
				s_ER = 1;
				en_ER = 1;
				s_EG = 0;
				en_EG = 1;
				s_EY = 0;
				en_EY = 1;
				if (not_r)
					next_state = GR;
				else
					next_state = RR1;
			end
			GR: begin
				s_IC = 2'b10;
				en_IC = 1;
				s_NR = 0;
				en_NR = 1;
				s_NG = 1;
				en_NG = 1;
				s_NY = 0;
				en_NY = 1;
				s_ER = 1;
				en_ER = 1;
				s_EG = 0;
				en_EG = 1;
				s_EY = 0;
				en_EY = 1;
				if (c_and_l)
					next_state = YR;
				else
					next_state = GR;
			end
			YR: begin
				s_IC = 2'b00;
				en_IC = 1;
				s_NR = 0;
				en_NR = 1;
				s_NG = 0;
				en_NG = 1;
				s_NY = 1;
				en_NY = 1;
				s_ER = 1;
				en_ER = 1;
				s_EG = 0;
				en_EG = 1;
				s_EY = 0;
				en_EY = 1;
				if (en_s)
					next_state = RR2;
				else
					next_state = YR;
			end
			RR2: begin
				s_IC = 2'b01;
				en_IC = 1;
				s_NR = 1;
				en_NR = 1;
				s_NG = 0;
				en_NG = 1;
				s_NY = 0;
				en_NY = 1;
				s_ER = 1;
				en_ER = 1;
				s_EG = 0;
				en_EG = 1;
				s_EY = 0;
				en_EY = 1;
				if (not_r)
					next_state = RG;
				else
					next_state = RR2;
			end
			RG: begin
				s_IC = 2'b11;
				en_IC = 1;
				s_NR = 1;
				en_NR = 1;
				s_NG = 0;
				en_NG = 1;
				s_NY = 0;
				en_NY = 1;
				s_ER = 0;
				en_ER = 1;
				s_EG = 1;
				en_EG = 1;
				s_EY = 0;
				en_EY = 1;
				if (l_or_notc)
					next_state = RY;
				else
					next_state = RG;
			end
			RY: begin
				s_IC = 2'b00;
				en_IC = 1;
				s_NR = 1;
				en_NR = 1;
				s_NG = 0;
				en_NG = 1;
				s_NY = 0;
				en_NY = 1;
				s_ER = 0;
				en_ER = 1;
				s_EG = 0;
				en_EG = 1;
				s_EY = 1;
				en_EY = 1;
				if (en_s)
					next_state = RR1;
				else
					next_state = RY;
			end
			
		endcase
	end

endmodule
