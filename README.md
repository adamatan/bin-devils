# Install

Clone the repo, probably to `~/bin`:

    git clone git@github.com:adamatan/bin.git ~/bin

Add the full bin path to your `.bashrc` or `.zshrc`, e.g.:

    PATH=$PATH:/home/your_user_name/bin

Or, for OSX:

    PATH=$PATH:/Users/your_user_name/bin

# Scripts

### comment

Prints a fixed-width padded comment.

    # comment "Fixed width comment"
    ############################# Fixed width comment ##############################
    # comment --xml "Fixed width comment"
    <!--                          Fixed width comment                            -->
    comment --java "Wider comment" 100
    /***************************************** Wider comment ******************************************/

### jls

Lists classes and methods in a Java jar.

    # jls log4j-1.2.16.jar
   
    public interface org.apache.log4j.Appender {
      public abstract void addFilter(org.apache.log4j.spi.Filter);
      public abstract org.apache.log4j.spi.Filter getFilter();
    ...

### rmf

`rm -rf` replacement. Copies files to `/tmp/rmf`.

    # rmf blah
    3 files in 2 directories (total  12K).
    Moved to /tmp/rmf/2012_10_15__16_28_28/blah
    
