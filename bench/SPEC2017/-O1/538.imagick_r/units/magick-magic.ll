; ModuleID = 'magick/magic.c'
source_filename = "magick/magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagicMapInfo = type { ptr, i64, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MagicInfo = type { ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, i64 }

@magic_semaphore = internal global ptr null, align 8
@magic_cache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [15 x i8] c"magick/magic.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Name      Offset Target\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%6ld \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"magic.xml\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@MagicMap = internal unnamed_addr constant [113 x %struct._MagicMapInfo] [%struct._MagicMapInfo { ptr @.str.33, i64 0, ptr @.str.34, i64 9 }, %struct._MagicMapInfo { ptr @.str.35, i64 0, ptr @.str.36, i64 5 }, %struct._MagicMapInfo { ptr @.str.37, i64 0, ptr @.str.37, i64 4 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.39, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.40, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.41, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.42, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.43, i64 2 }, %struct._MagicMapInfo { ptr @.str.44, i64 0, ptr @.str.44, i64 4 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.45, i64 2 }, %struct._MagicMapInfo { ptr @.str.46, i64 21, ptr @.str.47, i64 21 }, %struct._MagicMapInfo { ptr @.str.46, i64 0, ptr @.str.48, i64 9 }, %struct._MagicMapInfo { ptr @.str.46, i64 9, ptr @.str.48, i64 9 }, %struct._MagicMapInfo { ptr @.str.46, i64 8, ptr @.str.49, i64 8 }, %struct._MagicMapInfo { ptr @.str.50, i64 0, ptr @.str.51, i64 5 }, %struct._MagicMapInfo { ptr @.str.52, i64 0, ptr @.str.53, i64 4 }, %struct._MagicMapInfo { ptr @.str.54, i64 0, ptr @.str.55, i64 14 }, %struct._MagicMapInfo { ptr @.str.56, i64 128, ptr @.str.57, i64 4 }, %struct._MagicMapInfo { ptr @.str.58, i64 0, ptr @.str.59, i64 4 }, %struct._MagicMapInfo { ptr @.str.60, i64 0, ptr @.str.61, i64 2 }, %struct._MagicMapInfo { ptr @.str.62, i64 0, ptr @.str.63, i64 4 }, %struct._MagicMapInfo { ptr @.str.64, i64 0, ptr @.str.65, i64 8 }, %struct._MagicMapInfo { ptr @.str.66, i64 0, ptr @.str.67, i64 7 }, %struct._MagicMapInfo { ptr @.str.68, i64 0, ptr @.str.69, i64 4 }, %struct._MagicMapInfo { ptr @.str.68, i64 0, ptr @.str.70, i64 4 }, %struct._MagicMapInfo { ptr @.str.71, i64 40, ptr @.str.72, i64 8 }, %struct._MagicMapInfo { ptr @.str.73, i64 0, ptr @.str.74, i64 4 }, %struct._MagicMapInfo { ptr @.str.75, i64 0, ptr @.str.76, i64 4 }, %struct._MagicMapInfo { ptr @.str.77, i64 0, ptr @.str.78, i64 4 }, %struct._MagicMapInfo { ptr @.str.79, i64 0, ptr @.str.80, i64 4 }, %struct._MagicMapInfo { ptr @.str.81, i64 0, ptr @.str.82, i64 3 }, %struct._MagicMapInfo { ptr @.str.81, i64 0, ptr @.str.83, i64 6 }, %struct._MagicMapInfo { ptr @.str.84, i64 0, ptr @.str.85, i64 4 }, %struct._MagicMapInfo { ptr @.str.86, i64 0, ptr @.str.87, i64 4 }, %struct._MagicMapInfo { ptr @.str.88, i64 0, ptr @.str.89, i64 24 }, %struct._MagicMapInfo { ptr @.str.90, i64 1, ptr @.str.90, i64 3 }, %struct._MagicMapInfo { ptr @.str.91, i64 0, ptr @.str.92, i64 10 }, %struct._MagicMapInfo { ptr @.str.91, i64 0, ptr @.str.93, i64 6 }, %struct._MagicMapInfo { ptr @.str.94, i64 0, ptr @.str.95, i64 3 }, %struct._MagicMapInfo { ptr @.str.96, i64 1, ptr @.str.96, i64 4 }, %struct._MagicMapInfo { ptr @.str.96, i64 1, ptr @.str.97, i64 4 }, %struct._MagicMapInfo { ptr @.str.98, i64 8, ptr @.str.98, i64 4 }, %struct._MagicMapInfo { ptr @.str.99, i64 0, ptr @.str.100, i64 28 }, %struct._MagicMapInfo { ptr @.str.101, i64 0, ptr @.str.102, i64 14 }, %struct._MagicMapInfo { ptr @.str.103, i64 0, ptr @.str.104, i64 2 }, %struct._MagicMapInfo { ptr @.str.105, i64 0, ptr @.str.106, i64 8 }, %struct._MagicMapInfo { ptr @.str.107, i64 0, ptr @.str.108, i64 3 }, %struct._MagicMapInfo { ptr @.str.109, i64 0, ptr @.str.110, i64 4 }, %struct._MagicMapInfo { ptr @.str.111, i64 0, ptr @.str.112, i64 4 }, %struct._MagicMapInfo { ptr @.str.113, i64 4, ptr @.str.114, i64 12 }, %struct._MagicMapInfo { ptr @.str.115, i64 0, ptr @.str.116, i64 20 }, %struct._MagicMapInfo { ptr @.str.117, i64 0, ptr @.str.118, i64 14 }, %struct._MagicMapInfo { ptr @.str.117, i64 0, ptr @.str.119, i64 14 }, %struct._MagicMapInfo { ptr @.str.120, i64 0, ptr @.str.121, i64 8 }, %struct._MagicMapInfo { ptr @.str.122, i64 0, ptr @.str.123, i64 14 }, %struct._MagicMapInfo { ptr @.str.124, i64 0, ptr @.str.125, i64 4 }, %struct._MagicMapInfo { ptr @.str.126, i64 0, ptr @.str.127, i64 4 }, %struct._MagicMapInfo { ptr @.str.128, i64 0, ptr @.str.129, i64 20 }, %struct._MagicMapInfo { ptr @.str.130, i64 0, ptr @.str.131, i64 8 }, %struct._MagicMapInfo { ptr @.str.132, i64 2048, ptr @.str.133, i64 4 }, %struct._MagicMapInfo { ptr @.str.134, i64 0, ptr @.str.135, i64 3 }, %struct._MagicMapInfo { ptr @.str.136, i64 0, ptr @.str.137, i64 2 }, %struct._MagicMapInfo { ptr @.str.136, i64 0, ptr @.str.138, i64 2 }, %struct._MagicMapInfo { ptr @.str.139, i64 60, ptr @.str.140, i64 8 }, %struct._MagicMapInfo { ptr @.str.141, i64 0, ptr @.str.142, i64 5 }, %struct._MagicMapInfo { ptr @.str.143, i64 0, ptr @.str.144, i64 4 }, %struct._MagicMapInfo { ptr @.str.145, i64 0, ptr @.str.146, i64 18 }, %struct._MagicMapInfo { ptr @.str.147, i64 6, ptr @.str.146, i64 18 }, %struct._MagicMapInfo { ptr @.str.148, i64 0, ptr @.str.149, i64 5 }, %struct._MagicMapInfo { ptr @.str.44, i64 522, ptr @.str.150, i64 6 }, %struct._MagicMapInfo { ptr @.str.151, i64 0, ptr @.str.152, i64 8 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.154, i64 2 }, %struct._MagicMapInfo { ptr @.str.155, i64 0, ptr @.str.156, i64 2 }, %struct._MagicMapInfo { ptr @.str.157, i64 0, ptr @.str.158, i64 2 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.159, i64 2 }, %struct._MagicMapInfo { ptr @.str.155, i64 0, ptr @.str.160, i64 2 }, %struct._MagicMapInfo { ptr @.str.157, i64 0, ptr @.str.161, i64 2 }, %struct._MagicMapInfo { ptr @.str.162, i64 0, ptr @.str.163, i64 2 }, %struct._MagicMapInfo { ptr @.str.164, i64 0, ptr @.str.165, i64 2 }, %struct._MagicMapInfo { ptr @.str.164, i64 0, ptr @.str.166, i64 2 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.168, i64 2 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.169, i64 3 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.74, i64 4 }, %struct._MagicMapInfo { ptr @.str.170, i64 0, ptr @.str.171, i64 4 }, %struct._MagicMapInfo { ptr @.str.172, i64 0, ptr @.str.173, i64 4 }, %struct._MagicMapInfo { ptr @.str.174, i64 0, ptr @.str.175, i64 5 }, %struct._MagicMapInfo { ptr @.str.176, i64 0, ptr @.str.177, i64 16 }, %struct._MagicMapInfo { ptr @.str.178, i64 0, ptr @.str.179, i64 2 }, %struct._MagicMapInfo { ptr @.str.180, i64 0, ptr @.str.181, i64 2 }, %struct._MagicMapInfo { ptr @.str.182, i64 0, ptr @.str.183, i64 5 }, %struct._MagicMapInfo { ptr @.str.184, i64 0, ptr @.str.185, i64 2 }, %struct._MagicMapInfo { ptr @.str.186, i64 0, ptr @.str.187, i64 4 }, %struct._MagicMapInfo { ptr @.str.188, i64 1, ptr @.str.189, i64 4 }, %struct._MagicMapInfo { ptr @.str.188, i64 1, ptr @.str.190, i64 4 }, %struct._MagicMapInfo { ptr @.str.191, i64 0, ptr @.str.192, i64 4 }, %struct._MagicMapInfo { ptr @.str.191, i64 0, ptr @.str.193, i64 4 }, %struct._MagicMapInfo { ptr @.str.194, i64 0, ptr @.str.195, i64 8 }, %struct._MagicMapInfo { ptr @.str.194, i64 0, ptr @.str.196, i64 8 }, %struct._MagicMapInfo { ptr @.str.197, i64 0, ptr @.str.198, i64 5 }, %struct._MagicMapInfo { ptr @.str.199, i64 0, ptr @.str.200, i64 32 }, %struct._MagicMapInfo { ptr @.str.201, i64 0, ptr @.str.202, i64 7 }, %struct._MagicMapInfo { ptr @.str.201, i64 0, ptr @.str.203, i64 6 }, %struct._MagicMapInfo { ptr @.str.204, i64 0, ptr @.str.205, i64 2 }, %struct._MagicMapInfo { ptr @.str.206, i64 8, ptr @.str.206, i64 4 }, %struct._MagicMapInfo { ptr @.str.207, i64 0, ptr @.str.208, i64 4 }, %struct._MagicMapInfo { ptr @.str.207, i64 0, ptr @.str.209, i64 4 }, %struct._MagicMapInfo { ptr @.str.210, i64 0, ptr @.str.211, i64 4 }, %struct._MagicMapInfo { ptr @.str.212, i64 0, ptr @.str.213, i64 7 }, %struct._MagicMapInfo { ptr @.str.214, i64 0, ptr @.str.215, i64 8 }, %struct._MagicMapInfo { ptr @.str.216, i64 0, ptr @.str.217, i64 4 }, %struct._MagicMapInfo { ptr @.str.218, i64 1, ptr @.str.219, i64 7 }, %struct._MagicMapInfo { ptr @.str.220, i64 4, ptr @.str.221, i64 3 }, %struct._MagicMapInfo { ptr @.str.220, i64 5, ptr @.str.222, i64 3 }], align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Loading magic configure file \22%s\22 ...\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"<magic\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"8BIMWTEXT\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"8\00B\00I\00M\00#\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"8BIMTEXT\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"8BIM#\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"PICT\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"CALS\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"version: MIL-STD-1840\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"srcdocid:\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"rorient:\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"CGM\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"BEGMF\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"CIN\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"\80*_\D7\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"CRW\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"II\1A\00\00\00HEAPCCDR\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"DCM\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"DICM\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"DCX\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\B1h\DE:\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"DIB\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"DDS\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"DDS \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"DJVU\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"AT&TFORM\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"digraph\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"DPX\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"SDPX\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"XPDS\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"EMF\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c" EMF\00\00\01\00\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"EPT\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"\C5\D0\D3\C6\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"EXR\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"v/1\01\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"DFAX\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"FIG\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"#FIG\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"IT0\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"FPX\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\D0\CF\11\E0\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"GIF8\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"GPLT\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"#!/usr/local/bin/gnuplot\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"HDF\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"HDR\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"#?RGBE\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"HPGL\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"IN;\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"ILBM\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"IPTCWTEXT\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"2\00#\000\00=\00\22\00&\00#\000\00;\00&\00#\002\00;\00\22\00\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"IPTCTEXT\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"2#0=\22&#0;&#2;\22\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"IPTC\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"\1C\02\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"\8BJNG\0D\0A\1A\0A\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"J2K\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"\FFO\FFQ\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"JPC\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"\0D\0A\87\0A\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"JP2\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"\00\00\00\0CjP  \0D\0A\87\0A\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"MAT\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"MATLAB 5.0 MAT-file,\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"Id=ImageMagick\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"id=ImageMagick\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"MNG\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"\8AMNG\0D\0A\1A\0A\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"MPC\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"id=MagickCache\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"\00\00\01\B3\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"\00MRM\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"MVG\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"push graphic-context\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"ORF\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"IIRO\08\00\00\00\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"PCD\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"PCD_\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"PCL\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"\1BE\1B\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"\0A\02\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"\0A\05\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"PDB\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"vIMGView\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"PES\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"#PES\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"PFA\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"%!PS-AdobeFont-1.0\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"PFB\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"PGX\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"(G\10M&\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"\00\11\02\FF\0C\00\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"P1\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"P4\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"PAM\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"PFM\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"Pf\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"%!\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"\04%!\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"PSB\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"8BPB\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"PSD\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"8BPS\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"PWP\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"SFW95\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"RAF\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"FUJIFILMCCD-RAW \00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"R\CC\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"SCT\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"SFW\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"SFW94\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"\01\DA\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"Y\A6j\95\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"?XML\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"?xml\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"MM\00*\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"II*\00\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"TIFF64\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"MM\00+\00\08\00\00\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"II+\00\08\00\00\00\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"TTF\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"\00\01\00\00\00\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.200 = private unnamed_addr constant [33 x i8] c"# ImageMagick pixel enumeration:\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"VICAR\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"LBLSIZE\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"NJPL1I\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"VIFF\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"\AB\01\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"WMF\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"\D7\CD\C6\9A\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"\01\00\09\00\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"WPG\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"\FFWPC\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"XBM\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"#define\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"XCF\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"gimp xcf\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"XEF\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"FOVb\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"XPM\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"* XPM *\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"XWD\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"\07\00\00\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"\00\00\07\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicInfo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %82

8:                                                ; preds = %3
  %9 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #12
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #12
  %14 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %17 = tail call ptr @NewLinkedList(i64 noundef 0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @GetExceptionInfo(ptr noundef nonnull %5) #12
  %20 = tail call ptr @__errno_location() #13
  %21 = load i32, ptr %20, align 4, !tbaa !38
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #12
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 265, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %22) #12
  %24 = call ptr @DestroyString(ptr noundef %22) #12
  call void @CatchException(ptr noundef nonnull %5) #12
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #14
  unreachable

26:                                               ; preds = %16
  store i8 0, ptr %4, align 16, !tbaa !40
  %27 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.13, ptr noundef %2) #12
  %28 = tail call ptr @GetNextValueInLinkedList(ptr noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %39, %30 ], [ %28, %26 ]
  %32 = phi i32 [ %38, %30 ], [ 1, %26 ]
  %33 = call ptr @GetStringInfoPath(ptr noundef nonnull %31) #12
  %34 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %33, i64 noundef 4096) #12
  %35 = call ptr @GetStringInfoDatum(ptr noundef nonnull %31) #12
  %36 = call ptr @GetStringInfoPath(ptr noundef nonnull %31) #12
  %37 = call fastcc i32 @LoadMagicCache(ptr noundef nonnull %17, ptr noundef %35, ptr noundef %36, i64 noundef 0, ptr noundef %2)
  %38 = and i32 %37, %32
  %39 = call ptr @GetNextValueInLinkedList(ptr noundef %27) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !41

41:                                               ; preds = %30, %26
  %42 = phi i32 [ 1, %26 ], [ %38, %30 ]
  br label %43

43:                                               ; preds = %41, %74
  %44 = phi i32 [ %75, %74 ], [ %42, %41 ]
  %45 = phi i64 [ %76, %74 ], [ 0, %41 ]
  %46 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %45
  %47 = call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load ptr, ptr %46, align 16, !tbaa !44
  %51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 295, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %50) #12
  br label %74

52:                                               ; preds = %43
  %53 = call ptr @ResetMagickMemory(ptr noundef nonnull %47, i32 noundef 0, i64 noundef 80) #12
  store ptr @.str.16, ptr %47, align 8, !tbaa !48
  %54 = load ptr, ptr %46, align 16, !tbaa !44
  %55 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !50
  %56 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %45, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 5
  store i64 %57, ptr %58, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %45, i32 2
  %60 = load ptr, ptr %59, align 16, !tbaa !53
  %61 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 3
  store ptr %60, ptr %62, align 8, !tbaa !55
  %63 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %45, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !56
  %65 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 4
  store i64 %64, ptr %65, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 6
  store i32 1, ptr %66, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct._MagicInfo, ptr %47, i64 0, i32 10
  store i64 2880220587, ptr %67, align 8, !tbaa !59
  %68 = call i32 @AppendValueToLinkedList(ptr noundef nonnull %17, ptr noundef nonnull %47) #12
  %69 = and i32 %68, %44
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load ptr, ptr %55, align 8, !tbaa !50
  %73 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 310, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %72) #12
  br label %74

74:                                               ; preds = %71, %52, %49
  %75 = phi i32 [ %44, %49 ], [ %69, %71 ], [ %69, %52 ]
  %76 = add nuw nsw i64 %45, 1
  %77 = icmp eq i64 %76, 113
  br i1 %77, label %78, label %43, !llvm.loop !60

78:                                               ; preds = %74
  %79 = call ptr @DestroyConfigureOptions(ptr noundef %27) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  store ptr %17, ptr @magic_cache, align 8, !tbaa !34
  br label %80

80:                                               ; preds = %78, %12
  %81 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %81) #12
  br label %82

82:                                               ; preds = %3, %80
  %83 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %118, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %86) #12
  %87 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  call void @ResetLinkedListIterator(ptr noundef %87) #12
  %88 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %89 = call ptr @GetNextValueInLinkedList(ptr noundef %88) #12
  %90 = icmp eq ptr %0, null
  %91 = icmp eq ptr %89, null
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %115, label %93

93:                                               ; preds = %85, %107
  %94 = phi ptr [ %109, %107 ], [ %89, %85 ]
  %95 = getelementptr inbounds %struct._MagicInfo, ptr %94, i64 0, i32 5
  %96 = load i64, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct._MagicInfo, ptr %94, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !57
  %99 = add i64 %98, %96
  %100 = icmp ugt i64 %99, %1
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds i8, ptr %0, i64 %96
  %103 = getelementptr inbounds %struct._MagicInfo, ptr %94, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = call i32 @bcmp(ptr nonnull %102, ptr %104, i64 %98)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101, %93
  %108 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %109 = call ptr @GetNextValueInLinkedList(ptr noundef %108) #12
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %93, !llvm.loop !61

111:                                              ; preds = %101
  %112 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %113 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %112, ptr noundef nonnull %94) #12
  %114 = call i32 @InsertValueInLinkedList(ptr noundef %112, i64 noundef 0, ptr noundef %113) #12
  br label %115

115:                                              ; preds = %107, %111, %85
  %116 = phi ptr [ %89, %85 ], [ %94, %111 ], [ %109, %107 ]
  %117 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %117) #12
  br label %118

118:                                              ; preds = %115, %82
  %119 = phi ptr [ null, %82 ], [ %116, %115 ]
  ret ptr %119
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 447, ptr noundef nonnull @.str.2, ptr noundef %0) #12
  store i64 0, ptr %1, align 8, !tbaa !62
  %5 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #12
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #12
  %15 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #12
  %16 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !64

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #12
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @MagicInfoCompare) #12
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @MagicInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._MagicInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._MagicInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #12
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 542, ptr noundef nonnull @.str.2, ptr noundef %0) #12
  store i64 0, ptr %1, align 8, !tbaa !62
  %5 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #12
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #12
  %15 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #12
  %16 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !63
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !50
  %32 = tail call ptr @ConstantString(ptr noundef %31) #12
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !65

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #12
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @MagicCompare) #12
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !62
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @MagicCompare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicName(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 593, ptr noundef nonnull @.str.3) #12
  %3 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListMagicInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetMagicInfoList(ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !62
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %98

12:                                               ; preds = %9, %93
  %13 = phi i64 [ %95, %93 ], [ 0, %9 ]
  %14 = phi ptr [ %94, %93 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._MagicInfo, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !48
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %15, align 8, !tbaa !34
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #12
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6) #12
  %34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7) #12
  br label %35

35:                                               ; preds = %32, %22
  %36 = load ptr, ptr %15, align 8, !tbaa !34
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct._MagicInfo, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %39) #12
  %41 = load ptr, ptr %15, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct._MagicInfo, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #17
  %45 = icmp slt i64 %44, 10
  br i1 %45, label %46, label %51

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %49, %46 ], [ %44, %35 ]
  %48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #12
  %49 = add i64 %47, 1
  %50 = icmp eq i64 %49, 10
  br i1 %50, label %51, label %46, !llvm.loop !66

51:                                               ; preds = %46, %35
  %52 = load ptr, ptr %15, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct._MagicInfo, ptr %52, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !52
  %55 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.9, i64 noundef %54) #12
  %56 = load ptr, ptr %15, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct._MagicInfo, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = icmp eq ptr %58, null
  br i1 %59, label %91, label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %15, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct._MagicInfo, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = load i8, ptr %63, align 1, !tbaa !40
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @__ctype_b_loc() #13
  br label %68

68:                                               ; preds = %66, %83
  %69 = phi i8 [ %64, %66 ], [ %89, %83 ]
  %70 = phi i64 [ 0, %66 ], [ %84, %83 ]
  %71 = load ptr, ptr %67, align 8, !tbaa !34
  %72 = zext i8 %69 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !67
  %75 = and i16 %74, 16384
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = sext i8 %69 to i32
  %79 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %78) #12
  br label %83

80:                                               ; preds = %68
  %81 = zext i8 %69 to i32
  %82 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %81) #12
  br label %83

83:                                               ; preds = %77, %80
  %84 = add nuw nsw i64 %70, 1
  %85 = load ptr, ptr %15, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct._MagicInfo, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  %88 = getelementptr inbounds i8, ptr %87, i64 %84
  %89 = load i8, ptr %88, align 1, !tbaa !40
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %68, !llvm.loop !69

91:                                               ; preds = %83, %60, %51
  %92 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.12) #12
  br label %93

93:                                               ; preds = %12, %91
  %94 = phi ptr [ %14, %12 ], [ %37, %91 ]
  %95 = add nuw nsw i64 %13, 1
  %96 = load i64, ptr %3, align 8, !tbaa !62
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %12, label %98, !llvm.loop !70

98:                                               ; preds = %93, %9
  %99 = tail call i32 @fflush(ptr noundef %6)
  %100 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #12
  br label %101

101:                                              ; preds = %2, %98
  %102 = phi i32 [ 1, %98 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %102
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MagicComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #12
  store ptr %4, ptr @magic_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagicComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #12
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #12
  %6 = load ptr, ptr @magic_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %6, ptr noundef nonnull @DestroyMagicElement) #12
  store ptr %9, ptr @magic_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @magic_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magic_semaphore) #12
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyMagicElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #12
  store ptr %9, ptr %0, align 8, !tbaa !48
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #12
  store ptr %15, ptr %11, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #12
  store ptr %21, ptr %17, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %24) #12
  store ptr %27, ptr %23, align 8, !tbaa !55
  br label %28

28:                                               ; preds = %22, %26, %1
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #12
  ret ptr null
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadMagicCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.17, ptr noundef %2) #12
  %12 = icmp eq ptr %1, null
  br i1 %12, label %242, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @AcquireString(ptr noundef nonnull %1) #12
  store ptr %1, ptr %7, align 8, !tbaa !34
  %15 = load i8, ptr %1, align 1, !tbaa !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %239, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp ugt i64 %3, 200
  %20 = add nuw nsw i64 %3, 1
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi ptr [ %1, %17 ], [ %46, %43 ]
  %23 = phi ptr [ null, %17 ], [ %45, %43 ]
  %24 = phi i32 [ 1, %17 ], [ %44, %43 ]
  call void @GetMagickToken(ptr noundef nonnull %22, ptr noundef nonnull %7, ptr noundef %14) #12
  %25 = load i8, ptr %14, align 1, !tbaa !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %239, label %27

27:                                               ; preds = %21
  %28 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef %14, i64 noundef 4096) #12
  %29 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.18, i64 noundef 9) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !34
  %33 = call i32 @LocaleNCompare(ptr noundef %32, ptr noundef nonnull @.str.19, i64 noundef 2) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %39
  %36 = load ptr, ptr %7, align 8, !tbaa !34
  %37 = load i8, ptr %36, align 1, !tbaa !40
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  call void @GetMagickToken(ptr noundef nonnull %36, ptr noundef nonnull %7, ptr noundef %14) #12
  %40 = load ptr, ptr %7, align 8, !tbaa !34
  %41 = call i32 @LocaleNCompare(ptr noundef %40, ptr noundef nonnull @.str.19, i64 noundef 2) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !71

43:                                               ; preds = %184, %60, %56, %39, %35, %76, %70, %73, %155, %161, %167, %152, %158, %164, %170, %148, %137, %140, %52, %31, %127, %132, %144
  %44 = phi i32 [ %24, %127 ], [ %24, %132 ], [ %24, %144 ], [ %24, %31 ], [ %24, %52 ], [ %138, %140 ], [ %138, %137 ], [ %24, %148 ], [ %24, %170 ], [ %24, %164 ], [ %24, %158 ], [ %24, %152 ], [ %24, %167 ], [ %24, %161 ], [ %24, %155 ], [ %68, %73 ], [ %68, %70 ], [ %68, %76 ], [ %24, %35 ], [ %24, %39 ], [ %24, %56 ], [ %24, %60 ], [ %24, %184 ]
  %45 = phi ptr [ %118, %127 ], [ null, %132 ], [ %23, %144 ], [ %23, %31 ], [ %23, %52 ], [ null, %140 ], [ null, %137 ], [ %23, %148 ], [ %23, %170 ], [ %23, %164 ], [ %23, %158 ], [ %23, %152 ], [ %23, %167 ], [ %23, %161 ], [ %23, %155 ], [ %23, %73 ], [ %23, %70 ], [ %23, %76 ], [ %23, %35 ], [ %23, %39 ], [ %23, %56 ], [ %23, %60 ], [ %23, %184 ]
  %46 = load ptr, ptr %7, align 8, !tbaa !34
  %47 = load i8, ptr %46, align 1, !tbaa !40
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %239, label %21, !llvm.loop !72

49:                                               ; preds = %27
  %50 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i64 noundef 4) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %7, align 8, !tbaa !34
  %54 = call i32 @LocaleNCompare(ptr noundef %53, ptr noundef nonnull @.str.21, i64 noundef 2) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %52, %60
  %57 = load ptr, ptr %7, align 8, !tbaa !34
  %58 = load i8, ptr %57, align 1, !tbaa !40
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  call void @GetMagickToken(ptr noundef nonnull %57, ptr noundef nonnull %7, ptr noundef %14) #12
  %61 = load ptr, ptr %7, align 8, !tbaa !34
  %62 = call i32 @LocaleNCompare(ptr noundef %61, ptr noundef nonnull @.str.21, i64 noundef 2) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %43, label %56, !llvm.loop !73

64:                                               ; preds = %49
  %65 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.22) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %64, %112
  %68 = phi i32 [ %113, %112 ], [ %24, %64 ]
  br label %69

69:                                               ; preds = %92, %67
  br label %70

70:                                               ; preds = %69, %80
  %71 = load i8, ptr %14, align 1, !tbaa !40
  %72 = icmp eq i8 %71, 47
  br i1 %72, label %43, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %18, align 1, !tbaa !40
  %75 = icmp eq i8 %74, 62
  br i1 %75, label %43, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !34
  %78 = load i8, ptr %77, align 1, !tbaa !40
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %43, label %80

80:                                               ; preds = %76
  %81 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 4096) #12
  %82 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %14) #12
  %83 = load i8, ptr %14, align 1, !tbaa !40
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %85, label %70, !llvm.loop !74

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %14) #12
  %87 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.23) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  br i1 %19, label %90, label %93

90:                                               ; preds = %89
  %91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 823, i32 noundef 495, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, ptr noundef nonnull %14) #12
  br label %92

92:                                               ; preds = %90, %85
  br label %69, !llvm.loop !74

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #12
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #12
  %94 = load i8, ptr %8, align 16, !tbaa !40
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.25, i64 noundef 4096) #12
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8, ptr %14, align 1, !tbaa !40
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %14, i64 noundef 4096) #12
  br label %105

103:                                              ; preds = %98
  %104 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %14, i64 noundef 4096) #12
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = call fastcc i32 @LoadMagicCache(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %8, i64 noundef %20, ptr noundef %4)
  %110 = and i32 %109, %68
  %111 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %106) #12
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i32 [ %110, %108 ], [ %68, %105 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #12
  br label %67, !llvm.loop !74

114:                                              ; preds = %64
  %115 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @GetExceptionInfo(ptr noundef nonnull %9) #12
  %121 = tail call ptr @__errno_location() #13
  %122 = load i32, ptr %121, align 4, !tbaa !38
  %123 = call ptr @GetExceptionMessage(i32 noundef %122) #12
  %124 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 858, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %123) #12
  %125 = call ptr @DestroyString(ptr noundef %123) #12
  call void @CatchException(ptr noundef nonnull %9) #12
  %126 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #14
  unreachable

127:                                              ; preds = %117
  %128 = call ptr @ResetMagickMemory(ptr noundef nonnull %118, i32 noundef 0, i64 noundef 80) #12
  %129 = call ptr @ConstantString(ptr noundef %2) #12
  store ptr %129, ptr %118, align 8, !tbaa !48
  %130 = getelementptr inbounds %struct._MagicInfo, ptr %118, i64 0, i32 6
  store i32 0, ptr %130, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct._MagicInfo, ptr %118, i64 0, i32 10
  store i64 2880220587, ptr %131, align 8, !tbaa !59
  br label %43

132:                                              ; preds = %114
  %133 = icmp eq ptr %23, null
  br i1 %133, label %43, label %134

134:                                              ; preds = %132
  %135 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.27) #12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %43

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !50
  %143 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 871, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %142) #12
  br label %43

144:                                              ; preds = %134
  %145 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %145, ptr noundef null, ptr noundef %14) #12
  %146 = load i8, ptr %14, align 1, !tbaa !40
  %147 = icmp eq i8 %146, 61
  br i1 %147, label %148, label %43

148:                                              ; preds = %144
  %149 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %149, ptr noundef nonnull %7, ptr noundef nonnull %14) #12
  %150 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %7, ptr noundef nonnull %14) #12
  %151 = load i8, ptr %6, align 16, !tbaa !40
  switch i8 %151, label %43 [
    i8 78, label %152
    i8 110, label %152
    i8 79, label %158
    i8 111, label %158
    i8 83, label %164
    i8 115, label %164
    i8 84, label %170
    i8 116, label %170
  ]

152:                                              ; preds = %148, %148
  %153 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.28) #12
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %43

155:                                              ; preds = %152
  %156 = call ptr @ConstantString(ptr noundef nonnull %14) #12
  %157 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !50
  br label %43

158:                                              ; preds = %148, %148
  %159 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.29) #12
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %43

161:                                              ; preds = %158
  %162 = call i64 @strtol(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #12
  %163 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 5
  store i64 %162, ptr %163, align 8, !tbaa !52
  br label %43

164:                                              ; preds = %148, %148
  %165 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.30) #12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %43

167:                                              ; preds = %164
  %168 = call i32 @IsMagickTrue(ptr noundef nonnull %14) #12
  %169 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 7
  store i32 %168, ptr %169, align 4, !tbaa !63
  br label %43

170:                                              ; preds = %148, %148
  %171 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.31) #12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %43

173:                                              ; preds = %170
  %174 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %175 = call ptr @ConstantString(ptr noundef nonnull %14) #12
  %176 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 2
  store ptr %175, ptr %176, align 8, !tbaa !54
  %177 = call ptr @ConstantString(ptr noundef nonnull %14) #12
  %178 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 3
  store ptr %177, ptr %178, align 8, !tbaa !55
  %179 = load ptr, ptr %176, align 8, !tbaa !54
  %180 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 4
  %181 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 4
  %182 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 4
  %183 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 4
  br label %184

184:                                              ; preds = %208, %173
  %185 = phi ptr [ %179, %173 ], [ %209, %208 ]
  %186 = phi ptr [ %177, %173 ], [ %210, %208 ]
  %187 = load i8, ptr %185, align 1, !tbaa !40
  switch i8 %187, label %225 [
    i8 0, label %43
    i8 92, label %188
  ]

188:                                              ; preds = %184
  %189 = getelementptr inbounds i8, ptr %185, i64 1
  %190 = tail call ptr @__ctype_b_loc() #13
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  %192 = load i8, ptr %189, align 1, !tbaa !40
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds i16, ptr %191, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !67
  %196 = and i16 %195, 2048
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %211, label %198

198:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %199 = call i64 @strtol(ptr noundef nonnull %189, ptr noundef nonnull %10, i32 noundef 8) #12
  %200 = trunc i64 %199 to i8
  store i8 %200, ptr %186, align 1, !tbaa !40
  %201 = load ptr, ptr %10, align 8, !tbaa !34
  %202 = ptrtoint ptr %201 to i64
  %203 = ptrtoint ptr %189 to i64
  %204 = sub i64 %202, %203
  %205 = getelementptr inbounds i8, ptr %189, i64 %204
  %206 = load i64, ptr %180, align 8, !tbaa !57
  %207 = add i64 %206, 1
  store i64 %207, ptr %180, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %208

208:                                              ; preds = %198, %220, %234
  %209 = phi ptr [ %205, %198 ], [ %222, %220 ], [ %235, %234 ]
  %210 = getelementptr inbounds i8, ptr %186, i64 1
  br label %184, !llvm.loop !75

211:                                              ; preds = %188
  switch i8 %192, label %219 [
    i8 98, label %220
    i8 102, label %212
    i8 110, label %213
    i8 114, label %214
    i8 116, label %215
    i8 118, label %216
    i8 97, label %217
    i8 63, label %218
  ]

212:                                              ; preds = %211
  br label %220

213:                                              ; preds = %211
  br label %220

214:                                              ; preds = %211
  br label %220

215:                                              ; preds = %211
  br label %220

216:                                              ; preds = %211
  br label %220

217:                                              ; preds = %211
  br label %220

218:                                              ; preds = %211
  br label %220

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %211, %219, %218, %217, %216, %215, %214, %213, %212
  %221 = phi i8 [ %192, %219 ], [ %192, %218 ], [ %192, %217 ], [ 11, %216 ], [ 9, %215 ], [ 13, %214 ], [ 10, %213 ], [ 12, %212 ], [ 8, %211 ]
  store i8 %221, ptr %186, align 1, !tbaa !40
  %222 = getelementptr inbounds i8, ptr %185, i64 2
  %223 = load i64, ptr %181, align 8, !tbaa !57
  %224 = add i64 %223, 1
  store i64 %224, ptr %181, align 8, !tbaa !57
  br label %208

225:                                              ; preds = %184
  %226 = call i32 @LocaleNCompare(ptr noundef nonnull %185, ptr noundef nonnull @.str.32, i64 noundef 5) #12
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = getelementptr inbounds i8, ptr %185, i64 1
  %230 = getelementptr inbounds i8, ptr %185, i64 5
  %231 = load i64, ptr %182, align 8, !tbaa !57
  %232 = sub i64 %174, %231
  %233 = call i64 @CopyMagickString(ptr noundef nonnull %229, ptr noundef nonnull %230, i64 noundef %232) #12
  br label %234

234:                                              ; preds = %225, %228
  %235 = getelementptr inbounds i8, ptr %185, i64 1
  %236 = load i8, ptr %185, align 1, !tbaa !40
  store i8 %236, ptr %186, align 1, !tbaa !40
  %237 = load i64, ptr %183, align 8, !tbaa !57
  %238 = add i64 %237, 1
  store i64 %238, ptr %183, align 8, !tbaa !57
  br label %208

239:                                              ; preds = %43, %21, %13
  %240 = phi i32 [ 1, %13 ], [ %44, %43 ], [ %24, %21 ]
  %241 = call ptr @RelinquishMagickMemory(ptr noundef %14) #12
  br label %242

242:                                              ; preds = %5, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  ret i32 %243
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !35, i64 0}
!45 = !{!"_MagicMapInfo", !35, i64 0, !46, i64 8, !35, i64 16, !47, i64 24}
!46 = !{!"long long", !36, i64 0}
!47 = !{!"long", !36, i64 0}
!48 = !{!49, !35, i64 0}
!49 = !{!"_MagicInfo", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !47, i64 32, !46, i64 40, !39, i64 48, !39, i64 52, !35, i64 56, !35, i64 64, !47, i64 72}
!50 = !{!49, !35, i64 8}
!51 = !{!45, !46, i64 8}
!52 = !{!49, !46, i64 40}
!53 = !{!45, !35, i64 16}
!54 = !{!49, !35, i64 16}
!55 = !{!49, !35, i64 24}
!56 = !{!45, !47, i64 24}
!57 = !{!49, !47, i64 32}
!58 = !{!49, !39, i64 48}
!59 = !{!49, !47, i64 72}
!60 = distinct !{!60, !42, !43}
!61 = distinct !{!61, !42, !43}
!62 = !{!47, !47, i64 0}
!63 = !{!49, !39, i64 52}
!64 = distinct !{!64, !42, !43}
!65 = distinct !{!65, !42, !43}
!66 = distinct !{!66, !42, !43}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !36, i64 0}
!69 = distinct !{!69, !42, !43}
!70 = distinct !{!70, !42, !43}
!71 = distinct !{!71, !42, !43}
!72 = distinct !{!72, !42, !43}
!73 = distinct !{!73, !42, !43}
!74 = distinct !{!74, !42, !43}
!75 = distinct !{!75, !42, !43}
