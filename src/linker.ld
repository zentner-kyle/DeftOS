MEMORY {
  ram (wx) : org = 0x80000000, len = 512M
}

ENTRY(_start)

SECTIONS {
  .text : { *(.text) } >ram =0xdeadbeef
  .data : { *(.data) } >ram =0xdeadbeef
  .bss  : { *(.bss)  } >ram =0x00
  stack_start = .;

  /DISCARD/ : {
      *(.comment)
      *(.eh_frame)
      *(.rel.eh_frame)
  }
}
