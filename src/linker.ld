MEMORY {
  ram (wx) : org = 0x80000000, len = 512M
}

/* FILL{0xdeadbeef} */

ENTRY(start)

SECTIONS {
  .text : { *(.text) } >ram =0xdeadbeef
  . = . + 0x100; /* Skip some space to make a "canary". */
  .data : { *(.data) } >ram =0xdeadbeef
  . = . + 0x100; /* Ditto. */
  .bss  : { *(.bss)  } >ram =0x00
  . = . + 0x100; /* Ditto. */
  stack_start = .;

  /DISCARD/ : {
      *(.comment)
      *(.eh_frame)
      *(.rel.eh_frame)
  }
}
