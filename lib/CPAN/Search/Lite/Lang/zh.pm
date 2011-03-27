package CPAN::Search::Lite::Lang::zh;
use strict;
use warnings;
our $VERSION = 0.77;

use base qw(Exporter);
our (@EXPORT_OK, $chaps_desc, $pages, $dslip, $months);
@EXPORT_OK = qw($chaps_desc $pages $dslip $months);

$chaps_desc = {
        2 => q{Perl Core Modules},
        3 => q{Development Support},
        4 => q{Operating System Interfaces},
        5 => q{Networking Devices IPC},
        6 => q{Data Type Utilities},
        7 => q{Database Interfaces},
        8 => q{User Interfaces},
        9 => q{Language Interfaces},
        10 => q{File Names Systems Locking},
        11 => q{String Lang Text Proc},
        12 => q{Opt Arg Param Proc},
        13 => q{Internationalization Locale},
        14 => q{Security and Encryption},
        15 => q{World Wide Web HTML HTTP CGI},
        16 => q{Server and Daemon Utilities},
        17 => q{Archiving and Compression},
        18 => q{Images Pixmaps Bitmaps},
        19 => q{Mail and Usenet News},
        20 => q{Control Flow Utilities},
        21 => q{File Handle Input Output},
        22 => q{Microsoft Windows Modules},
        23 => q{Miscellaneous Modules},
        24 => q{Commercial Software Interfaces},
        26 => q{Documentation},
        27 => q{Pragma},
        28 => q{Perl6},
        99 => q{Not In Modulelist},
};

$dslip = {
    d => {
      M => q{Mature (no rigorous definition)},
      R => q{Released},
      S => q{Standard, supplied with Perl 5},
      a => q{Alpha testing},
      b => q{Beta testing},
      c => q{Under construction but pre-alpha (not yet released)},
      desc => q{Development Stage (Note: *NO IMPLIED TIMESCALES*)},
      i => q{Idea, listed to gain consensus or as a placeholder},
    },
    s => {
      a => q{Abandoned, the module has been abandoned by its author},
      d => q{Developer},
      desc => q{Support Level},
      m => q{Mailing-list},
      n => q{None known, try comp.lang.perl.modules},
      u => q{Usenet newsgroup comp.lang.perl.modules},
    },
    l => {
      '+' => q{C++ and perl, a C++ compiler will be needed},
      c => q{C and perl, a C compiler will be needed},
      desc => q{Language Used},
      h => q{Hybrid, written in perl with optional C code, no compiler needed},
      o => q{perl and another language other than C or C++},
      p => q{Perl-only, no compiler needed, should be platform independent},
    },
    i => {
      O => q{Object oriented using blessed references and/or inheritance},
      desc => q{Interface Style},
      f => q{plain Functions, no references used},
      h => q{hybrid, object and function interfaces available},
      n => q{no interface at all (huh?)},
      r => q{some use of unblessed References or ties},
    },
    p => {
      a => q{Artistic license alone},
      b => q{BSD: The BSD License},
      desc => q{Public License},
      g => q{GPL: GNU General Public License},
      l => q{LGPL: "GNU Lesser General Public License" (previously known as "GNU Library General Public License")},
      o => q{other (but distribution allowed without restrictions)},
      p => q{Standard-Perl: user may choose between GPL and Artistic},
    },
};

$pages = { title => 'Browse and search CPAN',
           list => { module => 'Modules',
                    dist => 'Distributions',
                    author => 'Authors',
                    chapter => 'Categories',
                  },
          buttons => {Home => 'Home',
                      Documentation => 'Documentation',
                      Recent => 'Recent',
                      Mirror => 'Mirror',
                      Modules => 'Modules',
                      Preferences => 'Preferences',
                      Distributions => 'Distributions',
                      Authors => 'Authors',
                  },
           form => {Find => 'Find',
                    in => 'in',
                    Search => 'Search',
                   },
           Language => 'Choice of language',
           Problems => 'Problems, suggestions, or comments to',
           Questions => 'Questions? Check the',
           na => 'not specified',
           bytes => 'bytes',
           download => 'Download',
           cpanid => 'CPAN id',
           name => 'Full name',
           email => 'email',
           results => 'results found',
           try => 'Try this query on',
           categories => 'Categories',
           category => 'Category',
           distribution => 'Distribution',
           author => 'Author',
           module => 'Module',
           version => 'Version',
           abstract => 'Abstract',
           released => 'Released',
           size => 'Size',
           cs => 'MD5 Checksum',
           additional => 'Additional Files',
           links => 'Links',
           info => 'information',
           prereqs => 'Prerequisites',
           packages => 'packages for',
           related => 'related',
           browse => 'Browse by',
           uploads => 'Uploads in the last',
           days => 'days',
           more => 'more',
           nada => 'No results found',
           error1 => 'Sorry - there was an error in your query for',
           error2 => 'of type',
           error3 => '',
           error4 => 'Sorry - an error was encountered.',
           error5 => << 'END',
The specific error has been recorded. If this occurred when
a regular expression search was being performed, you may
want to check the
<a 
href="http://www.mysql.com/documentation/mysql/bychapter/manual_Regexp.html#Regexp">
allowed syntax</a>. 
<p>
If you think this is a bug in the search tool, you can help
in tracking this down by sending a message to
END
           error6 => << 'END',
with details of what you were looking for when this happened. Thanks!
END
           missing1 => 'Sorry - no results for',
           missing2 => 'were found of type',
           missing3 => 'Please try another search term.',
           missing4 => 'Sorry - I could not understand what was asked for. Please try again.',
           mirror => 'CPAN mirrors',
           public => 'Public mirror',
           none => 'None -- Use custom URL',
           custom => 'Custom URL',
           default => 'The default link of',
           alt => 'or',
           install => 'install',
           mirror1 => << 'END',
您能使用這個表單來選擇您希望從哪裡下載。（需要使用 cookie）
您目前的設定是
END
           mirror2 => << 'END',
將會根據您的所在國家或地區，將您導向附近的 CPAN 鏡像站。
END
           webstart => <<'END',
若選擇這個選項，將會提供能讓您安裝 CPAN 模組及 Win32 ppm 套件的鍊結，使用軟體
END
};

$months = {
         '01' => '一月',
         '02' => '二月',
         '03' => '三月',
         '04' => '四月',
         '05' => '五月',
         '06' => '六月',
         '07' => '七月',
         '08' => '八月',
         '09' => '九月',
         '10' => '十月',
         '11' => '十一月',
         '12' => '十二月',
};

1;

__END__

=head1 NAME

CPAN::Search::Lite::Lang::zh - export some common data structures used by CPAN::Search::Lite::* for Chinese

=head1 SEE ALSO

L<CPAN::Search::Lite::Lang>

=cut

