#!/usr/bin/perl
# csv2md: covert csv file to markdown table format

use Getopt::Long qw(:config posix_default no_ignore_case gnu_compat);

my $help = 0;

my $message = << '&EOT&';
# Usage: csv2md.pl [-f <format>] [-h]  
#   -f --format	[rcl]+ (no. of columns)
#               r: right alginment
#               c: center alginment
#               l: left alginment
#  -h --help	Print this message. 
&EOT&

my(@formats);

GetOptions(
    "format|f=s" => \@format,
    "help|h" => \$help
    );

if ($help == 1) {
	print STDERR $message.LF;
	exit(0);
}

my $format = $format[0];

my $startline = 1;

while(<>) {
    $line = $_;
    $line =~ s/\n//;
    $line =~ s/\r//;

    $done = "";
    $rest = $line;
    $rest =~ s/""/--DUMMYQUOTE--/g;
    while ($rest){
	if ($rest =~ /^([^"]*)"([^"]+)"(.*)$/) {
	    $head = $1;
	    $escape = $2;
	    $rest = $3;
	    $head =~ s/,/|/g; 
	    $done .= $head . $escape;
      } else {
	  $rest =~ s/,/|/g; 
	  $done .= $rest;
	  $rest = "";
      }
    }
    $line = $done;

    $line =~ s/^/|/; 
    $line =~ s/"//g;
    $line =~ s/--DUMMYQUOTE--/"/g;
    $line =~ s/\[/\\[/g;
    $line =~ s/\]/\\]/g;
    $line = $line . "|\n";
    print $line;
    if ($startline == 1) {
	$count = 0;
	$count++ while( $line =~ m/\|/g);
	if ($count > 0){
	    print "|";
	    while (--$count) {
		if ($format ne ""){
		    $fc = substr($format, 0, 1);
		    if ($fc eq "l"){
			print ":----|";
		    } elsif ($fc eq "c"){
			print ":---:|";
		    } elsif ($fc eq "r"){
			print "----:|";
		    } else {
			print ":----";
		    };
		    $format = substr($format, 1);
		} else {
		    print ":----|"
		}
	    };
	    print "\n";
	    $startline = 0;
	}
    }
}
