; ModuleID = 'parse.c'
source_filename = "parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"USAGE   :  %s [options] <infile> [outfile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\0A<infile> and/or <outfile> can be \22-\22, which means stdin/stdout.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Try \22%s --help\22 for more information\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"OPTIONS :\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"    -r              input is raw pcm\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"    -x              force byte-swapping of input\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"    -s sfreq        sampling frequency of input file(kHz) - default 44.1kHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"    --mp3input      input file is a MP3 file\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  Filter options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"    -k              keep ALL frequencies (disables all filters)\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  --lowpass freq         frequency(kHz), lowpass filter cutoff above freq\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"  --lowpass-width freq   frequency(kHz) - default 15%% of lowpass freq\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"  --highpass freq        frequency(kHz), highpass filter cutoff below freq\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"  --highpass-width freq  frequency(kHz) - default 15%% of highpass freq\0A\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"  --resample sfreq  sampling frequency of output file(kHz)- default=input sfreq\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"  --cwlimit freq    compute tonality up to freq (in kHz) default 8.8717\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"  Operational options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"    -m mode         (s)tereo, (j)oint, (f)orce or (m)ono  (default j)\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"                    force = force ms_stereo on all frames. Faster\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"    -a              downmix from stereo to mono file for mono encoding\0A\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"    -d              allow channels to have different blocktypes\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"    -S              don't print progress report, VBR histograms\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"    --athonly       only use the ATH for masking\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"    --noath         disable the ATH for masking\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"    --noshort       do not use short blocks\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"    --voice         experimental voice mode\0A\00", align 1
@.str.28 = private unnamed_addr constant [77 x i8] c"    --preset type   type must be phone, voice, fm, tape, hifi, cd or studio\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"                    help gives some more infos on these\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"  CBR (constant bitrate, the default) options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [72 x i8] c"    -h              higher quality, but a little slower.  Recommended.\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"    -f              fast mode (very low quality)\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"    -b bitrate      set the bitrate, default 128kbps\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"  VBR options:\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"    -v              use variable bitrate (VBR)\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"    -V n            quality setting for VBR.  default n=%i\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"                    0=high quality,bigger files. 9=smaller files\0A\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"    -b bitrate      specify minimum allowed bitrate, default 32kbs\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"    -B bitrate      specify maximum allowed bitrate, default 256kbs\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"    -t              disable Xing VBR informational tag\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"    --nohist        disable VBR histogram display\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"  MP3 header/stream options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"    -e emp          de-emphasis n/5/c  (obsolete)\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"    -c              mark as copyright\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"    -o              mark as non-original\0A\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"    -p              error protection.  adds 16bit checksum to every frame\0A\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"                    (the checksum is computed correctly)\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"    --nores         disable the bit reservoir\0A\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"  Specifying any of the following options will add an ID3 tag:\0A\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"     --tt \22title\22     title of song (max 30 chars)\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"     --ta \22artist\22    artist who did the song (max 30 chars)\0A\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"     --tl \22album\22     album where it came from (max 30 chars)\0A\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"     --ty \22year\22      year in which the song/album was made (max 4 chars)\0A\00", align 1
@.str.54 = private unnamed_addr constant [54 x i8] c"     --tc \22comment\22   additional info (max 30 chars)\0A\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"                      (or max 28 chars if using the \22track\22 option)\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"     --tn \22track\22     track number of the song on the CD (1 to 99)\0A\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"                      (using this option will add an ID3v1.1 tag)\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"     --tg \22genre\22     genre of song (name or number)\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"Presets are some shortcuts for common settings.\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"They can be combined with -v if you want VBR MP3s.\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"  --preset phone    =>  --resample      16\0A\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.260\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.040\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"                        --lowpass        3.700\0A\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"                        --lowpasswidth   0.300\0A\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"                        --noshort\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"                        -m   m\0A\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"                        -b  16\0A\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"                  plus  -b   8  \\\0A\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"                        -B  56   > in combination with -v\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"                        -V   5  /\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"  --preset voice:   =>  --resample      24\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.100\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.020\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"                        --lowpass       11\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   2\0A\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"                        -b  32\0A\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"                        -B  96   > in combination with -v\0A\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"                        -V   4  /\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"  --preset fm:      =>  --resample      32\0A\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.030\0A\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"                        --highpasswidth  0\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"                        --lowpass       11.4\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   0\0A\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"                        -m   j\0A\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"                        -b  96\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"                  plus  -b  32  \\\0A\00", align 1
@.str.88 = private unnamed_addr constant [59 x i8] c"                        -B 192   > in combination with -v\0A\00", align 1
@.str.89 = private unnamed_addr constant [44 x i8] c"  --preset tape:    =>  --lowpass       17\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.015\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.015\0A\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"                        -b 128\0A\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"  --preset hifi:    =>  --lowpass       20\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   3\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"                        -h\0A\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"                        -b 160\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"                        -B 224   > in combination with -v\0A\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"                        -V   3  /\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"  --preset cd:      =>  -k\0A\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"                        -m   s\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"                        -b 192\0A\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"                  plus  -b  80  \\\0A\00", align 1
@.str.103 = private unnamed_addr constant [59 x i8] c"                        -B 256   > in combination with -v\0A\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"                        -V   2  /\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"  --preset studio:  =>  -k\0A\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"                        -b 256\0A\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"                  plus  -b 112  \\\0A\00", align 1
@.str.108 = private unnamed_addr constant [59 x i8] c"                        -B 320   > in combination with -v\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"                        -V   0  /\0A\00", align 1
@inPath = dso_local global [300 x i8] zeroinitializer, align 16
@outPath = dso_local global [300 x i8] zeroinitializer, align 16
@id3tag = external global %struct.ID3TAGDATA, align 4
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"resample\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"Must specify a samplerate with --resample\0A\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"mp3input\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"noshort\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"noath\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"nores\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"athonly\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"nohist\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"tn\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"tg\00", align 1
@genre_last = external local_unnamed_addr global i32, align 4
@genre_list = external local_unnamed_addr global [0 x ptr], align 8
@.str.127 = private unnamed_addr constant [44 x i8] c"Unknown genre: %s.  Specifiy genre number \0A\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"lowpass\00", align 1
@.str.129 = private unnamed_addr constant [61 x i8] c"Must specify lowpass with --lowpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"lowpass-width\00", align 1
@.str.131 = private unnamed_addr constant [69 x i8] c"Must specify lowpass width with --lowpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"highpass\00", align 1
@.str.133 = private unnamed_addr constant [63 x i8] c"Must specify highpass with --highpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"highpass-width\00", align 1
@.str.135 = private unnamed_addr constant [71 x i8] c"Must specify highpass width with --highpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"cwlimit\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"Must specify cwlimit in kHz\0A\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"hifi\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"studio\00", align 1
@.str.147 = private unnamed_addr constant [84 x i8] c"%s: --preset type, type must be phone, voice, fm, tape, hifi, cd or studio, not %s\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"%s: unrec option --%s\0A\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"%s: -m mode must be s/d/j/f/m not %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"%s: -X n must be 0-6, not %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [55 x i8] c"LAME not compiled with GTK support, -g not supported.\0A\00", align 1
@.str.152 = private unnamed_addr constant [33 x i8] c"%s: -e emp must be n/5/c not %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"%s: unrec option %c\0A\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"%s: excess arg %s\0A\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"id3tag ignored: id3 tagging not supported for stdout.\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @lame_usage(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %3) #13
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %1) #14
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %8) #14
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %1) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

declare void @lame_print_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local void @lame_help(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %3) #13
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %1)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %12)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %14)
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 37, i64 1, ptr %16)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %18)
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %21 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 76, i64 1, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !5
  %23 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %25 = tail call i32 @fputc(i32 10, ptr %24)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 18, i64 1, ptr %26)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 64, i64 1, ptr %28)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 74, i64 1, ptr %30)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !5
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.13)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 75, i64 1, ptr %34)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.15)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 80, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 72, i64 1, ptr %40)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !5
  %43 = tail call i32 @fputc(i32 10, ptr %42)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %44)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 70, i64 1, ptr %46)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 66, i64 1, ptr %48)
  %50 = load ptr, ptr @stdout, align 8, !tbaa !5
  %51 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 71, i64 1, ptr %50)
  %52 = load ptr, ptr @stdout, align 8, !tbaa !5
  %53 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 64, i64 1, ptr %52)
  %54 = load ptr, ptr @stdout, align 8, !tbaa !5
  %55 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 64, i64 1, ptr %54)
  %56 = load ptr, ptr @stdout, align 8, !tbaa !5
  %57 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 49, i64 1, ptr %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !5
  %59 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 48, i64 1, ptr %58)
  %60 = load ptr, ptr @stdout, align 8, !tbaa !5
  %61 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 44, i64 1, ptr %60)
  %62 = load ptr, ptr @stdout, align 8, !tbaa !5
  %63 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 44, i64 1, ptr %62)
  %64 = load ptr, ptr @stdout, align 8, !tbaa !5
  %65 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 76, i64 1, ptr %64)
  %66 = load ptr, ptr @stdout, align 8, !tbaa !5
  %67 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 56, i64 1, ptr %66)
  %68 = load ptr, ptr @stdout, align 8, !tbaa !5
  %69 = tail call i32 @fputc(i32 10, ptr %68)
  %70 = load ptr, ptr @stdout, align 8, !tbaa !5
  %71 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 47, i64 1, ptr %70)
  %72 = load ptr, ptr @stdout, align 8, !tbaa !5
  %73 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 71, i64 1, ptr %72)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 49, i64 1, ptr %74)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !5
  %77 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 53, i64 1, ptr %76)
  %78 = load ptr, ptr @stdout, align 8, !tbaa !5
  %79 = tail call i32 @fputc(i32 10, ptr %78)
  %80 = load ptr, ptr @stdout, align 8, !tbaa !5
  %81 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 15, i64 1, ptr %80)
  %82 = load ptr, ptr @stdout, align 8, !tbaa !5
  %83 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %86 = load i32, ptr %85, align 4, !tbaa !9
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.36, i32 noundef %86)
  %88 = load ptr, ptr @stdout, align 8, !tbaa !5
  %89 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 65, i64 1, ptr %88)
  %90 = load ptr, ptr @stdout, align 8, !tbaa !5
  %91 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 67, i64 1, ptr %90)
  %92 = load ptr, ptr @stdout, align 8, !tbaa !5
  %93 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 68, i64 1, ptr %92)
  %94 = load ptr, ptr @stdout, align 8, !tbaa !5
  %95 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 55, i64 1, ptr %94)
  %96 = load ptr, ptr @stdout, align 8, !tbaa !5
  %97 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 50, i64 1, ptr %96)
  %98 = load ptr, ptr @stdout, align 8, !tbaa !5
  %99 = tail call i32 @fputc(i32 10, ptr %98)
  %100 = load ptr, ptr @stdout, align 8, !tbaa !5
  %101 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 29, i64 1, ptr %100)
  %102 = load ptr, ptr @stdout, align 8, !tbaa !5
  %103 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 50, i64 1, ptr %102)
  %104 = load ptr, ptr @stdout, align 8, !tbaa !5
  %105 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr %104)
  %106 = load ptr, ptr @stdout, align 8, !tbaa !5
  %107 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 41, i64 1, ptr %106)
  %108 = load ptr, ptr @stdout, align 8, !tbaa !5
  %109 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 74, i64 1, ptr %108)
  %110 = load ptr, ptr @stdout, align 8, !tbaa !5
  %111 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 57, i64 1, ptr %110)
  %112 = load ptr, ptr @stdout, align 8, !tbaa !5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 46, i64 1, ptr %112)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = tail call i32 @fputc(i32 10, ptr %114)
  %116 = load ptr, ptr @stdout, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 63, i64 1, ptr %116)
  %118 = load ptr, ptr @stdout, align 8, !tbaa !5
  %119 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 51, i64 1, ptr %118)
  %120 = load ptr, ptr @stdout, align 8, !tbaa !5
  %121 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 61, i64 1, ptr %120)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !5
  %123 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 62, i64 1, ptr %122)
  %124 = load ptr, ptr @stdout, align 8, !tbaa !5
  %125 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 74, i64 1, ptr %124)
  %126 = load ptr, ptr @stdout, align 8, !tbaa !5
  %127 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 53, i64 1, ptr %126)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !5
  %129 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 68, i64 1, ptr %128)
  %130 = load ptr, ptr @stdout, align 8, !tbaa !5
  %131 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 67, i64 1, ptr %130)
  %132 = load ptr, ptr @stdout, align 8, !tbaa !5
  %133 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 66, i64 1, ptr %132)
  %134 = load ptr, ptr @stdout, align 8, !tbaa !5
  %135 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 53, i64 1, ptr %134)
  %136 = load ptr, ptr @stdout, align 8, !tbaa !5
  %137 = tail call i32 @fputc(i32 10, ptr %136)
  %138 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @display_bitrates(ptr noundef %138) #13
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

declare void @display_bitrates(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @lame_presets_info(ptr nocapture readnone %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %3) #13
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 48, i64 1, ptr %6)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 51, i64 1, ptr %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 43, i64 1, ptr %12)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 47, i64 1, ptr %14)
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 47, i64 1, ptr %16)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 47, i64 1, ptr %18)
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %21 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 47, i64 1, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !5
  %23 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %25 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 31, i64 1, ptr %24)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 31, i64 1, ptr %26)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr %28)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 58, i64 1, ptr %30)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !5
  %33 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 34, i64 1, ptr %32)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = tail call i32 @fputc(i32 10, ptr %34)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 43, i64 1, ptr %36)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 47, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 47, i64 1, ptr %40)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 43, i64 1, ptr %42)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 43, i64 1, ptr %44)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr %46)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 31, i64 1, ptr %48)
  %50 = load ptr, ptr @stdout, align 8, !tbaa !5
  %51 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 31, i64 1, ptr %50)
  %52 = load ptr, ptr @stdout, align 8, !tbaa !5
  %53 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr %52)
  %54 = load ptr, ptr @stdout, align 8, !tbaa !5
  %55 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 58, i64 1, ptr %54)
  %56 = load ptr, ptr @stdout, align 8, !tbaa !5
  %57 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %56)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !5
  %59 = tail call i32 @fputc(i32 10, ptr %58)
  %60 = load ptr, ptr @stdout, align 8, !tbaa !5
  %61 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 43, i64 1, ptr %60)
  %62 = load ptr, ptr @stdout, align 8, !tbaa !5
  %63 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 47, i64 1, ptr %62)
  %64 = load ptr, ptr @stdout, align 8, !tbaa !5
  %65 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 43, i64 1, ptr %64)
  %66 = load ptr, ptr @stdout, align 8, !tbaa !5
  %67 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 45, i64 1, ptr %66)
  %68 = load ptr, ptr @stdout, align 8, !tbaa !5
  %69 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 43, i64 1, ptr %68)
  %70 = load ptr, ptr @stdout, align 8, !tbaa !5
  %71 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %70)
  %72 = load ptr, ptr @stdout, align 8, !tbaa !5
  %73 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 31, i64 1, ptr %72)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !5
  %75 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %74)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !5
  %77 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 58, i64 1, ptr %76)
  %78 = load ptr, ptr @stdout, align 8, !tbaa !5
  %79 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %78)
  %80 = load ptr, ptr @stdout, align 8, !tbaa !5
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  %82 = load ptr, ptr @stdout, align 8, !tbaa !5
  %83 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 43, i64 1, ptr %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !5
  %85 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 43, i64 1, ptr %84)
  %86 = load ptr, ptr @stdout, align 8, !tbaa !5
  %87 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 47, i64 1, ptr %86)
  %88 = load ptr, ptr @stdout, align 8, !tbaa !5
  %89 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 47, i64 1, ptr %88)
  %90 = load ptr, ptr @stdout, align 8, !tbaa !5
  %91 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %90)
  %92 = load ptr, ptr @stdout, align 8, !tbaa !5
  %93 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 31, i64 1, ptr %92)
  %94 = load ptr, ptr @stdout, align 8, !tbaa !5
  %95 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %94)
  %96 = load ptr, ptr @stdout, align 8, !tbaa !5
  %97 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 58, i64 1, ptr %96)
  %98 = load ptr, ptr @stdout, align 8, !tbaa !5
  %99 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 34, i64 1, ptr %98)
  %100 = load ptr, ptr @stdout, align 8, !tbaa !5
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  %102 = load ptr, ptr @stdout, align 8, !tbaa !5
  %103 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 43, i64 1, ptr %102)
  %104 = load ptr, ptr @stdout, align 8, !tbaa !5
  %105 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 43, i64 1, ptr %104)
  %106 = load ptr, ptr @stdout, align 8, !tbaa !5
  %107 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 47, i64 1, ptr %106)
  %108 = load ptr, ptr @stdout, align 8, !tbaa !5
  %109 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 47, i64 1, ptr %108)
  %110 = load ptr, ptr @stdout, align 8, !tbaa !5
  %111 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %110)
  %112 = load ptr, ptr @stdout, align 8, !tbaa !5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 31, i64 1, ptr %112)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 31, i64 1, ptr %114)
  %116 = load ptr, ptr @stdout, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 34, i64 1, ptr %116)
  %118 = load ptr, ptr @stdout, align 8, !tbaa !5
  %119 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 58, i64 1, ptr %118)
  %120 = load ptr, ptr @stdout, align 8, !tbaa !5
  %121 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 34, i64 1, ptr %120)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !5
  %123 = tail call i32 @fputc(i32 10, ptr %122)
  %124 = load ptr, ptr @stdout, align 8, !tbaa !5
  %125 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 27, i64 1, ptr %124)
  %126 = load ptr, ptr @stdout, align 8, !tbaa !5
  %127 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %126)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !5
  %129 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 31, i64 1, ptr %128)
  %130 = load ptr, ptr @stdout, align 8, !tbaa !5
  %131 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 31, i64 1, ptr %130)
  %132 = load ptr, ptr @stdout, align 8, !tbaa !5
  %133 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 34, i64 1, ptr %132)
  %134 = load ptr, ptr @stdout, align 8, !tbaa !5
  %135 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 58, i64 1, ptr %134)
  %136 = load ptr, ptr @stdout, align 8, !tbaa !5
  %137 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 34, i64 1, ptr %136)
  %138 = load ptr, ptr @stdout, align 8, !tbaa !5
  %139 = tail call i32 @fputc(i32 10, ptr %138)
  %140 = load ptr, ptr @stdout, align 8, !tbaa !5
  %141 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 27, i64 1, ptr %140)
  %142 = load ptr, ptr @stdout, align 8, !tbaa !5
  %143 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr %142)
  %144 = load ptr, ptr @stdout, align 8, !tbaa !5
  %145 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 31, i64 1, ptr %144)
  %146 = load ptr, ptr @stdout, align 8, !tbaa !5
  %147 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 31, i64 1, ptr %146)
  %148 = load ptr, ptr @stdout, align 8, !tbaa !5
  %149 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 34, i64 1, ptr %148)
  %150 = load ptr, ptr @stdout, align 8, !tbaa !5
  %151 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 58, i64 1, ptr %150)
  %152 = load ptr, ptr @stdout, align 8, !tbaa !5
  %153 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 34, i64 1, ptr %152)
  %154 = load ptr, ptr @stdout, align 8, !tbaa !5
  %155 = tail call i32 @fputc(i32 10, ptr %154)
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @lame_parse_args(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !5
  store i8 0, ptr @inPath, align 16, !tbaa !14
  store i8 0, ptr @outPath, align 16, !tbaa !14
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 31
  store ptr @inPath, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 32
  store ptr @outPath, ptr %7, align 8, !tbaa !16
  tail call void @id3_inittag(ptr noundef nonnull @id3tag) #13
  store i32 0, ptr @id3tag, align 4, !tbaa !17
  %8 = icmp sgt i32 %1, 1
  br i1 %8, label %9, label %521

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 38
  %13 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 38
  %14 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 38
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 20
  %17 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 19
  %18 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 18
  %19 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 36
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %23 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %24 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %27 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 14
  %28 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 30
  %29 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %30 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  %31 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %32 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %34 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 2
  %35 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %36 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %37 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %38 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %39 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %40 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 10
  %41 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %42 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %43 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %44 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %45 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %46 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %47 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %48 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %49 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %50 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %51 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %53 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %54 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %55 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %56 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %57 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %58 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %59 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %60 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %61 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %62 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %63 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %64 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %65 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %66 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %67 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %68 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %69 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %70 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %71 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %72 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %73 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %74 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %75 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %76 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %77 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %78 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %79 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %80 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %81 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %82 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %83 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %85 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %86 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %87 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %88 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %89 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %90 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %91 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %92 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %93 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %94 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %95 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %96 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %97 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %98 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %99 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %100 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %101 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %102 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %103 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  %104 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %105 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %106 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %107 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %108 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %109 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %110 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %111 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %112 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %113 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %114 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %115 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %116 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  %117 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %118 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %119 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %120 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %121 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 35
  %122 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %123 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %124 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %125 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %126 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 33
  %127 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 17
  %128 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  %129 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 34
  %130 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  %131 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %132 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %133 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  %134 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %135 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  br label %136

136:                                              ; preds = %9, %509
  %137 = phi i32 [ 1, %9 ], [ %514, %509 ]
  %138 = phi i32 [ 0, %9 ], [ %513, %509 ]
  %139 = phi i32 [ 0, %9 ], [ %512, %509 ]
  %140 = phi i32 [ 0, %9 ], [ %511, %509 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %141 = sext i32 %137 to i64
  %142 = getelementptr inbounds ptr, ptr %2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %144, ptr %4, align 8, !tbaa !5
  %145 = load i8, ptr %143, align 1, !tbaa !14
  %146 = icmp eq i8 %145, 45
  br i1 %146, label %147, label %490

147:                                              ; preds = %136
  %148 = add nsw i32 %140, 2
  %149 = icmp slt i32 %148, %1
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds ptr, ptr %2, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %147, %150
  %155 = phi ptr [ %153, %150 ], [ @.str.110, %147 ]
  %156 = load i8, ptr %144, align 1, !tbaa !14
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i8, ptr @inPath, align 16, !tbaa !14
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i8, ptr @outPath, align 16, !tbaa !14
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %158
  %165 = phi ptr [ @inPath, %158 ], [ @outPath, %161 ]
  %166 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %143, i64 noundef 300) #13
  br label %167

167:                                              ; preds = %164, %161, %154
  %168 = load i8, ptr %144, align 1, !tbaa !14
  %169 = icmp eq i8 %168, 45
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %4, align 8, !tbaa !5
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  %173 = load i8, ptr %171, align 1, !tbaa !14
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %503, label %390

175:                                              ; preds = %167
  %176 = getelementptr inbounds i8, ptr %143, i64 2
  store ptr %176, ptr %4, align 8, !tbaa !5
  %177 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(9) @.str.111) #16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %181 = fptrunc double %180 to float
  %182 = fpext float %181 to double
  %183 = tail call double @llvm.fmuladd.f64(double %182, double 1.000000e+03, double 5.000000e-01)
  %184 = fptosi double %183 to i32
  store i32 %184, ptr %135, align 8, !tbaa !19
  %185 = fcmp olt float %181, 1.000000e+00
  br i1 %185, label %186, label %387

186:                                              ; preds = %179
  %187 = load ptr, ptr @stderr, align 8, !tbaa !5
  %188 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 42, i64 1, ptr %187) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

189:                                              ; preds = %175
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(9) @.str.113) #16
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 3, ptr %134, align 8, !tbaa !20
  br label %387

193:                                              ; preds = %189
  %194 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(6) @.str.114) #16
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 12000, ptr %131, align 8, !tbaa !21
  store i32 160, ptr %132, align 4, !tbaa !22
  store i32 1, ptr %133, align 8, !tbaa !23
  br label %387

197:                                              ; preds = %193
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(8) @.str.115) #16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 1, ptr %130, align 8, !tbaa !23
  br label %387

201:                                              ; preds = %197
  %202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(6) @.str.116) #16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 1, ptr %129, align 4, !tbaa !24
  br label %387

205:                                              ; preds = %201
  %206 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(6) @.str.117) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 1, ptr %127, align 8, !tbaa !25
  store i32 0, ptr %128, align 4, !tbaa !26
  br label %387

209:                                              ; preds = %205
  %210 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(8) @.str.118) #16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 1, ptr %126, align 8, !tbaa !27
  br label %387

213:                                              ; preds = %209
  %214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(7) @.str.119) #16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %387, label %216

216:                                              ; preds = %213
  %217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.120) #16
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %220 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %155, i64 noundef 30) #13
  br label %387

221:                                              ; preds = %216
  %222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.121) #16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %225 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 3), ptr noundef nonnull dereferenceable(1) %155, i64 noundef 30) #13
  br label %387

226:                                              ; preds = %221
  %227 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.122) #16
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %230 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 4), ptr noundef nonnull dereferenceable(1) %155, i64 noundef 30) #13
  br label %387

231:                                              ; preds = %226
  %232 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.123) #16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %235 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 5), ptr noundef nonnull dereferenceable(1) %155, i64 noundef 4) #13
  br label %387

236:                                              ; preds = %231
  %237 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.124) #16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %240 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 6), ptr noundef nonnull dereferenceable(1) %155, i64 noundef 30) #13
  br label %387

241:                                              ; preds = %236
  %242 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.125) #16
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  %245 = tail call i64 @strtol(ptr nocapture noundef nonnull %155, ptr noundef null, i32 noundef 10) #13
  %246 = trunc i64 %245 to i32
  %247 = tail call i32 @llvm.smax.i32(i32 %246, i32 1)
  %248 = tail call i32 @llvm.umin.i32(i32 %247, i32 99)
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 9), align 2, !tbaa !28
  br label %387

250:                                              ; preds = %241
  %251 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(3) @.str.126) #16
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %250
  %254 = call i64 @strtol(ptr noundef %155, ptr noundef nonnull %4, i32 noundef 10) #13
  %255 = trunc i64 %254 to i32
  %256 = load ptr, ptr %4, align 8, !tbaa !5
  %257 = icmp eq ptr %155, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %253
  %259 = load i32, ptr @genre_last, align 4, !tbaa !29
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %258
  %262 = add nuw i32 %259, 1
  %263 = zext i32 %262 to i64
  br label %264

264:                                              ; preds = %261, %270
  %265 = phi i64 [ 0, %261 ], [ %271, %270 ]
  %266 = getelementptr inbounds [0 x ptr], ptr @genre_list, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  %268 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %267, ptr noundef nonnull dereferenceable(1) %155) #16
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %264
  %271 = add nuw nsw i64 %265, 1
  %272 = icmp eq i64 %271, %263
  br i1 %272, label %275, label %264, !llvm.loop !30

273:                                              ; preds = %264
  %274 = trunc i64 %265 to i32
  br label %275

275:                                              ; preds = %273, %270, %258, %253
  %276 = phi i32 [ %255, %253 ], [ 0, %258 ], [ %274, %273 ], [ %262, %270 ]
  %277 = load i32, ptr @genre_last, align 4, !tbaa !29
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load ptr, ptr @stderr, align 8, !tbaa !5
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.127, ptr noundef %155) #14
  br label %282

282:                                              ; preds = %279, %275
  %283 = phi i32 [ 255, %279 ], [ %276, %275 ]
  %284 = trunc i32 %283 to i8
  store i32 1, ptr @id3tag, align 4, !tbaa !17
  store i8 %284, ptr getelementptr inbounds (%struct.ID3TAGDATA, ptr @id3tag, i64 0, i32 8), align 1
  br label %387

285:                                              ; preds = %250
  %286 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(8) @.str.128) #16
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %290 = tail call double @llvm.fmuladd.f64(double %289, double 1.000000e+03, double 5.000000e-01)
  %291 = fptosi double %290 to i32
  store i32 %291, ptr %125, align 8, !tbaa !21
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %293, label %387

293:                                              ; preds = %288
  %294 = load ptr, ptr @stderr, align 8, !tbaa !5
  %295 = tail call i64 @fwrite(ptr nonnull @.str.129, i64 60, i64 1, ptr %294) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

296:                                              ; preds = %285
  %297 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(14) @.str.130) #16
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %301 = tail call double @llvm.fmuladd.f64(double %300, double 1.000000e+03, double 5.000000e-01)
  %302 = fptosi double %301 to i32
  store i32 %302, ptr %124, align 8, !tbaa !32
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %387

304:                                              ; preds = %299
  %305 = load ptr, ptr @stderr, align 8, !tbaa !5
  %306 = tail call i64 @fwrite(ptr nonnull @.str.131, i64 68, i64 1, ptr %305) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

307:                                              ; preds = %296
  %308 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(9) @.str.132) #16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %307
  %311 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %312 = tail call double @llvm.fmuladd.f64(double %311, double 1.000000e+03, double 5.000000e-01)
  %313 = fptosi double %312 to i32
  store i32 %313, ptr %123, align 4, !tbaa !33
  %314 = icmp slt i32 %313, 1
  br i1 %314, label %315, label %387

315:                                              ; preds = %310
  %316 = load ptr, ptr @stderr, align 8, !tbaa !5
  %317 = tail call i64 @fwrite(ptr nonnull @.str.133, i64 62, i64 1, ptr %316) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

318:                                              ; preds = %307
  %319 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(15) @.str.134) #16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %323 = tail call double @llvm.fmuladd.f64(double %322, double 1.000000e+03, double 5.000000e-01)
  %324 = fptosi double %323 to i32
  store i32 %324, ptr %122, align 4, !tbaa !34
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %387

326:                                              ; preds = %321
  %327 = load ptr, ptr @stderr, align 8, !tbaa !5
  %328 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 70, i64 1, ptr %327) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

329:                                              ; preds = %318
  %330 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(8) @.str.136) #16
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %329
  %333 = tail call double @strtod(ptr nocapture noundef nonnull %155, ptr noundef null) #13
  %334 = fptrunc double %333 to float
  store float %334, ptr %121, align 8, !tbaa !35
  %335 = fcmp ugt float %334, 0.000000e+00
  br i1 %335, label %387, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr @stderr, align 8, !tbaa !5
  %338 = tail call i64 @fwrite(ptr nonnull @.str.137, i64 28, i64 1, ptr %337) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

339:                                              ; preds = %329
  %340 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(5) @.str.138) #16
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(6) @.str.139) #16
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342, %339
  tail call void @lame_help(ptr noundef %0, ptr noundef %5)
  unreachable

346:                                              ; preds = %342
  %347 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(7) @.str.140) #16
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %384

349:                                              ; preds = %346
  %350 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(6) @.str.141) #16
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i32 16, ptr %108, align 8, !tbaa !36
  store i32 260, ptr %109, align 4, !tbaa !33
  store i32 40, ptr %110, align 4, !tbaa !34
  store i32 3700, ptr %111, align 8, !tbaa !21
  store i32 300, ptr %112, align 8, !tbaa !32
  store i32 5, ptr %113, align 4, !tbaa !9
  store i32 8, ptr %114, align 8, !tbaa !37
  store i32 56, ptr %115, align 4, !tbaa !22
  store i32 1, ptr %116, align 8, !tbaa !23
  store i32 16000, ptr %117, align 8, !tbaa !19
  store i32 3, ptr %118, align 4, !tbaa !38
  store i32 1, ptr %119, align 8, !tbaa !39
  store i32 5, ptr %120, align 4, !tbaa !40
  br label %387

353:                                              ; preds = %349
  %354 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(6) @.str.114) #16
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  store i32 56, ptr %95, align 8, !tbaa !36
  store i32 100, ptr %96, align 4, !tbaa !33
  store i32 20, ptr %97, align 4, !tbaa !34
  store i32 2000, ptr %98, align 8, !tbaa !32
  store i32 11000, ptr %99, align 8, !tbaa !21
  store i32 4, ptr %100, align 4, !tbaa !9
  store i32 8, ptr %101, align 8, !tbaa !37
  store i32 96, ptr %102, align 4, !tbaa !22
  store i32 1, ptr %103, align 8, !tbaa !23
  store i32 3, ptr %104, align 4, !tbaa !38
  store i32 1, ptr %105, align 8, !tbaa !39
  store i32 24000, ptr %106, align 8, !tbaa !19
  store i32 5, ptr %107, align 4, !tbaa !40
  br label %387

357:                                              ; preds = %353
  %358 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(3) @.str.142) #16
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  store i32 96, ptr %84, align 8, !tbaa !36
  store i32 30, ptr %85, align 4, !tbaa !33
  store i32 0, ptr %86, align 4, !tbaa !34
  store i32 15000, ptr %87, align 8, !tbaa !21
  store i32 0, ptr %88, align 8, !tbaa !32
  store i32 4, ptr %89, align 4, !tbaa !9
  store i32 32, ptr %90, align 8, !tbaa !37
  store i32 192, ptr %91, align 4, !tbaa !22
  store i32 1, ptr %92, align 4, !tbaa !38
  store i32 1, ptr %93, align 8, !tbaa !39
  store i32 5, ptr %94, align 4, !tbaa !40
  br label %387

361:                                              ; preds = %357
  %362 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(5) @.str.143) #16
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  store i32 128, ptr %73, align 8, !tbaa !36
  store i32 15, ptr %74, align 4, !tbaa !33
  store i32 15, ptr %75, align 4, !tbaa !34
  store i32 17000, ptr %76, align 8, !tbaa !21
  store i32 2000, ptr %77, align 8, !tbaa !32
  store i32 4, ptr %78, align 4, !tbaa !9
  store i32 32, ptr %79, align 8, !tbaa !37
  store i32 192, ptr %80, align 4, !tbaa !22
  store i32 1, ptr %81, align 4, !tbaa !38
  store i32 1, ptr %82, align 8, !tbaa !39
  store i32 5, ptr %83, align 4, !tbaa !40
  br label %387

365:                                              ; preds = %361
  %366 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(5) @.str.144) #16
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  store i32 160, ptr %62, align 8, !tbaa !36
  store i32 15, ptr %63, align 4, !tbaa !33
  store i32 15, ptr %64, align 4, !tbaa !34
  store i32 20000, ptr %65, align 8, !tbaa !21
  store i32 3000, ptr %66, align 8, !tbaa !32
  store i32 3, ptr %67, align 4, !tbaa !9
  store i32 32, ptr %68, align 8, !tbaa !37
  store i32 224, ptr %69, align 4, !tbaa !22
  store i32 1, ptr %70, align 4, !tbaa !38
  store i32 1, ptr %71, align 8, !tbaa !39
  store i32 2, ptr %72, align 4, !tbaa !40
  br label %387

369:                                              ; preds = %365
  %370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(3) @.str.145) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  store i32 192, ptr %53, align 8, !tbaa !36
  store i32 -1, ptr %54, align 8, !tbaa !21
  store i32 -1, ptr %55, align 4, !tbaa !33
  store i32 2, ptr %56, align 4, !tbaa !9
  store i32 80, ptr %57, align 8, !tbaa !37
  store i32 256, ptr %58, align 4, !tbaa !22
  store i32 0, ptr %59, align 4, !tbaa !38
  store i32 1, ptr %60, align 8, !tbaa !39
  store i32 2, ptr %61, align 4, !tbaa !40
  br label %387

373:                                              ; preds = %369
  %374 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(7) @.str.146) #16
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  store i32 256, ptr %44, align 8, !tbaa !36
  store i32 -1, ptr %45, align 8, !tbaa !21
  store i32 -1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %47, align 4, !tbaa !9
  store i32 112, ptr %48, align 8, !tbaa !37
  store i32 320, ptr %49, align 4, !tbaa !22
  store i32 0, ptr %50, align 4, !tbaa !38
  store i32 1, ptr %51, align 8, !tbaa !39
  store i32 2, ptr %52, align 4, !tbaa !40
  br label %387

377:                                              ; preds = %373
  %378 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(5) @.str.138) #16
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %377
  tail call void @lame_presets_info(ptr poison, ptr poison)
  unreachable

381:                                              ; preds = %377
  %382 = load ptr, ptr @stderr, align 8, !tbaa !5
  %383 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %382, ptr noundef nonnull @.str.147, ptr noundef %5, ptr noundef %155) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

384:                                              ; preds = %346
  %385 = load ptr, ptr @stderr, align 8, !tbaa !5
  %386 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %385, ptr noundef nonnull @.str.148, ptr noundef %5, ptr noundef nonnull %176) #14
  br label %387

387:                                              ; preds = %192, %200, %208, %213, %224, %234, %244, %288, %310, %332, %384, %356, %364, %372, %376, %368, %360, %352, %321, %299, %282, %239, %229, %219, %212, %204, %196, %179
  %388 = phi i32 [ 1, %179 ], [ 0, %192 ], [ 0, %196 ], [ 0, %200 ], [ 0, %204 ], [ 0, %208 ], [ 0, %212 ], [ 0, %213 ], [ 1, %219 ], [ 1, %224 ], [ 1, %229 ], [ 1, %234 ], [ 1, %239 ], [ 1, %244 ], [ 1, %282 ], [ 1, %288 ], [ 1, %299 ], [ 1, %310 ], [ 1, %321 ], [ 1, %332 ], [ 1, %352 ], [ 1, %356 ], [ 1, %360 ], [ 1, %364 ], [ 1, %368 ], [ 1, %372 ], [ 1, %376 ], [ 0, %384 ]
  %389 = add nsw i32 %388, %137
  br label %509

390:                                              ; preds = %170, %475
  %391 = phi i8 [ %488, %475 ], [ %173, %170 ]
  %392 = phi ptr [ %487, %475 ], [ %172, %170 ]
  %393 = phi i32 [ %478, %475 ], [ %138, %170 ]
  %394 = phi i32 [ %477, %475 ], [ %139, %170 ]
  %395 = phi i32 [ %486, %475 ], [ %137, %170 ]
  %396 = phi i32 [ %476, %475 ], [ 0, %170 ]
  %397 = load i8, ptr %392, align 1, !tbaa !14
  %398 = icmp eq i8 %397, 0
  %399 = select i1 %398, ptr %155, ptr %392
  switch i8 %391, label %471 [
    i8 109, label %400
    i8 86, label %410
    i8 113, label %415
    i8 115, label %420
    i8 98, label %426
    i8 66, label %429
    i8 116, label %432
    i8 114, label %433
    i8 120, label %434
    i8 112, label %435
    i8 97, label %436
    i8 104, label %437
    i8 107, label %438
    i8 100, label %439
    i8 118, label %440
    i8 83, label %441
    i8 88, label %442
    i8 89, label %454
    i8 90, label %455
    i8 102, label %456
    i8 103, label %457
    i8 101, label %460
    i8 99, label %468
    i8 111, label %469
    i8 63, label %470
  ]

400:                                              ; preds = %390
  store i32 1, ptr %37, align 8, !tbaa !39
  %401 = load i8, ptr %399, align 1, !tbaa !14
  switch i8 %401, label %407 [
    i8 115, label %402
    i8 100, label %403
    i8 106, label %404
    i8 102, label %405
    i8 109, label %406
  ]

402:                                              ; preds = %400
  store i32 0, ptr %43, align 4, !tbaa !38
  br label %475

403:                                              ; preds = %400
  store i32 2, ptr %42, align 4, !tbaa !38
  br label %475

404:                                              ; preds = %400
  store i32 1, ptr %41, align 4, !tbaa !38
  br label %475

405:                                              ; preds = %400
  store i32 1, ptr %39, align 4, !tbaa !38
  store i32 1, ptr %40, align 4, !tbaa !41
  br label %475

406:                                              ; preds = %400
  store i32 3, ptr %38, align 4, !tbaa !38
  br label %475

407:                                              ; preds = %400
  %408 = load ptr, ptr @stderr, align 8, !tbaa !5
  %409 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %408, ptr noundef nonnull @.str.149, ptr noundef %5, ptr noundef nonnull %399) #14
  br label %475

410:                                              ; preds = %390
  store i32 1, ptr %35, align 8, !tbaa !42
  %411 = tail call i64 @strtol(ptr nocapture noundef nonnull %399, ptr noundef null, i32 noundef 10) #13
  %412 = trunc i64 %411 to i32
  %413 = tail call i32 @llvm.smax.i32(i32 %412, i32 0)
  %414 = tail call i32 @llvm.umin.i32(i32 %413, i32 9)
  store i32 %414, ptr %36, align 4
  br label %475

415:                                              ; preds = %390
  %416 = tail call i64 @strtol(ptr nocapture noundef nonnull %399, ptr noundef null, i32 noundef 10) #13
  %417 = trunc i64 %416 to i32
  %418 = tail call i32 @llvm.smax.i32(i32 %417, i32 0)
  %419 = tail call i32 @llvm.umin.i32(i32 %418, i32 9)
  br label %475

420:                                              ; preds = %390
  %421 = tail call double @strtod(ptr nocapture noundef nonnull %399, ptr noundef null) #13
  %422 = fptrunc double %421 to float
  %423 = fpext float %422 to double
  %424 = tail call double @llvm.fmuladd.f64(double %423, double 1.000000e+03, double 5.000000e-01)
  %425 = fptosi double %424 to i32
  store i32 %425, ptr %34, align 4, !tbaa !43
  br label %475

426:                                              ; preds = %390
  %427 = tail call i64 @strtol(ptr nocapture noundef nonnull %399, ptr noundef null, i32 noundef 10) #13
  %428 = trunc i64 %427 to i32
  store i32 %428, ptr %32, align 8, !tbaa !36
  store i32 %428, ptr %33, align 8, !tbaa !37
  br label %475

429:                                              ; preds = %390
  %430 = tail call i64 @strtol(ptr nocapture noundef nonnull %399, ptr noundef null, i32 noundef 10) #13
  %431 = trunc i64 %430 to i32
  store i32 %431, ptr %31, align 4, !tbaa !22
  br label %475

432:                                              ; preds = %390
  store i32 0, ptr %30, align 8, !tbaa !44
  br label %475

433:                                              ; preds = %390
  store i32 4, ptr %29, align 8, !tbaa !20
  br label %475

434:                                              ; preds = %390
  store i32 1, ptr %28, align 4, !tbaa !45
  br label %475

435:                                              ; preds = %390
  store i32 1, ptr %27, align 4, !tbaa !46
  br label %475

436:                                              ; preds = %390
  store i32 3, ptr %25, align 4, !tbaa !38
  store i32 1, ptr %26, align 8, !tbaa !39
  br label %475

437:                                              ; preds = %390
  store i32 2, ptr %24, align 4, !tbaa !40
  br label %475

438:                                              ; preds = %390
  store i32 -1, ptr %22, align 8, !tbaa !21
  store i32 -1, ptr %23, align 4, !tbaa !33
  br label %475

439:                                              ; preds = %390
  store i32 1, ptr %21, align 4, !tbaa !47
  br label %475

440:                                              ; preds = %390
  store i32 1, ptr %20, align 8, !tbaa !42
  br label %475

441:                                              ; preds = %390
  store i32 1, ptr %19, align 8, !tbaa !48
  br label %475

442:                                              ; preds = %390
  store i32 0, ptr %18, align 4, !tbaa !49
  %443 = load i8, ptr %399, align 1, !tbaa !14
  switch i8 %443, label %451 [
    i8 48, label %444
    i8 49, label %445
    i8 50, label %446
    i8 51, label %447
    i8 52, label %448
    i8 53, label %449
    i8 54, label %450
  ]

444:                                              ; preds = %442
  store i32 0, ptr %18, align 4, !tbaa !49
  br label %475

445:                                              ; preds = %442
  store i32 1, ptr %18, align 4, !tbaa !49
  br label %475

446:                                              ; preds = %442
  store i32 2, ptr %18, align 4, !tbaa !49
  br label %475

447:                                              ; preds = %442
  store i32 3, ptr %18, align 4, !tbaa !49
  br label %475

448:                                              ; preds = %442
  store i32 4, ptr %18, align 4, !tbaa !49
  br label %475

449:                                              ; preds = %442
  store i32 5, ptr %18, align 4, !tbaa !49
  br label %475

450:                                              ; preds = %442
  store i32 6, ptr %18, align 4, !tbaa !49
  br label %475

451:                                              ; preds = %442
  %452 = load ptr, ptr @stderr, align 8, !tbaa !5
  %453 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.150, ptr noundef %5, ptr noundef nonnull %399) #14
  br label %475

454:                                              ; preds = %390
  store i32 1, ptr %17, align 8, !tbaa !50
  br label %475

455:                                              ; preds = %390
  store i32 1, ptr %16, align 4, !tbaa !51
  br label %475

456:                                              ; preds = %390
  store i32 9, ptr %15, align 4, !tbaa !40
  br label %475

457:                                              ; preds = %390
  %458 = load ptr, ptr @stderr, align 8, !tbaa !5
  %459 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef nonnull @.str.151, ptr noundef %5, ptr noundef %399) #14
  br label %475

460:                                              ; preds = %390
  %461 = load i8, ptr %399, align 1, !tbaa !14
  switch i8 %461, label %465 [
    i8 110, label %462
    i8 53, label %463
    i8 99, label %464
  ]

462:                                              ; preds = %460
  store i32 0, ptr %14, align 4, !tbaa !52
  br label %475

463:                                              ; preds = %460
  store i32 1, ptr %13, align 4, !tbaa !52
  br label %475

464:                                              ; preds = %460
  store i32 3, ptr %12, align 4, !tbaa !52
  br label %475

465:                                              ; preds = %460
  %466 = load ptr, ptr @stderr, align 8, !tbaa !5
  %467 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %466, ptr noundef nonnull @.str.152, ptr noundef %5, ptr noundef nonnull %399) #14
  br label %475

468:                                              ; preds = %390
  store i32 1, ptr %11, align 4, !tbaa !53
  br label %475

469:                                              ; preds = %390
  store i32 0, ptr %10, align 8, !tbaa !54
  br label %475

470:                                              ; preds = %390
  store ptr %392, ptr %4, align 8, !tbaa !5
  tail call void @lame_help(ptr noundef %0, ptr noundef %5)
  unreachable

471:                                              ; preds = %390
  %472 = load ptr, ptr @stderr, align 8, !tbaa !5
  %473 = sext i8 %391 to i32
  %474 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %472, ptr noundef nonnull @.str.153, ptr noundef %5, i32 noundef %473) #14
  br label %475

475:                                              ; preds = %410, %415, %462, %464, %465, %463, %444, %446, %448, %450, %451, %449, %447, %445, %402, %404, %406, %407, %405, %403, %471, %469, %468, %457, %456, %455, %454, %441, %440, %439, %438, %437, %436, %435, %434, %433, %432, %429, %426, %420
  %476 = phi i32 [ 1, %471 ], [ %396, %469 ], [ %396, %468 ], [ %396, %462 ], [ %396, %463 ], [ %396, %464 ], [ 1, %465 ], [ %396, %457 ], [ %396, %456 ], [ %396, %455 ], [ %396, %454 ], [ %396, %444 ], [ %396, %445 ], [ %396, %446 ], [ %396, %447 ], [ %396, %448 ], [ %396, %449 ], [ %396, %450 ], [ 1, %451 ], [ %396, %441 ], [ %396, %440 ], [ %396, %439 ], [ %396, %438 ], [ %396, %437 ], [ %396, %436 ], [ %396, %435 ], [ %396, %434 ], [ %396, %433 ], [ %396, %432 ], [ %396, %429 ], [ %396, %426 ], [ %396, %420 ], [ %396, %415 ], [ %396, %402 ], [ %396, %403 ], [ %396, %404 ], [ %396, %405 ], [ %396, %406 ], [ 1, %407 ], [ %396, %410 ]
  %477 = phi i32 [ %394, %471 ], [ %394, %469 ], [ %394, %468 ], [ %394, %462 ], [ %394, %463 ], [ %394, %464 ], [ %394, %465 ], [ %394, %457 ], [ %394, %456 ], [ %394, %455 ], [ %394, %454 ], [ %394, %444 ], [ %394, %445 ], [ %394, %446 ], [ %394, %447 ], [ %394, %448 ], [ %394, %449 ], [ %394, %450 ], [ %394, %451 ], [ %394, %441 ], [ %394, %440 ], [ %394, %439 ], [ %394, %438 ], [ %394, %437 ], [ 1, %436 ], [ %394, %435 ], [ %394, %434 ], [ %394, %433 ], [ %394, %432 ], [ %394, %429 ], [ %394, %426 ], [ %394, %420 ], [ %394, %415 ], [ %394, %402 ], [ %394, %403 ], [ %394, %404 ], [ %394, %405 ], [ %394, %406 ], [ %394, %407 ], [ %394, %410 ]
  %478 = phi i32 [ %393, %471 ], [ %393, %469 ], [ %393, %468 ], [ %393, %462 ], [ %393, %463 ], [ %393, %464 ], [ %393, %465 ], [ %393, %457 ], [ %393, %456 ], [ %393, %455 ], [ %393, %454 ], [ %393, %444 ], [ %393, %445 ], [ %393, %446 ], [ %393, %447 ], [ %393, %448 ], [ %393, %449 ], [ %393, %450 ], [ %393, %451 ], [ %393, %441 ], [ %393, %440 ], [ %393, %439 ], [ %393, %438 ], [ %393, %437 ], [ %393, %436 ], [ %393, %435 ], [ %393, %434 ], [ %393, %433 ], [ %393, %432 ], [ %393, %429 ], [ %393, %426 ], [ %393, %420 ], [ %419, %415 ], [ %393, %402 ], [ %393, %403 ], [ %393, %404 ], [ %393, %405 ], [ %393, %406 ], [ %393, %407 ], [ %393, %410 ]
  %479 = phi i1 [ true, %471 ], [ true, %469 ], [ true, %468 ], [ false, %462 ], [ false, %463 ], [ false, %464 ], [ false, %465 ], [ true, %457 ], [ true, %456 ], [ true, %455 ], [ true, %454 ], [ false, %444 ], [ false, %445 ], [ false, %446 ], [ false, %447 ], [ false, %448 ], [ false, %449 ], [ false, %450 ], [ false, %451 ], [ true, %441 ], [ true, %440 ], [ true, %439 ], [ true, %438 ], [ true, %437 ], [ true, %436 ], [ true, %435 ], [ true, %434 ], [ true, %433 ], [ true, %432 ], [ false, %429 ], [ false, %426 ], [ false, %420 ], [ false, %415 ], [ false, %402 ], [ false, %403 ], [ false, %404 ], [ false, %405 ], [ false, %406 ], [ false, %407 ], [ false, %410 ]
  %480 = icmp ne ptr %399, %392
  %481 = select i1 %479, i1 true, i1 %480
  %482 = select i1 %481, ptr %392, ptr @.str.110
  %483 = xor i1 %479, true
  %484 = select i1 %483, i1 %480, i1 false
  %485 = zext i1 %484 to i32
  %486 = add nsw i32 %395, %485
  %487 = getelementptr inbounds i8, ptr %482, i64 1
  %488 = load i8, ptr %482, align 1, !tbaa !14
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %503, label %390, !llvm.loop !55

490:                                              ; preds = %136
  %491 = load i8, ptr @inPath, align 16, !tbaa !14
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @inPath, ptr noundef nonnull dereferenceable(1) %143, i64 noundef 300) #13
  br label %509

495:                                              ; preds = %490
  %496 = load i8, ptr @outPath, align 16, !tbaa !14
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %495
  %499 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @outPath, ptr noundef nonnull dereferenceable(1) %143, i64 noundef 300) #13
  br label %509

500:                                              ; preds = %495
  %501 = load ptr, ptr @stderr, align 8, !tbaa !5
  %502 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %501, ptr noundef nonnull @.str.154, ptr noundef %5, ptr noundef nonnull %143) #14
  br label %509

503:                                              ; preds = %475, %170
  %504 = phi ptr [ %172, %170 ], [ %487, %475 ]
  %505 = phi i32 [ 0, %170 ], [ %476, %475 ]
  %506 = phi i32 [ %137, %170 ], [ %486, %475 ]
  %507 = phi i32 [ %139, %170 ], [ %477, %475 ]
  %508 = phi i32 [ %138, %170 ], [ %478, %475 ]
  store ptr %504, ptr %4, align 8, !tbaa !5
  br label %509

509:                                              ; preds = %503, %493, %500, %498, %387
  %510 = phi i32 [ 0, %387 ], [ 0, %493 ], [ 0, %498 ], [ 1, %500 ], [ %505, %503 ]
  %511 = phi i32 [ %389, %387 ], [ %137, %493 ], [ %137, %498 ], [ %137, %500 ], [ %506, %503 ]
  %512 = phi i32 [ %139, %387 ], [ %139, %493 ], [ %139, %498 ], [ %139, %500 ], [ %507, %503 ]
  %513 = phi i32 [ %138, %387 ], [ %138, %493 ], [ %138, %498 ], [ %138, %500 ], [ %508, %503 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %514 = add nsw i32 %511, 1
  %515 = icmp slt i32 %514, %1
  %516 = icmp eq i32 %510, 0
  %517 = select i1 %515, i1 %516, i1 false
  br i1 %517, label %136, label %518, !llvm.loop !56

518:                                              ; preds = %509
  %519 = icmp ne i32 %510, 0
  %520 = icmp eq i32 %512, 0
  br label %521

521:                                              ; preds = %518, %3
  %522 = phi i1 [ false, %3 ], [ %519, %518 ]
  %523 = phi i1 [ true, %3 ], [ %520, %518 ]
  %524 = phi i32 [ 0, %3 ], [ %513, %518 ]
  %525 = load i8, ptr @inPath, align 16
  %526 = icmp eq i8 %525, 0
  %527 = select i1 %522, i1 true, i1 %526
  br i1 %527, label %528, label %540

528:                                              ; preds = %521
  %529 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @lame_print_version(ptr noundef %529) #13
  %530 = load ptr, ptr @stderr, align 8, !tbaa !5
  %531 = tail call i32 @fputc(i32 10, ptr %530)
  %532 = load ptr, ptr @stderr, align 8, !tbaa !5
  %533 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %532, ptr noundef nonnull @.str.1, ptr noundef %5) #14
  %534 = load ptr, ptr @stderr, align 8, !tbaa !5
  %535 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %534) #14
  %536 = load ptr, ptr @stderr, align 8, !tbaa !5
  %537 = tail call i32 @fputc(i32 10, ptr %536)
  %538 = load ptr, ptr @stderr, align 8, !tbaa !5
  %539 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %538, ptr noundef nonnull @.str.3, ptr noundef %5) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

540:                                              ; preds = %521
  %541 = icmp eq i8 %525, 45
  br i1 %541, label %542, label %544

542:                                              ; preds = %540
  %543 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 7
  store i32 1, ptr %543, align 8, !tbaa !48
  br label %544

544:                                              ; preds = %542, %540
  %545 = load i8, ptr @outPath, align 16, !tbaa !14
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %553

547:                                              ; preds = %544
  br i1 %541, label %548, label %549

548:                                              ; preds = %547
  store i16 45, ptr @outPath, align 16
  br label %553

549:                                              ; preds = %547
  %550 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @outPath, ptr noundef nonnull dereferenceable(1) @inPath, i64 noundef 296) #13
  %551 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @outPath)
  %552 = getelementptr inbounds i8, ptr @outPath, i64 %551
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %552, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  br label %553

553:                                              ; preds = %548, %549, %544
  %554 = load i8, ptr @outPath, align 16, !tbaa !14
  %555 = icmp eq i8 %554, 45
  br i1 %555, label %556, label %563

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 0, ptr %557, align 8, !tbaa !44
  %558 = load i32, ptr @id3tag, align 4, !tbaa !17
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %556
  store i32 0, ptr @id3tag, align 4, !tbaa !17
  %561 = load ptr, ptr @stderr, align 8, !tbaa !5
  %562 = tail call i64 @fwrite(ptr nonnull @.str.157, i64 54, i64 1, ptr %561) #14
  br label %563

563:                                              ; preds = %556, %560, %553
  %564 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  %565 = load i32, ptr %564, align 8, !tbaa !20
  %566 = icmp eq i32 %565, 3
  br i1 %566, label %574, label %567

567:                                              ; preds = %563
  %568 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @inPath) #16
  %569 = add i64 %568, -4
  %570 = getelementptr inbounds [300 x i8], ptr @inPath, i64 0, i64 %569
  %571 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %570, ptr noundef nonnull dereferenceable(5) @.str.156) #16
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %574

573:                                              ; preds = %567
  store i32 3, ptr %564, align 8, !tbaa !20
  br label %574

574:                                              ; preds = %567, %573, %563
  br i1 %523, label %577, label %575

575:                                              ; preds = %574
  %576 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  store i32 2, ptr %576, align 8, !tbaa !57
  br label %584

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %579 = load i32, ptr %578, align 4, !tbaa !38
  %580 = icmp eq i32 %579, 3
  %581 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  br i1 %580, label %582, label %583

582:                                              ; preds = %577
  store i32 1, ptr %581, align 8, !tbaa !57
  br label %584

583:                                              ; preds = %577
  store i32 2, ptr %581, align 8, !tbaa !57
  br label %584

584:                                              ; preds = %582, %583, %575
  %585 = icmp eq i32 %524, 0
  br i1 %585, label %588, label %586

586:                                              ; preds = %584
  %587 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  store i32 %524, ptr %587, align 4, !tbaa !40
  br label %588

588:                                              ; preds = %586, %584
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @id3_inittag(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 92}
!10 = !{!"", !11, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !6, i64 128, !6, i64 136, !12, i64 144, !12, i64 148, !13, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 176, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !13, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!10, !6, i64 128}
!16 = !{!10, !6, i64 136}
!17 = !{!18, !12, i64 0}
!18 = !{!"", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 39, !7, i64 70, !7, i64 101, !7, i64 106, !7, i64 137, !7, i64 265, !7, i64 266}
!19 = !{!10, !12, i64 16}
!20 = !{!10, !12, i64 120}
!21 = !{!10, !12, i64 104}
!22 = !{!10, !12, i64 100}
!23 = !{!10, !12, i64 160}
!24 = !{!10, !12, i64 148}
!25 = !{!10, !12, i64 72}
!26 = !{!10, !12, i64 196}
!27 = !{!10, !12, i64 144}
!28 = !{!18, !7, i64 266}
!29 = !{!12, !12, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!10, !12, i64 112}
!33 = !{!10, !12, i64 108}
!34 = !{!10, !12, i64 116}
!35 = !{!10, !13, i64 152}
!36 = !{!10, !12, i64 48}
!37 = !{!10, !12, i64 96}
!38 = !{!10, !12, i64 36}
!39 = !{!10, !12, i64 40}
!40 = !{!10, !12, i64 28}
!41 = !{!10, !12, i64 44}
!42 = !{!10, !12, i64 88}
!43 = !{!10, !12, i64 12}
!44 = !{!10, !12, i64 24}
!45 = !{!10, !12, i64 124}
!46 = !{!10, !12, i64 60}
!47 = !{!10, !12, i64 156}
!48 = !{!10, !12, i64 32}
!49 = !{!10, !12, i64 76}
!50 = !{!10, !12, i64 80}
!51 = !{!10, !12, i64 84}
!52 = !{!10, !12, i64 164}
!53 = !{!10, !12, i64 52}
!54 = !{!10, !12, i64 56}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = !{!10, !12, i64 8}
