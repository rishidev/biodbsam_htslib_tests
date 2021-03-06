# Copyright [1999-2016] EMBL-European Bioinformatics Institute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

use strict;
use warnings;
use Bio::DB::HTS::Tabix;

my $test_file = 'http://vizhub.wustl.edu/hubSample/hg19/K562POL2.gz' ;
#my $test_file = 'http://www.ebi.ac.uk/~rishi/test_files/K562POL2.gz' ;

my $tbx = Bio::DB::HTS::Tabix->new( filename => $test_file, warnings => 0 );
my $h = $tbx->header ;
my @ha = $tbx->header_array ;
printf $ha[0] ;

$tbx->close;
