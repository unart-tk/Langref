# Sleep Language Reference
# =======================
#
#     (c) 2011 Ben, untar.org
#     in: langref, sleep
#
# Most important language constructs and often used routines.
#
# ***********************

# Basic types
$number = 3459.98;
$str = 'hello';
$interpol = "$str you\n";
# print $interpol;

# Lists
# =====
@arr = @( 'ka', 'pip', 'god');


println(@arr);
println(@arr[1]);
#print @qwarr, "\n";
#





# Declare an print a literal string.

$litstr = '\#{\'}$\}}';

#print($mystr);


# Define a muliline string. 
#
$mulstr = 'kaka
sdkfas
skdaf asadf
kasdf';

#print("$mulstr\n");



#Given variables a=3 and b=4 output "3+4=7"
$a = 4;
$b = 77;
# printf("%d+%d=%d\n", $a, $b, $a + $b);
# print $a, '+', $b, '=', $a + $b;
#$str = reverse "Poo the bear";  
#print($str);

@chars = split('', "Boo ze bea");

#cprint(@chars);


#foreach $c (@chars){
#    print($c);
#}
@rev = reverse(@chars);
$revstr = join('', @rev);
#print($revstr);

#foreach $r (@rev){
#    print($r);
#}
#@rev = reverse(@chars);
