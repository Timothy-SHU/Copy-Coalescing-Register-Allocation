; ModuleID = 'magick/coder.c'
source_filename = "magick/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CoderMapInfo = type { ptr, ptr }
%struct._CoderInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CoderComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #10
  store ptr %4, ptr @coder_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CoderComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  %4 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #10
  %7 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #10
  store ptr %10, ptr @coder_cache, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #10
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCoderInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @IsCoderTreeInstantiated(ptr noundef %1) #11, !range !9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %6) #10
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %5
  %12 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  tail call void @ResetSplayTreeIterator(ptr noundef %12) #10
  %13 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %13) #10
  br label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %17 = tail call ptr @GetValueFromSplayTree(ptr noundef %16, ptr noundef nonnull %0) #10
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %14, %11 ]
  %20 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #10
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ null, %2 ], [ %19, %18 ]
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsCoderTreeInstantiated(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #10
  %8 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #10
  %11 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireCoderCache(ptr noundef %0) #11
  store ptr %14, ptr @coder_cache, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #10
  %17 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCoderInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 517, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !10
  %5 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %36 = tail call ptr @GetNextValueInSplayTree(ptr noundef %35) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !16

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @CoderInfoCompare) #10
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !5
  store i64 %39, ptr %1, align 8, !tbaa !10
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @CoderInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._CoderInfo, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %1, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct._CoderInfo, ptr %12, i64 0, i32 2
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load ptr, ptr %17, align 8, !tbaa !5
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #10
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetCoderList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 602, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store i64 0, ptr %1, align 8, !tbaa !10
  %5 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %9 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %8) #10
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @LockSemaphoreInfo(ptr noundef %14) #10
  %15 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #10
  %16 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %17 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._CoderInfo, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !15
  %32 = tail call ptr @ConstantString(ptr noundef %31) #10
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @coder_cache, align 8, !tbaa !5
  %38 = tail call ptr @GetNextValueInSplayTree(ptr noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !19

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @coder_semaphore, align 8, !tbaa !5
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #10
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @CoderCompare) #10
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !5
  store i64 %41, ptr %1, align 8, !tbaa !10
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @CoderCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListCoderInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = call ptr @GetCoderInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8, !tbaa !10
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %9, %64
  %13 = phi i64 [ %66, %64 ], [ 0, %9 ]
  %14 = phi ptr [ %65, %64 ], [ null, %9 ]
  %15 = getelementptr inbounds ptr, ptr %7, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct._CoderInfo, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %16, align 8, !tbaa !18
  %24 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %27, %26 ], [ %16, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #10
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  %36 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.6) #10
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %15, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct._CoderInfo, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %41) #10
  %43 = load ptr, ptr %15, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct._CoderInfo, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #14
  %47 = icmp slt i64 %46, 12
  br i1 %47, label %48, label %55

48:                                               ; preds = %37, %48
  %49 = phi i64 [ %51, %48 ], [ %46, %37 ]
  %50 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.7) #10
  %51 = add i64 %49, 1
  %52 = icmp eq i64 %51, 12
  br i1 %52, label %53, label %48, !llvm.loop !21

53:                                               ; preds = %48
  %54 = load ptr, ptr %15, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %53, %37
  %56 = phi ptr [ %54, %53 ], [ %43, %37 ]
  %57 = getelementptr inbounds %struct._CoderInfo, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %58) #10
  br label %62

62:                                               ; preds = %60, %55
  %63 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %6, ptr noundef nonnull @.str.8) #10
  br label %64

64:                                               ; preds = %12, %62
  %65 = phi ptr [ %14, %12 ], [ %39, %62 ]
  %66 = add nuw nsw i64 %13, 1
  %67 = icmp eq i64 %66, %10
  br i1 %67, label %68, label %12, !llvm.loop !22

68:                                               ; preds = %64, %9
  %69 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #10
  %70 = tail call i32 @fflush(ptr noundef %6) #11
  br label %71

71:                                               ; preds = %2, %68
  %72 = phi i32 [ 1, %68 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %72
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireCoderCache(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyCoderNode) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !23
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #10
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 315, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %8) #10
  %10 = call ptr @DestroyString(ptr noundef %8) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #16
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.9, ptr noundef %0) #10
  %14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %22, %16 ], [ 1, %12 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %17) #10
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %17) #10
  %21 = tail call fastcc i32 @LoadCoderCache(ptr noundef nonnull %3, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %0) #11
  %22 = and i32 %21, %18
  %23 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !24

25:                                               ; preds = %16, %12
  %26 = phi i32 [ 1, %12 ], [ %22, %16 ]
  %27 = tail call ptr @DestroyConfigureOptions(ptr noundef %13) #10
  br label %28

28:                                               ; preds = %25, %55
  %29 = phi i32 [ %26, %25 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %25 ], [ %57, %55 ]
  %31 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %30, i32 1
  br label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %30
  %37 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %31, i32 noundef 0, i64 noundef 56) #10
  store ptr @.str.12, ptr %31, align 8, !tbaa !18
  %38 = load ptr, ptr %36, align 16, !tbaa !25
  %39 = getelementptr inbounds %struct._CoderInfo, ptr %31, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !20
  %40 = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %30, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._CoderInfo, ptr %31, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct._CoderInfo, ptr %31, i64 0, i32 3
  store i32 1, ptr %43, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct._CoderInfo, ptr %31, i64 0, i32 7
  store i64 2880220587, ptr %44, align 8, !tbaa !29
  %45 = tail call ptr @ConstantString(ptr noundef %38) #10
  %46 = tail call i32 @AddValueToSplayTree(ptr noundef nonnull %3, ptr noundef %45, ptr noundef nonnull %31) #10
  %47 = and i32 %46, %29
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %35, %33
  %50 = phi ptr [ %34, %33 ], [ %42, %35 ]
  %51 = phi i64 [ 341, %33 ], [ 354, %35 ]
  %52 = phi i32 [ %29, %33 ], [ 0, %35 ]
  %53 = load ptr, ptr %50, align 8, !tbaa !5
  %54 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %51, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %53) #10
  br label %55

55:                                               ; preds = %49, %35
  %56 = phi i32 [ %47, %35 ], [ %52, %49 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = icmp eq i64 %57, 144
  br i1 %58, label %59, label %28, !llvm.loop !30

59:                                               ; preds = %55
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @DestroyCoderNode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !28
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #10
  store ptr %9, ptr %0, align 8, !tbaa !18
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #10
  store ptr %15, ptr %11, align 8, !tbaa !15
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct._CoderInfo, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @DestroyString(ptr noundef nonnull %18) #10
  store ptr %21, ptr %17, align 8, !tbaa !20
  br label %22

22:                                               ; preds = %16, %20, %1
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #10
  ret ptr %23
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadCoderCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 795, ptr noundef nonnull @.str.13, ptr noundef %2) #10
  %11 = icmp eq ptr %1, null
  br i1 %11, label %175, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #10
  store ptr %1, ptr %7, align 8, !tbaa !5
  %14 = load i8, ptr %1, align 1, !tbaa !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %172, label %16

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
  %24 = load i8, ptr %13, align 1, !tbaa !31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %172, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #10
  %28 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.14, i64 noundef 9) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !5
  %32 = call i32 @LocaleNCompare(ptr noundef %31, ptr noundef nonnull @.str.15, i64 noundef 2) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %38
  %35 = load ptr, ptr %7, align 8, !tbaa !5
  %36 = load i8, ptr %35, align 1, !tbaa !31
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #10
  %39 = load ptr, ptr %7, align 8, !tbaa !5
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.15, i64 noundef 2) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !32

42:                                               ; preds = %59, %55, %38, %34, %76, %70, %73, %157, %163, %169, %154, %160, %166, %150, %137, %143, %51, %30, %127, %132, %146
  %43 = phi ptr [ %118, %127 ], [ null, %132 ], [ %23, %146 ], [ %23, %30 ], [ %23, %51 ], [ null, %143 ], [ null, %137 ], [ %23, %150 ], [ %23, %166 ], [ %23, %160 ], [ %23, %154 ], [ %23, %169 ], [ %23, %163 ], [ %23, %157 ], [ %23, %73 ], [ %23, %70 ], [ %23, %76 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %127 ], [ %22, %132 ], [ %22, %146 ], [ %22, %30 ], [ %22, %51 ], [ 0, %143 ], [ %141, %137 ], [ %22, %150 ], [ %22, %166 ], [ %22, %160 ], [ %22, %154 ], [ %22, %169 ], [ %22, %163 ], [ %22, %157 ], [ %67, %73 ], [ %67, %70 ], [ %67, %76 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !5
  %46 = load i8, ptr %45, align 1, !tbaa !31
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %172, label %20, !llvm.loop !33

48:                                               ; preds = %26
  %49 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.16, i64 noundef 4) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !tbaa !5
  %53 = call i32 @LocaleNCompare(ptr noundef %52, ptr noundef nonnull @.str.17, i64 noundef 2) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %51, %59
  %56 = load ptr, ptr %7, align 8, !tbaa !5
  %57 = load i8, ptr %56, align 1, !tbaa !31
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #10
  %60 = load ptr, ptr %7, align 8, !tbaa !5
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.17, i64 noundef 2) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !34

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.18) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %63, %112
  %67 = phi i32 [ %113, %112 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %92, %66
  %69 = load i8, ptr %13, align 1, !tbaa !31
  br label %70

70:                                               ; preds = %68, %80
  %71 = phi i8 [ %69, %68 ], [ %83, %80 ]
  %72 = icmp eq i8 %71, 47
  br i1 %72, label %42, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %17, align 1, !tbaa !31
  %75 = icmp eq i8 %74, 62
  br i1 %75, label %42, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !5
  %78 = load i8, ptr %77, align 1, !tbaa !31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80

80:                                               ; preds = %76
  %81 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #10
  %82 = load ptr, ptr %7, align 8, !tbaa !5
  call void @GetMagickToken(ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %83 = load i8, ptr %13, align 1, !tbaa !31
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %85, label %70, !llvm.loop !35

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !5
  call void @GetMagickToken(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %87 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.19) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  br i1 %18, label %90, label %93

90:                                               ; preds = %89
  %91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 844, i32 noundef 495, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull %13) #10
  br label %92

92:                                               ; preds = %90, %85
  br label %68, !llvm.loop !35

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #13
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #10
  %94 = load i8, ptr %8, align 16, !tbaa !31
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.21, i64 noundef 4096) #10
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8, ptr %13, align 1, !tbaa !31
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #10
  br label %105

103:                                              ; preds = %98
  %104 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #10
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = call fastcc i32 @LoadCoderCache(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4) #11
  %110 = and i32 %109, %67
  %111 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %106) #10
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i32 [ %110, %108 ], [ %67, %105 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #13
  br label %66, !llvm.loop !35

114:                                              ; preds = %63
  %115 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.22) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #17
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #13
  call void @GetExceptionInfo(ptr noundef nonnull %9) #10
  %121 = tail call ptr @__errno_location() #15
  %122 = load i32, ptr %121, align 4, !tbaa !23
  %123 = call ptr @GetExceptionMessage(i32 noundef %122) #10
  %124 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 879, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %123) #10
  %125 = call ptr @DestroyString(ptr noundef %123) #10
  call void @CatchException(ptr noundef nonnull %9) #10
  %126 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #10
  call void @MagickCoreTerminus() #10
  call void @_exit(i32 noundef 1) #16
  unreachable

127:                                              ; preds = %117
  %128 = call ptr @ResetMagickMemory(ptr noundef nonnull %118, i32 noundef 0, i64 noundef 56) #10
  %129 = call ptr @ConstantString(ptr noundef %2) #10
  store ptr %129, ptr %118, align 8, !tbaa !18
  %130 = getelementptr inbounds %struct._CoderInfo, ptr %118, i64 0, i32 3
  store i32 0, ptr %130, align 8, !tbaa !28
  %131 = getelementptr inbounds %struct._CoderInfo, ptr %118, i64 0, i32 7
  store i64 2880220587, ptr %131, align 8, !tbaa !29
  br label %42

132:                                              ; preds = %114
  %133 = icmp eq ptr %23, null
  br i1 %133, label %42, label %134

134:                                              ; preds = %132
  %135 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.23) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !20
  %140 = call ptr @ConstantString(ptr noundef %139) #10
  %141 = call i32 @AddValueToSplayTree(ptr noundef %0, ptr noundef %140, ptr noundef nonnull %23) #10
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %42

143:                                              ; preds = %137
  %144 = load ptr, ptr %138, align 8, !tbaa !20
  %145 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 893, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %144) #10
  br label %42

146:                                              ; preds = %134
  %147 = load ptr, ptr %7, align 8, !tbaa !5
  call void @GetMagickToken(ptr noundef %147, ptr noundef null, ptr noundef nonnull %13) #10
  %148 = load i8, ptr %13, align 1, !tbaa !31
  %149 = icmp eq i8 %148, 61
  br i1 %149, label %150, label %42

150:                                              ; preds = %146
  %151 = load ptr, ptr %7, align 8, !tbaa !5
  call void @GetMagickToken(ptr noundef %151, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %152 = load ptr, ptr %7, align 8, !tbaa !5
  call void @GetMagickToken(ptr noundef %152, ptr noundef nonnull %7, ptr noundef nonnull %13) #10
  %153 = load i8, ptr %6, align 16, !tbaa !31
  switch i8 %153, label %42 [
    i8 77, label %154
    i8 109, label %154
    i8 78, label %160
    i8 110, label %160
    i8 83, label %166
    i8 115, label %166
  ]

154:                                              ; preds = %150, %150
  %155 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.24) #10
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %42

157:                                              ; preds = %154
  %158 = call ptr @ConstantString(ptr noundef nonnull %13) #10
  %159 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 1
  store ptr %158, ptr %159, align 8, !tbaa !20
  br label %42

160:                                              ; preds = %150, %150
  %161 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25) #10
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %42

163:                                              ; preds = %160
  %164 = call ptr @ConstantString(ptr noundef nonnull %13) #10
  %165 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 2
  store ptr %164, ptr %165, align 8, !tbaa !15
  br label %42

166:                                              ; preds = %150, %150
  %167 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.26) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %42

169:                                              ; preds = %166
  %170 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #10
  %171 = getelementptr inbounds %struct._CoderInfo, ptr %23, i64 0, i32 4
  store i32 %170, ptr %171, align 4, !tbaa !12
  br label %42

172:                                              ; preds = %42, %20, %12
  %173 = phi i32 [ 1, %12 ], [ %22, %20 ], [ %44, %42 ]
  %174 = call ptr @RelinquishMagickMemory(ptr noundef %13) #10
  br label %175

175:                                              ; preds = %5, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  ret i32 %176
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }

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
!9 = !{i32 0, i32 2}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !14, i64 28}
!13 = !{!"_CoderInfo", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !14, i64 28, !6, i64 32, !6, i64 40, !11, i64 48}
!14 = !{!"int", !7, i64 0}
!15 = !{!13, !6, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!13, !6, i64 0}
!19 = distinct !{!19, !17}
!20 = !{!13, !6, i64 8}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!14, !14, i64 0}
!24 = distinct !{!24, !17}
!25 = !{!26, !6, i64 0}
!26 = !{!"_CoderMapInfo", !6, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = !{!13, !14, i64 24}
!29 = !{!13, !11, i64 48}
!30 = distinct !{!30, !17}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
