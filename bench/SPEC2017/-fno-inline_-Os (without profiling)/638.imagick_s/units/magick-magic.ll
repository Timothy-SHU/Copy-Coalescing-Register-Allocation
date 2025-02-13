; ModuleID = 'magick/magic.c'
source_filename = "magick/magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagicMapInfo = type { ptr, i64, ptr, i64 }
%struct._MagicInfo = type { ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@magic_semaphore = internal global ptr null, align 8
@magic_cache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c"magic.xml\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"magick/magic.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@MagicMap = internal unnamed_addr constant [113 x %struct._MagicMapInfo] [%struct._MagicMapInfo { ptr @.str.22, i64 0, ptr @.str.23, i64 9 }, %struct._MagicMapInfo { ptr @.str.24, i64 0, ptr @.str.25, i64 5 }, %struct._MagicMapInfo { ptr @.str.26, i64 0, ptr @.str.26, i64 4 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.28, i64 2 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.29, i64 2 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.30, i64 2 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.31, i64 2 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.32, i64 2 }, %struct._MagicMapInfo { ptr @.str.33, i64 0, ptr @.str.33, i64 4 }, %struct._MagicMapInfo { ptr @.str.27, i64 0, ptr @.str.34, i64 2 }, %struct._MagicMapInfo { ptr @.str.35, i64 21, ptr @.str.36, i64 21 }, %struct._MagicMapInfo { ptr @.str.35, i64 0, ptr @.str.37, i64 9 }, %struct._MagicMapInfo { ptr @.str.35, i64 9, ptr @.str.37, i64 9 }, %struct._MagicMapInfo { ptr @.str.35, i64 8, ptr @.str.38, i64 8 }, %struct._MagicMapInfo { ptr @.str.39, i64 0, ptr @.str.40, i64 5 }, %struct._MagicMapInfo { ptr @.str.41, i64 0, ptr @.str.42, i64 4 }, %struct._MagicMapInfo { ptr @.str.43, i64 0, ptr @.str.44, i64 14 }, %struct._MagicMapInfo { ptr @.str.45, i64 128, ptr @.str.46, i64 4 }, %struct._MagicMapInfo { ptr @.str.47, i64 0, ptr @.str.48, i64 4 }, %struct._MagicMapInfo { ptr @.str.49, i64 0, ptr @.str.50, i64 2 }, %struct._MagicMapInfo { ptr @.str.51, i64 0, ptr @.str.52, i64 4 }, %struct._MagicMapInfo { ptr @.str.53, i64 0, ptr @.str.54, i64 8 }, %struct._MagicMapInfo { ptr @.str.55, i64 0, ptr @.str.56, i64 7 }, %struct._MagicMapInfo { ptr @.str.57, i64 0, ptr @.str.58, i64 4 }, %struct._MagicMapInfo { ptr @.str.57, i64 0, ptr @.str.59, i64 4 }, %struct._MagicMapInfo { ptr @.str.60, i64 40, ptr @.str.61, i64 8 }, %struct._MagicMapInfo { ptr @.str.62, i64 0, ptr @.str.63, i64 4 }, %struct._MagicMapInfo { ptr @.str.64, i64 0, ptr @.str.65, i64 4 }, %struct._MagicMapInfo { ptr @.str.66, i64 0, ptr @.str.67, i64 4 }, %struct._MagicMapInfo { ptr @.str.68, i64 0, ptr @.str.69, i64 4 }, %struct._MagicMapInfo { ptr @.str.70, i64 0, ptr @.str.71, i64 3 }, %struct._MagicMapInfo { ptr @.str.70, i64 0, ptr @.str.72, i64 6 }, %struct._MagicMapInfo { ptr @.str.73, i64 0, ptr @.str.74, i64 4 }, %struct._MagicMapInfo { ptr @.str.75, i64 0, ptr @.str.76, i64 4 }, %struct._MagicMapInfo { ptr @.str.77, i64 0, ptr @.str.78, i64 24 }, %struct._MagicMapInfo { ptr @.str.79, i64 1, ptr @.str.79, i64 3 }, %struct._MagicMapInfo { ptr @.str.80, i64 0, ptr @.str.81, i64 10 }, %struct._MagicMapInfo { ptr @.str.80, i64 0, ptr @.str.82, i64 6 }, %struct._MagicMapInfo { ptr @.str.83, i64 0, ptr @.str.84, i64 3 }, %struct._MagicMapInfo { ptr @.str.85, i64 1, ptr @.str.85, i64 4 }, %struct._MagicMapInfo { ptr @.str.85, i64 1, ptr @.str.86, i64 4 }, %struct._MagicMapInfo { ptr @.str.87, i64 8, ptr @.str.87, i64 4 }, %struct._MagicMapInfo { ptr @.str.88, i64 0, ptr @.str.89, i64 28 }, %struct._MagicMapInfo { ptr @.str.90, i64 0, ptr @.str.91, i64 14 }, %struct._MagicMapInfo { ptr @.str.92, i64 0, ptr @.str.93, i64 2 }, %struct._MagicMapInfo { ptr @.str.94, i64 0, ptr @.str.95, i64 8 }, %struct._MagicMapInfo { ptr @.str.96, i64 0, ptr @.str.97, i64 3 }, %struct._MagicMapInfo { ptr @.str.98, i64 0, ptr @.str.99, i64 4 }, %struct._MagicMapInfo { ptr @.str.100, i64 0, ptr @.str.101, i64 4 }, %struct._MagicMapInfo { ptr @.str.102, i64 4, ptr @.str.103, i64 12 }, %struct._MagicMapInfo { ptr @.str.104, i64 0, ptr @.str.105, i64 20 }, %struct._MagicMapInfo { ptr @.str.106, i64 0, ptr @.str.107, i64 14 }, %struct._MagicMapInfo { ptr @.str.106, i64 0, ptr @.str.108, i64 14 }, %struct._MagicMapInfo { ptr @.str.109, i64 0, ptr @.str.110, i64 8 }, %struct._MagicMapInfo { ptr @.str.111, i64 0, ptr @.str.112, i64 14 }, %struct._MagicMapInfo { ptr @.str.113, i64 0, ptr @.str.114, i64 4 }, %struct._MagicMapInfo { ptr @.str.115, i64 0, ptr @.str.116, i64 4 }, %struct._MagicMapInfo { ptr @.str.117, i64 0, ptr @.str.118, i64 20 }, %struct._MagicMapInfo { ptr @.str.119, i64 0, ptr @.str.120, i64 8 }, %struct._MagicMapInfo { ptr @.str.121, i64 2048, ptr @.str.122, i64 4 }, %struct._MagicMapInfo { ptr @.str.123, i64 0, ptr @.str.124, i64 3 }, %struct._MagicMapInfo { ptr @.str.125, i64 0, ptr @.str.126, i64 2 }, %struct._MagicMapInfo { ptr @.str.125, i64 0, ptr @.str.127, i64 2 }, %struct._MagicMapInfo { ptr @.str.128, i64 60, ptr @.str.129, i64 8 }, %struct._MagicMapInfo { ptr @.str.130, i64 0, ptr @.str.131, i64 5 }, %struct._MagicMapInfo { ptr @.str.132, i64 0, ptr @.str.133, i64 4 }, %struct._MagicMapInfo { ptr @.str.134, i64 0, ptr @.str.135, i64 18 }, %struct._MagicMapInfo { ptr @.str.136, i64 6, ptr @.str.135, i64 18 }, %struct._MagicMapInfo { ptr @.str.137, i64 0, ptr @.str.138, i64 5 }, %struct._MagicMapInfo { ptr @.str.33, i64 522, ptr @.str.139, i64 6 }, %struct._MagicMapInfo { ptr @.str.140, i64 0, ptr @.str.141, i64 8 }, %struct._MagicMapInfo { ptr @.str.142, i64 0, ptr @.str.143, i64 2 }, %struct._MagicMapInfo { ptr @.str.144, i64 0, ptr @.str.145, i64 2 }, %struct._MagicMapInfo { ptr @.str.146, i64 0, ptr @.str.147, i64 2 }, %struct._MagicMapInfo { ptr @.str.142, i64 0, ptr @.str.148, i64 2 }, %struct._MagicMapInfo { ptr @.str.144, i64 0, ptr @.str.149, i64 2 }, %struct._MagicMapInfo { ptr @.str.146, i64 0, ptr @.str.150, i64 2 }, %struct._MagicMapInfo { ptr @.str.151, i64 0, ptr @.str.152, i64 2 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.154, i64 2 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.155, i64 2 }, %struct._MagicMapInfo { ptr @.str.156, i64 0, ptr @.str.157, i64 2 }, %struct._MagicMapInfo { ptr @.str.156, i64 0, ptr @.str.158, i64 3 }, %struct._MagicMapInfo { ptr @.str.156, i64 0, ptr @.str.63, i64 4 }, %struct._MagicMapInfo { ptr @.str.159, i64 0, ptr @.str.160, i64 4 }, %struct._MagicMapInfo { ptr @.str.161, i64 0, ptr @.str.162, i64 4 }, %struct._MagicMapInfo { ptr @.str.163, i64 0, ptr @.str.164, i64 5 }, %struct._MagicMapInfo { ptr @.str.165, i64 0, ptr @.str.166, i64 16 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.168, i64 2 }, %struct._MagicMapInfo { ptr @.str.169, i64 0, ptr @.str.170, i64 2 }, %struct._MagicMapInfo { ptr @.str.171, i64 0, ptr @.str.172, i64 5 }, %struct._MagicMapInfo { ptr @.str.173, i64 0, ptr @.str.174, i64 2 }, %struct._MagicMapInfo { ptr @.str.175, i64 0, ptr @.str.176, i64 4 }, %struct._MagicMapInfo { ptr @.str.177, i64 1, ptr @.str.178, i64 4 }, %struct._MagicMapInfo { ptr @.str.177, i64 1, ptr @.str.179, i64 4 }, %struct._MagicMapInfo { ptr @.str.180, i64 0, ptr @.str.181, i64 4 }, %struct._MagicMapInfo { ptr @.str.180, i64 0, ptr @.str.182, i64 4 }, %struct._MagicMapInfo { ptr @.str.183, i64 0, ptr @.str.184, i64 8 }, %struct._MagicMapInfo { ptr @.str.183, i64 0, ptr @.str.185, i64 8 }, %struct._MagicMapInfo { ptr @.str.186, i64 0, ptr @.str.187, i64 5 }, %struct._MagicMapInfo { ptr @.str.188, i64 0, ptr @.str.189, i64 32 }, %struct._MagicMapInfo { ptr @.str.190, i64 0, ptr @.str.191, i64 7 }, %struct._MagicMapInfo { ptr @.str.190, i64 0, ptr @.str.192, i64 6 }, %struct._MagicMapInfo { ptr @.str.193, i64 0, ptr @.str.194, i64 2 }, %struct._MagicMapInfo { ptr @.str.195, i64 8, ptr @.str.195, i64 4 }, %struct._MagicMapInfo { ptr @.str.196, i64 0, ptr @.str.197, i64 4 }, %struct._MagicMapInfo { ptr @.str.196, i64 0, ptr @.str.198, i64 4 }, %struct._MagicMapInfo { ptr @.str.199, i64 0, ptr @.str.200, i64 4 }, %struct._MagicMapInfo { ptr @.str.201, i64 0, ptr @.str.202, i64 7 }, %struct._MagicMapInfo { ptr @.str.203, i64 0, ptr @.str.204, i64 8 }, %struct._MagicMapInfo { ptr @.str.205, i64 0, ptr @.str.206, i64 4 }, %struct._MagicMapInfo { ptr @.str.207, i64 1, ptr @.str.208, i64 7 }, %struct._MagicMapInfo { ptr @.str.209, i64 4, ptr @.str.210, i64 3 }, %struct._MagicMapInfo { ptr @.str.209, i64 5, ptr @.str.211, i64 3 }], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Loading magic configure file \22%s\22 ...\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<magic\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"8BIMWTEXT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"8\00B\00I\00M\00#\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"8BIMTEXT\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"8BIM#\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"PICT\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"CALS\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"version: MIL-STD-1840\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"srcdocid:\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"rorient:\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"CGM\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"BEGMF\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"CIN\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\80*_\D7\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"CRW\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"II\1A\00\00\00HEAPCCDR\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"DCM\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"DICM\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"DCX\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\B1h\DE:\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"DIB\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"DDS\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"DDS \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"DJVU\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"AT&TFORM\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"digraph\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"DPX\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"SDPX\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"XPDS\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"EMF\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c" EMF\00\00\01\00\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"EPT\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"\C5\D0\D3\C6\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"EXR\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"v/1\01\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"DFAX\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"FIG\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"#FIG\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"IT0\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"FPX\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"\D0\CF\11\E0\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"GIF8\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"GPLT\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"#!/usr/local/bin/gnuplot\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"HDF\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"HDR\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"#?RGBE\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"HPGL\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"IN;\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"ILBM\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"IPTCWTEXT\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"2\00#\000\00=\00\22\00&\00#\000\00;\00&\00#\002\00;\00\22\00\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"IPTCTEXT\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"2#0=\22&#0;&#2;\22\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"IPTC\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"\1C\02\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"\8BJNG\0D\0A\1A\0A\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"J2K\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"\FFO\FFQ\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"JPC\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"\0D\0A\87\0A\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"JP2\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"\00\00\00\0CjP  \0D\0A\87\0A\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"MAT\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"MATLAB 5.0 MAT-file,\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"Id=ImageMagick\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"id=ImageMagick\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"MNG\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"\8AMNG\0D\0A\1A\0A\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"MPC\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"id=MagickCache\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"\00\00\01\B3\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"\00MRM\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"MVG\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"push graphic-context\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"ORF\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"IIRO\08\00\00\00\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"PCD\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"PCD_\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"PCL\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"\1BE\1B\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"\0A\02\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"\0A\05\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"PDB\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"vIMGView\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"PES\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"#PES\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"PFA\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"%!PS-AdobeFont-1.0\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"PFB\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"PGX\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"(G\10M&\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"\00\11\02\FF\0C\00\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"P1\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"P4\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"PAM\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"PFM\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"Pf\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"%!\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"\04%!\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"PSB\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"8BPB\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"PSD\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"8BPS\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"PWP\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"SFW95\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"RAF\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"FUJIFILMCCD-RAW \00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"R\CC\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"SCT\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"SFW\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"SFW94\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"\01\DA\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"Y\A6j\95\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"?XML\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"?xml\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"MM\00*\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"II*\00\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"TIFF64\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"MM\00+\00\08\00\00\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"II+\00\08\00\00\00\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"TTF\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"\00\01\00\00\00\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.189 = private unnamed_addr constant [33 x i8] c"# ImageMagick pixel enumeration:\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"VICAR\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"LBLSIZE\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"NJPL1I\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"VIFF\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"\AB\01\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"WMF\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"\D7\CD\C6\9A\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"\01\00\09\00\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"WPG\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"\FFWPC\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"XBM\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"#define\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"XCF\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"gimp xcf\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"XEF\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"FOVb\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"XPM\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"* XPM *\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"XWD\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"\07\00\00\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"\00\00\07\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.214 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.216 = private unnamed_addr constant [25 x i8] c"Name      Offset Target\0A\00", align 1
@.str.217 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.218 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"%6ld \00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagicInfo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @IsMagicCacheInstantiated(ptr noundef %2) #13, !range !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %7) #14
  %8 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  tail call void @ResetLinkedListIterator(ptr noundef %8) #14
  %9 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %10 = tail call ptr @GetNextValueInLinkedList(ptr noundef %9) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %10, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12, %28
  %15 = phi ptr [ %30, %28 ], [ %10, %12 ]
  %16 = getelementptr inbounds %struct._MagicInfo, ptr %15, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct._MagicInfo, ptr %15, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !16
  %20 = add i64 %19, %17
  %21 = icmp ugt i64 %20, %1
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, ptr %0, i64 %17
  %24 = getelementptr inbounds %struct._MagicInfo, ptr %15, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = tail call i32 @bcmp(ptr nonnull %23, ptr %25, i64 %19)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22, %14
  %29 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %30 = tail call ptr @GetNextValueInLinkedList(ptr noundef %29) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %14, !llvm.loop !18

32:                                               ; preds = %22
  %33 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %34 = tail call ptr @RemoveElementByValueFromLinkedList(ptr noundef %33, ptr noundef nonnull %15) #14
  %35 = tail call i32 @InsertValueInLinkedList(ptr noundef %33, i64 noundef 0, ptr noundef %34) #14
  br label %36

36:                                               ; preds = %28, %32, %12, %6
  %37 = phi ptr [ %10, %6 ], [ %15, %32 ], [ null, %12 ], [ null, %28 ]
  %38 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %38) #14
  br label %39

39:                                               ; preds = %36, %3
  %40 = phi ptr [ null, %3 ], [ %37, %36 ]
  ret ptr %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsMagicCacheInstantiated(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #14
  %8 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #14
  %11 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireMagicCache(ptr noundef %0) #13
  store ptr %14, ptr @magic_cache, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #14
  %17 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireMagicCache(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #15
  %4 = tail call ptr @NewLinkedList(i64 noundef 0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @GetExceptionInfo(ptr noundef nonnull %3) #14
  %7 = tail call ptr @__errno_location() #16
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #14
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 265, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %9) #14
  %11 = call ptr @DestroyString(ptr noundef %9) #14
  call void @CatchException(ptr noundef nonnull %3) #14
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

13:                                               ; preds = %1
  store i8 0, ptr %2, align 16, !tbaa !21
  %14 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str, ptr noundef %0) #14
  %15 = tail call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %26, %17 ], [ %15, %13 ]
  %19 = phi i32 [ %25, %17 ], [ 1, %13 ]
  %20 = call ptr @GetStringInfoPath(ptr noundef nonnull %18) #14
  %21 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %20, i64 noundef 4096) #14
  %22 = call ptr @GetStringInfoDatum(ptr noundef nonnull %18) #14
  %23 = call ptr @GetStringInfoPath(ptr noundef nonnull %18) #14
  %24 = call fastcc i32 @LoadMagicCache(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %23, i64 noundef 0, ptr noundef %0) #13
  %25 = and i32 %24, %19
  %26 = call ptr @GetNextValueInLinkedList(ptr noundef %14) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !22

28:                                               ; preds = %17, %13
  %29 = phi i32 [ 1, %13 ], [ %25, %17 ]
  br label %30

30:                                               ; preds = %28, %61
  %31 = phi i32 [ %62, %61 ], [ %29, %28 ]
  %32 = phi i64 [ %63, %61 ], [ 0, %28 ]
  %33 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %32
  %34 = call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %30
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %34, i32 noundef 0, i64 noundef 80) #14
  store ptr @.str.5, ptr %34, align 8, !tbaa !23
  %38 = load ptr, ptr %33, align 16, !tbaa !24
  %39 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !26
  %40 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %32, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 5
  store i64 %41, ptr %42, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %32, i32 2
  %44 = load ptr, ptr %43, align 16, !tbaa !28
  %45 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !29
  %46 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 3
  store ptr %44, ptr %46, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %32, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 4
  store i64 %48, ptr %49, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 6
  store i32 1, ptr %50, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct._MagicInfo, ptr %34, i64 0, i32 10
  store i64 2880220587, ptr %51, align 8, !tbaa !32
  %52 = call i32 @AppendValueToLinkedList(ptr noundef nonnull %4, ptr noundef nonnull %34) #14
  %53 = and i32 %52, %31
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36, %30
  %56 = phi ptr [ %33, %30 ], [ %39, %36 ]
  %57 = phi i64 [ 295, %30 ], [ 310, %36 ]
  %58 = phi i32 [ %31, %30 ], [ 0, %36 ]
  %59 = load ptr, ptr %56, align 8, !tbaa !7
  %60 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %57, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %59) #14
  br label %61

61:                                               ; preds = %55, %36
  %62 = phi i32 [ %53, %36 ], [ %58, %55 ]
  %63 = add nuw nsw i64 %32, 1
  %64 = icmp eq i64 %63, 113
  br i1 %64, label %65, label %30, !llvm.loop !33

65:                                               ; preds = %61
  %66 = call ptr @DestroyConfigureOptions(ptr noundef %14) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #15
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadMagicCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 774, ptr noundef nonnull @.str.6, ptr noundef %2) #14
  %12 = icmp eq ptr %1, null
  br i1 %12, label %240, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @AcquireString(ptr noundef nonnull %1) #14
  store ptr %1, ptr %7, align 8, !tbaa !7
  %15 = load i8, ptr %1, align 1, !tbaa !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %237, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp ugt i64 %3, 200
  %20 = add nuw nsw i64 %3, 1
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi ptr [ %1, %17 ], [ %46, %43 ]
  %23 = phi ptr [ null, %17 ], [ %45, %43 ]
  %24 = phi i32 [ 1, %17 ], [ %44, %43 ]
  call void @GetMagickToken(ptr noundef nonnull %22, ptr noundef nonnull %7, ptr noundef %14) #14
  %25 = load i8, ptr %14, align 1, !tbaa !21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %237, label %27

27:                                               ; preds = %21
  %28 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 4096) #14
  %29 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, i64 noundef 9) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !7
  %33 = call i32 @LocaleNCompare(ptr noundef %32, ptr noundef nonnull @.str.8, i64 noundef 2) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %39
  %36 = load ptr, ptr %7, align 8, !tbaa !7
  %37 = load i8, ptr %36, align 1, !tbaa !21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  call void @GetMagickToken(ptr noundef nonnull %36, ptr noundef nonnull %7, ptr noundef %14) #14
  %40 = load ptr, ptr %7, align 8, !tbaa !7
  %41 = call i32 @LocaleNCompare(ptr noundef %40, ptr noundef nonnull @.str.8, i64 noundef 2) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !34

43:                                               ; preds = %182, %60, %56, %39, %35, %77, %71, %74, %156, %162, %168, %153, %159, %165, %171, %149, %138, %141, %52, %31, %128, %133, %145
  %44 = phi i32 [ %24, %128 ], [ %24, %133 ], [ %24, %145 ], [ %24, %31 ], [ %24, %52 ], [ 0, %141 ], [ %139, %138 ], [ %24, %149 ], [ %24, %171 ], [ %24, %165 ], [ %24, %159 ], [ %24, %153 ], [ %24, %168 ], [ %24, %162 ], [ %24, %156 ], [ %68, %74 ], [ %68, %71 ], [ %68, %77 ], [ %24, %35 ], [ %24, %39 ], [ %24, %56 ], [ %24, %60 ], [ %24, %182 ]
  %45 = phi ptr [ %119, %128 ], [ null, %133 ], [ %23, %145 ], [ %23, %31 ], [ %23, %52 ], [ null, %141 ], [ null, %138 ], [ %23, %149 ], [ %23, %171 ], [ %23, %165 ], [ %23, %159 ], [ %23, %153 ], [ %23, %168 ], [ %23, %162 ], [ %23, %156 ], [ %23, %74 ], [ %23, %71 ], [ %23, %77 ], [ %23, %35 ], [ %23, %39 ], [ %23, %56 ], [ %23, %60 ], [ %23, %182 ]
  %46 = load ptr, ptr %7, align 8, !tbaa !7
  %47 = load i8, ptr %46, align 1, !tbaa !21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %237, label %21, !llvm.loop !35

49:                                               ; preds = %27
  %50 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.9, i64 noundef 4) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %7, align 8, !tbaa !7
  %54 = call i32 @LocaleNCompare(ptr noundef %53, ptr noundef nonnull @.str.10, i64 noundef 2) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %52, %60
  %57 = load ptr, ptr %7, align 8, !tbaa !7
  %58 = load i8, ptr %57, align 1, !tbaa !21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %56
  call void @GetMagickToken(ptr noundef nonnull %57, ptr noundef nonnull %7, ptr noundef %14) #14
  %61 = load ptr, ptr %7, align 8, !tbaa !7
  %62 = call i32 @LocaleNCompare(ptr noundef %61, ptr noundef nonnull @.str.10, i64 noundef 2) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %43, label %56, !llvm.loop !36

64:                                               ; preds = %49
  %65 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %115

67:                                               ; preds = %64, %113
  %68 = phi i32 [ %114, %113 ], [ %24, %64 ]
  br label %69

69:                                               ; preds = %93, %67
  %70 = load i8, ptr %14, align 1, !tbaa !21
  br label %71

71:                                               ; preds = %69, %81
  %72 = phi i8 [ %70, %69 ], [ %84, %81 ]
  %73 = icmp eq i8 %72, 47
  br i1 %73, label %43, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %18, align 1, !tbaa !21
  %76 = icmp eq i8 %75, 62
  br i1 %76, label %43, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %7, align 8, !tbaa !7
  %79 = load i8, ptr %78, align 1, !tbaa !21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %43, label %81

81:                                               ; preds = %77
  %82 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %14, i64 noundef 4096) #14
  %83 = load ptr, ptr %7, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %83, ptr noundef nonnull %7, ptr noundef nonnull %14) #14
  %84 = load i8, ptr %14, align 1, !tbaa !21
  %85 = icmp eq i8 %84, 61
  br i1 %85, label %86, label %71, !llvm.loop !37

86:                                               ; preds = %81
  %87 = load ptr, ptr %7, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %87, ptr noundef nonnull %7, ptr noundef nonnull %14) #14
  %88 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.12) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  br i1 %19, label %91, label %94

91:                                               ; preds = %90
  %92 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 823, i32 noundef 495, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, ptr noundef nonnull %14) #14
  br label %93

93:                                               ; preds = %91, %86
  br label %69, !llvm.loop !37

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #15
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #14
  %95 = load i8, ptr %8, align 16, !tbaa !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.14, i64 noundef 4096) #14
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i8, ptr %14, align 1, !tbaa !21
  %101 = icmp eq i8 %100, 47
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %14, i64 noundef 4096) #14
  br label %106

104:                                              ; preds = %99
  %105 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %14, i64 noundef 4096) #14
  br label %106

106:                                              ; preds = %104, %102
  %107 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #14
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = call fastcc i32 @LoadMagicCache(ptr noundef %0, ptr noundef nonnull %107, ptr noundef nonnull %8, i64 noundef %20, ptr noundef %4) #13
  %111 = and i32 %110, %68
  %112 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %107) #14
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i32 [ %111, %109 ], [ %68, %106 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #15
  br label %67, !llvm.loop !37

115:                                              ; preds = %64
  %116 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.15) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #18
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  call void @GetExceptionInfo(ptr noundef nonnull %9) #14
  %122 = tail call ptr @__errno_location() #16
  %123 = load i32, ptr %122, align 4, !tbaa !20
  %124 = call ptr @GetExceptionMessage(i32 noundef %123) #14
  %125 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 858, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %124) #14
  %126 = call ptr @DestroyString(ptr noundef %124) #14
  call void @CatchException(ptr noundef nonnull %9) #14
  %127 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #17
  unreachable

128:                                              ; preds = %118
  %129 = call ptr @ResetMagickMemory(ptr noundef nonnull %119, i32 noundef 0, i64 noundef 80) #14
  %130 = call ptr @ConstantString(ptr noundef %2) #14
  store ptr %130, ptr %119, align 8, !tbaa !23
  %131 = getelementptr inbounds %struct._MagicInfo, ptr %119, i64 0, i32 6
  store i32 0, ptr %131, align 8, !tbaa !31
  %132 = getelementptr inbounds %struct._MagicInfo, ptr %119, i64 0, i32 10
  store i64 2880220587, ptr %132, align 8, !tbaa !32
  br label %43

133:                                              ; preds = %115
  %134 = icmp eq ptr %23, null
  br i1 %134, label %43, label %135

135:                                              ; preds = %133
  %136 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.16) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %43

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !26
  %144 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 871, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %143) #14
  br label %43

145:                                              ; preds = %135
  %146 = load ptr, ptr %7, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %146, ptr noundef null, ptr noundef nonnull %14) #14
  %147 = load i8, ptr %14, align 1, !tbaa !21
  %148 = icmp eq i8 %147, 61
  br i1 %148, label %149, label %43

149:                                              ; preds = %145
  %150 = load ptr, ptr %7, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %7, ptr noundef nonnull %14) #14
  %151 = load ptr, ptr %7, align 8, !tbaa !7
  call void @GetMagickToken(ptr noundef %151, ptr noundef nonnull %7, ptr noundef nonnull %14) #14
  %152 = load i8, ptr %6, align 16, !tbaa !21
  switch i8 %152, label %43 [
    i8 78, label %153
    i8 110, label %153
    i8 79, label %159
    i8 111, label %159
    i8 83, label %165
    i8 115, label %165
    i8 84, label %171
    i8 116, label %171
  ]

153:                                              ; preds = %149, %149
  %154 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.17) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %43

156:                                              ; preds = %153
  %157 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %158 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 1
  store ptr %157, ptr %158, align 8, !tbaa !26
  br label %43

159:                                              ; preds = %149, %149
  %160 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.18) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %43

162:                                              ; preds = %159
  %163 = call fastcc i64 @StringToLong(ptr noundef nonnull %14) #13
  %164 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 5
  store i64 %163, ptr %164, align 8, !tbaa !11
  br label %43

165:                                              ; preds = %149, %149
  %166 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.19) #14
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %43

168:                                              ; preds = %165
  %169 = call i32 @IsMagickTrue(ptr noundef nonnull %14) #14
  %170 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 7
  store i32 %169, ptr %170, align 4, !tbaa !38
  br label %43

171:                                              ; preds = %149, %149
  %172 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.20) #14
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %43

174:                                              ; preds = %171
  %175 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #19
  %176 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %177 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 2
  store ptr %176, ptr %177, align 8, !tbaa !29
  %178 = call ptr @ConstantString(ptr noundef nonnull %14) #14
  %179 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 3
  store ptr %178, ptr %179, align 8, !tbaa !17
  %180 = load ptr, ptr %177, align 8, !tbaa !29
  %181 = getelementptr inbounds %struct._MagicInfo, ptr %23, i64 0, i32 4
  br label %182

182:                                              ; preds = %206, %174
  %183 = phi ptr [ %180, %174 ], [ %207, %206 ]
  %184 = phi ptr [ %178, %174 ], [ %208, %206 ]
  %185 = load i8, ptr %183, align 1, !tbaa !21
  switch i8 %185, label %223 [
    i8 0, label %43
    i8 92, label %186
  ]

186:                                              ; preds = %182
  %187 = getelementptr inbounds i8, ptr %183, i64 1
  %188 = tail call ptr @__ctype_b_loc() #16
  %189 = load ptr, ptr %188, align 8, !tbaa !7
  %190 = load i8, ptr %187, align 1, !tbaa !21
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i16, ptr %189, i64 %191
  %193 = load i16, ptr %192, align 2, !tbaa !39
  %194 = and i16 %193, 2048
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %197 = call i64 @strtol(ptr noundef nonnull %187, ptr noundef nonnull %10, i32 noundef 8) #14
  %198 = trunc i64 %197 to i8
  store i8 %198, ptr %184, align 1, !tbaa !21
  %199 = load ptr, ptr %10, align 8, !tbaa !7
  %200 = ptrtoint ptr %199 to i64
  %201 = ptrtoint ptr %187 to i64
  %202 = sub i64 %200, %201
  %203 = getelementptr inbounds i8, ptr %187, i64 %202
  %204 = load i64, ptr %181, align 8, !tbaa !16
  %205 = add i64 %204, 1
  store i64 %205, ptr %181, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %206

206:                                              ; preds = %196, %218, %232
  %207 = phi ptr [ %203, %196 ], [ %220, %218 ], [ %233, %232 ]
  %208 = getelementptr inbounds i8, ptr %184, i64 1
  br label %182, !llvm.loop !41

209:                                              ; preds = %186
  switch i8 %190, label %217 [
    i8 98, label %218
    i8 102, label %210
    i8 110, label %211
    i8 114, label %212
    i8 116, label %213
    i8 118, label %214
    i8 97, label %215
    i8 63, label %216
  ]

210:                                              ; preds = %209
  br label %218

211:                                              ; preds = %209
  br label %218

212:                                              ; preds = %209
  br label %218

213:                                              ; preds = %209
  br label %218

214:                                              ; preds = %209
  br label %218

215:                                              ; preds = %209
  br label %218

216:                                              ; preds = %209
  br label %218

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %209, %217, %216, %215, %214, %213, %212, %211, %210
  %219 = phi i8 [ %190, %217 ], [ %190, %216 ], [ %190, %215 ], [ 11, %214 ], [ 9, %213 ], [ 13, %212 ], [ 10, %211 ], [ 12, %210 ], [ 8, %209 ]
  store i8 %219, ptr %184, align 1, !tbaa !21
  %220 = getelementptr inbounds i8, ptr %183, i64 2
  %221 = load i64, ptr %181, align 8, !tbaa !16
  %222 = add i64 %221, 1
  store i64 %222, ptr %181, align 8, !tbaa !16
  br label %206

223:                                              ; preds = %182
  %224 = call i32 @LocaleNCompare(ptr noundef nonnull %183, ptr noundef nonnull @.str.21, i64 noundef 5) #14
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = getelementptr inbounds i8, ptr %183, i64 1
  %228 = getelementptr inbounds i8, ptr %183, i64 5
  %229 = load i64, ptr %181, align 8, !tbaa !16
  %230 = sub i64 %175, %229
  %231 = call i64 @CopyMagickString(ptr noundef nonnull %227, ptr noundef nonnull %228, i64 noundef %230) #14
  br label %232

232:                                              ; preds = %223, %226
  %233 = getelementptr inbounds i8, ptr %183, i64 1
  %234 = load i8, ptr %183, align 1, !tbaa !21
  store i8 %234, ptr %184, align 1, !tbaa !21
  %235 = load i64, ptr %181, align 8, !tbaa !16
  %236 = add i64 %235, 1
  store i64 %236, ptr %181, align 8, !tbaa !16
  br label %206

237:                                              ; preds = %43, %21, %13
  %238 = phi i32 [ 1, %13 ], [ %24, %21 ], [ %44, %43 ]
  %239 = call ptr @RelinquishMagickMemory(ptr noundef %14) #14
  br label %240

240:                                              ; preds = %5, %237
  %241 = phi i32 [ %238, %237 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  ret i32 %241
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #14
  ret i64 %2
}

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagicInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 447, ptr noundef nonnull @.str.212, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !42
  %5 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  tail call void @ResetLinkedListIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !26
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !7
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !43

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @MagicInfoCompare) #14
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !7
  store i64 %39, ptr %1, align 8, !tbaa !42
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @MagicInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !7
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._MagicInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._MagicInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = load ptr, ptr %17, align 8, !tbaa !7
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #14
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagicList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 542, ptr noundef nonnull @.str.212, ptr noundef %0) #14
  store i64 0, ptr %1, align 8, !tbaa !42
  %5 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @LockSemaphoreInfo(ptr noundef %14) #14
  %15 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  tail call void @ResetLinkedListIterator(ptr noundef %15) #14
  %16 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagicInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !26
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !26
  %32 = tail call ptr @ConstantString(ptr noundef %31) #14
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !7
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !44

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #14
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @MagicCompare) #14
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !7
  store i64 %41, ptr %1, align 8, !tbaa !42
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @MagicCompare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagicName(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 593, ptr noundef nonnull @.str.213) #14
  %3 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListMagicInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetMagicInfoList(ptr noundef nonnull @.str.214, ptr noundef nonnull %3, ptr noundef %1) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !42
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %98

12:                                               ; preds = %9, %94
  %13 = phi i64 [ %96, %94 ], [ 0, %9 ]
  %14 = phi ptr [ %95, %94 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct._MagicInfo, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !38
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !23
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !7
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %16, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.215, ptr noundef nonnull %30) #14
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.216) #14
  %36 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.217) #14
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %15, align 8, !tbaa !7
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct._MagicInfo, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.212, ptr noundef %41) #14
  %43 = load ptr, ptr %15, align 8, !tbaa !7
  %44 = getelementptr inbounds %struct._MagicInfo, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !26
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #19
  %47 = icmp slt i64 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %37, %48
  %49 = phi i64 [ %51, %48 ], [ %46, %37 ]
  %50 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.218) #14
  %51 = add i64 %49, 1
  %52 = icmp eq i64 %51, 10
  br i1 %52, label %53, label %48, !llvm.loop !45

53:                                               ; preds = %48
  %54 = load ptr, ptr %15, align 8, !tbaa !7
  br label %55

55:                                               ; preds = %53, %37
  %56 = phi ptr [ %54, %53 ], [ %43, %37 ]
  %57 = getelementptr inbounds %struct._MagicInfo, ptr %56, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !11
  %59 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.219, i64 noundef %58) #14
  %60 = load ptr, ptr %15, align 8, !tbaa !7
  %61 = getelementptr inbounds %struct._MagicInfo, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  %63 = icmp eq ptr %62, null
  br i1 %63, label %92, label %64

64:                                               ; preds = %55
  %65 = load i8, ptr %62, align 1, !tbaa !21
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %64
  %68 = tail call ptr @__ctype_b_loc() #16
  br label %69

69:                                               ; preds = %67, %84
  %70 = phi i8 [ %65, %67 ], [ %90, %84 ]
  %71 = phi i64 [ 0, %67 ], [ %85, %84 ]
  %72 = load ptr, ptr %68, align 8, !tbaa !7
  %73 = zext i8 %70 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !39
  %76 = and i16 %75, 16384
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = sext i8 %70 to i32
  %80 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.220, i32 noundef %79) #14
  br label %84

81:                                               ; preds = %69
  %82 = zext i8 %70 to i32
  %83 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.221, i32 noundef %82) #14
  br label %84

84:                                               ; preds = %78, %81
  %85 = add nuw nsw i64 %71, 1
  %86 = load ptr, ptr %15, align 8, !tbaa !7
  %87 = getelementptr inbounds %struct._MagicInfo, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !29
  %89 = getelementptr inbounds i8, ptr %88, i64 %85
  %90 = load i8, ptr %89, align 1, !tbaa !21
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %69, !llvm.loop !46

92:                                               ; preds = %84, %64, %55
  %93 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.222) #14
  br label %94

94:                                               ; preds = %12, %92
  %95 = phi ptr [ %14, %12 ], [ %39, %92 ]
  %96 = add nuw nsw i64 %13, 1
  %97 = icmp eq i64 %96, %10
  br i1 %97, label %98, label %12, !llvm.loop !47

98:                                               ; preds = %94, %9
  %99 = tail call i32 @fflush(ptr noundef %6) #13
  %100 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #14
  br label %101

101:                                              ; preds = %2, %98
  %102 = phi i32 [ 1, %98 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %102
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @MagicComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #14
  store ptr %4, ptr @magic_semaphore, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MagicComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #14
  %4 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #14
  %7 = load ptr, ptr @magic_cache, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @DestroyMagicElement) #14
  store ptr %10, ptr @magic_cache, align 8, !tbaa !7
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @magic_semaphore, align 8, !tbaa !7
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #14
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magic_semaphore) #14
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyMagicElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #14
  store ptr %9, ptr %0, align 8, !tbaa !23
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #14
  store ptr %15, ptr %11, align 8, !tbaa !26
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #14
  store ptr %21, ptr %17, align 8, !tbaa !29
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct._MagicInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %24) #14
  store ptr %27, ptr %23, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %22, %26, %1
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr null
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i32 0, i32 2}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 40}
!12 = !{!"_MagicInfo", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !13, i64 32, !14, i64 40, !15, i64 48, !15, i64 52, !8, i64 56, !8, i64 64, !13, i64 72}
!13 = !{!"long", !9, i64 0}
!14 = !{!"long long", !9, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = !{!12, !13, i64 32}
!17 = !{!12, !8, i64 24}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!15, !15, i64 0}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !19}
!23 = !{!12, !8, i64 0}
!24 = !{!25, !8, i64 0}
!25 = !{!"_MagicMapInfo", !8, i64 0, !14, i64 8, !8, i64 16, !13, i64 24}
!26 = !{!12, !8, i64 8}
!27 = !{!25, !14, i64 8}
!28 = !{!25, !8, i64 16}
!29 = !{!12, !8, i64 16}
!30 = !{!25, !13, i64 24}
!31 = !{!12, !15, i64 48}
!32 = !{!12, !13, i64 72}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = !{!12, !15, i64 52}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !9, i64 0}
!41 = distinct !{!41, !19}
!42 = !{!13, !13, i64 0}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
