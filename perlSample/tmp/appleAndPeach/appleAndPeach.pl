use strict;
use warnings;

my $text = "the cost of one peach is higher than that of one apple.";


sub convFruits {
    my ($v) = @_;

    if(index($v, "apple") != -1) {
        $v =~ s/apple/peach/;
    }elsif(index($v, "peach") != -1) {
        $v =~ s/peach/apple/;
    }

    return $v;
}


# main ###############################
print "$text\n";

my @words = split(/ /, $text);
my @convWords;
my $cv;

foreach my $v (@words) {
    $cv = convFruits($v);
    push(@convWords, $cv);
}

my $convText = join(" ", @convWords);

print "$convText\n";
