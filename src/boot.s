/*******************************************************************************
 * @file      am355x_boot.s
 * @author    Kyle Zentner
 */

  .syntax unified
  .cpu cortex-a8
  .fpu neon
  .arm

.global _start
_start:
  ldr sp, =stack_start
  /* bl kmain */
  b .
