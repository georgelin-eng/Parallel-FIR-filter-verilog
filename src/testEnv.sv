
/* ----------------------------
* 
* Author:  George Lin
* Purpose: Composed of generator, driver, interface, monitor, and scoreboard to 
*          increase modularity and scalability of testing environment. 
* 
* 
-----------------------------  */

module FIR_testBench_TOP();
// instantiation of the DUT


endmodule


class FIR_item
    // transaction object

    
endclass

class FIR_interface
endclass

class generator
endclass

class driver
endclass


class monitor
    
endclass

class scoreboard


endclass

class env
    driver      d0;
    monitor     m0;
    generator   g0;
    scoreboard  s0;
	
	mailbox drv_mbx;
	mailbox scb_mbx;
	event 	drv_done;
		
	virtual switch_if vif;

    function new();
        d0 = new;
        m0 = new;
        g0 = new;
        s0 = new;
        drv_mbx = new();
        scb_mbx = new();
        
        d0.drv_mbx = drv_mbx;
        g0.drv_mbx = drv_mbx;
        m0.drv_mbx = scb_mbx;
        s0.drv_mbx = scb_mbx;
    endfunction

    virtual task run();
        fork
            d0.run();
            m0.run();
            g0.run();
            s0.run();
        join_any
    endtask

endclass

class test



endclass
