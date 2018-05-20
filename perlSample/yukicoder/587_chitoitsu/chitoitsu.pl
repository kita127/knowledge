use strict;
use warnings;

my $input1 = "aabbccddeefgg";
my $input2 = "ffeeddcccbbaa";
my $input3 = "hsgeeappashoo";


sub chitoitsu {
    my ($str) = @_;
    my %set;
    my $res = "Init";

    for(my $i = 0; $i < length($str); $i++) {
        my $key = substr($str, $i, 1);
        $set{$key} += 1;
    }
    my @keys = keys %set;

    foreach my $k (@keys) {
        if($set{$k} == 2) {
            next;
        } elsif(($set{$k} == 1) and ($res eq "Init")) {
            $res = $k;
        } else {
            $res = "Impossible";
            last;
        }
    }

    return $res;
}

# main ########################################
my $res1 = chitoitsu($input1);
my $res2 = chitoitsu($input2);
my $res3 = chitoitsu($input3);

print "res1... $res1\n";
print "res2... $res2\n";
print "res3... $res3\n";
