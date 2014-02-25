#!/usr/bin/perl

#
#	/etc/clusters autocreation
#

open(FILE, ">/etc/clusters") or die("Impossible de creer le fichier !");

@rooms    = ("202",	"203",	"204",	"205",	"206",	"207",	"117",	"118",	"211",	"210",	"209",	"114");
@stations = (18,	20,	15,	14,	14,	14,	15,	15,	8,	8,	8,	14);
@user     = ("root",	"root",	"root",	"root",	"root",	"root",	"profs","profs","root",	"root",	"root","profs");

$stationsNbr = 0;

for($a = 0; $a < @rooms; $a++) {
	$stationsNbr = $stations[$a];
	
	print FILE "salle_".$rooms[$a]." ";

	for($b = 1; $b <= $stationsNbr; $b++) {
		print FILE $user[$a]."\@10.".$rooms[$a].".".$b.".1 ";
	}

	print FILE "\n";
}

close(FILE);

print STDOUT "Creation du fichier terminee !\n";
