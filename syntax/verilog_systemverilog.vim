if exists("b:current_syntax")
   finish
endif

syntax keyword verilogStatement   always and assign automatic buf
syntax keyword verilogStatement   bufif0 bufif1 cell cmos
syntax keyword verilogStatement   config deassign defparam design
syntax keyword verilogStatement   disable edge endconfig
syntax keyword verilogStatement   endgenerate
syntax keyword verilogStatement   endprimitive endtable
syntax keyword verilogStatement   event force fork join
syntax keyword verilogStatement   join_any join_none forkjoin
syntax keyword verilogStatement   generate genvar highz0 highz1 ifnone
syntax keyword verilogStatement   incdir include initial inout input
syntax keyword verilogStatement   instance integer large liblist
syntax keyword verilogStatement   library localparam macromodule medium
syntax keyword verilogStatement   nand negedge nmos nor
syntax keyword verilogStatement   noshowcancelled not notif0 notif1 or
syntax keyword verilogStatement   output parameter pmos posedge primitive
syntax keyword verilogStatement   pull0 pull1 pulldown pullup
syntax keyword verilogStatement   pulsestyle_onevent pulsestyle_ondetect
syntax keyword verilogStatement   rcmos real realtime reg release
syntax keyword verilogStatement   rnmos rpmos rtran rtranif0 rtranif1
syntax keyword verilogStatement   scalared showcancelled signed small
syntax keyword verilogStatement   specparam strong0 strong1
syntax keyword verilogStatement   supply0 supply1 table time tran
syntax keyword verilogStatement   tranif0 tranif1 tri tri0 tri1 triand
syntax keyword verilogStatement   trior trireg unsigned use vectored wait
syntax keyword verilogStatement   wand weak0 weak1 wire wor xnor xor
syntax keyword verilogStatement   semaphore mailbox

syntax keyword verilogStatement   always_comb always_ff always_latch
syntax keyword verilogStatement   checker endchecker
syntax keyword verilogStatement   virtual local const protected
syntax keyword verilogStatement   package endpackage
syntax keyword verilogStatement   rand randc constraint randomize
syntax keyword verilogStatement   with inside dist
syntax keyword verilogStatement   randcase
syntax keyword verilogStatement   randsequence
syntax keyword verilogStatement   get_randstate set_randstate
syntax keyword verilogStatement   srandom
syntax keyword verilogStatement   logic bit byte time
syntax keyword verilogStatement   int longint shortint
syntax keyword verilogStatement   struct packed
syntax keyword verilogStatement   final
syntax keyword verilogStatement   import
syntax keyword verilogStatement   context pure
syntax keyword verilogStatement   void shortreal chandle string
syntax keyword verilogStatement   modport
syntax keyword verilogStatement   cover coverpoint
syntax keyword verilogStatement   program endprogram
syntax keyword verilogStatement   bins binsof illegal_bins ignore_bins
syntax keyword verilogStatement   alias matches solve static assert
syntax keyword verilogStatement   assume before expect bind
syntax keyword verilogStatement   extends tagged extern
syntax keyword verilogStatement   first_match throughout timeprecision
syntax keyword verilogStatement   timeunit priority type union
syntax keyword verilogStatement   uwire var cross ref wait_order intersect
syntax keyword verilogStatement   wildcard within
syntax keyword verilogStatement   triggered
syntax keyword verilogStatement   std
syntax keyword verilogStatement   accept_on eventually global implements implies
syntax keyword verilogStatement   interconnect let nettype nexttime reject_on restrict soft
syntax keyword verilogStatement   s_always s_eventually s_nexttime s_until s_until_with
syntax keyword verilogStatement   strong sync_accept_on sync_reject_on unique unique0
syntax keyword verilogStatement   until until_with untyped weak

syntax keyword verilogStatement   function interface module property sequence
syntax keyword verilogStatement   begin end endchecker endclass endclocking endconfig
syntax keyword verilogStatement   endfunction endgroup endinterface endmodule
syntax keyword verilogStatement   endpackage endprimitive endprogram endproperty
syntax keyword verilogStatement   endsequence endtask join join_any join_none
syntax keyword verilogStatement   statement assign attribute instance prototype
syntax keyword verilogStatement   class clocking covergroup define export expression
syntax keyword verilogStatement   specify task typedef

syntax keyword verilogConditional iff
syntax keyword verilogConditional if else case casex casez default endcase

syntax keyword verilogRepeat      forever repeat while for
syntax keyword verilogRepeat      return break continue
syntax keyword verilogRepeat      do while foreach

syntax keyword verilogTodo        TODO FIXME todo fixme

syntax keyword verilogObject      super null this

syntax match verilogObject     "\<\w\+\ze\(::\|\.\)"
syntax match verilogComment    "\v\/\/.*$"
syntax match verilogConstant   "\<[A-Z][A-Z0-9_$]*\>"
syntax match verilogNumber     "\v(^|([[:space:]|[:punct:]])&[^_])\zs\d+\ze"
syntax match verilogNumber     "\v\d+\.\d+"
syntax match verilogNumber     "\v\d*\'[bhd]\d+"

syntax match verilogPort       "\v.*\zs\.\S*\ze\s*\(.*\)"
syntax match verilogSpecial    "\v[`|\$][[:alnum:]_]*"

syntax region verilogComment start=/\v\/\*/ skip=/\v\\./ end=/\v\*\//
syntax region verilogString start=/\v"/ skip=/\v\\./ end=/\v"/


highlight link verilogStatement   Keyword
highlight link verilogConditional Keyword
highlight link verilogRepeat      Keyword
highlight link verilogObject      Type
highlight link verilogComment     Comment
highlight link verilogString      String
highlight link verilogConstant    Constant
highlight link verilogTodo        Todo
highlight link verilogNumber      NonText
highlight link verilogPort        SpecialKey
highlight link verilogSpecial     SpecialKey


let b:current_syntax = "verilog_systemverilog"

