MEMORY {
  ram (wx) : org = 0x80000000, len = 512M
}

ENTRY(_start)

SECTIONS {
  .text : { *(.text) } >ram =0xdeadbeef
  .data : { *(.data) } >ram =0xdeadbeef
  .bss  : { *(.bss)  } >ram =0x00
  stack_start = .;
  gpio1_oe           = 0x4804C134;
  gpio1_dataout      = 0x4804C13C;
  gpio1_cleardataout = 0x4804C190;
  gpio1_setdataout   = 0x4804C194;

  /DISCARD/ : {
      *(.comment)
      *(.eh_frame)
      *(.rel.eh_frame)
  }
}
