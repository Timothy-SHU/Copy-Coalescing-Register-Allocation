; ModuleID = 'x264_src/x264.c'
source_filename = "x264_src/x264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr, ptr, double, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@seek_val = dso_local local_unnamed_addr global i32 0, align 4
@input = dso_local local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 8
@b_ctrl_c = internal unnamed_addr global i1 false, align 4
@demuxer_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 16
@muxer_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null], align 16
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 16
@long_options = internal global [142 x %struct.option] [%struct.option { ptr @.str.28, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.29, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 268 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 278 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 264 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 265 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 266 }, %struct.option { ptr @.str.36, i32 0, ptr null, i32 267 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 269 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 272 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.101, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.102, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.103, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.104, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.105, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.111, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.112, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.113, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.119, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.124, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.127, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.129, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.131, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.134, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.135, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.136, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.140, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.144, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.146, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.154, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.155, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.156, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.157, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.158, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 1, ptr null, i32 274 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 275 }, %struct.option { ptr @.str.163, i32 1, ptr null, i32 276 }, %struct.option { ptr @.str.164, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.165, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.166, i32 1, ptr null, i32 277 }, %struct.option { ptr @.str.167, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@tga_dump_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"x264 [error]: can't open qpfile `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1
@pulldown_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.323, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr null], align 16
@.str.8 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"x264 [error]: could not open output file `%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file `%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"x264 [error]: --fps + --tcfile-in is incompatible.\0A\00", align 1
@timecode_input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"x264 [error]: timecode input failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"x264 [error]: --timebase is incompatible with cfr input\0A\00", align 1
@.str.18 = private unnamed_addr constant [149 x i8] c"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\0A                If you want otherwise, use --no-interlaced or --%cff\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"x264 [error]: invalid argument: timebase = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"x264 [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"dumpyuv\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.168 = private unnamed_addr constant [597 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.197 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1
@.str.200 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.202 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.203 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.204 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.205 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1
@x264_b_pyramid_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr null], align 16
@.str.207 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.209 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1
@.str.222 = private unnamed_addr constant [75 x i8] c"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\0A\00", align 1
@.str.223 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1
@.str.224 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.225 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.226 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.229 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.230 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.231 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1
@.str.232 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.233 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.234 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.235 = private unnamed_addr constant [234 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ (experimental)\0A\00", align 1
@.str.236 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1
@.str.239 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.241 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1
@.str.242 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.243 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.249 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.323, ptr @.str.326, ptr @.str.327, ptr @.str.22, ptr null], align 16
@.str.251 = private unnamed_addr constant [223 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Blind offset\0A                                  - 2: Smart analysis\0A\00", align 1
@.str.252 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr null], align 16
@.str.255 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.258 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.261 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.266 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.269 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.270 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.271 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.283 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr null], align 16
@.str.284 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.333, ptr null], align 16
@.str.285 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.341, ptr @.str.342, ptr null], align 16
@.str.286 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16
@.str.287 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr null], align 16
@.str.288 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.352, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.353, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.354, ptr null], align 16
@.str.289 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.294 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.295 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.316 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.340 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.347 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.351 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.353 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.358 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.359 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.363 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.365 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1
@mkv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@flv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@raw_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@.str.366 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.367 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"dga\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"x264 [error]: not compiled with AVS input support\0A\00", align 1
@y4m_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@yuv_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@.str.371 = private unnamed_addr constant [62 x i8] c"x264 [error]: could not open input file `%s' via any method!\0A\00", align 1
@.str.372 = private unnamed_addr constant [57 x i8] c"x264 [error]: unsupported framerate for chosen pulldown\0A\00", align 1
@.str.373 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1
@.str.374 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1
@.str.376 = private unnamed_addr constant [44 x i8] c"x264 [error]: ticks_per_frame invalid: %ld\0A\00", align 1
@.str.377 = private unnamed_addr constant [43 x i8] c"x264 [error]: x264_encoder_headers failed\0A\00", align 1
@.str.378 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 16
@.str.379 = private unnamed_addr constant [69 x i8] c"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\0A\00", align 1
@.str.380 = private unnamed_addr constant [78 x i8] c"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.382 = private unnamed_addr constant [57 x i8] c"x264 [warning]: %d suppressed nonmonotonic pts warnings\0A\00", align 1
@.str.383 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.384 = private unnamed_addr constant [44 x i8] c"aborted at input frame %d, output frame %d\0A\00", align 1
@.str.385 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 16
@.str.387 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1
@.str.389 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"x264 0.96.x\00", align 1
@str.390 = private unnamed_addr constant [15 x i8] c"Example usage:\00", align 1
@str.391 = private unnamed_addr constant [29 x i8] c"      Constant quality mode:\00", align 1
@str.392 = private unnamed_addr constant [46 x i8] c"            x264 --crf 24 -o <output> <input>\00", align 1
@str.393 = private unnamed_addr constant [43 x i8] c"      Two-pass with a bitrate of 1000kbps:\00", align 1
@str.394 = private unnamed_addr constant [61 x i8] c"            x264 --pass 1 --bitrate 1000 -o <output> <input>\00", align 1
@str.395 = private unnamed_addr constant [61 x i8] c"            x264 --pass 2 --bitrate 1000 -o <output> <input>\00", align 1
@str.396 = private unnamed_addr constant [16 x i8] c"      Lossless:\00", align 1
@str.397 = private unnamed_addr constant [45 x i8] c"            x264 --crf 0 -o <output> <input>\00", align 1
@str.398 = private unnamed_addr constant [60 x i8] c"      Maximum PSNR at the cost of speed and visual quality:\00", align 1
@str.399 = private unnamed_addr constant [66 x i8] c"            x264 --preset placebo --tune psnr -o <output> <input>\00", align 1
@str.400 = private unnamed_addr constant [59 x i8] c"      Constant bitrate at 1000kbps with a 2 second-buffer:\00", align 1
@str.401 = private unnamed_addr constant [71 x i8] c"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>\00", align 1
@str.402 = private unnamed_addr constant [9 x i8] c"Presets:\00", align 1
@str.403 = private unnamed_addr constant [132 x i8] c"      --profile               Force the limits of an H.264 profile [high]\0A                                  Overrides all settings.\00", align 1
@str.404 = private unnamed_addr constant [55 x i8] c"                                  - baseline,main,high\00", align 1
@str.405 = private unnamed_addr constant [517 x i8] c"                                  - baseline:\0A                                    --no-8x8dct --bframes 0 --no-cabac\0A                                    --cqm flat --weightp 0\0A                                    No interlaced.\0A                                    No lossless.\0A                                  - main:\0A                                    --no-8x8dct --cqm flat\0A                                    No lossless.\0A                                  - high:\0A                                    No lossless.\00", align 1
@str.406 = private unnamed_addr constant [143 x i8] c"      --preset                Use a preset to select encoding settings [medium]\0A                                  Overridden by user settings.\00", align 1
@str.407 = private unnamed_addr constant [149 x i8] c"                                  - ultrafast,superfast,veryfast,faster,fast\0A                                  - medium,slow,slower,veryslow,placebo\00", align 1
@str.408 = private unnamed_addr constant [2442 x i8] c"                                  - ultrafast:\0A                                    --no-8x8dct --aq-mode 0 --b-adapt 0\0A                                    --bframes 0 --no-cabac --no-deblock\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions none --ref 1 --scenecut 0\0A                                    --subme 0 --trellis 0 --no-weightb\0A                                    --weightp 0\0A                                  - superfast:\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions i8x8,i4x4 --ref 1\0A                                    --subme 1 --trellis 0 --weightp 0\0A                                  - veryfast:\0A                                    --no-mbtree --no-mixed-refs --ref 1\0A                                    --subme 2 --trellis 0 --weightp 0\0A                                  - faster:\0A                                    --no-mixed-refs --rc-lookahead 20\0A                                    --ref 2 --subme 4 --weightp 1\0A                                  - fast:\0A                                    --rc-lookahead 30 --ref 2 --subme 6\0A                                  - medium:\0A                                    Default settings apply.\0A                                  - slow:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --rc-lookahead 50 --ref 5 --subme 8\0A                                  - slower:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --partitions all --rc-lookahead 60\0A                                    --ref 8 --subme 9 --trellis 2\0A                                  - veryslow:\0A                                    --b-adapt 2 --bframes 8 --direct auto\0A                                    --me umh --merange 24 --partitions all\0A                                    --ref 16 --subme 10 --trellis 2\0A                                    --rc-lookahead 60\0A                                  - placebo:\0A                                    --bframes 16 --b-adapt 2 --direct auto\0A                                    --slow-firstpass --no-fast-pskip\0A                                    --me tesa --merange 24 --partitions all\0A                                    --rc-lookahead 60 --ref 16 --subme 10\0A                                    --trellis 2\00", align 1
@str.409 = private unnamed_addr constant [339 x i8] c"      --tune                  Tune the settings for a particular type of source\0A                              or situation\0A                                  Overridden by user settings.\0A                                  Multiple tunings are separated by commas.\0A                                  Only one psy tuning can be used at a time.\00", align 1
@str.410 = private unnamed_addr constant [215 x i8] c"                                  - psy tunings: film,animation,grain,\0A                                                 stillimage,psnr,ssim\0A                                  - other tunings: fastdecode,zerolatency\00", align 1
@str.411 = private unnamed_addr constant [1557 x i8] c"                                  - film (psy tuning):\0A                                    --deblock -1:-1 --psy-rd <unset>:0.15\0A                                  - animation (psy tuning):\0A                                    --bframes {+2} --deblock 1:1\0A                                    --psy-rd 0.4:<unset> --aq-strength 0.6\0A                                    --ref {Double if >1 else 1}\0A                                  - grain (psy tuning):\0A                                    --aq-strength 0.5 --no-dct-decimate\0A                                    --deadzone-inter 6 --deadzone-intra 6\0A                                    --deblock -2:-2 --ipratio 1.1 \0A                                    --pbratio 1.1 --psy-rd <unset>:0.25\0A                                    --qcomp 0.8\0A                                  - stillimage (psy tuning):\0A                                    --aq-strength 1.2 --deblock -3:-3\0A                                    --psy-rd 2.0:0.7\0A                                  - psnr (psy tuning):\0A                                    --aq-mode 0 --no-psy\0A                                  - ssim (psy tuning):\0A                                    --aq-mode 2 --no-psy\0A                                  - fastdecode:\0A                                    --no-cabac --no-deblock --no-weightb\0A                                    --weightp 0\0A                                  - zerolatency:\0A                                    --bframes 0 --force-cfr --rc-lookahead 0\0A                                    --sync-lookahead 0 --sliced-threads\00", align 1
@str.412 = private unnamed_addr constant [72 x i8] c"      --slow-firstpass        Don't force faster settings with --pass 1\00", align 1
@str.413 = private unnamed_addr constant [286 x i8] c"      --slow-firstpass        Don't force these faster settings with --pass 1:\0A                                  --no-8x8dct --me dia --partitions none\0A                                  --ref 1 --subme {2 if >2 else unchanged}\0A                                  --trellis 0 --fast-pskip\00", align 1
@str.414 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.415 = private unnamed_addr constant [54 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [auto]\00", align 1
@str.416 = private unnamed_addr constant [64 x i8] c"      --no-scenecut           Disable adaptive I-frame decision\00", align 1
@str.417 = private unnamed_addr constant [79 x i8] c"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames\00", align 1
@str.418 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.419 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.420 = private unnamed_addr constant [57 x i8] c"      --slices <integer>      Number of slices per frame\00", align 1
@str.421 = private unnamed_addr constant [157 x i8] c"      --slices <integer>      Number of slices per frame; forces rectangular\0A                              slices and is overridden by other slicing options\00", align 1
@str.422 = private unnamed_addr constant [71 x i8] c"      --slice-max-size <integer> Limit the size of each slice in bytes\00", align 1
@str.423 = private unnamed_addr constant [76 x i8] c"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks\00", align 1
@str.424 = private unnamed_addr constant [71 x i8] c"      --tff                   Enable interlaced mode (top field first)\00", align 1
@str.425 = private unnamed_addr constant [74 x i8] c"      --bff                   Enable interlaced mode (bottom field first)\00", align 1
@str.426 = private unnamed_addr constant [67 x i8] c"      --constrained-intra     Enable constrained intra prediction.\00", align 1
@str.427 = private unnamed_addr constant [165 x i8] c"      --pulldown <string>     Use soft pulldown to change frame rate\0A                                  - none, 22, 32, 64, double, triple, euro (requires cfr input)\00", align 1
@str.428 = private unnamed_addr constant [225 x i8] c"      --fake-interlaced       Flag stream as interlaced but encode progressive.\0A                              Makes it possible to encode 25p and 30p Blu-Ray\0A                              streams. Ignored in interlaced mode.\00", align 1
@str.429 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.430 = private unnamed_addr constant [67 x i8] c"  -q, --qp <integer>          Force constant QP (0-51, 0=lossless)\00", align 1
@str.431 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.432 = private unnamed_addr constant [127 x i8] c"      --crf-max <float>       With CRF+VBV, limit RF to this value\0A                                  May cause VBV underflows!\00", align 1
@str.433 = private unnamed_addr constant [209 x i8] c"  -p, --pass <integer>        Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\00", align 1
@str.434 = private unnamed_addr constant [71 x i8] c"                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.435 = private unnamed_addr constant [59 x i8] c"      --no-mbtree             Disable mb-tree ratecontrol.\00", align 1
@str.436 = private unnamed_addr constant [77 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video\00", align 1
@str.437 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.438 = private unnamed_addr constant [299 x i8] c"      --qpfile <string>       Force frametypes and QPs for some or all frames\0A                              Format of each line: framenumber frametype QP\0A                              QP of -1 lets x264 choose. Frametypes: I,i,P,B,b.\0A                              QPs are restricted by qpmin/qpmax.\00", align 1
@str.439 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.440 = private unnamed_addr constant [268 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\00", align 1
@str.441 = private unnamed_addr constant [71 x i8] c"      --no-weightb            Disable weighted prediction for B-frames\00", align 1
@str.442 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.443 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.444 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.445 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.446 = private unnamed_addr constant [69 x i8] c"                                  decision quality: 1=fast, 10=best.\00", align 1
@str.447 = private unnamed_addr constant [626 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A                                  - 10: QP-RD - requires trellis=2, aq-mode>0\00", align 1
@str.448 = private unnamed_addr constant [125 x i8] c"      --no-psy                Disable all visual optimizations that worsen\0A                              both PSNR and SSIM.\00", align 1
@str.449 = private unnamed_addr constant [79 x i8] c"      --no-mixed-refs         Don't decide references on a per partition basis\00", align 1
@str.450 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.451 = private unnamed_addr constant [70 x i8] c"      --no-8x8dct             Disable adaptive spatial transform size\00", align 1
@str.452 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.453 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.454 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.455 = private unnamed_addr constant [107 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\00", align 1
@str.456 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.457 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.458 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.459 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.460 = private unnamed_addr constant [111 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\00", align 1
@str.461 = private unnamed_addr constant [105 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\00", align 1
@str.462 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.463 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.464 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.465 = private unnamed_addr constant [153 x i8] c"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\0A                                  - none, vbr, cbr (cbr not allowed in .mp4)\00", align 1
@str.466 = private unnamed_addr constant [69 x i8] c"      --pic-struct            Force pic_struct in Picture Timing SEI\00", align 1
@str.467 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.468 = private unnamed_addr constant [50 x i8] c"  -o, --output                Specify output file\00", align 1
@str.469 = private unnamed_addr constant [60 x i8] c"      --index <string>        Filename for input index file\00", align 1
@str.470 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.471 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.472 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.473 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.474 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.475 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.476 = private unnamed_addr constant [79 x i8] c"      --no-progress           Don't show the progress indicator while encoding\00", align 1
@str.477 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.478 = private unnamed_addr constant [54 x i8] c"      --psnr                  Enable PSNR computation\00", align 1
@str.479 = private unnamed_addr constant [54 x i8] c"      --ssim                  Enable SSIM computation\00", align 1
@str.480 = private unnamed_addr constant [65 x i8] c"      --threads <integer>     Force a specific number of threads\00", align 1
@str.481 = private unnamed_addr constant [73 x i8] c"      --sliced-threads        Low-latency but lower-efficiency threading\00", align 1
@str.482 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.483 = private unnamed_addr constant [80 x i8] c"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead\00", align 1
@str.484 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.485 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.486 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.487 = private unnamed_addr constant [75 x i8] c"      --visualize             Show MB types overlayed on the encoded video\00", align 1
@str.488 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.489 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.490 = private unnamed_addr constant [76 x i8] c"      --force-cfr             Force constant framerate timestamp generation\00", align 1
@str.491 = private unnamed_addr constant [76 x i8] c"      --tcfile-in <string>    Force timestamp generation with timecode file\00", align 1
@str.492 = private unnamed_addr constant [76 x i8] c"      --tcfile-out <string>   Output timecode v2 file from input timestamps\00", align 1
@str.493 = private unnamed_addr constant [232 x i8] c"      --timebase <int/int>    Specify timebase numerator and denominator\0A                 <integer>    Specify timebase numerator for input timecode file\0A                              or specify timebase denominator for other input\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !annotation !34 {
  %3 = alloca %struct.x264_picture_t, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.x264_picture_t, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.x264_picture_t, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.x264_param_t, align 8
  %16 = alloca %struct.cli_input_opt_t, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.video_info_t, align 4
  %19 = alloca [5 x i8], align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.x264_param_t, align 8
  %23 = alloca %struct.cli_opt_t, align 8
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %19)
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #18
  call void @x264_param_default(ptr noundef nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %23, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  store i32 1, ptr %23, align 8, !tbaa !35
  store i32 0, ptr @optind, align 4, !tbaa !42
  br label %24

24:                                               ; preds = %35, %2
  %25 = phi ptr [ null, %2 ], [ %36, %35 ]
  %26 = phi ptr [ null, %2 ], [ %37, %35 ]
  %27 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef null) #18
  switch i32 %27, label %30 [
    i32 -1, label %35
    i32 265, label %28
  ]

28:                                               ; preds = %24
  %29 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %25, %24 ]
  switch i32 %27, label %34 [
    i32 266, label %32
    i32 63, label %35
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %32, %30, %24
  %36 = phi ptr [ %25, %24 ], [ %31, %30 ], [ %31, %32 ], [ %31, %34 ]
  %37 = phi ptr [ %26, %24 ], [ %26, %30 ], [ %33, %32 ], [ %26, %34 ]
  %38 = phi i32 [ 2, %24 ], [ 1, %30 ], [ 0, %32 ], [ 0, %34 ]
  switch i32 %38, label %1149 [
    i32 0, label %24
    i32 2, label %39
  ], !llvm.loop !44

39:                                               ; preds = %35
  %40 = icmp eq ptr %36, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(8) @.str) #19
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ 1, %39 ], [ %44, %41 ]
  %47 = call i32 @x264_param_default_preset(ptr noundef nonnull %22, ptr noundef %36, ptr noundef %37) #18
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %1149, label %49

49:                                               ; preds = %45
  store i32 0, ptr @optind, align 4, !tbaa !42
  %50 = getelementptr ptr, ptr %1, i64 -2
  %51 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 7
  %52 = getelementptr inbounds %struct.cli_input_opt_t, ptr %16, i64 0, i32 2
  %53 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 5
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 47
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 38
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 38
  %57 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 4
  %58 = getelementptr inbounds %struct.cli_input_opt_t, ptr %16, i64 0, i32 3
  %59 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 1
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 9
  br label %61

61:                                               ; preds = %236, %49
  %62 = phi ptr [ @.str.22, %49 ], [ %237, %236 ]
  %63 = phi ptr [ @.str.22, %49 ], [ %238, %236 ]
  %64 = phi i32 [ %46, %49 ], [ %239, %236 ]
  %65 = phi i32 [ 0, %49 ], [ %240, %236 ]
  %66 = phi i32 [ 0, %49 ], [ %241, %236 ]
  %67 = phi i32 [ 0, %49 ], [ %242, %236 ]
  %68 = phi ptr [ null, %49 ], [ %243, %236 ]
  %69 = phi ptr [ null, %49 ], [ %245, %236 ]
  %70 = phi ptr [ null, %49 ], [ %246, %236 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #18
  store i32 -1, ptr %17, align 4, !tbaa !42
  %71 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef nonnull %17) #18
  switch i32 %71, label %180 [
    i32 -1, label %236
    i32 104, label %72
    i32 263, label %73
    i32 268, label %74
    i32 86, label %75
    i32 278, label %77
    i32 256, label %82
    i32 257, label %87
    i32 111, label %92
    i32 270, label %94
    i32 271, label %113
    i32 272, label %132
    i32 258, label %134
    i32 259, label %211
    i32 260, label %142
    i32 118, label %143
    i32 261, label %144
    i32 262, label %145
    i32 266, label %211
    i32 265, label %211
    i32 264, label %148
    i32 267, label %150
    i32 114, label %151
    i32 269, label %152
    i32 273, label %153
    i32 274, label %154
    i32 275, label %156
    i32 276, label %164
    i32 277, label %166
  ]

72:                                               ; preds = %61
  call fastcc void @Help(ptr noundef nonnull %15, i32 noundef 0)
  call void @exit(i32 noundef 0) #20
  unreachable

73:                                               ; preds = %61
  call fastcc void @Help(ptr noundef nonnull %15, i32 noundef 1)
  call void @exit(i32 noundef 0) #20
  unreachable

74:                                               ; preds = %61
  call fastcc void @Help(ptr noundef nonnull %15, i32 noundef 2)
  call void @exit(i32 noundef 0) #20
  unreachable

75:                                               ; preds = %61
  %76 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 0) #20
  unreachable

77:                                               ; preds = %61
  %78 = load ptr, ptr @optarg, align 8, !tbaa !43
  %79 = call i64 @strtol(ptr nocapture noundef nonnull %78, ptr noundef null, i32 noundef 10) #18
  %80 = trunc i64 %79 to i32
  %81 = call i32 @llvm.smax.i32(i32 %80, i32 1)
  store i32 %81, ptr @tga_dump_rate, align 4, !tbaa !42
  br label %211

82:                                               ; preds = %61
  %83 = load ptr, ptr @optarg, align 8, !tbaa !43
  %84 = call i64 @strtol(ptr nocapture noundef nonnull %83, ptr noundef null, i32 noundef 10) #18
  %85 = trunc i64 %84 to i32
  %86 = call i32 @llvm.smax.i32(i32 %85, i32 0)
  store i32 %86, ptr %60, align 4, !tbaa !46
  br label %211

87:                                               ; preds = %61
  %88 = load ptr, ptr @optarg, align 8, !tbaa !43
  %89 = call i64 @strtol(ptr nocapture noundef nonnull %88, ptr noundef null, i32 noundef 10) #18
  %90 = trunc i64 %89 to i32
  %91 = call i32 @llvm.smax.i32(i32 %90, i32 0)
  store i32 %91, ptr %58, align 8, !tbaa !52
  store i32 %91, ptr %59, align 4, !tbaa !54
  store i32 %91, ptr @seek_val, align 4, !tbaa !42
  br label %211

92:                                               ; preds = %61
  %93 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %211

94:                                               ; preds = %61
  %95 = load ptr, ptr @optarg, align 8, !tbaa !43
  %96 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(5) @.str.22) #19
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %94, %104
  %99 = phi i64 [ %100, %104 ], [ 0, %94 ]
  %100 = add nuw nsw i64 %99, 1
  %101 = getelementptr inbounds ptr, ptr @muxer_names, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !43
  %103 = icmp eq i64 %100, 4
  br i1 %103, label %107, label %104, !llvm.loop !55

104:                                              ; preds = %98
  %105 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) %102) #19
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %98, !llvm.loop !55

107:                                              ; preds = %104, %98
  %108 = phi ptr [ %63, %98 ], [ %102, %104 ]
  %109 = icmp eq ptr %102, null
  br label %110

110:                                              ; preds = %107, %94
  %111 = phi i1 [ false, %94 ], [ %109, %107 ]
  %112 = phi ptr [ @.str.22, %94 ], [ %108, %107 ]
  br i1 %111, label %236, label %211

113:                                              ; preds = %61
  %114 = load ptr, ptr @optarg, align 8, !tbaa !43
  %115 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(5) @.str.22) #19
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %113, %123
  %118 = phi i64 [ %119, %123 ], [ 0, %113 ]
  %119 = add nuw nsw i64 %118, 1
  %120 = getelementptr inbounds ptr, ptr @demuxer_names, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !43
  %122 = icmp eq i64 %119, 3
  br i1 %122, label %126, label %123, !llvm.loop !55

123:                                              ; preds = %117
  %124 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(1) %121) #19
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %117, !llvm.loop !55

126:                                              ; preds = %123, %117
  %127 = phi ptr [ %62, %117 ], [ %121, %123 ]
  %128 = icmp eq ptr %121, null
  br label %129

129:                                              ; preds = %126, %113
  %130 = phi i1 [ false, %113 ], [ %128, %126 ]
  %131 = phi ptr [ @.str.22, %113 ], [ %127, %126 ]
  br i1 %130, label %236, label %211

132:                                              ; preds = %61
  %133 = load ptr, ptr @optarg, align 8, !tbaa !43
  store ptr %133, ptr %16, align 8, !tbaa !57
  br label %211

134:                                              ; preds = %61
  %135 = load ptr, ptr @optarg, align 8, !tbaa !43
  %136 = call noalias ptr @fopen(ptr noundef %135, ptr noundef nonnull @.str.2)
  store ptr %136, ptr %57, align 8, !tbaa !58
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %211

138:                                              ; preds = %134
  %139 = load ptr, ptr @stderr, align 8, !tbaa !43
  %140 = load ptr, ptr @optarg, align 8, !tbaa !43
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.3, ptr noundef %140) #21
  br label %236

142:                                              ; preds = %61
  store i32 -1, ptr %56, align 8, !tbaa !59
  br label %211

143:                                              ; preds = %61
  store i32 3, ptr %55, align 8, !tbaa !59
  br label %211

144:                                              ; preds = %61
  store i32 0, ptr %23, align 8, !tbaa !35
  br label %211

145:                                              ; preds = %61
  %146 = load ptr, ptr @stderr, align 8, !tbaa !43
  %147 = call i64 @fwrite(ptr nonnull @.str.5, i64 56, i64 1, ptr %146) #21
  br label %211

148:                                              ; preds = %61
  %149 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %211

150:                                              ; preds = %61
  br label %211

151:                                              ; preds = %61
  br label %180

152:                                              ; preds = %61
  store i32 0, ptr %54, align 8, !tbaa !60
  br label %180

153:                                              ; preds = %61
  br label %180

154:                                              ; preds = %61
  %155 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %211

156:                                              ; preds = %61
  %157 = load ptr, ptr @optarg, align 8, !tbaa !43
  %158 = call noalias ptr @fopen(ptr noundef %157, ptr noundef nonnull @.str.6)
  store ptr %158, ptr %53, align 8, !tbaa !61
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %211

160:                                              ; preds = %156
  %161 = load ptr, ptr @stderr, align 8, !tbaa !43
  %162 = load ptr, ptr @optarg, align 8, !tbaa !43
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.7, ptr noundef %162) #21
  br label %236

164:                                              ; preds = %61
  %165 = load ptr, ptr @optarg, align 8, !tbaa !43
  store ptr %165, ptr %52, align 8, !tbaa !62
  br label %211

166:                                              ; preds = %61
  %167 = load ptr, ptr @optarg, align 8, !tbaa !43
  br label %168

168:                                              ; preds = %166, %175
  %169 = phi i64 [ 0, %166 ], [ %176, %175 ]
  %170 = phi ptr [ @.str.323, %166 ], [ %178, %175 ]
  %171 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %167, ptr noundef nonnull dereferenceable(1) %170) #19
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = trunc i64 %169 to i32
  store i32 %174, ptr %51, align 8, !tbaa !42
  br label %211

175:                                              ; preds = %168
  %176 = add nuw nsw i64 %169, 1
  %177 = getelementptr inbounds ptr, ptr @pulldown_names, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  %179 = icmp eq i64 %176, 7
  br i1 %179, label %236, label %168, !llvm.loop !63

180:                                              ; preds = %153, %152, %151, %61
  %181 = phi i32 [ %65, %153 ], [ %65, %152 ], [ 1, %151 ], [ %65, %61 ]
  %182 = phi i32 [ %66, %153 ], [ 1, %152 ], [ %66, %151 ], [ %66, %61 ]
  %183 = phi i32 [ 1, %153 ], [ %67, %152 ], [ %67, %151 ], [ %67, %61 ]
  %184 = load i32, ptr %17, align 4, !tbaa !42
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %180
  %187 = load ptr, ptr @long_options, align 16, !tbaa !64
  %188 = icmp eq ptr %187, null
  br i1 %188, label %201, label %189

189:                                              ; preds = %186, %196
  %190 = phi i64 [ %197, %196 ], [ 0, %186 ]
  %191 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %190, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !66
  %193 = icmp eq i32 %192, %71
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = trunc i64 %190 to i32
  store i32 %195, ptr %17, align 4, !tbaa !42
  br label %201

196:                                              ; preds = %189
  %197 = add nuw i64 %190, 1
  %198 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %197
  %199 = load ptr, ptr %198, align 16, !tbaa !64
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %189, !llvm.loop !67

201:                                              ; preds = %196, %186, %194
  %202 = load i32, ptr %17, align 4, !tbaa !42
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %236, label %204

204:                                              ; preds = %201, %180
  %205 = load i32, ptr %17, align 4, !tbaa !42
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %206
  %208 = load ptr, ptr %207, align 16, !tbaa !64
  %209 = load ptr, ptr @optarg, align 8, !tbaa !43
  %210 = call i32 @x264_param_parse(ptr noundef nonnull %22, ptr noundef %208, ptr noundef %209) #18
  br label %211

211:                                              ; preds = %173, %204, %164, %156, %154, %150, %148, %145, %144, %143, %142, %134, %132, %129, %110, %92, %87, %82, %77, %61, %61, %61
  %212 = phi ptr [ %62, %204 ], [ %62, %173 ], [ %62, %164 ], [ %62, %156 ], [ %62, %154 ], [ %62, %150 ], [ %62, %148 ], [ %62, %145 ], [ %62, %144 ], [ %62, %143 ], [ %62, %142 ], [ %62, %61 ], [ %62, %61 ], [ %62, %61 ], [ %62, %132 ], [ %131, %129 ], [ %62, %110 ], [ %62, %92 ], [ %62, %87 ], [ %62, %82 ], [ %62, %77 ], [ %62, %134 ]
  %213 = phi ptr [ %63, %204 ], [ %63, %173 ], [ %63, %164 ], [ %63, %156 ], [ %63, %154 ], [ %63, %150 ], [ %63, %148 ], [ %63, %145 ], [ %63, %144 ], [ %63, %143 ], [ %63, %142 ], [ %63, %61 ], [ %63, %61 ], [ %63, %61 ], [ %63, %132 ], [ %63, %129 ], [ %112, %110 ], [ %63, %92 ], [ %63, %87 ], [ %63, %82 ], [ %63, %77 ], [ %63, %134 ]
  %214 = phi i32 [ %64, %204 ], [ %64, %173 ], [ %64, %164 ], [ %64, %156 ], [ %64, %154 ], [ 0, %150 ], [ %64, %148 ], [ %64, %145 ], [ %64, %144 ], [ %64, %143 ], [ %64, %142 ], [ %64, %61 ], [ %64, %61 ], [ %64, %61 ], [ %64, %132 ], [ %64, %129 ], [ %64, %110 ], [ %64, %92 ], [ %64, %87 ], [ %64, %82 ], [ %64, %77 ], [ %64, %134 ]
  %215 = phi i32 [ %181, %204 ], [ %65, %173 ], [ %65, %164 ], [ %65, %156 ], [ %65, %154 ], [ %65, %150 ], [ %65, %148 ], [ %65, %145 ], [ %65, %144 ], [ %65, %143 ], [ %65, %142 ], [ %65, %61 ], [ %65, %61 ], [ %65, %61 ], [ %65, %132 ], [ %65, %129 ], [ %65, %110 ], [ %65, %92 ], [ %65, %87 ], [ %65, %82 ], [ %65, %77 ], [ %65, %134 ]
  %216 = phi i32 [ %182, %204 ], [ %66, %173 ], [ %66, %164 ], [ %66, %156 ], [ %66, %154 ], [ %66, %150 ], [ %66, %148 ], [ %66, %145 ], [ %66, %144 ], [ %66, %143 ], [ %66, %142 ], [ %66, %61 ], [ %66, %61 ], [ %66, %61 ], [ %66, %132 ], [ %66, %129 ], [ %66, %110 ], [ %66, %92 ], [ %66, %87 ], [ %66, %82 ], [ %66, %77 ], [ %66, %134 ]
  %217 = phi i32 [ %183, %204 ], [ %67, %173 ], [ %67, %164 ], [ %67, %156 ], [ %67, %154 ], [ %67, %150 ], [ %67, %148 ], [ %67, %145 ], [ %67, %144 ], [ %67, %143 ], [ %67, %142 ], [ %67, %61 ], [ %67, %61 ], [ %67, %61 ], [ %67, %132 ], [ %67, %129 ], [ %67, %110 ], [ %67, %92 ], [ %67, %87 ], [ %67, %82 ], [ %67, %77 ], [ %67, %134 ]
  %218 = phi ptr [ %68, %204 ], [ %68, %173 ], [ %68, %164 ], [ %68, %156 ], [ %68, %154 ], [ %68, %150 ], [ %149, %148 ], [ %68, %145 ], [ %68, %144 ], [ %68, %143 ], [ %68, %142 ], [ %68, %61 ], [ %68, %61 ], [ %68, %61 ], [ %68, %132 ], [ %68, %129 ], [ %68, %110 ], [ %68, %92 ], [ %68, %87 ], [ %68, %82 ], [ %68, %77 ], [ %68, %134 ]
  %219 = phi i32 [ %210, %204 ], [ 0, %173 ], [ 0, %164 ], [ 0, %156 ], [ 0, %154 ], [ 0, %150 ], [ 0, %148 ], [ 0, %145 ], [ 0, %144 ], [ 0, %143 ], [ 0, %142 ], [ 0, %61 ], [ 0, %61 ], [ 0, %61 ], [ 0, %132 ], [ 0, %129 ], [ 0, %110 ], [ 0, %92 ], [ 0, %87 ], [ 0, %82 ], [ 0, %77 ], [ 0, %134 ]
  %220 = phi ptr [ %69, %204 ], [ %69, %173 ], [ %69, %164 ], [ %69, %156 ], [ %155, %154 ], [ %69, %150 ], [ %69, %148 ], [ %69, %145 ], [ %69, %144 ], [ %69, %143 ], [ %69, %142 ], [ %69, %61 ], [ %69, %61 ], [ %69, %61 ], [ %69, %132 ], [ %69, %129 ], [ %69, %110 ], [ %69, %92 ], [ %69, %87 ], [ %69, %82 ], [ %69, %77 ], [ %69, %134 ]
  %221 = phi ptr [ %70, %204 ], [ %70, %173 ], [ %70, %164 ], [ %70, %156 ], [ %70, %154 ], [ %70, %150 ], [ %70, %148 ], [ %70, %145 ], [ %70, %144 ], [ %70, %143 ], [ %70, %142 ], [ %70, %61 ], [ %70, %61 ], [ %70, %61 ], [ %70, %132 ], [ %70, %129 ], [ %70, %110 ], [ %93, %92 ], [ %70, %87 ], [ %70, %82 ], [ %70, %77 ], [ %70, %134 ]
  %222 = icmp eq i32 %219, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %211
  %224 = load i32, ptr %17, align 4, !tbaa !42
  %225 = icmp sgt i32 %224, 0
  %226 = zext nneg i32 %224 to i64
  %227 = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %226
  %228 = load i32, ptr @optind, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr ptr, ptr %50, i64 %229
  %231 = select i1 %225, ptr %227, ptr %230
  %232 = load ptr, ptr %231, align 8, !tbaa !43
  %233 = load ptr, ptr @stderr, align 8, !tbaa !43
  %234 = load ptr, ptr @optarg, align 8, !tbaa !43
  %235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef nonnull @.str.8, ptr noundef %232, ptr noundef %234) #21
  br label %236

236:                                              ; preds = %175, %223, %211, %201, %160, %138, %129, %110, %61
  %237 = phi ptr [ %62, %201 ], [ %212, %211 ], [ %212, %223 ], [ %62, %160 ], [ %62, %138 ], [ %131, %129 ], [ %62, %110 ], [ %62, %61 ], [ %62, %175 ]
  %238 = phi ptr [ %63, %201 ], [ %213, %211 ], [ %213, %223 ], [ %63, %160 ], [ %63, %138 ], [ %63, %129 ], [ %112, %110 ], [ %63, %61 ], [ %63, %175 ]
  %239 = phi i32 [ %64, %201 ], [ %214, %211 ], [ %214, %223 ], [ %64, %160 ], [ %64, %138 ], [ %64, %129 ], [ %64, %110 ], [ %64, %61 ], [ %64, %175 ]
  %240 = phi i32 [ %181, %201 ], [ %215, %211 ], [ %215, %223 ], [ %65, %160 ], [ %65, %138 ], [ %65, %129 ], [ %65, %110 ], [ %65, %61 ], [ %65, %175 ]
  %241 = phi i32 [ %182, %201 ], [ %216, %211 ], [ %216, %223 ], [ %66, %160 ], [ %66, %138 ], [ %66, %129 ], [ %66, %110 ], [ %66, %61 ], [ %66, %175 ]
  %242 = phi i32 [ %183, %201 ], [ %217, %211 ], [ %217, %223 ], [ %67, %160 ], [ %67, %138 ], [ %67, %129 ], [ %67, %110 ], [ %67, %61 ], [ %67, %175 ]
  %243 = phi ptr [ %68, %201 ], [ %218, %211 ], [ %218, %223 ], [ %68, %160 ], [ %68, %138 ], [ %68, %129 ], [ %68, %110 ], [ %68, %61 ], [ %68, %175 ]
  %244 = phi i32 [ 1, %201 ], [ 0, %211 ], [ 1, %223 ], [ 1, %160 ], [ 1, %138 ], [ 1, %129 ], [ 1, %110 ], [ 4, %61 ], [ 1, %175 ]
  %245 = phi ptr [ %69, %201 ], [ %220, %211 ], [ %220, %223 ], [ %69, %160 ], [ %69, %138 ], [ %69, %129 ], [ %69, %110 ], [ %69, %61 ], [ %69, %175 ]
  %246 = phi ptr [ %70, %201 ], [ %221, %211 ], [ %221, %223 ], [ %70, %160 ], [ %70, %138 ], [ %70, %129 ], [ %70, %110 ], [ %70, %61 ], [ %70, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #18
  switch i32 %244, label %1149 [
    i32 0, label %61
    i32 4, label %247
  ], !llvm.loop !68

247:                                              ; preds = %236
  %248 = icmp eq i32 %239, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %247
  call void @x264_param_apply_fastfirstpass(ptr noundef nonnull %22) #18
  br label %250

250:                                              ; preds = %249, %247
  %251 = call i32 @x264_param_apply_profile(ptr noundef nonnull %22, ptr noundef %243) #18
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %1149, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr @optind, align 4, !tbaa !42
  %255 = icmp slt i32 %254, %0
  %256 = icmp ne ptr %246, null
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = load ptr, ptr @stderr, align 8, !tbaa !43
  %260 = select i1 %255, ptr @.str.11, ptr @.str.10
  %261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.9, ptr noundef nonnull %260) #21
  br label %1149

262:                                              ; preds = %253
  %263 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %246) #19
  %264 = getelementptr inbounds i8, ptr %246, i64 %263
  br label %265

265:                                              ; preds = %265, %262
  %266 = phi ptr [ %264, %262 ], [ %271, %265 ]
  %267 = load i8, ptr %266, align 1, !tbaa !69
  %268 = icmp ne i8 %267, 46
  %269 = icmp ugt ptr %266, %246
  %270 = and i1 %269, %268
  %271 = getelementptr inbounds i8, ptr %266, i64 -1
  br i1 %270, label %265, label %272, !llvm.loop !70

272:                                              ; preds = %265
  %273 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %246, ptr noundef nonnull dereferenceable(2) @.str.363) #19
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %272
  %276 = icmp eq i8 %267, 46
  %277 = zext i1 %276 to i64
  %278 = getelementptr inbounds i8, ptr %266, i64 %277
  %279 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %238, ptr noundef nonnull dereferenceable(5) @.str.22) #19
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %275, %272
  br label %282

282:                                              ; preds = %281, %275
  %283 = phi ptr [ %238, %281 ], [ %278, %275 ]
  %284 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %283, ptr noundef nonnull dereferenceable(4) @.str.364) #19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load ptr, ptr @stderr, align 8, !tbaa !43
  %288 = call i64 @fwrite(ptr nonnull @.str.365, i64 51, i64 1, ptr %287) #21
  br label %304

289:                                              ; preds = %282
  %290 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %283, ptr noundef nonnull dereferenceable(4) @.str.26) #19
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @mkv_output, i64 40, i1 false), !tbaa.struct !71
  %293 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 45
  store i32 0, ptr %293, align 8, !tbaa !72
  %294 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 52
  store i32 0, ptr %294, align 4, !tbaa !73
  %295 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 44
  store i32 0, ptr %295, align 4, !tbaa !74
  br label %304

296:                                              ; preds = %289
  %297 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %283, ptr noundef nonnull dereferenceable(4) @.str.27) #19
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @flv_output, i64 40, i1 false), !tbaa.struct !71
  %300 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 45
  store i32 0, ptr %300, align 8, !tbaa !72
  %301 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 52
  store i32 1, ptr %301, align 4, !tbaa !73
  %302 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 44
  store i32 0, ptr %302, align 4, !tbaa !74
  br label %304

303:                                              ; preds = %296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @raw_output, i64 40, i1 false), !tbaa.struct !71
  br label %304

304:                                              ; preds = %303, %299, %292, %286
  br i1 %285, label %1149, label %305

305:                                              ; preds = %304
  %306 = load ptr, ptr @output, align 8, !tbaa !75
  %307 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 3
  %308 = call i32 %306(ptr noundef nonnull %246, ptr noundef nonnull %307) #18
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = load ptr, ptr @stderr, align 8, !tbaa !43
  %312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.12, ptr noundef nonnull %246) #21
  br label %1149

313:                                              ; preds = %305
  %314 = load i32, ptr @optind, align 4, !tbaa !42
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr @optind, align 4, !tbaa !42
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds ptr, ptr %1, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !43
  %319 = icmp slt i32 %315, %0
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = add nsw i32 %314, 2
  store i32 %321, ptr @optind, align 4, !tbaa !42
  %322 = sext i32 %315 to i64
  %323 = getelementptr inbounds ptr, ptr %1, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !43
  br label %325

325:                                              ; preds = %320, %313
  %326 = phi ptr [ %324, %320 ], [ null, %313 ]
  %327 = getelementptr inbounds %struct.cli_input_opt_t, ptr %16, i64 0, i32 1
  store ptr %326, ptr %327, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %328 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 7
  %329 = load i32, ptr %328, align 4, !tbaa !78
  store i32 %329, ptr %18, align 4, !tbaa !79
  %330 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 48
  %331 = load i32, ptr %330, align 4, !tbaa !81
  %332 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 1
  store i32 %331, ptr %332, align 4, !tbaa !82
  %333 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 49
  %334 = load i32, ptr %333, align 8, !tbaa !83
  %335 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 2
  store i32 %334, ptr %335, align 4, !tbaa !84
  %336 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 26
  %337 = load i32, ptr %336, align 8, !tbaa !85
  %338 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 4
  store i32 %337, ptr %338, align 4, !tbaa !86
  %339 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 11
  %340 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 11, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !87
  %342 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 5
  store i32 %341, ptr %342, align 4, !tbaa !88
  %343 = load i32, ptr %339, align 4, !tbaa !89
  %344 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 6
  store i32 %343, ptr %344, align 4, !tbaa !90
  %345 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 53
  %346 = load i32, ptr %345, align 8, !tbaa !91
  %347 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 7
  store i32 %346, ptr %347, align 4, !tbaa !92
  %348 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 47
  %349 = load i32, ptr %348, align 8, !tbaa !60
  %350 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 10
  store i32 %349, ptr %350, align 4, !tbaa !93
  %351 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %318) #19
  %352 = getelementptr inbounds i8, ptr %318, i64 %351
  br label %353

353:                                              ; preds = %353, %325
  %354 = phi ptr [ %352, %325 ], [ %359, %353 ]
  %355 = load i8, ptr %354, align 1, !tbaa !69
  %356 = icmp ne i8 %355, 46
  %357 = icmp ugt ptr %354, %318
  %358 = and i1 %357, %356
  %359 = getelementptr inbounds i8, ptr %354, i64 -1
  br i1 %358, label %353, label %360, !llvm.loop !70

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 2
  %362 = icmp eq i8 %355, 46
  %363 = zext i1 %362 to i64
  %364 = getelementptr inbounds i8, ptr %354, i64 %363
  %365 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %318, ptr noundef nonnull dereferenceable(2) @.str.363) #19
  %366 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %237, ptr noundef nonnull dereferenceable(5) @.str.22) #19
  %367 = icmp eq i32 %366, 0
  %368 = icmp eq i32 %365, 0
  %369 = select i1 %368, i1 %367, i1 false
  %370 = select i1 %369, ptr @.str.23, ptr %364
  br i1 %368, label %376, label %371

371:                                              ; preds = %360
  %372 = call noalias ptr @fopen(ptr noundef %318, ptr noundef nonnull @.str.366)
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374

374:                                              ; preds = %371
  %375 = call i32 @fclose(ptr noundef nonnull %372)
  br label %376

376:                                              ; preds = %374, %371, %360
  %377 = select i1 %367, ptr %370, ptr %237
  %378 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %377, ptr noundef nonnull dereferenceable(4) @.str.367) #19
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %376
  %381 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %370, ptr noundef nonnull dereferenceable(4) @.str.368) #19
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %380
  %384 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %370, ptr noundef nonnull dereferenceable(4) @.str.369) #19
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383, %380, %376
  %387 = load ptr, ptr @stderr, align 8, !tbaa !43
  %388 = call i64 @fwrite(ptr nonnull @.str.370, i64 50, i64 1, ptr %387) #21
  br label %1149

389:                                              ; preds = %383
  %390 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %377, ptr noundef nonnull dereferenceable(4) @.str.24) #19
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @y4m_input, i64 56, i1 false), !tbaa.struct !94
  br label %410

393:                                              ; preds = %389
  %394 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %377, ptr noundef nonnull dereferenceable(4) @.str.23) #19
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !tbaa.struct !94
  br label %410

397:                                              ; preds = %393
  br i1 %367, label %398, label %403

398:                                              ; preds = %397
  %399 = load ptr, ptr @yuv_input, align 8, !tbaa !95
  %400 = call i32 %399(ptr noundef %318, ptr noundef nonnull %361, ptr noundef nonnull %18, ptr noundef nonnull %16) #18
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false), !tbaa.struct !94
  br label %403

403:                                              ; preds = %402, %398, %397
  %404 = phi ptr [ %377, %398 ], [ @.str.23, %402 ], [ %377, %397 ]
  %405 = load ptr, ptr %361, align 8, !tbaa !43
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %403
  %408 = load ptr, ptr @stderr, align 8, !tbaa !43
  %409 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %408, ptr noundef nonnull @.str.371, ptr noundef %318) #21
  br label %1149

410:                                              ; preds = %403, %396, %392
  %411 = phi ptr [ %404, %403 ], [ %377, %396 ], [ %377, %392 ]
  %412 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %411) #18
  %413 = load ptr, ptr %361, align 8, !tbaa !97
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %422

415:                                              ; preds = %410
  %416 = load ptr, ptr @input, align 8, !tbaa !95
  %417 = call i32 %416(ptr noundef %318, ptr noundef nonnull %361, ptr noundef nonnull %18, ptr noundef nonnull %16) #18
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %415
  %420 = load ptr, ptr @stderr, align 8, !tbaa !43
  %421 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.13, ptr noundef %318) #21
  br label %1149

422:                                              ; preds = %415, %410
  call void @x264_reduce_fraction(ptr noundef nonnull %342, ptr noundef nonnull %344) #18
  call void @x264_reduce_fraction(ptr noundef nonnull %332, ptr noundef nonnull %335) #18
  %423 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 38
  %424 = load i32, ptr %423, align 8, !tbaa !59
  %425 = icmp sgt i32 %424, 1
  br i1 %425, label %426, label %443

426:                                              ; preds = %422
  %427 = load ptr, ptr @stderr, align 8, !tbaa !43
  %428 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 11
  %429 = load i32, ptr %428, align 4, !tbaa !98
  %430 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 3
  %431 = load i32, ptr %430, align 4, !tbaa !99
  %432 = load i32, ptr %338, align 4, !tbaa !86
  %433 = icmp eq i32 %432, 0
  %434 = select i1 %433, i32 112, i32 105
  %435 = load i32, ptr %342, align 4, !tbaa !88
  %436 = load i32, ptr %344, align 4, !tbaa !90
  %437 = load i32, ptr %332, align 4, !tbaa !82
  %438 = load i32, ptr %335, align 4, !tbaa !84
  %439 = load i32, ptr %350, align 4, !tbaa !93
  %440 = icmp eq i32 %439, 0
  %441 = select i1 %440, i32 99, i32 118
  %442 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %427, ptr noundef nonnull @.str.14, ptr noundef nonnull %19, i32 noundef %429, i32 noundef %431, i32 noundef %434, i32 noundef %435, i32 noundef %436, i32 noundef %437, i32 noundef %438, i32 noundef %441) #21
  br label %443

443:                                              ; preds = %426, %422
  %444 = icmp eq ptr %245, null
  br i1 %444, label %458, label %445

445:                                              ; preds = %443
  %446 = icmp eq i32 %241, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %445
  %448 = load ptr, ptr @stderr, align 8, !tbaa !43
  %449 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %448) #21
  br label %1149

450:                                              ; preds = %445
  %451 = load ptr, ptr @timecode_input, align 8, !tbaa !95
  %452 = call i32 %451(ptr noundef nonnull %245, ptr noundef nonnull %361, ptr noundef nonnull %18, ptr noundef nonnull %16) #18
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %450
  %455 = load ptr, ptr @stderr, align 8, !tbaa !43
  %456 = call i64 @fwrite(ptr nonnull @.str.16, i64 36, i64 1, ptr %455) #21
  br label %1149

457:                                              ; preds = %450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @timecode_input, i64 56, i1 false), !tbaa.struct !94
  br label %468

458:                                              ; preds = %443
  %459 = load i32, ptr %350, align 4, !tbaa !93
  %460 = icmp eq i32 %459, 0
  %461 = getelementptr inbounds %struct.cli_input_opt_t, ptr %16, i64 0, i32 2
  %462 = load ptr, ptr %461, align 8
  %463 = icmp ne ptr %462, null
  %464 = select i1 %460, i1 %463, i1 false
  br i1 %464, label %465, label %468

465:                                              ; preds = %458
  %466 = load ptr, ptr @stderr, align 8, !tbaa !43
  %467 = call i64 @fwrite(ptr nonnull @.str.17, i64 56, i64 1, ptr %466) #21
  br label %1149

468:                                              ; preds = %458, %457
  %469 = load i32, ptr %18, align 4, !tbaa !79
  store i32 %469, ptr %328, align 4, !tbaa !78
  %470 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 3
  %471 = load i32, ptr %470, align 4, !tbaa !99
  %472 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 6
  store i32 %471, ptr %472, align 8, !tbaa !100
  %473 = load i32, ptr %350, align 4, !tbaa !93
  store i32 %473, ptr %348, align 8, !tbaa !60
  %474 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 11
  %475 = load i32, ptr %474, align 4, !tbaa !98
  %476 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 5
  store i32 %475, ptr %476, align 4, !tbaa !101
  %477 = icmp eq i32 %242, 0
  %478 = load i32, ptr %338, align 4
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %477, i1 %479, i1 false
  br i1 %480, label %481, label %491

481:                                              ; preds = %468
  %482 = load ptr, ptr @stderr, align 8, !tbaa !43
  %483 = load i32, ptr %347, align 4, !tbaa !92
  %484 = icmp eq i32 %483, 0
  %485 = select i1 %484, i32 98, i32 116
  %486 = select i1 %484, i32 116, i32 98
  %487 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %482, ptr noundef nonnull @.str.18, i32 noundef %485, i32 noundef %486) #21
  store i32 1, ptr %336, align 8, !tbaa !85
  %488 = load i32, ptr %347, align 4, !tbaa !92
  %489 = icmp ne i32 %488, 0
  %490 = zext i1 %489 to i32
  store i32 %490, ptr %345, align 8, !tbaa !91
  br label %491

491:                                              ; preds = %481, %468
  %492 = icmp eq i32 %241, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %491
  %494 = load i32, ptr %332, align 4, !tbaa !82
  store i32 %494, ptr %330, align 4, !tbaa !81
  %495 = load i32, ptr %335, align 4, !tbaa !84
  store i32 %495, ptr %333, align 8, !tbaa !83
  br label %496

496:                                              ; preds = %493, %491
  %497 = load i32, ptr %348, align 8, !tbaa !60
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 8
  %501 = load i32, ptr %500, align 4, !tbaa !102
  %502 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 50
  store i32 %501, ptr %502, align 4, !tbaa !103
  %503 = getelementptr inbounds %struct.video_info_t, ptr %18, i64 0, i32 9
  br label %507

504:                                              ; preds = %496
  %505 = load i32, ptr %333, align 8, !tbaa !83
  %506 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 50
  store i32 %505, ptr %506, align 4, !tbaa !103
  br label %507

507:                                              ; preds = %504, %499
  %508 = phi ptr [ %330, %504 ], [ %503, %499 ]
  %509 = load i32, ptr %508, align 4, !tbaa !42
  %510 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 51
  store i32 %509, ptr %510, align 8, !tbaa !104
  %511 = getelementptr inbounds %struct.cli_input_opt_t, ptr %16, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8
  %513 = icmp ne ptr %512, null
  %514 = select i1 %444, i1 %513, i1 false
  br i1 %514, label %515, label %551

515:                                              ; preds = %507
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #18
  %516 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %512, ptr noundef nonnull @.str.19, ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  switch i32 %516, label %527 [
    i32 0, label %517
    i32 1, label %521
  ]

517:                                              ; preds = %515
  %518 = load ptr, ptr @stderr, align 8, !tbaa !43
  %519 = load ptr, ptr %511, align 8, !tbaa !62
  %520 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %518, ptr noundef nonnull @.str.20, ptr noundef %519) #21
  br label %601

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 50
  %523 = load i32, ptr %522, align 4, !tbaa !103
  %524 = zext i32 %523 to i64
  store i64 %524, ptr %20, align 8, !tbaa !105
  %525 = load ptr, ptr %511, align 8, !tbaa !62
  %526 = call i64 @strtoul(ptr nocapture noundef %525, ptr noundef null, i32 noundef 10) #18
  store i64 %526, ptr %21, align 8, !tbaa !105
  br label %527

527:                                              ; preds = %521, %515
  %528 = load i64, ptr %20, align 8, !tbaa !105
  %529 = icmp ugt i64 %528, 4294967295
  %530 = load i64, ptr %21, align 8
  %531 = icmp ugt i64 %530, 4294967295
  %532 = select i1 %529, i1 true, i1 %531
  br i1 %532, label %533, label %536

533:                                              ; preds = %527
  %534 = load ptr, ptr @stderr, align 8, !tbaa !43
  %535 = call i64 @fwrite(ptr nonnull @.str.21, i64 59, i64 1, ptr %534) #21
  br label %601

536:                                              ; preds = %527
  %537 = uitofp i64 %530 to double
  %538 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 51
  %539 = load i32, ptr %538, align 8, !tbaa !104
  %540 = uitofp i32 %539 to double
  %541 = fdiv double %537, %540
  %542 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 50
  %543 = load i32, ptr %542, align 4, !tbaa !103
  %544 = uitofp i32 %543 to double
  %545 = uitofp i64 %528 to double
  %546 = fdiv double %544, %545
  %547 = fmul double %541, %546
  %548 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 6
  store double %547, ptr %548, align 8, !tbaa !107
  %549 = trunc i64 %528 to i32
  store i32 %549, ptr %542, align 4, !tbaa !103
  %550 = trunc i64 %530 to i32
  store i32 %550, ptr %538, align 8, !tbaa !104
  store i32 1, ptr %348, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #18
  br label %551

551:                                              ; preds = %536, %507
  %552 = load i32, ptr %340, align 8, !tbaa !87
  %553 = icmp eq i32 %552, 0
  %554 = load i32, ptr %339, align 4
  %555 = icmp eq i32 %554, 0
  %556 = select i1 %553, i1 true, i1 %555
  br i1 %556, label %557, label %560

557:                                              ; preds = %551
  %558 = load i32, ptr %342, align 4, !tbaa !88
  store i32 %558, ptr %340, align 8, !tbaa !87
  %559 = load i32, ptr %344, align 4, !tbaa !90
  store i32 %559, ptr %339, align 4, !tbaa !89
  br label %560

560:                                              ; preds = %551, %557
  %561 = icmp eq i32 %240, 0
  br i1 %561, label %562, label %603

562:                                              ; preds = %560
  %563 = load i32, ptr %476, align 4, !tbaa !101
  %564 = add nsw i32 %563, 15
  %565 = ashr i32 %564, 4
  %566 = load i32, ptr %472, align 8, !tbaa !100
  %567 = add nsw i32 %566, 15
  %568 = ashr i32 %567, 4
  %569 = load i32, ptr @x264_levels, align 4, !tbaa !108
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %603, label %571

571:                                              ; preds = %562
  %572 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 8
  %573 = load i32, ptr %572, align 8, !tbaa !110
  br label %579

574:                                              ; preds = %579
  %575 = add nuw i64 %580, 1
  %576 = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %575
  %577 = load i32, ptr %576, align 4, !tbaa !108
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %603, label %579, !llvm.loop !111

579:                                              ; preds = %571, %574
  %580 = phi i64 [ 0, %571 ], [ %575, %574 ]
  %581 = phi i32 [ %569, %571 ], [ %577, %574 ]
  %582 = icmp eq i32 %573, %581
  br i1 %582, label %583, label %574

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 12
  %585 = mul i32 %565, 384
  %586 = mul i32 %585, %568
  %587 = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %580, i32 3
  %588 = load i32, ptr %587, align 4, !tbaa !112
  %589 = load i32, ptr %584, align 8, !tbaa !113
  %590 = mul nsw i32 %586, %589
  %591 = icmp sgt i32 %590, %588
  %592 = icmp sgt i32 %589, 1
  %593 = and i1 %592, %591
  br i1 %593, label %594, label %603

594:                                              ; preds = %583, %594
  %595 = phi i32 [ %596, %594 ], [ %589, %583 ]
  %596 = add nsw i32 %595, -1
  %597 = mul nsw i32 %586, %596
  %598 = icmp sgt i32 %597, %588
  %599 = icmp sgt i32 %595, 2
  %600 = and i1 %599, %598
  br i1 %600, label %594, label %602, !llvm.loop !114

601:                                              ; preds = %533, %517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #18
  br label %1149

602:                                              ; preds = %594
  store i32 %596, ptr %584, align 8, !tbaa !113
  br label %603

603:                                              ; preds = %574, %562, %583, %602, %560
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %19)
  %604 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @SigIntHandler) #18
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %12) #18
  %605 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 51
  %606 = load i32, ptr %605, align 8, !tbaa !104
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 50
  %609 = load i32, ptr %608, align 4, !tbaa !103
  %610 = zext i32 %609 to i64
  br label %611

611:                                              ; preds = %611, %603
  %612 = phi i64 [ %610, %603 ], [ %617, %611 ]
  %613 = phi i64 [ %607, %603 ], [ %618, %611 ]
  %614 = phi i64 [ undef, %603 ], [ %619, %611 ]
  %615 = urem i64 %612, %613
  %616 = icmp eq i64 %615, 0
  %617 = select i1 %616, i64 %612, i64 %613
  %618 = select i1 %616, i64 %613, i64 %615
  %619 = select i1 %616, i64 %613, i64 %614
  br i1 %616, label %620, label %611

620:                                              ; preds = %611
  %621 = sdiv i64 %607, %619
  %622 = trunc i64 %621 to i32
  %623 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 38
  %624 = load i32, ptr %623, align 8, !tbaa !59
  %625 = icmp slt i32 %624, 3
  %626 = load i32, ptr %23, align 8, !tbaa !35
  %627 = and i32 %626, 1
  %628 = select i1 %625, i32 %627, i32 0
  store i32 %628, ptr %23, align 8, !tbaa !35
  %629 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !115
  %630 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !97
  %632 = call i32 %629(ptr noundef %631) #18
  %633 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 1
  %634 = load i32, ptr %633, align 4, !tbaa !54
  %635 = sub nsw i32 %632, %634
  %636 = call i32 @llvm.smax.i32(i32 %635, i32 0)
  %637 = icmp slt i32 %635, 1
  %638 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 9
  %639 = load i32, ptr %638, align 4
  %640 = icmp slt i32 %639, %636
  %641 = select i1 %637, i1 true, i1 %640
  %642 = icmp sgt i32 %639, 0
  %643 = select i1 %641, i1 %642, i1 false
  %644 = select i1 %643, i32 %639, i32 %636
  store i32 %644, ptr %638, align 4, !tbaa !46
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %650, label %646

646:                                              ; preds = %620
  %647 = udiv i32 %644, 1000
  %648 = call i32 @llvm.smin.i32(i32 %647, i32 10)
  %649 = call i32 @llvm.smax.i32(i32 %648, i32 1)
  br label %650

650:                                              ; preds = %646, %620
  %651 = phi i32 [ %649, %646 ], [ 10, %620 ]
  %652 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 7
  %653 = load i32, ptr %652, align 8, !tbaa !116
  %654 = icmp ne i32 %653, 0
  %655 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 47
  %656 = load i32, ptr %655, align 8
  %657 = icmp eq i32 %656, 0
  %658 = select i1 %654, i1 %657, i1 false
  br i1 %658, label %659, label %682

659:                                              ; preds = %650
  %660 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 54
  store i32 1, ptr %660, align 4, !tbaa !117
  %661 = sext i32 %653 to i64
  %662 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 49
  %663 = load i32, ptr %662, align 8, !tbaa !83
  store i32 %663, ptr %608, align 4, !tbaa !103
  %664 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 48
  %665 = load i32, ptr %664, align 4, !tbaa !81
  %666 = uitofp i32 %665 to float
  %667 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %661, i32 2
  %668 = load float, ptr %667, align 4, !tbaa !118
  %669 = fmul float %668, %666
  %670 = fpext float %669 to double
  %671 = call double @fmod(double noundef %670, double noundef 1.000000e+00) #18
  %672 = fcmp une double %671, 0.000000e+00
  br i1 %672, label %673, label %676

673:                                              ; preds = %659
  %674 = load ptr, ptr @stderr, align 8, !tbaa !43
  %675 = call i64 @fwrite(ptr nonnull @.str.372, i64 56, i64 1, ptr %674) #21
  br label %1147

676:                                              ; preds = %659
  %677 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %661
  %678 = load i32, ptr %664, align 4, !tbaa !81
  %679 = uitofp i32 %678 to float
  %680 = fmul float %668, %679
  %681 = fptoui float %680 to i32
  store i32 %681, ptr %605, align 8, !tbaa !104
  br label %682

682:                                              ; preds = %676, %650
  %683 = phi ptr [ %677, %676 ], [ null, %650 ]
  %684 = call ptr @x264_encoder_open_96(ptr noundef nonnull %22) #18
  %685 = icmp eq ptr %684, null
  br i1 %685, label %686, label %692

686:                                              ; preds = %682
  %687 = load ptr, ptr @stderr, align 8, !tbaa !43
  %688 = call i64 @fwrite(ptr nonnull @.str.373, i64 39, i64 1, ptr %687) #21
  %689 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !120
  %690 = load ptr, ptr %630, align 8, !tbaa !97
  %691 = call i32 %689(ptr noundef %690) #18
  br label %1147

692:                                              ; preds = %682
  call void @x264_encoder_parameters(ptr noundef nonnull %684, ptr noundef nonnull %22) #18
  %693 = load i32, ptr %605, align 8, !tbaa !104
  %694 = udiv i32 %693, %622
  %695 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 1), align 8, !tbaa !121
  %696 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 3
  %697 = load ptr, ptr %696, align 8, !tbaa !122
  %698 = call i32 %695(ptr noundef %697, ptr noundef nonnull %22) #18
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %709, label %700

700:                                              ; preds = %692
  %701 = load ptr, ptr @stderr, align 8, !tbaa !43
  %702 = call i64 @fwrite(ptr nonnull @.str.374, i64 38, i64 1, ptr %701) #21
  %703 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !120
  %704 = load ptr, ptr %630, align 8, !tbaa !97
  %705 = call i32 %703(ptr noundef %704) #18
  %706 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !tbaa !123
  %707 = load ptr, ptr %696, align 8, !tbaa !122
  %708 = call i32 %706(ptr noundef %707, i64 noundef -1, i64 noundef -1) #18
  br label %1147

709:                                              ; preds = %692
  %710 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !tbaa !124
  %711 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 7
  %712 = load i32, ptr %711, align 4, !tbaa !78
  %713 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 5
  %714 = load i32, ptr %713, align 4, !tbaa !101
  %715 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 6
  %716 = load i32, ptr %715, align 8, !tbaa !100
  %717 = call i32 %710(ptr noundef nonnull %12, i32 noundef %712, i32 noundef %714, i32 noundef %716) #18
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %722, label %719

719:                                              ; preds = %709
  %720 = load ptr, ptr @stderr, align 8, !tbaa !43
  %721 = call i64 @fwrite(ptr nonnull @.str.375, i64 28, i64 1, ptr %720) #21
  br label %1147

722:                                              ; preds = %709
  %723 = call i64 @x264_mdate() #18
  %724 = load i32, ptr %605, align 8, !tbaa !104
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 49
  %727 = load i32, ptr %726, align 8, !tbaa !83
  %728 = zext i32 %727 to i64
  %729 = mul nuw nsw i64 %728, %725
  %730 = load i32, ptr %608, align 4, !tbaa !103
  %731 = zext i32 %730 to i64
  %732 = udiv i64 %729, %731
  %733 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 48
  %734 = load i32, ptr %733, align 4, !tbaa !81
  %735 = zext i32 %734 to i64
  %736 = udiv i64 %732, %735
  %737 = icmp ult i64 %732, %735
  br i1 %737, label %738, label %741

738:                                              ; preds = %722
  %739 = load ptr, ptr @stderr, align 8, !tbaa !43
  %740 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %739, ptr noundef nonnull @.str.376, i64 noundef %736) #21
  br label %1147

741:                                              ; preds = %722
  %742 = getelementptr inbounds %struct.x264_param_t, ptr %22, i64 0, i32 44
  %743 = load i32, ptr %742, align 4, !tbaa !74
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %761

745:                                              ; preds = %741
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  %746 = call i32 @x264_encoder_headers(ptr noundef nonnull %684, ptr noundef nonnull %13, ptr noundef nonnull %14) #18
  %747 = icmp slt i32 %746, 0
  br i1 %747, label %748, label %751

748:                                              ; preds = %745
  %749 = load ptr, ptr @stderr, align 8, !tbaa !43
  %750 = call i64 @fwrite(ptr nonnull @.str.377, i64 42, i64 1, ptr %749) #21
  br label %758

751:                                              ; preds = %745
  %752 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 2), align 8, !tbaa !125
  %753 = load ptr, ptr %696, align 8, !tbaa !122
  %754 = load ptr, ptr %13, align 8, !tbaa !43
  %755 = call i32 %752(ptr noundef %753, ptr noundef %754) #18
  %756 = sext i32 %755 to i64
  %757 = icmp sgt i32 %755, -1
  br label %758

758:                                              ; preds = %751, %748
  %759 = phi i64 [ 0, %748 ], [ %756, %751 ]
  %760 = phi i1 [ false, %748 ], [ %757, %751 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br i1 %760, label %761, label %1147

761:                                              ; preds = %758, %741
  %762 = phi i64 [ 0, %741 ], [ %759, %758 ]
  %763 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 5
  %764 = load ptr, ptr %763, align 8, !tbaa !61
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766

766:                                              ; preds = %761
  %767 = call i64 @fwrite(ptr nonnull @.str.378, i64 21, i64 1, ptr nonnull %764)
  br label %768

768:                                              ; preds = %766, %761
  %769 = load i1, ptr @b_ctrl_c, align 4
  br i1 %769, label %989, label %770

770:                                              ; preds = %768
  %771 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 4
  %772 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 6
  %773 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 4
  %774 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 2
  %775 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 4
  %776 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 4
  %777 = sext i32 %694 to i64
  %778 = getelementptr inbounds %struct.cli_opt_t, ptr %23, i64 0, i32 4
  %779 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 1
  %780 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 1
  %781 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 1
  %782 = getelementptr inbounds %struct.x264_picture_t, ptr %12, i64 0, i32 1
  %783 = getelementptr inbounds %struct.x264_picture_t, ptr %6, i64 0, i32 5
  %784 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !tbaa !126
  %785 = load ptr, ptr %630, align 8, !tbaa !97
  %786 = load i32, ptr %633, align 4, !tbaa !54
  %787 = call i32 %784(ptr noundef nonnull %12, ptr noundef %785, i32 noundef %786) #18
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %802, label %989

789:                                              ; preds = %982
  %790 = load i1, ptr @b_ctrl_c, align 4
  %791 = xor i1 %790, true
  %792 = icmp slt i32 %987, %644
  %793 = or i1 %645, %792
  %794 = select i1 %791, i1 %793, i1 false
  br i1 %794, label %795, label %989, !llvm.loop !127

795:                                              ; preds = %789
  %796 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !tbaa !126
  %797 = load ptr, ptr %630, align 8, !tbaa !97
  %798 = load i32, ptr %633, align 4, !tbaa !54
  %799 = add nsw i32 %798, %987
  %800 = call i32 %796(ptr noundef nonnull %12, ptr noundef %797, i32 noundef %799) #18
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %989, !llvm.loop !127

802:                                              ; preds = %770, %795
  %803 = phi i64 [ %950, %795 ], [ 0, %770 ]
  %804 = phi i64 [ %983, %795 ], [ %762, %770 ]
  %805 = phi i32 [ %984, %795 ], [ 0, %770 ]
  %806 = phi i64 [ %986, %795 ], [ 0, %770 ]
  %807 = phi i32 [ %869, %795 ], [ 0, %770 ]
  %808 = phi i64 [ %871, %795 ], [ -1, %770 ]
  %809 = phi i32 [ %987, %795 ], [ 0, %770 ]
  %810 = phi double [ %842, %795 ], [ 0.000000e+00, %770 ]
  %811 = load i32, ptr %655, align 8
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %815

813:                                              ; preds = %802
  %814 = sext i32 %809 to i64
  store i64 %814, ptr %771, align 8, !tbaa !128
  br label %815

815:                                              ; preds = %813, %802
  %816 = load i32, ptr %652, align 8, !tbaa !116
  %817 = icmp ne i32 %816, 0
  %818 = and i1 %812, %817
  br i1 %818, label %819, label %833

819:                                              ; preds = %815
  %820 = load i32, ptr %683, align 4, !tbaa !132
  %821 = srem i32 %809, %820
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.cli_pulldown_t, ptr %683, i64 0, i32 1, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !69
  %825 = zext i8 %824 to i32
  store i32 %825, ptr %774, align 8, !tbaa !133
  %826 = fadd double %810, 5.000000e-01
  %827 = fptosi double %826 to i64
  store i64 %827, ptr %775, align 8, !tbaa !128
  %828 = zext i8 %824 to i64
  %829 = getelementptr inbounds [10 x float], ptr @pulldown_frame_duration, i64 0, i64 %828
  %830 = load float, ptr %829, align 4, !tbaa !134
  %831 = fpext float %830 to double
  %832 = fadd double %810, %831
  br label %841

833:                                              ; preds = %815
  %834 = load double, ptr %772, align 8, !tbaa !107
  %835 = fcmp une double %834, 0.000000e+00
  br i1 %835, label %836, label %841

836:                                              ; preds = %833
  %837 = load i64, ptr %773, align 8, !tbaa !128
  %838 = sitofp i64 %837 to double
  %839 = call double @llvm.fmuladd.f64(double %838, double %834, double 5.000000e-01)
  %840 = fptosi double %839 to i64
  store i64 %840, ptr %773, align 8, !tbaa !128
  br label %841

841:                                              ; preds = %836, %833, %819
  %842 = phi double [ %810, %836 ], [ %810, %833 ], [ %832, %819 ]
  %843 = load i64, ptr %776, align 8, !tbaa !128
  %844 = mul nsw i64 %843, %777
  %845 = icmp sgt i64 %843, %808
  br i1 %845, label %868, label %846

846:                                              ; preds = %841
  %847 = load i32, ptr %623, align 8, !tbaa !59
  %848 = icmp sgt i32 %847, 0
  br i1 %848, label %849, label %864

849:                                              ; preds = %846
  %850 = icmp sgt i32 %847, 2
  %851 = icmp slt i32 %807, 3
  %852 = select i1 %850, i1 true, i1 %851
  br i1 %852, label %853, label %857

853:                                              ; preds = %849
  %854 = load ptr, ptr @stderr, align 8, !tbaa !43
  %855 = mul nsw i64 %808, %777
  %856 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %854, ptr noundef nonnull @.str.379, i32 noundef %809, i64 noundef %844, i64 noundef %855) #21
  br label %862

857:                                              ; preds = %849
  %858 = icmp eq i32 %807, 3
  br i1 %858, label %859, label %862

859:                                              ; preds = %857
  %860 = load ptr, ptr @stderr, align 8, !tbaa !43
  %861 = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %860) #21
  br label %862

862:                                              ; preds = %859, %857, %853
  %863 = add nsw i32 %807, 1
  br label %864

864:                                              ; preds = %862, %846
  %865 = phi i32 [ %863, %862 ], [ %807, %846 ]
  %866 = add nsw i64 %808, %736
  store i64 %866, ptr %776, align 8, !tbaa !128
  %867 = mul nsw i64 %866, %777
  br label %868

868:                                              ; preds = %864, %841
  %869 = phi i32 [ %865, %864 ], [ %807, %841 ]
  %870 = phi i64 [ %867, %864 ], [ %844, %841 ]
  %871 = load i64, ptr %776, align 8, !tbaa !128
  %872 = load ptr, ptr %763, align 8, !tbaa !61
  %873 = icmp eq ptr %872, null
  br i1 %873, label %884, label %874

874:                                              ; preds = %868
  %875 = sitofp i64 %870 to double
  %876 = load i32, ptr %608, align 4, !tbaa !103
  %877 = uitofp i32 %876 to double
  %878 = load i32, ptr %605, align 8, !tbaa !104
  %879 = uitofp i32 %878 to double
  %880 = fdiv double %877, %879
  %881 = fmul double %880, %875
  %882 = fmul double %881, 1.000000e+03
  %883 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %872, ptr noundef nonnull @.str.381, double noundef %882)
  br label %884

884:                                              ; preds = %874, %868
  %885 = load ptr, ptr %778, align 8, !tbaa !58
  %886 = icmp eq ptr %885, null
  br i1 %886, label %932, label %887

887:                                              ; preds = %884
  %888 = load i32, ptr %633, align 4, !tbaa !54
  %889 = add nsw i32 %888, %809
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store i32 -1, ptr %9, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  %890 = icmp sgt i32 %889, -1
  br i1 %890, label %891, label %931

891:                                              ; preds = %887, %907
  %892 = load ptr, ptr %778, align 8, !tbaa !58
  %893 = call i64 @ftell(ptr noundef %892)
  %894 = load ptr, ptr %778, align 8, !tbaa !58
  %895 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %894, ptr noundef nonnull @.str.387, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #18
  %896 = load i32, ptr %9, align 4, !tbaa !42
  %897 = icmp sgt i32 %896, %889
  %898 = icmp eq i32 %895, -1
  %899 = select i1 %897, i1 true, i1 %898
  br i1 %899, label %900, label %903

900:                                              ; preds = %891
  store i32 0, ptr %12, align 8, !tbaa !135
  store i32 0, ptr %781, align 4, !tbaa !136
  %901 = load ptr, ptr %778, align 8, !tbaa !58
  %902 = call i32 @fseek(ptr noundef %901, i64 noundef %893, i32 noundef 0)
  br label %931

903:                                              ; preds = %891
  %904 = icmp slt i32 %896, %889
  %905 = icmp eq i32 %895, 3
  %906 = select i1 %904, i1 %905, i1 false
  br i1 %906, label %907, label %910

907:                                              ; preds = %903, %919
  %908 = load i32, ptr %9, align 4, !tbaa !42
  %909 = icmp slt i32 %908, %889
  br i1 %909, label %891, label %931, !llvm.loop !137

910:                                              ; preds = %903
  %911 = load i32, ptr %10, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, ptr %779, align 4, !tbaa !136
  %913 = load i8, ptr %11, align 1, !tbaa !69
  switch i8 %913, label %919 [
    i8 73, label %914
    i8 105, label %915
    i8 80, label %916
    i8 66, label %917
    i8 98, label %918
  ]

914:                                              ; preds = %910
  store i32 1, ptr %12, align 8, !tbaa !135
  br label %919

915:                                              ; preds = %910
  store i32 2, ptr %12, align 8, !tbaa !135
  br label %919

916:                                              ; preds = %910
  store i32 3, ptr %12, align 8, !tbaa !135
  br label %919

917:                                              ; preds = %910
  store i32 4, ptr %12, align 8, !tbaa !135
  br label %919

918:                                              ; preds = %910
  store i32 5, ptr %12, align 8, !tbaa !135
  br label %919

919:                                              ; preds = %918, %917, %916, %915, %914, %910
  %920 = phi i32 [ %895, %914 ], [ %895, %915 ], [ %895, %916 ], [ %895, %917 ], [ %895, %918 ], [ 0, %910 ]
  %921 = icmp ne i32 %920, 3
  %922 = icmp slt i32 %911, -1
  %923 = select i1 %921, i1 true, i1 %922
  %924 = icmp sgt i32 %911, 51
  %925 = select i1 %923, i1 true, i1 %924
  br i1 %925, label %926, label %907

926:                                              ; preds = %919
  %927 = load ptr, ptr @stderr, align 8, !tbaa !43
  %928 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %927, ptr noundef nonnull @.str.388, i32 noundef %889) #21
  %929 = load ptr, ptr %778, align 8, !tbaa !58
  %930 = call i32 @fclose(ptr noundef %929)
  store ptr null, ptr %778, align 8, !tbaa !58
  store i32 0, ptr %12, align 8, !tbaa !135
  store i32 0, ptr %780, align 4, !tbaa !136
  br label %931

931:                                              ; preds = %907, %887, %926, %900
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  br label %933

932:                                              ; preds = %884
  store i32 0, ptr %12, align 8, !tbaa !135
  store i32 0, ptr %782, align 4, !tbaa !136
  br label %933

933:                                              ; preds = %932, %931
  %934 = load ptr, ptr %696, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %935 = call i32 @x264_encoder_encode(ptr noundef nonnull %684, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %6) #18
  %936 = icmp slt i32 %935, 0
  br i1 %936, label %937, label %940

937:                                              ; preds = %933
  %938 = load ptr, ptr @stderr, align 8, !tbaa !43
  %939 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %938) #21
  br label %949

940:                                              ; preds = %933
  %941 = icmp eq i32 %935, 0
  br i1 %941, label %949, label %942

942:                                              ; preds = %940
  %943 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 3), align 8, !tbaa !138
  %944 = load ptr, ptr %7, align 8, !tbaa !43
  %945 = getelementptr inbounds %struct.x264_nal_t, ptr %944, i64 0, i32 3
  %946 = load ptr, ptr %945, align 8, !tbaa !139
  %947 = call i32 %943(ptr noundef %934, ptr noundef %946, i32 noundef %935, ptr noundef nonnull %6) #18
  %948 = load i64, ptr %783, align 8, !tbaa !141
  br label %949

949:                                              ; preds = %937, %940, %942
  %950 = phi i64 [ %803, %937 ], [ %803, %940 ], [ %948, %942 ]
  %951 = phi i32 [ -1, %937 ], [ 0, %940 ], [ %947, %942 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #18
  %952 = icmp slt i32 %951, 0
  br i1 %952, label %982, label %953

953:                                              ; preds = %949
  %954 = zext nneg i32 %951 to i64
  %955 = add nsw i64 %804, %954
  %956 = icmp eq i32 %951, 0
  br i1 %956, label %961, label %957

957:                                              ; preds = %953
  %958 = add nsw i32 %805, 1
  %959 = icmp eq i32 %805, 0
  br i1 %959, label %960, label %961

960:                                              ; preds = %957
  br label %961

961:                                              ; preds = %960, %957, %953
  %962 = phi i32 [ 1, %960 ], [ %958, %957 ], [ %805, %953 ]
  %963 = phi i64 [ %950, %960 ], [ %803, %957 ], [ %803, %953 ]
  %964 = phi i64 [ %950, %960 ], [ %806, %957 ], [ %806, %953 ]
  %965 = add nsw i32 %809, 1
  %966 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 4), align 8, !tbaa !142
  %967 = icmp eq ptr %966, null
  br i1 %967, label %972, label %968

968:                                              ; preds = %961
  %969 = load ptr, ptr %630, align 8, !tbaa !97
  %970 = call i32 %966(ptr noundef nonnull %12, ptr noundef %969) #18
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %982

972:                                              ; preds = %968, %961
  %973 = load i32, ptr %23, align 8, !tbaa !35
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %982, label %975

975:                                              ; preds = %972
  %976 = srem i32 %962, %651
  %977 = icmp eq i32 %976, 0
  %978 = icmp ne i32 %962, 0
  %979 = and i1 %978, %977
  br i1 %979, label %980, label %982

980:                                              ; preds = %975
  %981 = call i64 @x264_mdate() #18
  br label %982

982:                                              ; preds = %980, %975, %972, %968, %949
  %983 = phi i64 [ %804, %949 ], [ %955, %968 ], [ %955, %980 ], [ %955, %975 ], [ %955, %972 ]
  %984 = phi i32 [ %805, %949 ], [ %962, %968 ], [ %962, %980 ], [ %962, %975 ], [ %962, %972 ]
  %985 = phi i64 [ %803, %949 ], [ %963, %968 ], [ %963, %980 ], [ %963, %975 ], [ %963, %972 ]
  %986 = phi i64 [ %806, %949 ], [ %964, %968 ], [ %964, %980 ], [ %964, %975 ], [ %964, %972 ]
  %987 = phi i32 [ %809, %949 ], [ %965, %968 ], [ %965, %980 ], [ %965, %975 ], [ %965, %972 ]
  %988 = phi i32 [ 1, %949 ], [ 2, %968 ], [ 0, %980 ], [ 0, %975 ], [ 0, %972 ]
  switch i32 %988, label %1147 [
    i32 0, label %789
    i32 2, label %989
  ], !llvm.loop !127

989:                                              ; preds = %982, %795, %789, %770, %768
  %990 = phi i64 [ 0, %768 ], [ 0, %770 ], [ %950, %789 ], [ %950, %795 ], [ %950, %982 ]
  %991 = phi i64 [ %762, %768 ], [ %762, %770 ], [ %983, %789 ], [ %983, %795 ], [ %983, %982 ]
  %992 = phi i32 [ 0, %768 ], [ 0, %770 ], [ %984, %789 ], [ %984, %795 ], [ %984, %982 ]
  %993 = phi i64 [ 0, %768 ], [ 0, %770 ], [ %985, %789 ], [ %985, %795 ], [ %985, %982 ]
  %994 = phi i64 [ 0, %768 ], [ 0, %770 ], [ %986, %789 ], [ %986, %795 ], [ %986, %982 ]
  %995 = phi i32 [ 0, %768 ], [ 0, %770 ], [ %869, %789 ], [ %869, %795 ], [ %869, %982 ]
  %996 = phi i64 [ -1, %768 ], [ -1, %770 ], [ %871, %789 ], [ %871, %795 ], [ %871, %982 ]
  %997 = phi i64 [ -1, %768 ], [ -1, %770 ], [ %808, %789 ], [ %808, %795 ], [ %808, %982 ]
  %998 = phi i32 [ 0, %768 ], [ 0, %770 ], [ %987, %789 ], [ %987, %795 ], [ %987, %982 ]
  %999 = load i1, ptr @b_ctrl_c, align 4
  br i1 %999, label %1054, label %1000

1000:                                             ; preds = %989
  %1001 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 5
  %1002 = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %684) #18
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1054, label %1007

1004:                                             ; preds = %1052
  %1005 = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %684) #18
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1054, label %1007, !llvm.loop !143

1007:                                             ; preds = %1000, %1004
  %1008 = phi i64 [ %1028, %1004 ], [ %990, %1000 ]
  %1009 = phi i64 [ %1033, %1004 ], [ %991, %1000 ]
  %1010 = phi i32 [ %1040, %1004 ], [ %992, %1000 ]
  %1011 = phi i64 [ %1042, %1004 ], [ %994, %1000 ]
  %1012 = load ptr, ptr %696, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %1013 = call i32 @x264_encoder_encode(ptr noundef nonnull %684, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3) #18
  %1014 = icmp slt i32 %1013, 0
  br i1 %1014, label %1015, label %1018

1015:                                             ; preds = %1007
  %1016 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1017 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %1016) #21
  br label %1027

1018:                                             ; preds = %1007
  %1019 = icmp eq i32 %1013, 0
  br i1 %1019, label %1027, label %1020

1020:                                             ; preds = %1018
  %1021 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 3), align 8, !tbaa !138
  %1022 = load ptr, ptr %4, align 8, !tbaa !43
  %1023 = getelementptr inbounds %struct.x264_nal_t, ptr %1022, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8, !tbaa !139
  %1025 = call i32 %1021(ptr noundef %1012, ptr noundef %1024, i32 noundef %1013, ptr noundef nonnull %3) #18
  %1026 = load i64, ptr %1001, align 8, !tbaa !141
  br label %1027

1027:                                             ; preds = %1015, %1018, %1020
  %1028 = phi i64 [ %1008, %1015 ], [ %1008, %1018 ], [ %1026, %1020 ]
  %1029 = phi i32 [ -1, %1015 ], [ 0, %1018 ], [ %1025, %1020 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  %1030 = icmp slt i32 %1029, 0
  br i1 %1030, label %1147, label %1031

1031:                                             ; preds = %1027
  %1032 = zext nneg i32 %1029 to i64
  %1033 = add nsw i64 %1009, %1032
  %1034 = icmp eq i32 %1029, 0
  br i1 %1034, label %1039, label %1035

1035:                                             ; preds = %1031
  %1036 = add nsw i32 %1010, 1
  %1037 = icmp eq i32 %1010, 0
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1035
  br label %1039

1039:                                             ; preds = %1038, %1035, %1031
  %1040 = phi i32 [ 1, %1038 ], [ %1036, %1035 ], [ %1010, %1031 ]
  %1041 = phi i64 [ %1028, %1038 ], [ %1008, %1035 ], [ %1008, %1031 ]
  %1042 = phi i64 [ %1028, %1038 ], [ %1011, %1035 ], [ %1011, %1031 ]
  %1043 = load i32, ptr %23, align 8, !tbaa !35
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1052, label %1045

1045:                                             ; preds = %1039
  %1046 = srem i32 %1040, %651
  %1047 = icmp eq i32 %1046, 0
  %1048 = icmp ne i32 %1040, 0
  %1049 = and i1 %1048, %1047
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1045
  %1051 = call i64 @x264_mdate() #18
  br label %1052

1052:                                             ; preds = %1050, %1045, %1039
  %1053 = load i1, ptr @b_ctrl_c, align 4
  br i1 %1053, label %1054, label %1004, !llvm.loop !143

1054:                                             ; preds = %1004, %1052, %1000, %989
  %1055 = phi i64 [ %990, %989 ], [ %990, %1000 ], [ %1028, %1052 ], [ %1028, %1004 ]
  %1056 = phi i64 [ %991, %989 ], [ %991, %1000 ], [ %1033, %1052 ], [ %1033, %1004 ]
  %1057 = phi i32 [ %992, %989 ], [ %992, %1000 ], [ %1040, %1052 ], [ %1040, %1004 ]
  %1058 = phi i64 [ %993, %989 ], [ %993, %1000 ], [ %1041, %1052 ], [ %1041, %1004 ]
  %1059 = phi i64 [ %994, %989 ], [ %994, %1000 ], [ %1042, %1052 ], [ %1042, %1004 ]
  %1060 = icmp sgt i32 %995, 2
  %1061 = load i32, ptr %623, align 8
  %1062 = icmp slt i32 %1061, 3
  %1063 = select i1 %1060, i1 %1062, i1 false
  br i1 %1063, label %1064, label %1068

1064:                                             ; preds = %1054
  %1065 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1066 = add nsw i32 %995, -3
  %1067 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1065, ptr noundef nonnull @.str.382, i32 noundef %1066) #21
  br label %1068

1068:                                             ; preds = %1064, %1054
  %1069 = icmp eq i32 %1057, 1
  br i1 %1069, label %1070, label %1074

1070:                                             ; preds = %1068
  %1071 = load i32, ptr %726, align 8, !tbaa !83
  %1072 = uitofp i32 %1071 to double
  %1073 = load i32, ptr %733, align 4, !tbaa !81
  br label %1093

1074:                                             ; preds = %1068
  %1075 = load i1, ptr @b_ctrl_c, align 4
  br i1 %1075, label %1076, label %1085

1076:                                             ; preds = %1074
  %1077 = shl nsw i64 %1055, 1
  %1078 = add i64 %1058, %1059
  %1079 = sub i64 %1077, %1078
  %1080 = sitofp i64 %1079 to double
  %1081 = load i32, ptr %608, align 4, !tbaa !103
  %1082 = uitofp i32 %1081 to double
  %1083 = fmul double %1080, %1082
  %1084 = load i32, ptr %605, align 8, !tbaa !104
  br label %1093

1085:                                             ; preds = %1074
  %1086 = shl nsw i64 %996, 1
  %1087 = sub nsw i64 %1086, %997
  %1088 = sitofp i64 %1087 to double
  %1089 = load i32, ptr %608, align 4, !tbaa !103
  %1090 = uitofp i32 %1089 to double
  %1091 = fmul double %1088, %1090
  %1092 = load i32, ptr %605, align 8, !tbaa !104
  br label %1093

1093:                                             ; preds = %1085, %1076, %1070
  %1094 = phi i32 [ %1092, %1085 ], [ %1084, %1076 ], [ %1073, %1070 ]
  %1095 = phi double [ %1091, %1085 ], [ %1083, %1076 ], [ %1072, %1070 ]
  %1096 = uitofp i32 %1094 to double
  %1097 = fdiv double %1095, %1096
  %1098 = load i32, ptr %652, align 8, !tbaa !116
  %1099 = icmp ne i32 %1098, 0
  %1100 = load i32, ptr %655, align 8
  %1101 = icmp eq i32 %1100, 0
  %1102 = select i1 %1099, i1 %1101, i1 false
  %1103 = sitofp i32 %694 to double
  %1104 = select i1 %1102, double 1.000000e+00, double %1103
  %1105 = fmul double %1097, %1104
  %1106 = call i64 @x264_mdate() #18
  %1107 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 5), align 8, !tbaa !144
  call void %1107(ptr noundef nonnull %12) #18
  %1108 = load i32, ptr %23, align 8, !tbaa !35
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1113, label %1110

1110:                                             ; preds = %1093
  %1111 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1112 = call i64 @fwrite(ptr nonnull @.str.383, i64 80, i64 1, ptr %1111) #21
  br label %1113

1113:                                             ; preds = %1110, %1093
  call void @x264_encoder_close(ptr noundef nonnull %684) #18
  %1114 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1115 = call i32 @fputc(i32 10, ptr %1114)
  %1116 = load i1, ptr @b_ctrl_c, align 4
  br i1 %1116, label %1117, label %1122

1117:                                             ; preds = %1113
  %1118 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1119 = load i32, ptr %633, align 4, !tbaa !54
  %1120 = add nsw i32 %1119, %998
  %1121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1118, ptr noundef nonnull @.str.384, i32 noundef %1120, i32 noundef %1057) #21
  br label %1122

1122:                                             ; preds = %1117, %1113
  %1123 = load ptr, ptr %763, align 8, !tbaa !61
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1122
  %1126 = call i32 @fclose(ptr noundef nonnull %1123)
  store ptr null, ptr %763, align 8, !tbaa !61
  br label %1127

1127:                                             ; preds = %1125, %1122
  %1128 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !tbaa !120
  %1129 = load ptr, ptr %630, align 8, !tbaa !97
  %1130 = call i32 %1128(ptr noundef %1129) #18
  %1131 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !tbaa !123
  %1132 = load ptr, ptr %696, align 8, !tbaa !122
  %1133 = call i32 %1131(ptr noundef %1132, i64 noundef %996, i64 noundef %997) #18
  %1134 = icmp sgt i32 %1057, 0
  br i1 %1134, label %1135, label %1147

1135:                                             ; preds = %1127
  %1136 = sitofp i32 %1057 to double
  %1137 = fmul double %1136, 1.000000e+06
  %1138 = sub nsw i64 %1106, %723
  %1139 = sitofp i64 %1138 to double
  %1140 = fdiv double %1137, %1139
  %1141 = load ptr, ptr @stderr, align 8, !tbaa !43
  %1142 = sitofp i64 %1056 to double
  %1143 = fmul double %1142, 8.000000e+00
  %1144 = fmul double %1105, 1.000000e+03
  %1145 = fdiv double %1143, %1144
  %1146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1141, ptr noundef nonnull @.str.385, i32 noundef %1057, double noundef %1140, double noundef %1145) #21
  br label %1147

1147:                                             ; preds = %982, %1027, %673, %686, %700, %719, %738, %758, %1127, %1135
  %1148 = phi i32 [ -1, %686 ], [ -1, %700 ], [ -1, %719 ], [ -1, %738 ], [ -1, %758 ], [ -1, %673 ], [ 0, %1135 ], [ 0, %1127 ], [ -1, %1027 ], [ -1, %982 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %12) #18
  br label %1150

1149:                                             ; preds = %35, %236, %386, %407, %601, %304, %250, %45, %258, %419, %465, %454, %447, %310
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %19)
  br label %1150

1150:                                             ; preds = %1149, %1147
  %1151 = phi i32 [ %1148, %1147 ], [ -1, %1149 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %22) #18
  ret i32 %1151
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @SigIntHandler(i32 %0) #3 {
  store i1 true, ptr @b_ctrl_c, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @x264_param_default(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare i32 @x264_param_default_preset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Help(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #18
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.168, i32 noundef 96, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.390)
  %6 = tail call i32 @putchar(i32 10)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.391)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.392)
  %9 = tail call i32 @putchar(i32 10)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.393)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.394)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.395)
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.396)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.397)
  %16 = tail call i32 @putchar(i32 10)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.398)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.399)
  %19 = tail call i32 @putchar(i32 10)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.400)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.401)
  %22 = tail call i32 @putchar(i32 10)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.402)
  %24 = tail call i32 @putchar(i32 10)
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.403)
  %26 = icmp eq i32 %1, 2
  %27 = select i1 %26, ptr @str.405, ptr @str.404
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) %27)
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.406)
  %30 = select i1 %26, ptr @str.408, ptr @str.407
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) %30)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.409)
  %33 = select i1 %26, ptr @str.411, ptr @str.410
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) %33)
  br i1 %26, label %37, label %35

35:                                               ; preds = %2
  %36 = icmp sgt i32 %1, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35, %2
  %38 = phi ptr [ @str.413, %2 ], [ @str.412, %35 ]
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) %38)
  br label %40

40:                                               ; preds = %37, %35
  %41 = tail call i32 @putchar(i32 10)
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.414)
  %43 = tail call i32 @putchar(i32 10)
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !145
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %45)
  br i1 %26, label %47, label %54

47:                                               ; preds = %40
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.415)
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.416)
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %51 = load i32, ptr %50, align 4, !tbaa !146
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %51)
  %53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.417)
  br label %54

54:                                               ; preds = %40, %47
  %55 = icmp sgt i32 %1, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %58 = load i32, ptr %57, align 4, !tbaa !147
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, i32 noundef %58)
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %61 = load i32, ptr %60, align 8, !tbaa !148
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i32 noundef %61)
  br label %63

63:                                               ; preds = %54, %56
  br i1 %26, label %64, label %68

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %66 = load i32, ptr %65, align 4, !tbaa !149
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, i32 noundef %66)
  br label %68

68:                                               ; preds = %64, %63
  br i1 %55, label %69, label %93

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %71 = load i32, ptr %70, align 8, !tbaa !150
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds ptr, ptr @x264_b_pyramid_names, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  br label %77

77:                                               ; preds = %69, %73
  %78 = phi ptr [ %76, %73 ], [ @.str.322, %69 ]
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %78)
  %80 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.418)
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %82 = load i32, ptr %81, align 8, !tbaa !113
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %82)
  %84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.419)
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %86 = load i32, ptr %85, align 8, !tbaa !151
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %88 = load i32, ptr %87, align 4, !tbaa !152
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, i32 noundef %86, i32 noundef %88)
  br i1 %55, label %90, label %93

90:                                               ; preds = %77
  %91 = select i1 %26, ptr @str.421, ptr @str.420
  %92 = tail call i32 @puts(ptr nonnull dereferenceable(1) %91)
  br label %93

93:                                               ; preds = %68, %77, %90
  br i1 %26, label %94, label %99

94:                                               ; preds = %93
  %95 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.422)
  %96 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.423)
  %97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.424)
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.425)
  br label %99

99:                                               ; preds = %93, %94
  %100 = phi ptr [ @str.426, %94 ], [ @str.424, %93 ]
  %101 = phi ptr [ @str.427, %94 ], [ @str.425, %93 ]
  %102 = phi ptr [ @str.428, %94 ], [ @str.427, %93 ]
  %103 = tail call i32 @puts(ptr nonnull dereferenceable(1) %100)
  %104 = tail call i32 @puts(ptr nonnull dereferenceable(1) %101)
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) %102)
  %106 = tail call i32 @putchar(i32 10)
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.429)
  %108 = tail call i32 @putchar(i32 10)
  br i1 %55, label %109, label %119

109:                                              ; preds = %99
  %110 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.430)
  %111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %113 = load float, ptr %112, align 8, !tbaa !153
  %114 = fpext float %113 to double
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %114)
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %117 = load i32, ptr %116, align 4, !tbaa !154
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %117)
  br label %125

119:                                              ; preds = %99
  %120 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.431)
  %121 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %122 = load float, ptr %121, align 8, !tbaa !153
  %123 = fpext float %122 to double
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %123)
  br label %125

125:                                              ; preds = %119, %109
  %126 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %127 = load i32, ptr %126, align 4, !tbaa !155
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, i32 noundef %127)
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %130 = load i32, ptr %129, align 8, !tbaa !156
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, i32 noundef %130)
  br i1 %26, label %132, label %165

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %134 = load float, ptr %133, align 4, !tbaa !157
  %135 = fpext float %134 to double
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, double noundef %135)
  %137 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.432)
  %138 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !158
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %139)
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !159
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.229, i32 noundef %142)
  %144 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %145 = load i32, ptr %144, align 8, !tbaa !160
  %146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.230, i32 noundef %145)
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %148 = load float, ptr %147, align 8, !tbaa !161
  %149 = fpext float %148 to double
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.231, double noundef %149)
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %152 = load float, ptr %151, align 8, !tbaa !162
  %153 = fpext float %152 to double
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.232, double noundef %153)
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %156 = load float, ptr %155, align 4, !tbaa !163
  %157 = fpext float %156 to double
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.233, double noundef %157)
  %159 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !164
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, i32 noundef %160)
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %163 = load i32, ptr %162, align 8, !tbaa !165
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.235, i32 noundef %163)
  br label %165

165:                                              ; preds = %125, %132
  br i1 %55, label %166, label %172

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %168 = load float, ptr %167, align 4, !tbaa !166
  %169 = fpext float %168 to double
  %170 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.236, double noundef %169)
  %171 = tail call i32 @putchar(i32 10)
  br label %172

172:                                              ; preds = %165, %166
  %173 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.433)
  br i1 %26, label %174, label %176

174:                                              ; preds = %172
  %175 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.434)
  br label %176

176:                                              ; preds = %174, %172
  br i1 %55, label %177, label %181

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !167
  %180 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.239, ptr noundef %179)
  br label %181

181:                                              ; preds = %177, %176
  br i1 %26, label %182, label %199

182:                                              ; preds = %181
  %183 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.435)
  %184 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %185 = load float, ptr %184, align 8, !tbaa !168
  %186 = fpext float %185 to double
  %187 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.241, double noundef %186)
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %189 = load float, ptr %188, align 8, !tbaa !169
  %190 = fpext float %189 to double
  %191 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.242, double noundef %190)
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %193 = load float, ptr %192, align 4, !tbaa !170
  %194 = fpext float %193 to double
  %195 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.243, double noundef %194)
  %196 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.436)
  %197 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.437)
  %198 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.438)
  br label %199

199:                                              ; preds = %181, %182
  br i1 %55, label %200, label %215

200:                                              ; preds = %199
  %201 = tail call i32 @putchar(i32 10)
  %202 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.439)
  %203 = tail call i32 @putchar(i32 10)
  %204 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.440)
  %205 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !171
  %207 = icmp ult i32 %206, 4
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = zext nneg i32 %206 to i64
  %210 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !43
  br label %212

212:                                              ; preds = %200, %208
  %213 = phi ptr [ %211, %208 ], [ @.str.322, %200 ]
  %214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.249, ptr noundef %213)
  br label %215

215:                                              ; preds = %199, %212
  br i1 %26, label %216, label %218

216:                                              ; preds = %215
  %217 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.441)
  br label %218

218:                                              ; preds = %216, %215
  br i1 %55, label %219, label %236

219:                                              ; preds = %218
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %221 = load i32, ptr %220, align 4, !tbaa !172
  %222 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.251, i32 noundef %221)
  %223 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %224 = load i32, ptr %223, align 4, !tbaa !173
  %225 = icmp ult i32 %224, 5
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = zext nneg i32 %224 to i64
  %228 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !43
  br label %230

230:                                              ; preds = %219, %226
  %231 = phi ptr [ %229, %226 ], [ @.str.322, %219 ]
  %232 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.252, ptr noundef %231)
  br i1 %55, label %233, label %236

233:                                              ; preds = %230
  %234 = select i1 %26, ptr @str.443, ptr @str.442
  %235 = tail call i32 @puts(ptr nonnull dereferenceable(1) %234)
  br label %236

236:                                              ; preds = %218, %230, %233
  br i1 %26, label %237, label %243

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %239 = load i32, ptr %238, align 8, !tbaa !174
  %240 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.255, i32 noundef %239)
  %241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.444)
  %242 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.445)
  br label %243

243:                                              ; preds = %236, %237
  br i1 %55, label %244, label %257

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %246 = load i32, ptr %245, align 4, !tbaa !175
  %247 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.258, i32 noundef %246)
  %248 = select i1 %26, ptr @str.447, ptr @str.446
  %249 = tail call i32 @puts(ptr nonnull dereferenceable(1) %248)
  %250 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %251 = load float, ptr %250, align 8, !tbaa !176
  %252 = fpext float %251 to double
  %253 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %254 = load float, ptr %253, align 4, !tbaa !177
  %255 = fpext float %254 to double
  %256 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, double noundef %252, double noundef %255)
  br label %257

257:                                              ; preds = %243, %244
  br i1 %26, label %258, label %262

258:                                              ; preds = %257
  %259 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.448)
  %260 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.449)
  %261 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.450)
  br label %262

262:                                              ; preds = %257, %258
  br i1 %55, label %263, label %268

263:                                              ; preds = %262
  %264 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.451)
  %265 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %266 = load i32, ptr %265, align 8, !tbaa !178
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %266)
  br label %268

268:                                              ; preds = %262, %263
  br i1 %26, label %269, label %272

269:                                              ; preds = %268
  %270 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.452)
  %271 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.453)
  br label %272

272:                                              ; preds = %268, %269
  br i1 %55, label %273, label %277

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %275 = load i32, ptr %274, align 4, !tbaa !179
  %276 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.269, i32 noundef %275)
  br label %277

277:                                              ; preds = %273, %272
  br i1 %26, label %278, label %288

278:                                              ; preds = %277
  %279 = tail call i32 @putchar(i32 10)
  %280 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %281 = load i32, ptr %280, align 4, !tbaa !42
  %282 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.270, i32 noundef %281)
  %283 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %284 = load i32, ptr %283, align 4, !tbaa !42
  %285 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.271, i32 noundef %284)
  %286 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.454)
  %287 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.455)
  br label %288

288:                                              ; preds = %277, %278
  br i1 %55, label %289, label %291

289:                                              ; preds = %288
  %290 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.456)
  br label %291

291:                                              ; preds = %289, %288
  br i1 %26, label %292, label %368

292:                                              ; preds = %291
  %293 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.457)
  %294 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.458)
  %295 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.459)
  %296 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.460)
  %297 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.461)
  %298 = tail call i32 @putchar(i32 10)
  %299 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.462)
  %300 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.463)
  %301 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.464)
  %302 = tail call i32 @putchar(i32 10)
  %303 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !180
  %305 = icmp ult i32 %304, 3
  br i1 %305, label %306, label %310

306:                                              ; preds = %292
  %307 = zext nneg i32 %304 to i64
  %308 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !43
  br label %310

310:                                              ; preds = %292, %306
  %311 = phi ptr [ %309, %306 ], [ @.str.322, %292 ]
  %312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.283, ptr noundef %311)
  %313 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !181
  %315 = icmp ult i32 %314, 6
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = zext nneg i32 %314 to i64
  %318 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !43
  br label %320

320:                                              ; preds = %310, %316
  %321 = phi ptr [ %319, %316 ], [ @.str.322, %310 ]
  %322 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.284, ptr noundef %321)
  %323 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 4
  %324 = load i32, ptr %323, align 4, !tbaa !182
  %325 = icmp ult i32 %324, 2
  br i1 %325, label %326, label %330

326:                                              ; preds = %320
  %327 = zext nneg i32 %324 to i64
  %328 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !43
  br label %330

330:                                              ; preds = %320, %326
  %331 = phi ptr [ %329, %326 ], [ @.str.322, %320 ]
  %332 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.285, ptr noundef %331)
  %333 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 5
  %334 = load i32, ptr %333, align 4, !tbaa !183
  %335 = icmp ult i32 %334, 9
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = zext nneg i32 %334 to i64
  %338 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !43
  br label %340

340:                                              ; preds = %330, %336
  %341 = phi ptr [ %339, %336 ], [ @.str.322, %330 ]
  %342 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.286, ptr noundef %341)
  %343 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 6
  %344 = load i32, ptr %343, align 4, !tbaa !184
  %345 = icmp ult i32 %344, 11
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = zext nneg i32 %344 to i64
  %348 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !43
  br label %350

350:                                              ; preds = %340, %346
  %351 = phi ptr [ %349, %346 ], [ @.str.322, %340 ]
  %352 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.287, ptr noundef %351)
  %353 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 7
  %354 = load i32, ptr %353, align 4, !tbaa !185
  %355 = icmp ult i32 %354, 9
  br i1 %355, label %356, label %360

356:                                              ; preds = %350
  %357 = zext nneg i32 %354 to i64
  %358 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !43
  br label %360

360:                                              ; preds = %350, %356
  %361 = phi ptr [ %359, %356 ], [ @.str.322, %350 ]
  %362 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.288, ptr noundef %361)
  %363 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 8
  %364 = load i32, ptr %363, align 4, !tbaa !186
  %365 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.289, i32 noundef %364)
  %366 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.465)
  %367 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.466)
  br label %368

368:                                              ; preds = %291, %360
  %369 = tail call i32 @putchar(i32 10)
  %370 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.467)
  %371 = tail call i32 @putchar(i32 10)
  %372 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.468)
  br i1 %55, label %373, label %429

373:                                              ; preds = %368
  store i8 0, ptr %3, align 16, !tbaa !69
  br label %374

374:                                              ; preds = %373, %391
  %375 = phi i64 [ 0, %373 ], [ %385, %391 ]
  %376 = phi ptr [ @.str.22, %373 ], [ %394, %391 ]
  %377 = phi ptr [ %3, %373 ], [ %392, %391 ]
  %378 = call ptr @stpcpy(ptr %377, ptr nonnull %376)
  %379 = ptrtoint ptr %378 to i64
  %380 = ptrtoint ptr %377 to i64
  %381 = sub i64 %379, %380
  %382 = shl i64 %381, 32
  %383 = ashr exact i64 %382, 32
  %384 = getelementptr inbounds i8, ptr %377, i64 %383
  %385 = add nuw nsw i64 %375, 1
  %386 = getelementptr inbounds ptr, ptr @muxer_names, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !43
  %388 = icmp eq ptr %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %384, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  %390 = getelementptr inbounds i8, ptr %384, i64 2
  br label %391

391:                                              ; preds = %389, %374
  %392 = phi ptr [ %390, %389 ], [ %384, %374 ]
  %393 = getelementptr inbounds ptr, ptr @muxer_names, i64 %385
  %394 = load ptr, ptr %393, align 8, !tbaa !43
  %395 = icmp eq i64 %385, 4
  br i1 %395, label %396, label %374, !llvm.loop !187

396:                                              ; preds = %391
  %397 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.294, ptr noundef nonnull @.str.22, ptr noundef nonnull %3)
  store i8 0, ptr %3, align 16, !tbaa !69
  br label %398

398:                                              ; preds = %396, %415
  %399 = phi i64 [ 0, %396 ], [ %409, %415 ]
  %400 = phi ptr [ @.str.22, %396 ], [ %418, %415 ]
  %401 = phi ptr [ %3, %396 ], [ %416, %415 ]
  %402 = call ptr @stpcpy(ptr %401, ptr nonnull %400)
  %403 = ptrtoint ptr %402 to i64
  %404 = ptrtoint ptr %401 to i64
  %405 = sub i64 %403, %404
  %406 = shl i64 %405, 32
  %407 = ashr exact i64 %406, 32
  %408 = getelementptr inbounds i8, ptr %401, i64 %407
  %409 = add nuw nsw i64 %399, 1
  %410 = getelementptr inbounds ptr, ptr @demuxer_names, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !43
  %412 = icmp eq ptr %411, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %408, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false)
  %414 = getelementptr inbounds i8, ptr %408, i64 2
  br label %415

415:                                              ; preds = %413, %398
  %416 = phi ptr [ %414, %413 ], [ %408, %398 ]
  %417 = getelementptr inbounds ptr, ptr @demuxer_names, i64 %409
  %418 = load ptr, ptr %417, align 8, !tbaa !43
  %419 = icmp eq i64 %409, 3
  br i1 %419, label %420, label %398, !llvm.loop !187

420:                                              ; preds = %415
  %421 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.295, ptr noundef nonnull @.str.22, ptr noundef nonnull %3)
  %422 = call i32 @puts(ptr nonnull dereferenceable(1) @str.469)
  %423 = call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %424 = call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %425 = call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %426 = call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %427 = call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  %428 = call i32 @putchar(i32 10)
  br label %435

429:                                              ; preds = %368
  %430 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.470)
  %431 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.471)
  %432 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.472)
  %433 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.473)
  %434 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.474)
  br label %435

435:                                              ; preds = %429, %420
  br i1 %55, label %436, label %442

436:                                              ; preds = %435
  %437 = call i32 @puts(ptr nonnull dereferenceable(1) @str.475)
  %438 = call i32 @puts(ptr nonnull dereferenceable(1) @str.476)
  %439 = call i32 @puts(ptr nonnull dereferenceable(1) @str.477)
  %440 = call i32 @puts(ptr nonnull dereferenceable(1) @str.478)
  %441 = call i32 @puts(ptr nonnull dereferenceable(1) @str.479)
  br label %442

442:                                              ; preds = %435, %436
  %443 = phi ptr [ @str.480, %436 ], [ @str.477, %435 ]
  %444 = call i32 @puts(ptr nonnull dereferenceable(1) %443)
  br i1 %26, label %445, label %462

445:                                              ; preds = %442
  %446 = call i32 @puts(ptr nonnull dereferenceable(1) @str.481)
  %447 = call i32 @puts(ptr nonnull dereferenceable(1) @str.482)
  %448 = call i32 @puts(ptr nonnull dereferenceable(1) @str.483)
  %449 = call i32 @puts(ptr nonnull dereferenceable(1) @str.484)
  %450 = call i32 @puts(ptr nonnull dereferenceable(1) @str.485)
  %451 = call i32 @puts(ptr nonnull dereferenceable(1) @str.486)
  %452 = call i32 @puts(ptr nonnull dereferenceable(1) @str.487)
  %453 = call i32 @puts(ptr nonnull dereferenceable(1) @str.488)
  %454 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %455 = load i32, ptr %454, align 4, !tbaa !188
  %456 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.316, i32 noundef %455)
  %457 = call i32 @puts(ptr nonnull dereferenceable(1) @str.489)
  %458 = call i32 @puts(ptr nonnull dereferenceable(1) @str.490)
  %459 = call i32 @puts(ptr nonnull dereferenceable(1) @str.491)
  %460 = call i32 @puts(ptr nonnull dereferenceable(1) @str.492)
  %461 = call i32 @puts(ptr nonnull dereferenceable(1) @str.493)
  br label %462

462:                                              ; preds = %442, %445
  %463 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @x264_param_apply_fastfirstpass(ptr noundef) local_unnamed_addr #5

declare i32 @x264_param_apply_profile(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

declare ptr @x264_encoder_open_96(ptr noundef) local_unnamed_addr #5

declare void @x264_encoder_parameters(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @x264_mdate() local_unnamed_addr #5

declare i32 @x264_encoder_headers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

declare i32 @x264_encoder_delayed_frames(ptr noundef) local_unnamed_addr #5

declare void @x264_encoder_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"instr_prof_hash_mismatch"}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !37, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !37, i64 48}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"double", !38, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!40, !40, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !37, i64 36}
!47 = !{!"x264_param_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !48, i64 44, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96, !37, i64 100, !37, i64 104, !37, i64 108, !37, i64 112, !37, i64 116, !37, i64 120, !37, i64 124, !37, i64 128, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !40, i64 152, !38, i64 160, !38, i64 176, !38, i64 192, !38, i64 208, !38, i64 224, !38, i64 288, !40, i64 352, !40, i64 360, !37, i64 368, !37, i64 372, !40, i64 376, !49, i64 384, !51, i64 488, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !37, i64 648, !37, i64 652, !37, i64 656, !37, i64 660, !37, i64 664, !37, i64 668, !37, i64 672, !37, i64 676, !37, i64 680, !37, i64 684, !37, i64 688, !37, i64 692, !40, i64 696}
!48 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32}
!49 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !50, i64 72, !50, i64 76, !37, i64 80, !38, i64 84, !37, i64 92, !37, i64 96}
!50 = !{!"float", !38, i64 0}
!51 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !37, i64 36, !37, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !37, i64 56, !50, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !40, i64 80, !37, i64 88, !40, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !40, i64 120, !37, i64 128, !40, i64 136}
!52 = !{!53, !37, i64 24}
!53 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!54 = !{!36, !37, i64 4}
!55 = distinct !{!55, !56, !45}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!53, !40, i64 0}
!58 = !{!36, !40, i64 24}
!59 = !{!47, !37, i64 368}
!60 = !{!47, !37, i64 648}
!61 = !{!36, !40, i64 32}
!62 = !{!53, !40, i64 16}
!63 = distinct !{!63, !56, !45}
!64 = !{!65, !40, i64 0}
!65 = !{!"option", !40, i64 0, !37, i64 8, !40, i64 16, !37, i64 24}
!66 = !{!65, !37, i64 24}
!67 = distinct !{!67, !56, !45}
!68 = distinct !{!68, !45}
!69 = !{!38, !38, i64 0}
!70 = distinct !{!70, !56, !45}
!71 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43}
!72 = !{!47, !37, i64 640}
!73 = !{!47, !37, i64 668}
!74 = !{!47, !37, i64 636}
!75 = !{!76, !40, i64 0}
!76 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!77 = !{!53, !40, i64 8}
!78 = !{!47, !37, i64 28}
!79 = !{!80, !37, i64 0}
!80 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!81 = !{!47, !37, i64 652}
!82 = !{!80, !37, i64 4}
!83 = !{!47, !37, i64 656}
!84 = !{!80, !37, i64 8}
!85 = !{!47, !37, i64 136}
!86 = !{!80, !37, i64 16}
!87 = !{!47, !37, i64 48}
!88 = !{!80, !37, i64 20}
!89 = !{!47, !37, i64 44}
!90 = !{!80, !37, i64 24}
!91 = !{!47, !37, i64 672}
!92 = !{!80, !37, i64 28}
!93 = !{!80, !37, i64 40}
!94 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43}
!95 = !{!96, !40, i64 0}
!96 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48}
!97 = !{!36, !40, i64 8}
!98 = !{!80, !37, i64 44}
!99 = !{!80, !37, i64 12}
!100 = !{!47, !37, i64 24}
!101 = !{!47, !37, i64 20}
!102 = !{!80, !37, i64 32}
!103 = !{!47, !37, i64 660}
!104 = !{!47, !37, i64 664}
!105 = !{!106, !106, i64 0}
!106 = !{!"long", !38, i64 0}
!107 = !{!36, !41, i64 40}
!108 = !{!109, !37, i64 0}
!109 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48}
!110 = !{!47, !37, i64 32}
!111 = distinct !{!111, !56, !45}
!112 = !{!109, !37, i64 12}
!113 = !{!47, !37, i64 80}
!114 = distinct !{!114, !56, !45}
!115 = !{!96, !40, i64 8}
!116 = !{!36, !37, i64 48}
!117 = !{!47, !37, i64 676}
!118 = !{!119, !50, i64 28}
!119 = !{!"", !37, i64 0, !38, i64 4, !50, i64 28}
!120 = !{!96, !40, i64 48}
!121 = !{!76, !40, i64 8}
!122 = !{!36, !40, i64 16}
!123 = !{!76, !40, i64 32}
!124 = !{!96, !40, i64 16}
!125 = !{!76, !40, i64 16}
!126 = !{!96, !40, i64 24}
!127 = distinct !{!127, !56, !45}
!128 = !{!129, !106, i64 16}
!129 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !106, i64 16, !106, i64 24, !40, i64 32, !130, i64 40, !131, i64 96, !40, i64 128}
!130 = !{!"", !37, i64 0, !37, i64 4, !38, i64 8, !38, i64 24}
!131 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!132 = !{!119, !37, i64 0}
!133 = !{!129, !37, i64 8}
!134 = !{!50, !50, i64 0}
!135 = !{!129, !37, i64 0}
!136 = !{!129, !37, i64 4}
!137 = distinct !{!137, !56, !45}
!138 = !{!76, !40, i64 24}
!139 = !{!140, !40, i64 16}
!140 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 16}
!141 = !{!129, !106, i64 24}
!142 = !{!96, !40, i64 32}
!143 = distinct !{!143, !56, !45}
!144 = !{!96, !40, i64 40}
!145 = !{!47, !37, i64 84}
!146 = !{!47, !37, i64 92}
!147 = !{!47, !37, i64 100}
!148 = !{!47, !37, i64 104}
!149 = !{!47, !37, i64 108}
!150 = !{!47, !37, i64 112}
!151 = !{!47, !37, i64 120}
!152 = !{!47, !37, i64 124}
!153 = !{!47, !50, i64 512}
!154 = !{!47, !37, i64 556}
!155 = !{!47, !37, i64 524}
!156 = !{!47, !37, i64 528}
!157 = !{!47, !50, i64 532}
!158 = !{!47, !37, i64 496}
!159 = !{!47, !37, i64 500}
!160 = !{!47, !37, i64 504}
!161 = !{!47, !50, i64 520}
!162 = !{!47, !50, i64 536}
!163 = !{!47, !50, i64 540}
!164 = !{!47, !37, i64 408}
!165 = !{!47, !37, i64 544}
!166 = !{!47, !50, i64 548}
!167 = !{!47, !40, i64 568}
!168 = !{!47, !50, i64 592}
!169 = !{!47, !50, i64 600}
!170 = !{!47, !50, i64 596}
!171 = !{!47, !37, i64 404}
!172 = !{!47, !37, i64 396}
!173 = !{!47, !37, i64 412}
!174 = !{!47, !37, i64 416}
!175 = !{!47, !37, i64 428}
!176 = !{!47, !50, i64 456}
!177 = !{!47, !50, i64 460}
!178 = !{!47, !37, i64 440}
!179 = !{!47, !37, i64 452}
!180 = !{!47, !37, i64 52}
!181 = !{!47, !37, i64 56}
!182 = !{!47, !37, i64 60}
!183 = !{!47, !37, i64 64}
!184 = !{!47, !37, i64 68}
!185 = !{!47, !37, i64 72}
!186 = !{!47, !37, i64 76}
!187 = distinct !{!187, !56, !45}
!188 = !{!47, !37, i64 644}
