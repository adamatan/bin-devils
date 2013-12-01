# Comment

    #################### Generates fixed-width padded comments #####################
    <!--                     In different language formats                       -->
    /******************************** And different widthes *********************************/

## Usage:

Python style:

    # comment "Fixed width comment"
    ############################# Fixed width comment ##############################

XML:
  
    # comment --xml "Fixed width comment"
    <!--                          Fixed width comment                            -->

Java:

    comment --java "Wider comment" 100
    /***************************************** Wider comment ******************************************/

## Man

    usage: comment [-h] [-d] [-j | -x] [message] [width]
    
    Generates fixed-width comments.
    
    positional arguments:
      message      Message to be displayed (e.g, "fuggedaboudit")
      width        Total line width (hashes + message)
    
    optional arguments:
      -h, --help   show this help message and exit
      -d, --debug  Debug mode
      -j, --java   /* Use Java notation */
      -x, --xml    <!-- Use XML notation -->
