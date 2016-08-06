     *         
     * 1401 GISHWHES 2016 PROGRAM
     * PROGRAMMER: JOHN RINEY
     *
               JOB  GISHWHES
               CTL  6611

     TEXT      DCW  @GISHWHES 2016 - ITEM 74 @
     TEXT2     DCW  @DISTANCE FROM NEW YORK TO REYKJAVIK(IN MILES) @
     TEXT3     DCW  @SPEED(IN MPH) @
     TEXT4     DCW  @TRAVEL TIME(IN HOURS) @
     TEXT5     DCW  @THANKS TO THE COMPUTER HISTORY MUSEUM@
     TEXT6     DCW  @IN MOUNTAIN VIEW, CA@
     
     PRINT     EQU  201                * PRINT BUFFER
     
     MILES     DCW  002617             * DISTANCE TO TRAVEL
     SPEED     DCW  400                * TRAVEL SPEED
     BHD       DCW  000000             * WHERE THE QUOTIENT WILL APPEAR
     BLD       DC   0000               * WHERE THE REMAINDER APPEARS

     START     CS   332                * CLEAR PRINT AREA
               CS
               MCW  TEXT,PRINT&23      * MOVE FIRST LINE TO PRINT AREA
               W                       * AND PRINT
               CS   332                * CLEAR PRINT AREA
               CS
               W                       * SKIP A LINE

               ZA   MILES,BLD          * CLEAR TO ZEROS
               D    SPEED,BLD-6        * LOW ORDER OF DIVISOR ADDRESS
               CS   332                * CLEAR PRINT BUFFER
               CS

               MCW  TEXT2,PRINT+45     * MOVE IN TITLE
               MCS  MILES,PRINT+62     * MOVE IN DATA
               W                       * PRINT
               CS   332                * CLEAR PRINT BUFFER
               CS                      * CLEAR PRINT BUFFER
               MCW  TEXT3,PRINT+45     * MOVE IN TITLE
               MCS  SPEED,PRINT+62     * MOVE IN DATA
               W                       * PRINT
               CS   332                * CLEAR PRINT BUFFER
               CS

               MCW  TEXT4,PRINT+45     * MOVE IN TITLE
               MCS  BHD,PRINT+50       * MOVE IN QUOTIENT
               MCW  @ AND @,PRINT+55   * MOVE IN TITLE
               SW   BLD-3              * SET WM SO REMAINDER CAN BE EXTRACTED
               MCS  BLD,PRINT+58       * MOVE IN REMAINDER
               CW   BLD-3              * CLEAR THE WORD MARK
               MCW  @/@,PRINT+59       * MOVE IN SEPARATOR
               MCS  SPEED,PRINT+62     * MOVE IN DENOMINATOR
               W                       * PRINT
               CS   332                * CLEAR PRINT AREA
               CS
               W                       * BLANK LINE
     
               MCW  TEXT5,PRINT+36     * LOAD THANKS
               MCW  TEXT6,PRINT+57     * TWO VARIABLES WORTH
               W                       * AND PRINT
               CS   332                * CLEAR PRINT AREA
               CS 

     HALT      H    HALT               * THEN STOP
               END  START              * LAST CARD: SPECIFY ENTRY POINT
