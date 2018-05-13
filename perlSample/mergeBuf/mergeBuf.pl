use strict;
use warnings;

my @array1 = (1, 3, 5, 6, 8, 9, 0xFF, 0xFF, 0xFF, 0xFF);
my @array2 = (1, 2, 5, 6, 8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
my @array3 = ([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF],
              [0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF] );

print "Before\n";
map{printf("0x%x, ", $_)} @{$array3[0]};
print "\n";
map{printf("0x%x, ", $_)} @{$array3[1]};
print "\n";

# -----------------------------------
my $idx1 = 0;
my $idx2 = 0;
my $idx3 = 0;
my $tmp1;
my $tmp2;

while(1) {
    $tmp1 = $array1[$idx1];
    $tmp2 = $array2[$idx2];

    if ($tmp1 == 0xFF and $tmp2 == 0xFF){
        last;
    }

    if ($tmp1 == $tmp2){
        $array3[0]->[$idx3] = $tmp1;
        $array3[1]->[$idx3] = $tmp2;
        $idx1++;
        $idx2++;
        $idx3++;
    }elsif ($tmp1 < $tmp2){
        $array3[0]->[$idx3] = $tmp1;
        $array3[1]->[$idx3] = 0xAA;
        $idx1++;
        $idx3++;
    }else{
        $array3[0]->[$idx3] = 0xAA;
        $array3[1]->[$idx3] = $tmp2;
        $idx2++;
        $idx3++;
    }
}

# -----------------------------------

print "After\n";
map{printf("0x%x, ", $_)} @{$array3[0]};
print "\n";
map{printf("0x%x, ", $_)} @{$array3[1]};
print "\n";


print "done\n";
