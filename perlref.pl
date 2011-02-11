# Perl Language Reference
# =======================
#
#     (c) 2011 Ben, untar.org
#     in: langref, perl
#
# Most important language constructs and often used routines.
#
# ***********************

# Basic types
$number = 3459.98;
$str = 'hello';
$interpol = "$str you\n";
# print $interpol;

# Declare an print a literal string.

$litstr = '\#{\'}$\}}';

# print($mystr);

$mulstr = 'kaka
sdkfas
skdaf asadf
kasdf';

# print("$mulstr\n");

#Given variables a=3 and b=4 output "3+4=7"
$a=4;
$b=77;
# printf("%d+%d=%d\n", $a, $b, $a + $b);
# print $a, '+', $b, '=', $a + $b;
# $_ = reverse "Poo the bear";  print;

# Lists
# -----
@qwarr = qw| ka pip god |;
@arr = ( 'ka', 'pip', 'god');

#print "list:", ('ka', 'eok'), "\n";
#
#print @arr, "\n";
#print 'Element 2: ', $arr[1], "\n";
#print @qwarr, "\n";
#
# ### Array ref

$arref = [ 'plip', 'plop', 'boing' ];
$arrefalt = qw| 'plip' 'plop' 'boing' |; # doesn't work

$qwarref = \@qwarr; # referencing a list

# ### dereferencing

#print @$arref, "\n";
#print @$arrefalt, "\n"; # doesn't work
#print @$qwarref, "\n";
#

# ### 

#
# Filesystem
# ----------
#
@files = <./*>;
#print @files;
#map { 
#    print $_ ;
#} @files;
#


sub gen_iterator {
    my @initial_info = @_;

    my ($current_state, $done);
    print "in gen_iterator";

    return sub {
        print "in sub";
        # code to calculate $next_state or $done;
        return undef if $done;
        return $current_state = $next_state;   
    };
}

my $next = gen_iterator( 42 );
while ( my $item = $next->() ) {
    print "$item\n";
}
