/*******************************************************************************
 * @file      am355x_boot.S
 * @author    Kyle Zentner
 */

  .syntax unified
  .cpu cortex-a8
  .fpu neon
  .arm

.global _start
_start:
  ldr sp, =stack_start

  ldr r2, =gpio1_oe
  /* Enable output only on pins 21-25 (user leds).
   * Setting a bit to 0 *enables* output!
   */
  ldr r1, =0xfe1fffff
  str r1, [r2]

  /* Clear the leds. */
  ldr r2, =gpio1_cleardataout
  ldr r1, =0x1e00000
  str r1, [r2]

  /* Set the leds. */
  ldr r2, =gpio1_setdataout
  /* USR 0 */
  ldr r1, =0x200000
  /* USR 1 */
  /* ldr r1, =0x400000 */
  /* USR 2 */
  /* ldr r1, =0x800000 */
  /* USR 3 */
  /* ldr r1, =0x1000000 */
  str r1, [r2]

  /* bl kmain */
  b .
