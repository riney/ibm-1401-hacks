     *         
     * 1401 HELLO WORLD PROGRAM
     * PROGRAMMER: JOHN RINEY
     *
               JOB  HELLO WORLD
               CTL  6611
     TEXT      DCW  @HELLO WORLD, I AM THE IBM 1401!@
     START     CS   299           * CLEAR PRINT AREA
               MCW  TEXT,231      * MOVE TEXT TO PRINT AREA
               W                  * AND PRINT
     HALT      H    HALT          * THEN STOP
               END  START         * LAST CARD: SPECIFY ENTRY POINT
