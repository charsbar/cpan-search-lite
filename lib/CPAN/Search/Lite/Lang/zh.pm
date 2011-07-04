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
      M => q{成熟 (無嚴格定義)},
      R => q{已釋出},
      S => q{成為標準，內建於 Perl 5},
      a => q{Alpha 測試階段},
      b => q{Beta 測試階段},
      c => q{建構中, 但在 pre-alpha 階段（尚未釋出）},
      desc => q{開發階段 (Note: *NO IMPLIED TIMESCALES*)},
      i => q{構想，列出以增加一致性或是佔個位置},
    },
    s => {
      a => q{孤兒，這個模組已經被它的作者拋棄},
      d => q{開發者},
      desc => q{支援程度},
      m => q{郵件群組},
      n => q{未知，試試看 comp.lang.perl.modules},
      u => q{Usenet 新聞群組 comp.lang.perl.modules},
    },
    l => {
      '+' => q{C++ 及 perl，需要 C++ 編譯器},
      c => q{C 及 perl，需要 C 編譯器},
      desc => q{被使用到的程式語言},
      h => q{混和式的，使用 perl 和一些 C 的程式碼，不需要編譯器},
      o => q{perl 及除了 C 或 C++ 之外的語言},
      p => q{純 Perl-only，不需要編譯器，應該是跨平台},
    },
    i => {
      O => q{物件導向，使用 "bless" 過的指標及/或繼承},
      desc => q{介面風格},
      f => q{一般的函式，沒有使用指標},
      h => q{混和式的，物件及函式介面都有},
      n => q{完全沒有介面 (啥？)},
      r => q{些許使用沒有被 bless 過的指標或是 tie},
    },
    p => {
      a => q{Artistic license alone},
      b => q{BSD: The BSD License},
      desc => q{Public License},
      g => q{GPL: GNU General Public License},
      l => q{LGPL: "GNU Lesser General Public License" (以前叫做 "GNU Library General Public License")},
      o => q{其它 (但散佈未受到限制)},
      p => q{Standard-Perl: 使用者可以從 GPL 和 Artistic 中選擇},
    },
};

$pages = { title => '瀏覽及搜尋 CPAN',
           list => { module => '模組',
                    dist => '套件',
                    author => '作者',
                    chapter => '分類',
                  },
          buttons => {Home => 'Home',
                      Documentation => '文件',
                      Recent => '最近的',
                      Mirror => '鏡像',
                      Modules => '模組',
                      Preferences => '參考',
                      Distributions => '套件',
                      Authors => '作者',
                  },
           form => {Find => '尋找',
                    in => '於',
                    Search => '搜尋',
                   },
           Language => '語言選擇',
           Problems => '問題、建議、或是評論',
           Questions => '有問題嗎？請參考',
           na => '未指定',
           bytes => 'bytes',
           download => '下載',
           cpanid => 'CPAN id',
           name => '全名',
           email => 'email',
           results => '結果被找到',
           try => '嘗試這個查詢於',
           categories => '分類',
           category => '分類',
           distribution => '套件',
           author => '作者',
           module => '模組',
           version => '版本',
           abstract => 'Abstract',
           released => '已釋出',
           size => '大小',
           cs => 'MD5 Checksum',
           additional => '額外的檔案',
           links => '鍊結',
           info => '資訊',
           prereqs => 'Prerequisites',
           packages => 'packages for',
           related => '相關的',
           browse => 'Browse by',
           uploads => 'Uploads in the last',
           days => 'days',
           more => 'more',
           nada => '沒有找到結果',
           error1 => '抱歉 - 您的查詢中有問題於',
           error2 => 'of type',
           error3 => '',
           error4 => '抱歉 - 碰到了問題。',
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
           missing1 => '抱歉 - 針對您的搜尋並沒有找到結果',
           missing2 => '被找到，型態是',
           missing3 => '請嘗試其他的搜尋條件。',
           missing4 => '抱歉 - 我無法了解此要求。請重新嘗試。',
           mirror => 'CPAN 鏡像站',
           public => '公開的鏡像站',
           none => '無 -- 請使用自訂網址',
           custom => '自訂網址',
           default => '此預設鍊結是屬於',
           alt => '或者',
           install => '安裝',
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

