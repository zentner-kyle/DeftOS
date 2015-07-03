#![feature(lang_items, start, no_std, core, core_prelude)]
#![no_std]
#![no_main]

extern crate core;

use core::prelude::*;

use core::mem;

//#[start]
//fn start(_argc: isize, _argv: *const *const u8) -> isize {
//}

fn kmain() {
}

// These functions and traits are used by the compiler, but not
// for a bare-bones hello world. These are normally
// provided by libstd.
#[lang = "stack_exhausted"] extern fn stack_exhausted() {}
#[lang = "eh_personality"] extern fn eh_personality() {}
#[lang = "panic_fmt"] fn panic_fmt() -> ! { loop {} }
