; ModuleID = 'magick/coder.c'
source_filename = "magick/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CoderMapInfo = type { ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._CoderInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@coder_semaphore = internal global ptr null, align 8
@coder_cache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"magick/coder.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Magick      Coder\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coder.xml\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@CoderMap = internal unnamed_addr constant [144 x %struct._CoderMapInfo] [%struct._CoderMapInfo { ptr @.str.27, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.29, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.31, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.32, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.33, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.35, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.37, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.39, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.40, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.41, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.42, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.44, ptr @.str.45 }, %struct._CoderMapInfo { ptr @.str.46, ptr @.str.47 }, %struct._CoderMapInfo { ptr @.str.48, ptr @.str.47 }, %struct._CoderMapInfo { ptr @.str.49, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.50, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.52, ptr @.str.53 }, %struct._CoderMapInfo { ptr @.str.54, ptr @.str.55 }, %struct._CoderMapInfo { ptr @.str.56, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.57, ptr @.str.58 }, %struct._CoderMapInfo { ptr @.str.59, ptr @.str.60 }, %struct._CoderMapInfo { ptr @.str.61, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.62, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.63, ptr @.str.64 }, %struct._CoderMapInfo { ptr @.str.65, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.66, ptr @.str.67 }, %struct._CoderMapInfo { ptr @.str.68, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.69, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.70, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.72, ptr @.str.73 }, %struct._CoderMapInfo { ptr @.str.74, ptr @.str.75 }, %struct._CoderMapInfo { ptr @.str.76, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.77, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.78, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.79, ptr @.str.80 }, %struct._CoderMapInfo { ptr @.str.81, ptr @.str.80 }, %struct._CoderMapInfo { ptr @.str.82, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.83, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.84, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.86, ptr @.str.87 }, %struct._CoderMapInfo { ptr @.str.88, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.89, ptr @.str.90 }, %struct._CoderMapInfo { ptr @.str.91, ptr @.str.92 }, %struct._CoderMapInfo { ptr @.str.93, ptr @.str.94 }, %struct._CoderMapInfo { ptr @.str.95, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.96, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.98, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.100, ptr @.str.101 }, %struct._CoderMapInfo { ptr @.str.102, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.103, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.104, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.105, ptr @.str.106 }, %struct._CoderMapInfo { ptr @.str.107, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.108, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.109, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.111, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.112, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.113, ptr @.str.64 }, %struct._CoderMapInfo { ptr @.str.114, ptr @.str.115 }, %struct._CoderMapInfo { ptr @.str.116, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.117, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.118, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.119, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.120, ptr @.str.45 }, %struct._CoderMapInfo { ptr @.str.121, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.123, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.125, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.126, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.127, ptr @.str.128 }, %struct._CoderMapInfo { ptr @.str.129, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.130, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.131, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.132, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.133, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.134, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.135, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.136, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.137, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.138, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.139, ptr @.str.140 }, %struct._CoderMapInfo { ptr @.str.141, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.142, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.143, ptr @.str.144 }, %struct._CoderMapInfo { ptr @.str.145, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.146, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.147, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.148, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.149, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.150, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.151, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.153, ptr @.str.154 }, %struct._CoderMapInfo { ptr @.str.155, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.156, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.157, ptr @.str.158 }, %struct._CoderMapInfo { ptr @.str.159, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.160, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.160, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.161, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.162, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.163, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.164, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.165, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.166, ptr @.str.167 }, %struct._CoderMapInfo { ptr @.str.168, ptr @.str.128 }, %struct._CoderMapInfo { ptr @.str.169, ptr @.str.167 }, %struct._CoderMapInfo { ptr @.str.170, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.171, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.172, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.173, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.174, ptr @.str.175 }, %struct._CoderMapInfo { ptr @.str.176, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.177, ptr @.str.178 }, %struct._CoderMapInfo { ptr @.str.179, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.180, ptr @.str.181 }, %struct._CoderMapInfo { ptr @.str.182, ptr @.str.183 }, %struct._CoderMapInfo { ptr @.str.184, ptr @.str.183 }, %struct._CoderMapInfo { ptr @.str.185, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.186, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.187, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.188, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.189, ptr @.str.106 }, %struct._CoderMapInfo { ptr @.str.190, ptr @.str.191 }, %struct._CoderMapInfo { ptr @.str.192, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.193, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.194, ptr @.str.144 }, %struct._CoderMapInfo { ptr @.str.195, ptr @.str.191 }, %struct._CoderMapInfo { ptr @.str.196, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.197, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.198, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.199, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.200, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.201, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.202, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.203, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.204, ptr @.str.205 }, %struct._CoderMapInfo { ptr @.str.206, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.207, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.208, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.210, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.211, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.212, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.213, ptr @.str.214 }, %struct._CoderMapInfo { ptr @.str.215, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.216, ptr @.str.217 }], align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Loading coder configuration file \22%s\22 ...\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"IncludeNodeNestedTooDeeply\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"<coder\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"magick\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"3FR\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"DNG\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"8BIMTEXT\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"8BIMWTEXT\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"AFM\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"TTF\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"APP1JPEG\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"APP1\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ARW\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"AVI\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"BIE\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"JBIG\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"BMP2\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"BMP3\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"BRF\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"BRAILLE\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"CMYKA\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"CAL\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"CALS\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"CANVAS\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"XC\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"CR2\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"CRW\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"CUR\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"ICON\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"DCR\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"DCX\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"DFONT\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"EPDF\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"EPI\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"EPS2\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"PS2\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"EPS3\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"PS3\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"EPSF\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"EPSI\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"EPT2\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"EPT\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"EPT3\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"ERF\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"FRACTAL\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"PLASMA\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"FTP\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"FTS\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"G3\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"GIF87\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"GRANITE\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"MAGICK\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"GROUP4\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"K25\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"KDC\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"HTM\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"HTTPS\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"ICB\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"ICC\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"ICM\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ICO\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"IPTC\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"IPTCTEXT\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"IPTCWTEXT\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"ISOBRL\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"JBG\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"JPC\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"JP2\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"J2C\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"J2K\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"JPG\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"JPX\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"LOGO\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"M2V\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"M4V\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"MNG\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"MP4\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"MPG\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"MPRI\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"MPR\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"MEF\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"MSVG\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"NEF\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"NETSCAPE\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"NRW\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"ORF\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"OTF\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"PNM\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"UYVY\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"PAM\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"PCDS\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"PCD\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"PDFA\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"PEF\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"PFA\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"PFB\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"PFM\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"PGX\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"PICON\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"XPM\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"PJPEG\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"PNG24\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"PNG32\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"PNG8\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"PSB\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"PSD\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"PTIF\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"RADIAL-GRADIENT\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"GRADIENT\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"RAF\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"RAS\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"RGBO\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"RMF\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"ROSE\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"RW2\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"SHTML\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"SPARSE-COLOR\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"SR2\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"SRF\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"SVGZ\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"TIFF64\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"TIF\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"TTC\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"UBRL\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"VDA\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"VST\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"WIZARD\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"WMV\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"WMZ\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"WMF\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"X3f\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"XMP\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"XTRNARRAY\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"XTRN\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"XTRNBLOB\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"XTRNFILE\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"XTRNIMAGE\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"XV\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"VIFF\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"YCbCrA\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CoderComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #10
  store ptr %4, ptr @coder_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CoderComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #10
  %6 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #10
  store ptr %9, ptr @coder_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #10
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %74

6:                                                ; preds = %2
  %7 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %11) #10
  %12 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyCoderNode) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %18 = tail call ptr @__errno_location() #11
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #10
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 315, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %20) #10
  %22 = call ptr @DestroyString(ptr noundef %20) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

24:                                               ; preds = %14
  %25 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.9, ptr noundef %1) #10
  %26 = tail call ptr @GetNextValueInLinkedList(ptr noundef %25) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %24 ]
  %30 = phi i32 [ %34, %28 ], [ 1, %24 ]
  %31 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %29) #10
  %32 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %29) #10
  %33 = tail call fastcc i32 @LoadCoderCache(ptr noundef nonnull %15, ptr noundef %31, ptr noundef %32, i64 noundef 0, ptr noundef %1)
  %34 = and i32 %33, %30
  %35 = tail call ptr @GetNextValueInLinkedList(ptr noundef %25) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !40

37:                                               ; preds = %28, %24
  %38 = phi i32 [ 1, %24 ], [ %34, %28 ]
  %39 = tail call ptr @DestroyConfigureOptions(ptr noundef %25) #10
  br label %40

40:                                               ; preds = %37, %67
  %41 = phi i32 [ %38, %37 ], [ %68, %67 ]
  %42 = phi i64 [ 0, %37 ], [ %69, %67 ]
  %43 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %42, i32 1
  br label %61

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %42
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %43, i32 noundef 0, i64 noundef 56) #10
  store ptr @.str.12, ptr %43, align 8, !tbaa !43
  %50 = load ptr, ptr %48, align 16, !tbaa !46
  %51 = getelementptr inbounds %struct._CoderInfo, ptr %43, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %42, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct._CoderInfo, ptr %43, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct._CoderInfo, ptr %43, i64 0, i32 3
  store i32 1, ptr %55, align 8, !tbaa !51
  %56 = getelementptr inbounds %struct._CoderInfo, ptr %43, i64 0, i32 7
  store i64 2880220587, ptr %56, align 8, !tbaa !52
  %57 = tail call ptr @ConstantString(ptr noundef %50) #10
  %58 = tail call i32 @AddValueToSplayTree(ptr noundef nonnull %15, ptr noundef %57, ptr noundef nonnull %43) #10
  %59 = and i32 %58, %41
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47, %45
  %62 = phi ptr [ %46, %45 ], [ %54, %47 ]
  %63 = phi i64 [ 341, %45 ], [ 354, %47 ]
  %64 = phi i32 [ %41, %45 ], [ %59, %47 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  %66 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %63, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %65) #10
  br label %67

67:                                               ; preds = %61, %47
  %68 = phi i32 [ %59, %47 ], [ %64, %61 ]
  %69 = add nuw nsw i64 %42, 1
  %70 = icmp eq i64 %69, 144
  br i1 %70, label %71, label %40, !llvm.loop !53

71:                                               ; preds = %67
  store ptr %15, ptr @coder_cache, align 8, !tbaa !34
  br label %72

72:                                               ; preds = %71, %10
  %73 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %73) #10
  br label %74

74:                                               ; preds = %2, %72
  %75 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %78) #10
  %79 = icmp eq ptr %0, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %77
  %84 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %84) #10
  %85 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %86 = tail call ptr @GetNextValueInSplayTree(ptr noundef %85) #10
  br label %90

87:                                               ; preds = %80
  %88 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %89 = tail call ptr @GetValueFromSplayTree(ptr noundef %88, ptr noundef nonnull %0) #10
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %89, %87 ], [ %86, %83 ]
  %92 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %92) #10
  br label %93

93:                                               ; preds = %90, %74
  %94 = phi ptr [ null, %74 ], [ %91, %90 ]
  ret ptr %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 517, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !54
  %5 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !56

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @CoderInfoCompare) #10
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !54
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @CoderInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CoderInfo, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._CoderInfo, ptr %12, i64 0, i32 2
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #10
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 602, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !54
  %5 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !50
  %32 = tail call ptr @ConstantString(ptr noundef %31) #10
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @coder_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInSplayTree(ptr noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !57

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @coder_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @CoderCompare) #10
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !54
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @CoderCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListCoderInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetCoderInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !54
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %9, %60
  %13 = phi i64 [ %62, %60 ], [ 0, %9 ]
  %14 = phi ptr [ %61, %60 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._CoderInfo, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !55
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !43
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22, %20
  %27 = load ptr, ptr %15, align 8, !tbaa !34
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %28) #10
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  %34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6) #10
  br label %35

35:                                               ; preds = %32, %22
  %36 = load ptr, ptr %15, align 8, !tbaa !34
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct._CoderInfo, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %39) #10
  %41 = load ptr, ptr %15, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct._CoderInfo, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #15
  %45 = icmp slt i64 %44, 12
  br i1 %45, label %46, label %51

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %49, %46 ], [ %44, %35 ]
  %48 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7) #10
  %49 = add i64 %47, 1
  %50 = icmp eq i64 %49, 12
  br i1 %50, label %51, label %46, !llvm.loop !58

51:                                               ; preds = %46, %35
  %52 = load ptr, ptr %15, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct._CoderInfo, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %54) #10
  br label %58

58:                                               ; preds = %56, %51
  %59 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #10
  br label %60

60:                                               ; preds = %12, %58
  %61 = phi ptr [ %14, %12 ], [ %37, %58 ]
  %62 = add nuw nsw i64 %13, 1
  %63 = load i64, ptr %3, align 8, !tbaa !54
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %12, label %65, !llvm.loop !59

65:                                               ; preds = %60, %9
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #10
  %67 = tail call i32 @fflush(ptr noundef %6)
  br label %68

68:                                               ; preds = %2, %65
  %69 = phi i32 [ 1, %65 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %69
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyCoderNode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #10
  store ptr %9, ptr %0, align 8, !tbaa !43
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #10
  store ptr %15, ptr %11, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #10
  store ptr %21, ptr %17, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %16, %20, %1
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #10
  ret ptr %23
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadCoderCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 795, ptr noundef nonnull @.str.13, ptr noundef %2) #10
  %11 = icmp eq ptr %1, null
  br i1 %11, label %174, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #10
  store ptr %1, ptr %7, align 8, !tbaa !34
  %14 = load i8, ptr %1, align 1, !tbaa !60
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %171, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp ugt i64 %3, 200
  %19 = add nuw nsw i64 %3, 1
  br label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %1, %16 ], [ %45, %42 ]
  %22 = phi i32 [ 1, %16 ], [ %44, %42 ]
  %23 = phi ptr [ null, %16 ], [ %43, %42 ]
  call void @GetMagickToken(ptr noundef nonnull %21, ptr noundef nonnull %7, ptr noundef %13) #10
  %24 = load i8, ptr %13, align 1, !tbaa !60
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %171, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef %13, i64 noundef 4096) #10
  %28 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.14, i64 noundef 9) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !34
  %32 = call i32 @LocaleNCompare(ptr noundef %31, ptr noundef nonnull @.str.15, i64 noundef 2) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %38
  %35 = load ptr, ptr %7, align 8, !tbaa !34
  %36 = load i8, ptr %35, align 1, !tbaa !60
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #10
  %39 = load ptr, ptr %7, align 8, !tbaa !34
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.15, i64 noundef 2) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !61

42:                                               ; preds = %59, %55, %38, %34, %75, %69, %72, %156, %162, %168, %153, %159, %165, %149, %136, %142, %51, %30, %126, %131, %145
  %43 = phi ptr [ %117, %126 ], [ null, %131 ], [ %23, %145 ], [ %23, %30 ], [ %23, %51 ], [ null, %142 ], [ null, %136 ], [ %23, %149 ], [ %23, %165 ], [ %23, %159 ], [ %23, %153 ], [ %23, %168 ], [ %23, %162 ], [ %23, %156 ], [ %23, %72 ], [ %23, %69 ], [ %23, %75 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %126 ], [ %22, %131 ], [ %22, %145 ], [ %22, %30 ], [ %22, %51 ], [ %140, %142 ], [ %140, %136 ], [ %22, %149 ], [ %22, %165 ], [ %22, %159 ], [ %22, %153 ], [ %22, %168 ], [ %22, %162 ], [ %22, %156 ], [ %67, %72 ], [ %67, %69 ], [ %67, %75 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !34
  %46 = load i8, ptr %45, align 1, !tbaa !60
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %171, label %20, !llvm.loop !62

48:                                               ; preds = %26
  %49 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.16, i64 noundef 4) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !tbaa !34
  %53 = call i32 @LocaleNCompare(ptr noundef %52, ptr noundef nonnull @.str.17, i64 noundef 2) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %51, %59
  %56 = load ptr, ptr %7, align 8, !tbaa !34
  %57 = load i8, ptr %56, align 1, !tbaa !60
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #10
  %60 = load ptr, ptr %7, align 8, !tbaa !34
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.17, i64 noundef 2) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !63

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.18) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63, %111
  %67 = phi i32 [ %112, %111 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %91, %66
  br label %69

69:                                               ; preds = %68, %79
  %70 = load i8, ptr %13, align 1, !tbaa !60
  %71 = icmp eq i8 %70, 47
  br i1 %71, label %42, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %17, align 1, !tbaa !60
  %74 = icmp eq i8 %73, 62
  br i1 %74, label %42, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %7, align 8, !tbaa !34
  %77 = load i8, ptr %76, align 1, !tbaa !60
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %42, label %79

79:                                               ; preds = %75
  %80 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #10
  %81 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %81, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %82 = load i8, ptr %13, align 1, !tbaa !60
  %83 = icmp eq i8 %82, 61
  br i1 %83, label %84, label %69, !llvm.loop !64

84:                                               ; preds = %79
  %85 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %85, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %86 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.19) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  br i1 %18, label %89, label %92

89:                                               ; preds = %88
  %90 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 844, i32 noundef 495, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull %13) #10
  br label %91

91:                                               ; preds = %89, %84
  br label %68, !llvm.loop !64

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #10
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #10
  %93 = load i8, ptr %8, align 16, !tbaa !60
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.21, i64 noundef 4096) #10
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i8, ptr %13, align 1, !tbaa !60
  %99 = icmp eq i8 %98, 47
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #10
  br label %104

102:                                              ; preds = %97
  %103 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #10
  br label %104

104:                                              ; preds = %102, %100
  %105 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call fastcc i32 @LoadCoderCache(ptr noundef %0, ptr noundef nonnull %105, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4)
  %109 = and i32 %108, %67
  %110 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %105) #10
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ %109, %107 ], [ %67, %104 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #10
  br label %66, !llvm.loop !64

113:                                              ; preds = %63
  %114 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.22) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #13
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  call void @GetExceptionInfo(ptr noundef nonnull %9) #10
  %120 = tail call ptr @__errno_location() #11
  %121 = load i32, ptr %120, align 4, !tbaa !38
  %122 = call ptr @GetExceptionMessage(i32 noundef %121) #10
  %123 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 879, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %122) #10
  %124 = call ptr @DestroyString(ptr noundef %122) #10
  call void @CatchException(ptr noundef nonnull %9) #10
  %125 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #12
  unreachable

126:                                              ; preds = %116
  %127 = call ptr @ResetMagickMemory(ptr noundef nonnull %117, i32 noundef 0, i64 noundef 56) #10
  %128 = call ptr @ConstantString(ptr noundef %2) #10
  store ptr %128, ptr %117, align 8, !tbaa !43
  %129 = getelementptr inbounds %struct._CoderInfo, ptr %117, i64 0, i32 3
  store i32 0, ptr %129, align 8, !tbaa !51
  %130 = getelementptr inbounds %struct._CoderInfo, ptr %117, i64 0, i32 7
  store i64 2880220587, ptr %130, align 8, !tbaa !52
  br label %42

131:                                              ; preds = %113
  %132 = icmp eq ptr %23, null
  br i1 %132, label %42, label %133

133:                                              ; preds = %131
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.23) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !48
  %139 = call ptr @ConstantString(ptr noundef %138) #10
  %140 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %139, ptr noundef nonnull %23) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %42

142:                                              ; preds = %136
  %143 = load ptr, ptr %137, align 8, !tbaa !48
  %144 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 893, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %143) #10
  br label %42

145:                                              ; preds = %133
  %146 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %146, ptr noundef null, ptr noundef %13) #10
  %147 = load i8, ptr %13, align 1, !tbaa !60
  %148 = icmp eq i8 %147, 61
  br i1 %148, label %149, label %42

149:                                              ; preds = %145
  %150 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %151 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %151, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %152 = load i8, ptr %6, align 16, !tbaa !60
  switch i8 %152, label %42 [
    i8 77, label %153
    i8 109, label %153
    i8 78, label %159
    i8 110, label %159
    i8 83, label %165
    i8 115, label %165
  ]

153:                                              ; preds = %149, %149
  %154 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.24) #10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %42

156:                                              ; preds = %153
  %157 = call ptr @ConstantString(ptr noundef nonnull %13) #10
  %158 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 1
  store ptr %157, ptr %158, align 8, !tbaa !48
  br label %42

159:                                              ; preds = %149, %149
  %160 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25) #10
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %42

162:                                              ; preds = %159
  %163 = call ptr @ConstantString(ptr noundef nonnull %13) #10
  %164 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 2
  store ptr %163, ptr %164, align 8, !tbaa !50
  br label %42

165:                                              ; preds = %149, %149
  %166 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #10
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %42

168:                                              ; preds = %165
  %169 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #10
  %170 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 4
  store i32 %169, ptr %170, align 4, !tbaa !55
  br label %42

171:                                              ; preds = %42, %20, %12
  %172 = phi i32 [ 1, %12 ], [ %44, %42 ], [ %22, %20 ]
  %173 = call ptr @RelinquishMagickMemory(ptr noundef %13) #10
  br label %174

174:                                              ; preds = %5, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #10
  ret i32 %175
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(read) }

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
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !35, i64 0}
!44 = !{!"_CoderInfo", !35, i64 0, !35, i64 8, !35, i64 16, !39, i64 24, !39, i64 28, !35, i64 32, !35, i64 40, !45, i64 48}
!45 = !{!"long", !36, i64 0}
!46 = !{!47, !35, i64 0}
!47 = !{!"_CoderMapInfo", !35, i64 0, !35, i64 8}
!48 = !{!44, !35, i64 8}
!49 = !{!47, !35, i64 8}
!50 = !{!44, !35, i64 16}
!51 = !{!44, !39, i64 24}
!52 = !{!44, !45, i64 48}
!53 = distinct !{!53, !41, !42}
!54 = !{!45, !45, i64 0}
!55 = !{!44, !39, i64 28}
!56 = distinct !{!56, !41, !42}
!57 = distinct !{!57, !41, !42}
!58 = distinct !{!58, !41, !42}
!59 = distinct !{!59, !41, !42}
!60 = !{!36, !36, i64 0}
!61 = distinct !{!61, !41, !42}
!62 = distinct !{!62, !41, !42}
!63 = distinct !{!63, !41, !42}
!64 = distinct !{!64, !41, !42}
