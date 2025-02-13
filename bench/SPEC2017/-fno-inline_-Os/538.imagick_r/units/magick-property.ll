; ModuleID = 'magick/property.c'
source_filename = "magick/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._TagInfo = type { i64, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._DirectoryInfo = type { ptr, i64, i64 }
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [18 x i8] c"magick/property.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fx:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"8bim:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exif:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"icc:\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"icm:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"iptc:\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"pixel:\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"xmp:\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"bit-depth\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"colorspace\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"kurtosis\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"magick\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"maxima\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"minima\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"profiles\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"resolution.x\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"resolution.y\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"scenes\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%sB\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"skewness\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"standard-deviation\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"standard_deviation\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"x-resolution\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"y-resolution\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"get-property\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"UnableToAccessPath\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"UnknownImageProperty\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"\22%%%c\22\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"\22%%[]\22\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"UnbalancedBraces\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"\22%%[%s\22\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"option:\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"artifact:\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"\22%%[%s]\22\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"bias\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"compose\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"dispose\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"intent\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"rendering-intent\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"tile-offset\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"8bim\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"8BIM:%ld,%ld:%[^\0A]\0A%[^\0A]\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"<?xml version=\221.0\22 encoding=\22iso-8859-1\22?>\0A\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"<svg width=\22%.20g\22 height=\22%.20g\22>\0A\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"<path style=\22fill:#00000000;stroke:#00000000;\00", align 1
@.str.100 = private unnamed_addr constant [47 x i8] c"stroke-width:0;stroke-antialiasing:false\22 d=\22\0A\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"M %g %g\0A\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"L %g %g\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"V %g %g %g %g\0A\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"Y %g %g %g %g\0A\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"C %g %g %g %g %g %g\0A\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"L %g %g Z\0A\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"V %g %g %g %g Z\0A\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"Y %g %g %g %g Z\0A\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"C %g %g %g %g %g %g Z\0A\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"\22/>\0A\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"</svg>\0A\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"/ClipImage\0A\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"  /c {curveto} bind def\0A\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"  /l {lineto} bind def\0A\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"  /m {moveto} bind def\0A\00", align 1
@.str.118 = private unnamed_addr constant [47 x i8] c"  /v {currentpoint 6 2 roll curveto} bind def\0A\00", align 1
@.str.119 = private unnamed_addr constant [32 x i8] c"  /y {2 copy curveto} bind def\0A\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"  /z {closepath} bind def\0A\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"  newpath\0A\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"  %g %g m\0A\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"  %g %g l\0A\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"  %g %g %g %g v\0A\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"  %g %g %g %g y\0A\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"  %g %g %g %g %g %g c\0A\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"  %g %g l z\0A\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"  %g %g %g %g v z\0A\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"  %g %g %g %g y z\0A\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"  %g %g %g %g %g %g c z\0A\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"  eoclip\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"} bind def\00", align 1
@GetEXIFProperty.EXIFTag = internal unnamed_addr constant [271 x %struct._TagInfo] [%struct._TagInfo { i64 1, ptr @.str.133 }, %struct._TagInfo { i64 2, ptr @.str.134 }, %struct._TagInfo { i64 256, ptr @.str.135 }, %struct._TagInfo { i64 257, ptr @.str.136 }, %struct._TagInfo { i64 258, ptr @.str.137 }, %struct._TagInfo { i64 259, ptr @.str.138 }, %struct._TagInfo { i64 262, ptr @.str.139 }, %struct._TagInfo { i64 266, ptr @.str.140 }, %struct._TagInfo { i64 269, ptr @.str.141 }, %struct._TagInfo { i64 270, ptr @.str.142 }, %struct._TagInfo { i64 271, ptr @.str.143 }, %struct._TagInfo { i64 272, ptr @.str.144 }, %struct._TagInfo { i64 273, ptr @.str.145 }, %struct._TagInfo { i64 274, ptr @.str.146 }, %struct._TagInfo { i64 277, ptr @.str.147 }, %struct._TagInfo { i64 278, ptr @.str.148 }, %struct._TagInfo { i64 279, ptr @.str.149 }, %struct._TagInfo { i64 282, ptr @.str.150 }, %struct._TagInfo { i64 283, ptr @.str.151 }, %struct._TagInfo { i64 284, ptr @.str.152 }, %struct._TagInfo { i64 285, ptr @.str.153 }, %struct._TagInfo { i64 286, ptr @.str.154 }, %struct._TagInfo { i64 287, ptr @.str.155 }, %struct._TagInfo { i64 280, ptr @.str.156 }, %struct._TagInfo { i64 281, ptr @.str.157 }, %struct._TagInfo { i64 288, ptr @.str.158 }, %struct._TagInfo { i64 289, ptr @.str.159 }, %struct._TagInfo { i64 290, ptr @.str.160 }, %struct._TagInfo { i64 291, ptr @.str.161 }, %struct._TagInfo { i64 292, ptr @.str.162 }, %struct._TagInfo { i64 293, ptr @.str.163 }, %struct._TagInfo { i64 296, ptr @.str.164 }, %struct._TagInfo { i64 301, ptr @.str.165 }, %struct._TagInfo { i64 305, ptr @.str.166 }, %struct._TagInfo { i64 306, ptr @.str.167 }, %struct._TagInfo { i64 315, ptr @.str.168 }, %struct._TagInfo { i64 318, ptr @.str.169 }, %struct._TagInfo { i64 319, ptr @.str.170 }, %struct._TagInfo { i64 320, ptr @.str.171 }, %struct._TagInfo { i64 321, ptr @.str.172 }, %struct._TagInfo { i64 322, ptr @.str.173 }, %struct._TagInfo { i64 323, ptr @.str.174 }, %struct._TagInfo { i64 324, ptr @.str.175 }, %struct._TagInfo { i64 325, ptr @.str.176 }, %struct._TagInfo { i64 330, ptr @.str.177 }, %struct._TagInfo { i64 332, ptr @.str.178 }, %struct._TagInfo { i64 333, ptr @.str.179 }, %struct._TagInfo { i64 334, ptr @.str.180 }, %struct._TagInfo { i64 336, ptr @.str.181 }, %struct._TagInfo { i64 337, ptr @.str.182 }, %struct._TagInfo { i64 338, ptr @.str.183 }, %struct._TagInfo { i64 339, ptr @.str.184 }, %struct._TagInfo { i64 340, ptr @.str.185 }, %struct._TagInfo { i64 341, ptr @.str.186 }, %struct._TagInfo { i64 342, ptr @.str.187 }, %struct._TagInfo { i64 343, ptr @.str.188 }, %struct._TagInfo { i64 344, ptr @.str.189 }, %struct._TagInfo { i64 345, ptr @.str.190 }, %struct._TagInfo { i64 346, ptr @.str.191 }, %struct._TagInfo { i64 347, ptr @.str.192 }, %struct._TagInfo { i64 351, ptr @.str.193 }, %struct._TagInfo { i64 512, ptr @.str.194 }, %struct._TagInfo { i64 513, ptr @.str.195 }, %struct._TagInfo { i64 514, ptr @.str.196 }, %struct._TagInfo { i64 515, ptr @.str.197 }, %struct._TagInfo { i64 517, ptr @.str.198 }, %struct._TagInfo { i64 518, ptr @.str.199 }, %struct._TagInfo { i64 519, ptr @.str.200 }, %struct._TagInfo { i64 520, ptr @.str.201 }, %struct._TagInfo { i64 521, ptr @.str.202 }, %struct._TagInfo { i64 529, ptr @.str.203 }, %struct._TagInfo { i64 530, ptr @.str.204 }, %struct._TagInfo { i64 531, ptr @.str.205 }, %struct._TagInfo { i64 532, ptr @.str.206 }, %struct._TagInfo { i64 700, ptr @.str.207 }, %struct._TagInfo { i64 769, ptr @.str.208 }, %struct._TagInfo { i64 770, ptr @.str.209 }, %struct._TagInfo { i64 771, ptr @.str.210 }, %struct._TagInfo { i64 800, ptr @.str.211 }, %struct._TagInfo { i64 20481, ptr @.str.212 }, %struct._TagInfo { i64 20482, ptr @.str.213 }, %struct._TagInfo { i64 20483, ptr @.str.214 }, %struct._TagInfo { i64 20484, ptr @.str.215 }, %struct._TagInfo { i64 20485, ptr @.str.216 }, %struct._TagInfo { i64 20486, ptr @.str.217 }, %struct._TagInfo { i64 20487, ptr @.str.218 }, %struct._TagInfo { i64 20488, ptr @.str.219 }, %struct._TagInfo { i64 20489, ptr @.str.220 }, %struct._TagInfo { i64 20490, ptr @.str.221 }, %struct._TagInfo { i64 20491, ptr @.str.222 }, %struct._TagInfo { i64 20492, ptr @.str.223 }, %struct._TagInfo { i64 20493, ptr @.str.224 }, %struct._TagInfo { i64 20494, ptr @.str.225 }, %struct._TagInfo { i64 20495, ptr @.str.226 }, %struct._TagInfo { i64 20496, ptr @.str.227 }, %struct._TagInfo { i64 20497, ptr @.str.228 }, %struct._TagInfo { i64 20498, ptr @.str.229 }, %struct._TagInfo { i64 20499, ptr @.str.230 }, %struct._TagInfo { i64 20500, ptr @.str.231 }, %struct._TagInfo { i64 20501, ptr @.str.232 }, %struct._TagInfo { i64 20502, ptr @.str.233 }, %struct._TagInfo { i64 20503, ptr @.str.234 }, %struct._TagInfo { i64 20504, ptr @.str.235 }, %struct._TagInfo { i64 20505, ptr @.str.236 }, %struct._TagInfo { i64 20506, ptr @.str.237 }, %struct._TagInfo { i64 20507, ptr @.str.238 }, %struct._TagInfo { i64 20512, ptr @.str.239 }, %struct._TagInfo { i64 20513, ptr @.str.240 }, %struct._TagInfo { i64 20514, ptr @.str.241 }, %struct._TagInfo { i64 20515, ptr @.str.242 }, %struct._TagInfo { i64 20516, ptr @.str.243 }, %struct._TagInfo { i64 20517, ptr @.str.244 }, %struct._TagInfo { i64 20518, ptr @.str.245 }, %struct._TagInfo { i64 20519, ptr @.str.246 }, %struct._TagInfo { i64 20520, ptr @.str.247 }, %struct._TagInfo { i64 20521, ptr @.str.248 }, %struct._TagInfo { i64 20522, ptr @.str.249 }, %struct._TagInfo { i64 20523, ptr @.str.250 }, %struct._TagInfo { i64 20524, ptr @.str.251 }, %struct._TagInfo { i64 20525, ptr @.str.252 }, %struct._TagInfo { i64 20526, ptr @.str.253 }, %struct._TagInfo { i64 20527, ptr @.str.254 }, %struct._TagInfo { i64 20528, ptr @.str.255 }, %struct._TagInfo { i64 20529, ptr @.str.256 }, %struct._TagInfo { i64 20530, ptr @.str.257 }, %struct._TagInfo { i64 20531, ptr @.str.258 }, %struct._TagInfo { i64 20532, ptr @.str.259 }, %struct._TagInfo { i64 20533, ptr @.str.260 }, %struct._TagInfo { i64 20534, ptr @.str.261 }, %struct._TagInfo { i64 20535, ptr @.str.262 }, %struct._TagInfo { i64 20536, ptr @.str.263 }, %struct._TagInfo { i64 20537, ptr @.str.264 }, %struct._TagInfo { i64 20538, ptr @.str.265 }, %struct._TagInfo { i64 20539, ptr @.str.266 }, %struct._TagInfo { i64 20624, ptr @.str.267 }, %struct._TagInfo { i64 20625, ptr @.str.268 }, %struct._TagInfo { i64 20736, ptr @.str.269 }, %struct._TagInfo { i64 20737, ptr @.str.270 }, %struct._TagInfo { i64 20752, ptr @.str.271 }, %struct._TagInfo { i64 20753, ptr @.str.272 }, %struct._TagInfo { i64 20754, ptr @.str.273 }, %struct._TagInfo { i64 20755, ptr @.str.274 }, %struct._TagInfo { i64 4096, ptr @.str.275 }, %struct._TagInfo { i64 4097, ptr @.str.276 }, %struct._TagInfo { i64 4098, ptr @.str.277 }, %struct._TagInfo { i64 32781, ptr @.str.278 }, %struct._TagInfo { i64 32995, ptr @.str.279 }, %struct._TagInfo { i64 32996, ptr @.str.280 }, %struct._TagInfo { i64 32997, ptr @.str.281 }, %struct._TagInfo { i64 32998, ptr @.str.282 }, %struct._TagInfo { i64 33421, ptr @.str.283 }, %struct._TagInfo { i64 33422, ptr @.str.284 }, %struct._TagInfo { i64 33423, ptr @.str.285 }, %struct._TagInfo { i64 33432, ptr @.str.286 }, %struct._TagInfo { i64 33434, ptr @.str.287 }, %struct._TagInfo { i64 33437, ptr @.str.288 }, %struct._TagInfo { i64 33723, ptr @.str.289 }, %struct._TagInfo { i64 34019, ptr @.str.290 }, %struct._TagInfo { i64 34021, ptr @.str.291 }, %struct._TagInfo { i64 34377, ptr @.str.292 }, %struct._TagInfo { i64 34665, ptr @.str.293 }, %struct._TagInfo { i64 34675, ptr @.str.294 }, %struct._TagInfo { i64 34850, ptr @.str.295 }, %struct._TagInfo { i64 34852, ptr @.str.296 }, %struct._TagInfo { i64 34853, ptr @.str.297 }, %struct._TagInfo { i64 34855, ptr @.str.298 }, %struct._TagInfo { i64 34856, ptr @.str.299 }, %struct._TagInfo { i64 34857, ptr @.str.300 }, %struct._TagInfo { i64 34858, ptr @.str.301 }, %struct._TagInfo { i64 34859, ptr @.str.302 }, %struct._TagInfo { i64 36864, ptr @.str.303 }, %struct._TagInfo { i64 36867, ptr @.str.304 }, %struct._TagInfo { i64 36868, ptr @.str.305 }, %struct._TagInfo { i64 37121, ptr @.str.306 }, %struct._TagInfo { i64 37122, ptr @.str.307 }, %struct._TagInfo { i64 37377, ptr @.str.308 }, %struct._TagInfo { i64 37378, ptr @.str.309 }, %struct._TagInfo { i64 37379, ptr @.str.310 }, %struct._TagInfo { i64 37380, ptr @.str.311 }, %struct._TagInfo { i64 37381, ptr @.str.312 }, %struct._TagInfo { i64 37382, ptr @.str.313 }, %struct._TagInfo { i64 37383, ptr @.str.314 }, %struct._TagInfo { i64 37384, ptr @.str.315 }, %struct._TagInfo { i64 37385, ptr @.str.316 }, %struct._TagInfo { i64 37386, ptr @.str.317 }, %struct._TagInfo { i64 37387, ptr @.str.318 }, %struct._TagInfo { i64 37388, ptr @.str.319 }, %struct._TagInfo { i64 37389, ptr @.str.320 }, %struct._TagInfo { i64 37393, ptr @.str.321 }, %struct._TagInfo { i64 37394, ptr @.str.322 }, %struct._TagInfo { i64 37395, ptr @.str.323 }, %struct._TagInfo { i64 37396, ptr @.str.324 }, %struct._TagInfo { i64 37397, ptr @.str.325 }, %struct._TagInfo { i64 37398, ptr @.str.326 }, %struct._TagInfo { i64 37500, ptr @.str.327 }, %struct._TagInfo { i64 40091, ptr @.str.328 }, %struct._TagInfo { i64 40092, ptr @.str.329 }, %struct._TagInfo { i64 40093, ptr @.str.330 }, %struct._TagInfo { i64 40094, ptr @.str.331 }, %struct._TagInfo { i64 40095, ptr @.str.332 }, %struct._TagInfo { i64 37510, ptr @.str.333 }, %struct._TagInfo { i64 37520, ptr @.str.334 }, %struct._TagInfo { i64 37521, ptr @.str.335 }, %struct._TagInfo { i64 37522, ptr @.str.336 }, %struct._TagInfo { i64 40960, ptr @.str.337 }, %struct._TagInfo { i64 40961, ptr @.str.338 }, %struct._TagInfo { i64 40962, ptr @.str.339 }, %struct._TagInfo { i64 40963, ptr @.str.340 }, %struct._TagInfo { i64 40964, ptr @.str.341 }, %struct._TagInfo { i64 40965, ptr @.str.342 }, %struct._TagInfo { i64 41483, ptr @.str.318 }, %struct._TagInfo { i64 41484, ptr @.str.319 }, %struct._TagInfo { i64 41485, ptr @.str.320 }, %struct._TagInfo { i64 41486, ptr @.str.343 }, %struct._TagInfo { i64 41487, ptr @.str.344 }, %struct._TagInfo { i64 41488, ptr @.str.345 }, %struct._TagInfo { i64 41492, ptr @.str.346 }, %struct._TagInfo { i64 41493, ptr @.str.325 }, %struct._TagInfo { i64 41494, ptr @.str.347 }, %struct._TagInfo { i64 41495, ptr @.str.348 }, %struct._TagInfo { i64 41728, ptr @.str.349 }, %struct._TagInfo { i64 41729, ptr @.str.350 }, %struct._TagInfo { i64 41730, ptr @.str.351 }, %struct._TagInfo { i64 41985, ptr @.str.352 }, %struct._TagInfo { i64 41986, ptr @.str.353 }, %struct._TagInfo { i64 41987, ptr @.str.354 }, %struct._TagInfo { i64 41988, ptr @.str.355 }, %struct._TagInfo { i64 41989, ptr @.str.356 }, %struct._TagInfo { i64 41990, ptr @.str.357 }, %struct._TagInfo { i64 41991, ptr @.str.358 }, %struct._TagInfo { i64 41992, ptr @.str.359 }, %struct._TagInfo { i64 41993, ptr @.str.360 }, %struct._TagInfo { i64 41994, ptr @.str.361 }, %struct._TagInfo { i64 41995, ptr @.str.362 }, %struct._TagInfo { i64 41996, ptr @.str.363 }, %struct._TagInfo { i64 42016, ptr @.str.364 }, %struct._TagInfo { i64 50341, ptr @.str.365 }, %struct._TagInfo { i64 42240, ptr @.str.208 }, %struct._TagInfo { i64 50752, ptr @.str.366 }, %struct._TagInfo { i64 65536, ptr @.str.367 }, %struct._TagInfo { i64 65537, ptr @.str.368 }, %struct._TagInfo { i64 65538, ptr @.str.369 }, %struct._TagInfo { i64 65539, ptr @.str.370 }, %struct._TagInfo { i64 65540, ptr @.str.371 }, %struct._TagInfo { i64 65541, ptr @.str.372 }, %struct._TagInfo { i64 65542, ptr @.str.373 }, %struct._TagInfo { i64 65543, ptr @.str.374 }, %struct._TagInfo { i64 65544, ptr @.str.375 }, %struct._TagInfo { i64 65545, ptr @.str.376 }, %struct._TagInfo { i64 65546, ptr @.str.377 }, %struct._TagInfo { i64 65547, ptr @.str.378 }, %struct._TagInfo { i64 65548, ptr @.str.379 }, %struct._TagInfo { i64 65549, ptr @.str.380 }, %struct._TagInfo { i64 65550, ptr @.str.381 }, %struct._TagInfo { i64 65551, ptr @.str.382 }, %struct._TagInfo { i64 65552, ptr @.str.383 }, %struct._TagInfo { i64 65553, ptr @.str.384 }, %struct._TagInfo { i64 65554, ptr @.str.385 }, %struct._TagInfo { i64 65555, ptr @.str.386 }, %struct._TagInfo { i64 65556, ptr @.str.387 }, %struct._TagInfo { i64 65557, ptr @.str.388 }, %struct._TagInfo { i64 65558, ptr @.str.389 }, %struct._TagInfo { i64 65559, ptr @.str.390 }, %struct._TagInfo { i64 65560, ptr @.str.391 }, %struct._TagInfo { i64 65561, ptr @.str.392 }, %struct._TagInfo { i64 65562, ptr @.str.393 }, %struct._TagInfo { i64 65563, ptr @.str.394 }, %struct._TagInfo { i64 65564, ptr @.str.395 }, %struct._TagInfo { i64 65565, ptr @.str.396 }, %struct._TagInfo { i64 65566, ptr @.str.397 }, %struct._TagInfo zeroinitializer], align 16
@.str.133 = private unnamed_addr constant [27 x i8] c"exif:InteroperabilityIndex\00", align 1
@.str.134 = private unnamed_addr constant [29 x i8] c"exif:InteroperabilityVersion\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"exif:ImageWidth\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"exif:ImageLength\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"exif:BitsPerSample\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"exif:Compression\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"exif:PhotometricInterpretation\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"exif:FillOrder\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"exif:DocumentName\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"exif:ImageDescription\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"exif:Make\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"exif:Model\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"exif:StripOffsets\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"exif:Orientation\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"exif:SamplesPerPixel\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"exif:RowsPerStrip\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"exif:StripByteCounts\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"exif:XResolution\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"exif:YResolution\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"exif:PlanarConfiguration\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"exif:PageName\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"exif:XPosition\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"exif:YPosition\00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c"exif:MinSampleValue\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"exif:MaxSampleValue\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"exif:FreeOffsets\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"exif:FreeByteCounts\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"exif:GrayResponseUnit\00", align 1
@.str.161 = private unnamed_addr constant [23 x i8] c"exif:GrayResponseCurve\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"exif:T4Options\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"exif:T6Options\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"exif:ResolutionUnit\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"exif:TransferFunction\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"exif:Software\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"exif:DateTime\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"exif:Artist\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"exif:WhitePoint\00", align 1
@.str.170 = private unnamed_addr constant [27 x i8] c"exif:PrimaryChromaticities\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"exif:ColorMap\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"exif:HalfToneHints\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"exif:TileWidth\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"exif:TileLength\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"exif:TileOffsets\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"exif:TileByteCounts\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"exif:SubIFD\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"exif:InkSet\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"exif:InkNames\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"exif:NumberOfInks\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"exif:DotRange\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"exif:TargetPrinter\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"exif:ExtraSample\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"exif:SampleFormat\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"exif:SMinSampleValue\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"exif:SMaxSampleValue\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"exif:TransferRange\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"exif:ClipPath\00", align 1
@.str.189 = private unnamed_addr constant [20 x i8] c"exif:XClipPathUnits\00", align 1
@.str.190 = private unnamed_addr constant [20 x i8] c"exif:YClipPathUnits\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"exif:Indexed\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"exif:JPEGTables\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"exif:OPIProxy\00", align 1
@.str.194 = private unnamed_addr constant [14 x i8] c"exif:JPEGProc\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"exif:JPEGInterchangeFormat\00", align 1
@.str.196 = private unnamed_addr constant [33 x i8] c"exif:JPEGInterchangeFormatLength\00", align 1
@.str.197 = private unnamed_addr constant [25 x i8] c"exif:JPEGRestartInterval\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"exif:JPEGLosslessPredictors\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c"exif:JPEGPointTransforms\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"exif:JPEGQTables\00", align 1
@.str.201 = private unnamed_addr constant [18 x i8] c"exif:JPEGDCTables\00", align 1
@.str.202 = private unnamed_addr constant [18 x i8] c"exif:JPEGACTables\00", align 1
@.str.203 = private unnamed_addr constant [23 x i8] c"exif:YCbCrCoefficients\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"exif:YCbCrSubSampling\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"exif:YCbCrPositioning\00", align 1
@.str.206 = private unnamed_addr constant [25 x i8] c"exif:ReferenceBlackWhite\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"exif:ExtensibleMetadataPlatform\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"exif:Gamma\00", align 1
@.str.209 = private unnamed_addr constant [26 x i8] c"exif:ICCProfileDescriptor\00", align 1
@.str.210 = private unnamed_addr constant [25 x i8] c"exif:SRGBRenderingIntent\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"exif:ImageTitle\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"exif:ResolutionXUnit\00", align 1
@.str.213 = private unnamed_addr constant [21 x i8] c"exif:ResolutionYUnit\00", align 1
@.str.214 = private unnamed_addr constant [27 x i8] c"exif:ResolutionXLengthUnit\00", align 1
@.str.215 = private unnamed_addr constant [27 x i8] c"exif:ResolutionYLengthUnit\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"exif:PrintFlags\00", align 1
@.str.217 = private unnamed_addr constant [23 x i8] c"exif:PrintFlagsVersion\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"exif:PrintFlagsCrop\00", align 1
@.str.219 = private unnamed_addr constant [26 x i8] c"exif:PrintFlagsBleedWidth\00", align 1
@.str.220 = private unnamed_addr constant [31 x i8] c"exif:PrintFlagsBleedWidthScale\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"exif:HalftoneLPI\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"exif:HalftoneLPIUnit\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"exif:HalftoneDegree\00", align 1
@.str.224 = private unnamed_addr constant [19 x i8] c"exif:HalftoneShape\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"exif:HalftoneMisc\00", align 1
@.str.226 = private unnamed_addr constant [20 x i8] c"exif:HalftoneScreen\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"exif:JPEGQuality\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"exif:GridSize\00", align 1
@.str.229 = private unnamed_addr constant [21 x i8] c"exif:ThumbnailFormat\00", align 1
@.str.230 = private unnamed_addr constant [20 x i8] c"exif:ThumbnailWidth\00", align 1
@.str.231 = private unnamed_addr constant [21 x i8] c"exif:ThumbnailHeight\00", align 1
@.str.232 = private unnamed_addr constant [25 x i8] c"exif:ThumbnailColorDepth\00", align 1
@.str.233 = private unnamed_addr constant [21 x i8] c"exif:ThumbnailPlanes\00", align 1
@.str.234 = private unnamed_addr constant [23 x i8] c"exif:ThumbnailRawBytes\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c"exif:ThumbnailSize\00", align 1
@.str.236 = private unnamed_addr constant [29 x i8] c"exif:ThumbnailCompressedSize\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"exif:ColorTransferFunction\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"exif:ThumbnailData\00", align 1
@.str.239 = private unnamed_addr constant [25 x i8] c"exif:ThumbnailImageWidth\00", align 1
@.str.240 = private unnamed_addr constant [26 x i8] c"exif:ThumbnailImageHeight\00", align 1
@.str.241 = private unnamed_addr constant [28 x i8] c"exif:ThumbnailBitsPerSample\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"exif:ThumbnailCompression\00", align 1
@.str.243 = private unnamed_addr constant [32 x i8] c"exif:ThumbnailPhotometricInterp\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c"exif:ThumbnailImageDescription\00", align 1
@.str.245 = private unnamed_addr constant [24 x i8] c"exif:ThumbnailEquipMake\00", align 1
@.str.246 = private unnamed_addr constant [25 x i8] c"exif:ThumbnailEquipModel\00", align 1
@.str.247 = private unnamed_addr constant [27 x i8] c"exif:ThumbnailStripOffsets\00", align 1
@.str.248 = private unnamed_addr constant [26 x i8] c"exif:ThumbnailOrientation\00", align 1
@.str.249 = private unnamed_addr constant [30 x i8] c"exif:ThumbnailSamplesPerPixel\00", align 1
@.str.250 = private unnamed_addr constant [27 x i8] c"exif:ThumbnailRowsPerStrip\00", align 1
@.str.251 = private unnamed_addr constant [30 x i8] c"exif:ThumbnailStripBytesCount\00", align 1
@.str.252 = private unnamed_addr constant [26 x i8] c"exif:ThumbnailResolutionX\00", align 1
@.str.253 = private unnamed_addr constant [26 x i8] c"exif:ThumbnailResolutionY\00", align 1
@.str.254 = private unnamed_addr constant [27 x i8] c"exif:ThumbnailPlanarConfig\00", align 1
@.str.255 = private unnamed_addr constant [29 x i8] c"exif:ThumbnailResolutionUnit\00", align 1
@.str.256 = private unnamed_addr constant [31 x i8] c"exif:ThumbnailTransferFunction\00", align 1
@.str.257 = private unnamed_addr constant [27 x i8] c"exif:ThumbnailSoftwareUsed\00", align 1
@.str.258 = private unnamed_addr constant [23 x i8] c"exif:ThumbnailDateTime\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"exif:ThumbnailArtist\00", align 1
@.str.260 = private unnamed_addr constant [25 x i8] c"exif:ThumbnailWhitePoint\00", align 1
@.str.261 = private unnamed_addr constant [36 x i8] c"exif:ThumbnailPrimaryChromaticities\00", align 1
@.str.262 = private unnamed_addr constant [32 x i8] c"exif:ThumbnailYCbCrCoefficients\00", align 1
@.str.263 = private unnamed_addr constant [31 x i8] c"exif:ThumbnailYCbCrSubsampling\00", align 1
@.str.264 = private unnamed_addr constant [31 x i8] c"exif:ThumbnailYCbCrPositioning\00", align 1
@.str.265 = private unnamed_addr constant [28 x i8] c"exif:ThumbnailRefBlackWhite\00", align 1
@.str.266 = private unnamed_addr constant [24 x i8] c"exif:ThumbnailCopyRight\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"exif:LuminanceTable\00", align 1
@.str.268 = private unnamed_addr constant [22 x i8] c"exif:ChrominanceTable\00", align 1
@.str.269 = private unnamed_addr constant [16 x i8] c"exif:FrameDelay\00", align 1
@.str.270 = private unnamed_addr constant [15 x i8] c"exif:LoopCount\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"exif:PixelUnit\00", align 1
@.str.272 = private unnamed_addr constant [19 x i8] c"exif:PixelPerUnitX\00", align 1
@.str.273 = private unnamed_addr constant [19 x i8] c"exif:PixelPerUnitY\00", align 1
@.str.274 = private unnamed_addr constant [22 x i8] c"exif:PaletteHistogram\00", align 1
@.str.275 = private unnamed_addr constant [28 x i8] c"exif:RelatedImageFileFormat\00", align 1
@.str.276 = private unnamed_addr constant [24 x i8] c"exif:RelatedImageLength\00", align 1
@.str.277 = private unnamed_addr constant [23 x i8] c"exif:RelatedImageWidth\00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"exif:ImageID\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"exif:Matteing\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"exif:DataType\00", align 1
@.str.281 = private unnamed_addr constant [16 x i8] c"exif:ImageDepth\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"exif:TileDepth\00", align 1
@.str.283 = private unnamed_addr constant [25 x i8] c"exif:CFARepeatPatternDim\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"exif:CFAPattern2\00", align 1
@.str.285 = private unnamed_addr constant [18 x i8] c"exif:BatteryLevel\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"exif:Copyright\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"exif:ExposureTime\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"exif:FNumber\00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"exif:IPTC/NAA\00", align 1
@.str.290 = private unnamed_addr constant [22 x i8] c"exif:IT8RasterPadding\00", align 1
@.str.291 = private unnamed_addr constant [19 x i8] c"exif:IT8ColorTable\00", align 1
@.str.292 = private unnamed_addr constant [30 x i8] c"exif:ImageResourceInformation\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"exif:ExifOffset\00", align 1
@.str.294 = private unnamed_addr constant [23 x i8] c"exif:InterColorProfile\00", align 1
@.str.295 = private unnamed_addr constant [21 x i8] c"exif:ExposureProgram\00", align 1
@.str.296 = private unnamed_addr constant [25 x i8] c"exif:SpectralSensitivity\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"exif:GPSInfo\00", align 1
@.str.298 = private unnamed_addr constant [21 x i8] c"exif:ISOSpeedRatings\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"exif:OECF\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"exif:Interlace\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"exif:TimeZoneOffset\00", align 1
@.str.302 = private unnamed_addr constant [19 x i8] c"exif:SelfTimerMode\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"exif:ExifVersion\00", align 1
@.str.304 = private unnamed_addr constant [22 x i8] c"exif:DateTimeOriginal\00", align 1
@.str.305 = private unnamed_addr constant [23 x i8] c"exif:DateTimeDigitized\00", align 1
@.str.306 = private unnamed_addr constant [29 x i8] c"exif:ComponentsConfiguration\00", align 1
@.str.307 = private unnamed_addr constant [28 x i8] c"exif:CompressedBitsPerPixel\00", align 1
@.str.308 = private unnamed_addr constant [23 x i8] c"exif:ShutterSpeedValue\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"exif:ApertureValue\00", align 1
@.str.310 = private unnamed_addr constant [21 x i8] c"exif:BrightnessValue\00", align 1
@.str.311 = private unnamed_addr constant [23 x i8] c"exif:ExposureBiasValue\00", align 1
@.str.312 = private unnamed_addr constant [22 x i8] c"exif:MaxApertureValue\00", align 1
@.str.313 = private unnamed_addr constant [21 x i8] c"exif:SubjectDistance\00", align 1
@.str.314 = private unnamed_addr constant [18 x i8] c"exif:MeteringMode\00", align 1
@.str.315 = private unnamed_addr constant [17 x i8] c"exif:LightSource\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"exif:Flash\00", align 1
@.str.317 = private unnamed_addr constant [17 x i8] c"exif:FocalLength\00", align 1
@.str.318 = private unnamed_addr constant [17 x i8] c"exif:FlashEnergy\00", align 1
@.str.319 = private unnamed_addr constant [30 x i8] c"exif:SpatialFrequencyResponse\00", align 1
@.str.320 = private unnamed_addr constant [11 x i8] c"exif:Noise\00", align 1
@.str.321 = private unnamed_addr constant [17 x i8] c"exif:ImageNumber\00", align 1
@.str.322 = private unnamed_addr constant [28 x i8] c"exif:SecurityClassification\00", align 1
@.str.323 = private unnamed_addr constant [18 x i8] c"exif:ImageHistory\00", align 1
@.str.324 = private unnamed_addr constant [17 x i8] c"exif:SubjectArea\00", align 1
@.str.325 = private unnamed_addr constant [19 x i8] c"exif:ExposureIndex\00", align 1
@.str.326 = private unnamed_addr constant [23 x i8] c"exif:TIFF-EPStandardID\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"exif:MakerNote\00", align 1
@.str.328 = private unnamed_addr constant [17 x i8] c"exif:WinXP-Title\00", align 1
@.str.329 = private unnamed_addr constant [20 x i8] c"exif:WinXP-Comments\00", align 1
@.str.330 = private unnamed_addr constant [18 x i8] c"exif:WinXP-Author\00", align 1
@.str.331 = private unnamed_addr constant [20 x i8] c"exif:WinXP-Keywords\00", align 1
@.str.332 = private unnamed_addr constant [19 x i8] c"exif:WinXP-Subject\00", align 1
@.str.333 = private unnamed_addr constant [17 x i8] c"exif:UserComment\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c"exif:SubSecTime\00", align 1
@.str.335 = private unnamed_addr constant [24 x i8] c"exif:SubSecTimeOriginal\00", align 1
@.str.336 = private unnamed_addr constant [25 x i8] c"exif:SubSecTimeDigitized\00", align 1
@.str.337 = private unnamed_addr constant [21 x i8] c"exif:FlashPixVersion\00", align 1
@.str.338 = private unnamed_addr constant [16 x i8] c"exif:ColorSpace\00", align 1
@.str.339 = private unnamed_addr constant [20 x i8] c"exif:ExifImageWidth\00", align 1
@.str.340 = private unnamed_addr constant [21 x i8] c"exif:ExifImageLength\00", align 1
@.str.341 = private unnamed_addr constant [22 x i8] c"exif:RelatedSoundFile\00", align 1
@.str.342 = private unnamed_addr constant [28 x i8] c"exif:InteroperabilityOffset\00", align 1
@.str.343 = private unnamed_addr constant [27 x i8] c"exif:FocalPlaneXResolution\00", align 1
@.str.344 = private unnamed_addr constant [27 x i8] c"exif:FocalPlaneYResolution\00", align 1
@.str.345 = private unnamed_addr constant [30 x i8] c"exif:FocalPlaneResolutionUnit\00", align 1
@.str.346 = private unnamed_addr constant [21 x i8] c"exif:SubjectLocation\00", align 1
@.str.347 = private unnamed_addr constant [23 x i8] c"exif:TIFF/EPStandardID\00", align 1
@.str.348 = private unnamed_addr constant [19 x i8] c"exif:SensingMethod\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"exif:FileSource\00", align 1
@.str.350 = private unnamed_addr constant [15 x i8] c"exif:SceneType\00", align 1
@.str.351 = private unnamed_addr constant [16 x i8] c"exif:CFAPattern\00", align 1
@.str.352 = private unnamed_addr constant [20 x i8] c"exif:CustomRendered\00", align 1
@.str.353 = private unnamed_addr constant [18 x i8] c"exif:ExposureMode\00", align 1
@.str.354 = private unnamed_addr constant [18 x i8] c"exif:WhiteBalance\00", align 1
@.str.355 = private unnamed_addr constant [22 x i8] c"exif:DigitalZoomRatio\00", align 1
@.str.356 = private unnamed_addr constant [27 x i8] c"exif:FocalLengthIn35mmFilm\00", align 1
@.str.357 = private unnamed_addr constant [22 x i8] c"exif:SceneCaptureType\00", align 1
@.str.358 = private unnamed_addr constant [17 x i8] c"exif:GainControl\00", align 1
@.str.359 = private unnamed_addr constant [14 x i8] c"exif:Contrast\00", align 1
@.str.360 = private unnamed_addr constant [16 x i8] c"exif:Saturation\00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"exif:Sharpness\00", align 1
@.str.362 = private unnamed_addr constant [30 x i8] c"exif:DeviceSettingDescription\00", align 1
@.str.363 = private unnamed_addr constant [26 x i8] c"exif:SubjectDistanceRange\00", align 1
@.str.364 = private unnamed_addr constant [19 x i8] c"exif:ImageUniqueID\00", align 1
@.str.365 = private unnamed_addr constant [24 x i8] c"exif:PrintImageMatching\00", align 1
@.str.366 = private unnamed_addr constant [14 x i8] c"exif:CR2Slice\00", align 1
@.str.367 = private unnamed_addr constant [18 x i8] c"exif:GPSVersionID\00", align 1
@.str.368 = private unnamed_addr constant [20 x i8] c"exif:GPSLatitudeRef\00", align 1
@.str.369 = private unnamed_addr constant [17 x i8] c"exif:GPSLatitude\00", align 1
@.str.370 = private unnamed_addr constant [21 x i8] c"exif:GPSLongitudeRef\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"exif:GPSLongitude\00", align 1
@.str.372 = private unnamed_addr constant [20 x i8] c"exif:GPSAltitudeRef\00", align 1
@.str.373 = private unnamed_addr constant [17 x i8] c"exif:GPSAltitude\00", align 1
@.str.374 = private unnamed_addr constant [18 x i8] c"exif:GPSTimeStamp\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"exif:GPSSatellites\00", align 1
@.str.376 = private unnamed_addr constant [15 x i8] c"exif:GPSStatus\00", align 1
@.str.377 = private unnamed_addr constant [20 x i8] c"exif:GPSMeasureMode\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"exif:GPSDop\00", align 1
@.str.379 = private unnamed_addr constant [17 x i8] c"exif:GPSSpeedRef\00", align 1
@.str.380 = private unnamed_addr constant [14 x i8] c"exif:GPSSpeed\00", align 1
@.str.381 = private unnamed_addr constant [17 x i8] c"exif:GPSTrackRef\00", align 1
@.str.382 = private unnamed_addr constant [14 x i8] c"exif:GPSTrack\00", align 1
@.str.383 = private unnamed_addr constant [24 x i8] c"exif:GPSImgDirectionRef\00", align 1
@.str.384 = private unnamed_addr constant [21 x i8] c"exif:GPSImgDirection\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"exif:GPSMapDatum\00", align 1
@.str.386 = private unnamed_addr constant [24 x i8] c"exif:GPSDestLatitudeRef\00", align 1
@.str.387 = private unnamed_addr constant [21 x i8] c"exif:GPSDestLatitude\00", align 1
@.str.388 = private unnamed_addr constant [25 x i8] c"exif:GPSDestLongitudeRef\00", align 1
@.str.389 = private unnamed_addr constant [22 x i8] c"exif:GPSDestLongitude\00", align 1
@.str.390 = private unnamed_addr constant [23 x i8] c"exif:GPSDestBearingRef\00", align 1
@.str.391 = private unnamed_addr constant [20 x i8] c"exif:GPSDestBearing\00", align 1
@.str.392 = private unnamed_addr constant [24 x i8] c"exif:GPSDestDistanceRef\00", align 1
@.str.393 = private unnamed_addr constant [21 x i8] c"exif:GPSDestDistance\00", align 1
@.str.394 = private unnamed_addr constant [25 x i8] c"exif:GPSProcessingMethod\00", align 1
@.str.395 = private unnamed_addr constant [24 x i8] c"exif:GPSAreaInformation\00", align 1
@.str.396 = private unnamed_addr constant [18 x i8] c"exif:GPSDateStamp\00", align 1
@.str.397 = private unnamed_addr constant [21 x i8] c"exif:GPSDifferential\00", align 1
@GetEXIFProperty.tag_bytes = internal unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@.str.398 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.399 = private unnamed_addr constant [8 x i8] c"%.20g, \00", align 1
@.str.400 = private unnamed_addr constant [6 x i8] c"%hd, \00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"%hu, \00", align 1
@.str.402 = private unnamed_addr constant [14 x i8] c"%.20g/%.20g, \00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"%f, \00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"exif:thumbnail:\00", align 1
@.str.405 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.406 = private unnamed_addr constant [7 x i8] c"#%04lx\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"@%04lx\00", align 1
@.str.408 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.410 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.411 = private unnamed_addr constant [13 x i8] c"IPTC:%ld:%ld\00", align 1
@.str.412 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.413 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.414 = private unnamed_addr constant [8 x i8] c"rdf:RDF\00", align 1
@.str.415 = private unnamed_addr constant [16 x i8] c"rdf:Description\00", align 1
@.str.416 = private unnamed_addr constant [8 x i8] c"rdf:Seq\00", align 1
@.str.417 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.418 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.419 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.421 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"Matte\00", align 1
@.str.423 = private unnamed_addr constant [12 x i8] c"%.20gx%.20g\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"%+ld%+ld\00", align 1
@.str.425 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"%+.20g\00", align 1
@.str.427 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.428 = private unnamed_addr constant [2 x i8] c"%\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CloneImageProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 136, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #19
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 140, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 4096) #19
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  %22 = tail call i64 @CopyMagickString(ptr noundef nonnull %20, ptr noundef nonnull %21, i64 noundef 4096) #19
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  store i32 %24, ptr %25, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 3
  store i64 %27, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %30 = load i64, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %30, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 12
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 13
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %39 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 14
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 72
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 72
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 15
  %45 = load double, ptr %44, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  store double %45, ptr %46, align 8, !tbaa !56
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %47, ptr noundef nonnull align 8 dereferenceable(96) %48, i64 96, i1 false), !tbaa.struct !57
  %49 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 17
  %50 = load i32, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  store i32 %50, ptr %51, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 71
  %53 = load i32, ptr %52, align 4, !tbaa !60
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 71
  store i32 %53, ptr %54, align 4, !tbaa !60
  %55 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %56 = load i32, ptr %55, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  store i32 %56, ptr %57, align 8, !tbaa !61
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 22
  %60 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  %62 = tail call ptr @CloneString(ptr noundef nonnull %59, ptr noundef %61) #19
  %63 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 23
  %64 = load i64, ptr %63, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 23
  store i64 %64, ptr %65, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %68 = load <2 x double>, ptr %66, align 8, !tbaa !58
  store <2 x double> %68, ptr %67, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %70 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(32) %70, i64 32, i1 false), !tbaa.struct !64
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74
  %72 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %72, i64 32, i1 false), !tbaa.struct !64
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27
  %74 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %74, i64 32, i1 false), !tbaa.struct !64
  %75 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 29
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %77 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %79 = load <2 x double>, ptr %75, align 8, !tbaa !58
  store <2 x double> %79, ptr %76, align 8, !tbaa !58
  %80 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  %81 = load double, ptr %80, align 8, !tbaa !66
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  store double %81, ptr %82, align 8, !tbaa !66
  %83 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 83
  %84 = load i32, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %84, ptr %85, align 8, !tbaa !67
  %86 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 70
  %87 = load i32, ptr %86, align 8, !tbaa !68
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  store i32 %87, ptr %88, align 8, !tbaa !68
  %89 = load <4 x i32>, ptr %77, align 8, !tbaa !69
  store <4 x i32> %89, ptr %78, align 8, !tbaa !69
  %90 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 36
  %91 = load i32, ptr %90, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  store i32 %91, ptr %92, align 8, !tbaa !70
  %93 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %94 = load i64, ptr %93, align 8, !tbaa !71
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  store i64 %94, ptr %95, align 8, !tbaa !71
  %96 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %98 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 37
  %99 = load i32, ptr %98, align 4, !tbaa !72
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  store i32 %99, ptr %100, align 4, !tbaa !72
  %101 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 40
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %103 = load <2 x i64>, ptr %101, align 8, !tbaa !65
  store <2 x i64> %103, ptr %102, align 8, !tbaa !65
  %104 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 42
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  %106 = load <2 x i64>, ptr %104, align 8, !tbaa !65
  store <2 x i64> %106, ptr %105, align 8, !tbaa !65
  %107 = load <2 x i32>, ptr %96, align 8, !tbaa !69
  store <2 x i32> %107, ptr %97, align 8, !tbaa !69
  %108 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %110 = load <2 x ptr>, ptr %108, align 8, !tbaa !73
  store <2 x ptr> %110, ptr %109, align 8, !tbaa !73
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 44
  %112 = load i64, ptr %111, align 8, !tbaa !74
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 44
  store i64 %112, ptr %113, align 8, !tbaa !74
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %115 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa.struct !75
  %116 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 66
  %117 = load i64, ptr %116, align 8, !tbaa !76
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 66
  store i64 %117, ptr %118, align 8, !tbaa !76
  %119 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 75
  %120 = load ptr, ptr %119, align 8, !tbaa !77
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %16
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %124 = load ptr, ptr %123, align 8, !tbaa !77
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  tail call void @DestroyImageProperties(ptr noundef nonnull %0) #20
  %127 = load ptr, ptr %119, align 8, !tbaa !77
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi ptr [ %127, %126 ], [ %120, %122 ]
  %130 = tail call ptr @CloneSplayTree(ptr noundef %129, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #19
  store ptr %130, ptr %123, align 8, !tbaa !77
  br label %131

131:                                              ; preds = %128, %16
  ret i32 1
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImageProperties(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #19
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #19
  store ptr %13, ptr %9, align 8, !tbaa !77
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DefineImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4095) #19
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi ptr [ %3, %2 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !78
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 61, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !79

11:                                               ; preds = %6, %6
  store i8 0, ptr %4, align 16, !tbaa !78
  %12 = icmp eq i8 %8, 61
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef 4096) #19
  br label %16

16:                                               ; preds = %13, %11
  store i8 0, ptr %7, align 1, !tbaa !78
  %17 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #21
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3705, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #19
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #19
  store ptr %17, ptr %13, align 8, !tbaa !77
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %14, %12 ]
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %296

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = load i8, ptr %1, align 1, !tbaa !78
  switch i8 %25, label %292 [
    i8 66, label %26
    i8 98, label %26
    i8 67, label %43
    i8 99, label %43
    i8 68, label %75
    i8 100, label %75
    i8 71, label %159
    i8 103, label %159
    i8 73, label %179
    i8 105, label %179
    i8 76, label %211
    i8 108, label %211
    i8 80, label %222
    i8 112, label %222
    i8 82, label %251
    i8 114, label %251
    i8 84, label %265
    i8 116, label %265
    i8 85, label %278
    i8 117, label %278
  ]

26:                                               ; preds = %23, %23
  %27 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.77, ptr noundef nonnull %1) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %31 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef nonnull %24) #19
  br label %296

32:                                               ; preds = %26
  %33 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.78, ptr noundef nonnull %1) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call fastcc double @StringToDoubleInterval(ptr noundef nonnull %2) #20
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  store double %36, ptr %37, align 8, !tbaa !81
  br label %296

38:                                               ; preds = %32
  %39 = load ptr, ptr %13, align 8, !tbaa !77
  %40 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %41 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %42 = tail call i32 @AddValueToSplayTree(ptr noundef %39, ptr noundef %40, ptr noundef %41) #19
  br label %296

43:                                               ; preds = %23, %23
  %44 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = tail call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %2) #19
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %296, label %49

49:                                               ; preds = %46
  %50 = trunc i64 %47 to i32
  %51 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef %50) #19
  br label %296

52:                                               ; preds = %43
  %53 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.79, ptr noundef nonnull %1) #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = tail call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %2) #19
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %296, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %56 to i32
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  store i32 %59, ptr %60, align 8, !tbaa !70
  br label %296

61:                                               ; preds = %52
  %62 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.80, ptr noundef nonnull %1) #19
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = tail call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef nonnull %2) #19
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %296, label %67

67:                                               ; preds = %64
  %68 = trunc i64 %65 to i32
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  store i32 %68, ptr %69, align 8, !tbaa !53
  br label %296

70:                                               ; preds = %61
  %71 = load ptr, ptr %13, align 8, !tbaa !77
  %72 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %73 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %74 = tail call i32 @AddValueToSplayTree(ptr noundef %71, ptr noundef %72, ptr noundef %73) #19
  br label %296

75:                                               ; preds = %23, %23
  %76 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.81, ptr noundef nonnull %1) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  %79 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %80 = and i32 %79, 32768
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %84 = load i64, ptr %83, align 8, !tbaa !82
  %85 = load double, ptr %4, align 8, !tbaa !83
  %86 = fadd double %85, 5.000000e-01
  %87 = call double @llvm.floor.f64(double %86)
  %88 = fptoui double %87 to i64
  %89 = icmp ugt i64 %84, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %82
  store i64 %88, ptr %83, align 8, !tbaa !82
  br label %115

91:                                               ; preds = %78
  %92 = and i32 %79, 16384
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %96 = load i64, ptr %95, align 8, !tbaa !82
  %97 = load double, ptr %4, align 8, !tbaa !83
  %98 = fadd double %97, 5.000000e-01
  %99 = call double @llvm.floor.f64(double %98)
  %100 = fptoui double %99 to i64
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %104 = load double, ptr %103, align 8, !tbaa !85
  %105 = fadd double %104, 5.000000e-01
  %106 = call double @llvm.floor.f64(double %105)
  %107 = fptosi double %106 to i64
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  store i64 %107, ptr %108, align 8, !tbaa !86
  br label %115

109:                                              ; preds = %91
  %110 = load double, ptr %4, align 8, !tbaa !83
  %111 = fadd double %110, 5.000000e-01
  %112 = call double @llvm.floor.f64(double %111)
  %113 = fptoui double %112 to i64
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  store i64 %113, ptr %114, align 8, !tbaa !82
  br label %115

115:                                              ; preds = %109, %102, %94, %82, %90
  %116 = and i32 %79, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %120 = load double, ptr %119, align 8, !tbaa !85
  %121 = fadd double %120, 5.000000e-01
  %122 = call double @llvm.floor.f64(double %121)
  %123 = fptosi double %122 to i64
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  store i64 %123, ptr %124, align 8, !tbaa !86
  br label %125

125:                                              ; preds = %118, %115
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %296

126:                                              ; preds = %75
  %127 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.82, ptr noundef nonnull %1) #19
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  %130 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %5) #19
  %131 = load double, ptr %5, align 8, !tbaa !83
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  store double %131, ptr %132, align 8, !tbaa !87
  %133 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %134 = load double, ptr %133, align 8, !tbaa !85
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %136 = and i32 %130, 8
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, double %131, double %134
  store double %138, ptr %135, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %139

139:                                              ; preds = %129, %126
  %140 = call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %1) #19
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %2) #20
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %143, ptr %144, align 8, !tbaa !55
  br label %296

145:                                              ; preds = %139
  %146 = call i32 @LocaleCompare(ptr noundef nonnull @.str.83, ptr noundef nonnull %1) #19
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %2) #19
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %296, label %151

151:                                              ; preds = %148
  %152 = trunc i64 %149 to i32
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  store i32 %152, ptr %153, align 4, !tbaa !72
  br label %296

154:                                              ; preds = %145
  %155 = load ptr, ptr %13, align 8, !tbaa !77
  %156 = call ptr @ConstantString(ptr noundef nonnull %1) #19
  %157 = call ptr @ConstantString(ptr noundef nonnull %2) #19
  %158 = call i32 @AddValueToSplayTree(ptr noundef %155, ptr noundef %156, ptr noundef %157) #19
  br label %296

159:                                              ; preds = %23, %23
  %160 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %1) #19
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = tail call fastcc double @StringToDouble(ptr noundef nonnull %2) #20
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  store double %163, ptr %164, align 8, !tbaa !56
  br label %296

165:                                              ; preds = %159
  %166 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.84, ptr noundef nonnull %1) #19
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %2) #19
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %296, label %171

171:                                              ; preds = %168
  %172 = trunc i64 %169 to i32
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  store i32 %172, ptr %173, align 4, !tbaa !88
  br label %296

174:                                              ; preds = %165
  %175 = load ptr, ptr %13, align 8, !tbaa !77
  %176 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %177 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %178 = tail call i32 @AddValueToSplayTree(ptr noundef %175, ptr noundef %176, ptr noundef %177) #19
  br label %296

179:                                              ; preds = %23, %23
  %180 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.85, ptr noundef nonnull %1) #19
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = tail call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef nonnull %2) #19
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %296, label %185

185:                                              ; preds = %182
  %186 = trunc i64 %183 to i32
  %187 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %186, ptr %187, align 8, !tbaa !67
  br label %296

188:                                              ; preds = %179
  %189 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #19
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = tail call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %2) #19
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %296, label %194

194:                                              ; preds = %191
  %195 = trunc i64 %192 to i32
  %196 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  store i32 %195, ptr %196, align 8, !tbaa !59
  br label %296

197:                                              ; preds = %188
  %198 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.87, ptr noundef nonnull %1) #19
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = tail call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %2) #19
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %296, label %203

203:                                              ; preds = %200
  %204 = trunc i64 %201 to i32
  %205 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  store i32 %204, ptr %205, align 8, !tbaa !68
  br label %296

206:                                              ; preds = %197
  %207 = load ptr, ptr %13, align 8, !tbaa !77
  %208 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %209 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %210 = tail call i32 @AddValueToSplayTree(ptr noundef %207, ptr noundef %208, ptr noundef %209) #19
  br label %296

211:                                              ; preds = %23, %23
  %212 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.88, ptr noundef nonnull %1) #19
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %2) #20
  %216 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  store i64 %215, ptr %216, align 8, !tbaa !89
  br label %296

217:                                              ; preds = %211
  %218 = load ptr, ptr %13, align 8, !tbaa !77
  %219 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %220 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %221 = tail call i32 @AddValueToSplayTree(ptr noundef %218, ptr noundef %219, ptr noundef %220) #19
  br label %296

222:                                              ; preds = %23, %23
  %223 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #19
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = tail call ptr @GetPageGeometry(ptr noundef nonnull %2) #19
  %227 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %228 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %226, ptr noundef nonnull %227) #19
  %229 = tail call ptr @DestroyString(ptr noundef %226) #19
  br label %296

230:                                              ; preds = %222
  %231 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.89, ptr noundef nonnull %1) #19
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = tail call ptr @AcquireImageInfo() #19
  %235 = getelementptr inbounds %struct._ImageInfo, ptr %234, i64 0, i32 51
  %236 = tail call i64 @CopyMagickString(ptr noundef nonnull %235, ptr noundef nonnull %2, i64 noundef 4096) #19
  %237 = tail call i32 @SetImageInfo(ptr noundef %234, i32 noundef 1, ptr noundef nonnull %24) #19
  %238 = tail call ptr @FileToStringInfo(ptr noundef nonnull %235, i64 noundef -1, ptr noundef nonnull %24) #19
  %239 = icmp eq ptr %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct._ImageInfo, ptr %234, i64 0, i32 48
  %242 = tail call i32 @SetImageProfile(ptr noundef nonnull %0, ptr noundef nonnull %241, ptr noundef nonnull %238) #19
  br label %243

243:                                              ; preds = %240, %233
  %244 = phi i32 [ %242, %240 ], [ 1, %233 ]
  %245 = tail call ptr @DestroyImageInfo(ptr noundef %234) #19
  br label %296

246:                                              ; preds = %230
  %247 = load ptr, ptr %13, align 8, !tbaa !77
  %248 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %249 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %250 = tail call i32 @AddValueToSplayTree(ptr noundef %247, ptr noundef %248, ptr noundef %249) #19
  br label %296

251:                                              ; preds = %23, %23
  %252 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.90, ptr noundef nonnull %1) #19
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = tail call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef nonnull %2) #19
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %296, label %257

257:                                              ; preds = %254
  %258 = trunc i64 %255 to i32
  %259 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  store i32 %258, ptr %259, align 8, !tbaa !59
  br label %296

260:                                              ; preds = %251
  %261 = load ptr, ptr %13, align 8, !tbaa !77
  %262 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %263 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %264 = tail call i32 @AddValueToSplayTree(ptr noundef %261, ptr noundef %262, ptr noundef %263) #19
  br label %296

265:                                              ; preds = %23, %23
  %266 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.91, ptr noundef nonnull %1) #19
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = tail call ptr @GetPageGeometry(ptr noundef nonnull %2) #19
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74
  %271 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %269, ptr noundef nonnull %270) #19
  %272 = tail call ptr @DestroyString(ptr noundef %269) #19
  br label %296

273:                                              ; preds = %265
  %274 = load ptr, ptr %13, align 8, !tbaa !77
  %275 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %276 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %277 = tail call i32 @AddValueToSplayTree(ptr noundef %274, ptr noundef %275, ptr noundef %276) #19
  br label %296

278:                                              ; preds = %23, %23
  %279 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %1) #19
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = tail call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef nonnull %2) #19
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %296, label %284

284:                                              ; preds = %281
  %285 = trunc i64 %282 to i32
  %286 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  store i32 %285, ptr %286, align 8, !tbaa !61
  br label %296

287:                                              ; preds = %278
  %288 = load ptr, ptr %13, align 8, !tbaa !77
  %289 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %290 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %291 = tail call i32 @AddValueToSplayTree(ptr noundef %288, ptr noundef %289, ptr noundef %290) #19
  br label %296

292:                                              ; preds = %23
  %293 = tail call ptr @ConstantString(ptr noundef nonnull %1) #19
  %294 = tail call ptr @ConstantString(ptr noundef nonnull %2) #19
  %295 = tail call i32 @AddValueToSplayTree(ptr noundef %19, ptr noundef %293, ptr noundef %294) #19
  br label %296

296:                                              ; preds = %29, %35, %38, %70, %125, %142, %154, %162, %174, %206, %214, %217, %225, %243, %246, %260, %268, %273, %287, %292, %46, %49, %55, %58, %64, %67, %148, %151, %168, %171, %182, %185, %191, %194, %200, %203, %254, %257, %281, %284, %21
  %297 = phi i32 [ %22, %21 ], [ %295, %292 ], [ %291, %287 ], [ 1, %268 ], [ %277, %273 ], [ %264, %260 ], [ 1, %225 ], [ %244, %243 ], [ %250, %246 ], [ 1, %214 ], [ %221, %217 ], [ %210, %206 ], [ 1, %162 ], [ %178, %174 ], [ 1, %125 ], [ 1, %142 ], [ %158, %154 ], [ %74, %70 ], [ 1, %29 ], [ 1, %35 ], [ %42, %38 ], [ %51, %49 ], [ 1, %46 ], [ 1, %55 ], [ 1, %58 ], [ 1, %64 ], [ 1, %67 ], [ 1, %148 ], [ 1, %151 ], [ 1, %168 ], [ 1, %171 ], [ 1, %182 ], [ 1, %185 ], [ 1, %191 ], [ 1, %194 ], [ 1, %200 ], [ 1, %203 ], [ 1, %254 ], [ 1, %257 ], [ 1, %281 ], [ 1, %284 ]
  ret i32 %297
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 278, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #19
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FormatImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i64 @FormatLocaleStringList(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef %2, ptr noundef nonnull %5) #19
  call void @llvm.va_end(ptr nonnull %5)
  %7 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: optsize
declare i64 @FormatLocaleStringList(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2087, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #19
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %1, null
  br i1 %16, label %29, label %18

18:                                               ; preds = %13
  br i1 %17, label %19, label %22

19:                                               ; preds = %18
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %15) #19
  %20 = load ptr, ptr %14, align 8, !tbaa !77
  %21 = tail call ptr @GetNextValueInSplayTree(ptr noundef %20) #19
  br label %126

22:                                               ; preds = %18
  %23 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.3, ptr noundef nonnull %1, i64 noundef 3) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %14, align 8, !tbaa !77
  %27 = tail call ptr @GetValueFromSplayTree(ptr noundef %26, ptr noundef nonnull %1) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %126

29:                                               ; preds = %13
  br i1 %17, label %126, label %30

30:                                               ; preds = %25, %22, %29
  %31 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %126, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %35 = load i8, ptr %1, align 1, !tbaa !78
  switch i8 %35, label %121 [
    i8 56, label %36
    i8 69, label %40
    i8 101, label %40
    i8 70, label %44
    i8 102, label %44
    i8 73, label %58
    i8 105, label %58
    i8 80, label %69
    i8 112, label %69
    i8 88, label %117
    i8 120, label %117
  ]

36:                                               ; preds = %33
  %37 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.4, ptr noundef nonnull %1, i64 noundef 5) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %121

39:                                               ; preds = %36
  tail call fastcc void @Get8BIMProperty(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  br label %121

40:                                               ; preds = %33, %33
  %41 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, i64 noundef 5) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %121

43:                                               ; preds = %40
  tail call fastcc void @GetEXIFProperty(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  br label %121

44:                                               ; preds = %33, %33
  %45 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.3, ptr noundef nonnull %1, i64 noundef 3) #19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %121

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %1, i64 3
  %49 = tail call ptr @AcquireFxInfo(ptr noundef nonnull %0, ptr noundef nonnull %48) #19
  %50 = call i32 @FxEvaluateChannelExpression(ptr noundef %49, i32 noundef 134217719, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %51 = call ptr @DestroyFxInfo(ptr noundef %49) #19
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %121, label %53

53:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %54 = call i32 @GetMagickPrecision() #19
  %55 = load double, ptr %3, align 8, !tbaa !58
  %56 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %54, double noundef %55) #19
  %57 = call i32 @SetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  br label %121

58:                                               ; preds = %33, %33
  %59 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.7, ptr noundef nonnull %1, i64 noundef 4) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.8, ptr noundef nonnull %1, i64 noundef 4) #19
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  tail call fastcc void @GetICCProperty(ptr noundef nonnull %0) #20
  br label %121

65:                                               ; preds = %61
  %66 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.9, ptr noundef nonnull %1, i64 noundef 5) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %65
  tail call fastcc void @GetIPTCProperty(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  br label %121

69:                                               ; preds = %33, %33
  %70 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.10, ptr noundef nonnull %1, i64 noundef 6) #19
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  %73 = getelementptr inbounds i8, ptr %1, i64 6
  %74 = call ptr @AcquireFxInfo(ptr noundef nonnull %0, ptr noundef nonnull %73) #19
  %75 = call i32 @FxEvaluateChannelExpression(ptr noundef %74, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %76 = load double, ptr %3, align 8, !tbaa !58
  %77 = fmul double %76, 6.553500e+04
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %78, ptr %79, align 8, !tbaa !90
  %80 = call i32 @FxEvaluateChannelExpression(ptr noundef %74, i32 noundef 2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %81 = and i32 %80, %75
  %82 = load double, ptr %3, align 8, !tbaa !58
  %83 = fmul double %82, 6.553500e+04
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %84, ptr %85, align 4, !tbaa !93
  %86 = call i32 @FxEvaluateChannelExpression(ptr noundef %74, i32 noundef 4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %87 = and i32 %81, %86
  %88 = load double, ptr %3, align 8, !tbaa !58
  %89 = fmul double %88, 6.553500e+04
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %90, ptr %91, align 8, !tbaa !94
  %92 = call i32 @FxEvaluateChannelExpression(ptr noundef %74, i32 noundef 8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %93 = and i32 %87, %92
  %94 = load double, ptr %3, align 8, !tbaa !58
  %95 = fsub double 1.000000e+00, %94
  %96 = fmul double %95, 6.553500e+04
  %97 = fptrunc double %96 to float
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %97, ptr %98, align 4, !tbaa !95
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !96
  %101 = icmp eq i32 %100, 12
  br i1 %101, label %102, label %109

102:                                              ; preds = %72
  %103 = call i32 @FxEvaluateChannelExpression(ptr noundef %74, i32 noundef 32, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %34) #19
  %104 = and i32 %103, %93
  %105 = load double, ptr %3, align 8, !tbaa !58
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %107, ptr %108, align 8, !tbaa !97
  br label %109

109:                                              ; preds = %102, %72
  %110 = phi i32 [ %104, %102 ], [ %93, %72 ]
  %111 = call ptr @DestroyFxInfo(ptr noundef %74) #19
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #21
  %114 = call i32 @QueryMagickColorname(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %34) #19
  %115 = call i32 @SetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
  br label %116

116:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  br label %121

117:                                              ; preds = %33, %33
  %118 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.11, ptr noundef nonnull %1, i64 noundef 4) #19
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  tail call fastcc void @GetXMPProperty(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  br label %121

121:                                              ; preds = %33, %117, %69, %65, %44, %47, %53, %40, %36, %120, %116, %68, %64, %43, %39
  %122 = load ptr, ptr %14, align 8, !tbaa !77
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call ptr @GetValueFromSplayTree(ptr noundef nonnull %122, ptr noundef nonnull %1) #19
  br label %126

126:                                              ; preds = %121, %29, %30, %25, %124, %19
  %127 = phi ptr [ %21, %19 ], [ %125, %124 ], [ %27, %25 ], [ null, %30 ], [ null, %29 ], [ null, %121 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %127
}

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Get8BIMProperty(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %9 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.92) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %2
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %13 = add i32 %12, -5
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %166, label %15

15:                                               ; preds = %11
  %16 = icmp ult i32 %12, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull @.str.94, i64 noundef 4096) #19
  %19 = icmp eq i32 %12, 3
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8 0, ptr %4, align 16, !tbaa !78
  br label %27

21:                                               ; preds = %15, %17
  %22 = load i8, ptr %4, align 16, !tbaa !78
  %23 = icmp eq i8 %22, 35
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 1
  %26 = call fastcc i64 @StringToLong(ptr noundef nonnull %25) #20
  br label %27

27:                                               ; preds = %20, %24, %21
  %28 = phi i64 [ %26, %24 ], [ 1, %21 ], [ 1, %20 ]
  %29 = call i64 @GetStringInfoLength(ptr noundef nonnull %9) #19
  store i64 %29, ptr %8, align 8, !tbaa !65
  %30 = call ptr @GetStringInfoDatum(ptr noundef nonnull %9) #19
  store ptr %30, ptr %5, align 8, !tbaa !73
  %31 = icmp eq i64 %29, 0
  br i1 %31, label %166, label %32

32:                                               ; preds = %27
  %33 = call fastcc i64 @MagickMax(i64 noundef %28) #20
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %36

36:                                               ; preds = %32, %111
  %37 = phi i64 [ %33, %32 ], [ %113, %111 ]
  %38 = phi ptr [ null, %32 ], [ %112, %111 ]
  %39 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %40 = icmp eq i32 %39, 56
  br i1 %40, label %41, label %111

41:                                               ; preds = %36
  %42 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %46 = icmp eq i32 %45, 73
  br i1 %46, label %47, label %111

47:                                               ; preds = %44
  %48 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %49 = icmp eq i32 %48, 77
  br i1 %49, label %50, label %111

50:                                               ; preds = %47
  %51 = call fastcc zeroext i16 @ReadPropertyMSBShort(ptr noundef nonnull %5, ptr noundef nonnull %8) #20
  %52 = zext i16 %51 to i64
  %53 = load i64, ptr %6, align 8, !tbaa !65
  %54 = icmp sgt i64 %53, %52
  %55 = load i64, ptr %7, align 8
  %56 = icmp slt i64 %55, %52
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %111, label %58

58:                                               ; preds = %50
  %59 = icmp eq ptr %38, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = call ptr @DestroyString(ptr noundef nonnull %38) #19
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %61, %60 ], [ null, %58 ]
  %64 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %65 = sext i32 %64 to i64
  %66 = icmp eq i32 %64, 0
  %67 = load i64, ptr %8, align 8
  %68 = icmp ult i64 %67, %65
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %62
  %71 = icmp ult i32 %64, -4095
  br i1 %71, label %72, label %87

72:                                               ; preds = %70
  %73 = add nsw i64 %65, 4096
  %74 = call ptr @AcquireQuantumMemory(i64 noundef %73, i64 noundef 1) #23
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = icmp eq i32 %64, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %83, %78 ], [ 0, %76 ]
  %80 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %74, i64 %79
  store i8 %81, ptr %82, align 1, !tbaa !78
  %83 = add nuw nsw i64 %79, 1
  %84 = icmp eq i64 %83, %65
  br i1 %84, label %85, label %78, !llvm.loop !100

85:                                               ; preds = %78, %76
  %86 = getelementptr inbounds i8, ptr %74, i64 %65
  store i8 0, ptr %86, align 1, !tbaa !78
  br label %87

87:                                               ; preds = %70, %72, %85, %62
  %88 = phi ptr [ %74, %85 ], [ null, %72 ], [ %63, %62 ], [ null, %70 ]
  %89 = and i64 %65, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !99
  br label %93

93:                                               ; preds = %91, %87
  %94 = call fastcc i64 @ReadPropertyMSBLong(ptr noundef nonnull %5, ptr noundef nonnull %8) #20, !range !101
  %95 = shl i64 %94, 32
  %96 = ashr exact i64 %95, 32
  %97 = load i8, ptr %4, align 16
  switch i8 %97, label %98 [
    i8 35, label %116
    i8 0, label %116
  ]

98:                                               ; preds = %93
  %99 = icmp eq ptr %88, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %98
  %101 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef nonnull %88) #19
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8, ptr %4, align 16, !tbaa !78
  br label %116

105:                                              ; preds = %100, %98
  %106 = load ptr, ptr %5, align 8, !tbaa !73
  %107 = getelementptr inbounds i8, ptr %106, i64 %96
  store ptr %107, ptr %5, align 8, !tbaa !73
  %108 = load i64, ptr %8, align 8, !tbaa !65
  %109 = call fastcc i64 @MagickMin(i64 noundef %96, i64 noundef %108) #20, !range !102
  %110 = sub i64 %108, %109
  store i64 %110, ptr %8, align 8, !tbaa !65
  br label %111

111:                                              ; preds = %130, %128, %105, %121, %36, %41, %44, %47, %50
  %112 = phi ptr [ %38, %36 ], [ %38, %41 ], [ %38, %44 ], [ %38, %47 ], [ %38, %50 ], [ %88, %105 ], [ %88, %121 ], [ %88, %128 ], [ %88, %130 ]
  %113 = phi i64 [ %37, %36 ], [ %37, %41 ], [ %37, %44 ], [ %37, %47 ], [ %37, %50 ], [ %37, %105 ], [ %122, %121 ], [ %37, %128 ], [ %37, %130 ]
  %114 = load i64, ptr %8, align 8, !tbaa !65
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %161, label %36, !llvm.loop !103

116:                                              ; preds = %103, %93, %93
  %117 = phi i8 [ %104, %103 ], [ %97, %93 ], [ %97, %93 ]
  %118 = icmp eq i8 %117, 35
  %119 = icmp ne i64 %37, 1
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = add nsw i64 %37, -1
  %123 = load ptr, ptr %5, align 8, !tbaa !73
  %124 = getelementptr inbounds i8, ptr %123, i64 %96
  store ptr %124, ptr %5, align 8, !tbaa !73
  %125 = load i64, ptr %8, align 8, !tbaa !65
  %126 = call fastcc i64 @MagickMin(i64 noundef %96, i64 noundef %125) #20, !range !102
  %127 = sub i64 %125, %126
  store i64 %127, ptr %8, align 8, !tbaa !65
  br label %111

128:                                              ; preds = %116
  %129 = icmp ult i64 %96, -4095
  br i1 %129, label %130, label %111

130:                                              ; preds = %128
  %131 = add nsw i64 %96, 4096
  %132 = call ptr @AcquireQuantumMemory(i64 noundef %131, i64 noundef 1) #23
  %133 = icmp eq ptr %132, null
  br i1 %133, label %111, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %5, align 8, !tbaa !73
  %136 = call ptr @CopyMagickMemory(ptr noundef nonnull %132, ptr noundef %135, i64 noundef %96) #19
  %137 = getelementptr inbounds i8, ptr %132, i64 %96
  store i8 0, ptr %137, align 1, !tbaa !78
  %138 = getelementptr inbounds i8, ptr %135, i64 %96
  store ptr %138, ptr %5, align 8, !tbaa !73
  %139 = load i64, ptr %8, align 8, !tbaa !65
  %140 = call fastcc i64 @MagickMin(i64 noundef %96, i64 noundef %139) #20, !range !102
  %141 = sub i64 %139, %140
  store i64 %141, ptr %8, align 8, !tbaa !65
  %142 = add i16 %51, -2999
  %143 = icmp ult i16 %142, -999
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %132) #20
  br label %159

146:                                              ; preds = %134
  %147 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.95) #19
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i64, ptr %35, align 8, !tbaa !104
  %151 = load i64, ptr %34, align 8, !tbaa !105
  %152 = call fastcc ptr @TraceSVGClippath(ptr noundef nonnull %132, i64 noundef %96, i64 noundef %151, i64 noundef %150) #20
  br label %155

153:                                              ; preds = %146
  %154 = call fastcc ptr @TracePSClippath(ptr noundef nonnull %132, i64 noundef %96) #20
  br label %155

155:                                              ; preds = %153, %149
  %156 = phi ptr [ %152, %149 ], [ %154, %153 ]
  %157 = call i32 @SetImageProperty(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %156) #20
  %158 = call ptr @DestroyString(ptr noundef %156) #19
  br label %159

159:                                              ; preds = %144, %155
  %160 = call ptr @DestroyString(ptr noundef nonnull %132) #19
  br label %161

161:                                              ; preds = %111, %159
  %162 = phi ptr [ %88, %159 ], [ %112, %111 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = call ptr @DestroyString(ptr noundef nonnull %162) #19
  br label %166

166:                                              ; preds = %27, %161, %164, %11, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetEXIFProperty(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = alloca ptr, align 8
  %4 = alloca [16 x %struct._DirectoryInfo], align 16
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %8 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.398) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %536, label %10

10:                                               ; preds = %2
  %11 = load i8, ptr %1, align 1, !tbaa !78
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %536, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @__ctype_b_loc() #24
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %24, %16 ], [ %1, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !78
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %15, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !107
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br i1 %23, label %25, label %16, !llvm.loop !108

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %17, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !78
  switch i8 %27, label %28 [
    i8 42, label %77
    i8 33, label %31
    i8 35, label %32
    i8 64, label %32
  ]

28:                                               ; preds = %25
  %29 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.133, ptr noundef nonnull %17) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %73, label %62

31:                                               ; preds = %25
  br label %77

32:                                               ; preds = %25, %25
  %33 = getelementptr inbounds i8, ptr %17, i64 6
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #22
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %536

36:                                               ; preds = %32
  %37 = icmp eq i8 %27, 64
  %38 = zext i1 %37 to i64
  %39 = load i8, ptr %33, align 1, !tbaa !78
  br label %40

40:                                               ; preds = %36, %55
  %41 = phi i8 [ %60, %55 ], [ %39, %36 ]
  %42 = phi i64 [ %59, %55 ], [ %38, %36 ]
  %43 = phi ptr [ %44, %55 ], [ %33, %36 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  %45 = sext i8 %41 to i64
  %46 = shl i64 %42, 4
  %47 = add i8 %41, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = add i8 %41, -65
  %51 = icmp ult i8 %50, 6
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = add i8 %41, -97
  %54 = icmp ult i8 %53, 6
  br i1 %54, label %55, label %536

55:                                               ; preds = %52, %49, %40
  %56 = phi i64 [ 4294967248, %40 ], [ 4294967241, %49 ], [ 4294967209, %52 ]
  %57 = add nsw i64 %56, %45
  %58 = and i64 %57, 4294967295
  %59 = or i64 %46, %58
  %60 = load i8, ptr %44, align 1, !tbaa !78
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %73, label %40, !llvm.loop !109

62:                                               ; preds = %28, %68
  %63 = phi i64 [ %64, %68 ], [ 0, %28 ]
  %64 = add nuw nsw i64 %63, 1
  %65 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %64
  %66 = load i64, ptr %65, align 16, !tbaa !110
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %536, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %64, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !112
  %71 = tail call i32 @LocaleCompare(ptr noundef %70, ptr noundef nonnull %17) #19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %62

73:                                               ; preds = %55, %68, %28
  %74 = phi i64 [ 1, %28 ], [ %66, %68 ], [ %59, %55 ]
  %75 = phi ptr [ %17, %28 ], [ %17, %68 ], [ %44, %55 ]
  %76 = icmp eq i64 %74, -1
  br i1 %76, label %536, label %77

77:                                               ; preds = %25, %31, %73
  %78 = phi ptr [ %75, %73 ], [ %17, %31 ], [ %17, %25 ]
  %79 = phi i64 [ %74, %73 ], [ 0, %31 ], [ 0, %25 ]
  %80 = phi i64 [ 0, %73 ], [ 2, %31 ], [ 1, %25 ]
  %81 = phi i1 [ false, %73 ], [ true, %31 ], [ true, %25 ]
  %82 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %8) #19
  store i64 %82, ptr %5, align 8, !tbaa !65
  %83 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %8) #19
  store ptr %83, ptr %3, align 8, !tbaa !73
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %536, label %88

85:                                               ; preds = %88, %91, %94, %97, %100
  %86 = load i64, ptr %5, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %536, label %109

88:                                               ; preds = %77, %109
  %89 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %90 = icmp eq i32 %89, 69
  br i1 %90, label %91, label %85, !llvm.loop !113

91:                                               ; preds = %88
  %92 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %93 = icmp eq i32 %92, 120
  br i1 %93, label %94, label %85, !llvm.loop !113

94:                                               ; preds = %91
  %95 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %96 = icmp eq i32 %95, 105
  br i1 %96, label %97, label %85, !llvm.loop !113

97:                                               ; preds = %94
  %98 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %99 = icmp eq i32 %98, 102
  br i1 %99, label %100, label %85, !llvm.loop !113

100:                                              ; preds = %97
  %101 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %85, !llvm.loop !113

103:                                              ; preds = %100
  %104 = call fastcc i32 @ReadPropertyByte(ptr noundef nonnull %3, ptr noundef nonnull %5) #20, !range !99
  %105 = icmp ne i32 %104, 0
  %106 = load i64, ptr %5, align 8
  %107 = icmp ne i64 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %85
  br label %88, !llvm.loop !113

110:                                              ; preds = %103
  %111 = icmp ult i64 %106, 16
  br i1 %111, label %536, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %3, align 8, !tbaa !73
  %114 = tail call fastcc zeroext i16 @ReadPropertyShort(i32 noundef 1, ptr noundef %113) #20
  switch i16 %114, label %536 [
    i16 18761, label %116
    i16 19789, label %115
  ]

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %112, %115
  %117 = phi i32 [ 2, %115 ], [ 1, %112 ]
  %118 = getelementptr inbounds i8, ptr %113, i64 2
  %119 = tail call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef nonnull %118) #20
  %120 = icmp eq i16 %119, 42
  br i1 %120, label %121, label %536

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, ptr %113, i64 4
  %123 = tail call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %122) #20, !range !114
  %124 = shl nuw i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = icmp sgt i64 %125, -1
  %127 = icmp ult i64 %125, %106
  %128 = and i1 %126, %127
  br i1 %128, label %129, label %536

129:                                              ; preds = %121
  %130 = getelementptr inbounds i8, ptr %113, i64 %125
  %131 = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #19
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  br label %133

133:                                              ; preds = %529, %129
  %134 = phi i64 [ 0, %129 ], [ %530, %529 ]
  %135 = phi i64 [ 0, %129 ], [ %150, %529 ]
  %136 = phi i64 [ 0, %129 ], [ %531, %529 ]
  %137 = phi i32 [ 0, %129 ], [ %532, %529 ]
  %138 = phi ptr [ %130, %129 ], [ %152, %529 ]
  %139 = icmp eq i64 %134, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %133
  %141 = add nsw i64 %134, -1
  %142 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !115
  %144 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %141, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !117
  %146 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %141, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !118
  br label %148

148:                                              ; preds = %140, %133
  %149 = phi i64 [ %141, %140 ], [ 0, %133 ]
  %150 = phi i64 [ %147, %140 ], [ %135, %133 ]
  %151 = phi i64 [ %145, %140 ], [ %136, %133 ]
  %152 = phi ptr [ %143, %140 ], [ %138, %133 ]
  %153 = call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef %152) #20
  %154 = zext i16 %153 to i64
  %155 = icmp ult i64 %151, %154
  br i1 %155, label %156, label %529

156:                                              ; preds = %148
  %157 = getelementptr inbounds i8, ptr %152, i64 2
  %158 = mul nuw nsw i64 %154, 12
  %159 = getelementptr inbounds i8, ptr %157, i64 %158
  %160 = icmp eq i64 %149, 2
  br label %161

161:                                              ; preds = %156, %525
  %162 = phi i32 [ %137, %156 ], [ %526, %525 ]
  %163 = phi i64 [ %151, %156 ], [ %527, %525 ]
  %164 = mul nuw nsw i64 %163, 12
  %165 = getelementptr inbounds i8, ptr %152, i64 %164
  %166 = getelementptr inbounds i8, ptr %165, i64 2
  %167 = call ptr @GetValueFromSplayTree(ptr noundef %131, ptr noundef nonnull %166) #19
  %168 = icmp eq ptr %167, %166
  br i1 %168, label %529, label %169

169:                                              ; preds = %161
  %170 = call i32 @AddValueToSplayTree(ptr noundef %131, ptr noundef nonnull %166, ptr noundef nonnull %166) #19
  %171 = call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef nonnull %166) #20
  %172 = zext i16 %171 to i64
  %173 = add nsw i64 %150, %172
  %174 = getelementptr inbounds i8, ptr %165, i64 4
  %175 = call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef nonnull %174) #20
  %176 = icmp ugt i16 %175, 12
  br i1 %176, label %529, label %177

177:                                              ; preds = %169
  %178 = zext nneg i16 %175 to i64
  %179 = getelementptr inbounds i8, ptr %165, i64 6
  %180 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %179) #20, !range !114
  %181 = shl nuw i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = getelementptr inbounds [13 x i32], ptr @GetEXIFProperty.tag_bytes, i64 0, i64 %178
  %184 = load i32, ptr %183, align 4, !tbaa !69
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %182, %185
  %187 = icmp slt i64 %186, %182
  br i1 %187, label %529, label %188

188:                                              ; preds = %177
  %189 = icmp slt i64 %186, 5
  %190 = getelementptr inbounds i8, ptr %165, i64 10
  br i1 %189, label %200, label %191

191:                                              ; preds = %188
  %192 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %190) #20, !range !114
  %193 = shl nuw i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = add nsw i64 %194, %186
  %196 = load i64, ptr %5, align 8, !tbaa !65
  %197 = icmp ugt i64 %195, %196
  %198 = load ptr, ptr %3, align 8
  %199 = getelementptr inbounds i8, ptr %198, i64 %194
  br i1 %197, label %525, label %200

200:                                              ; preds = %188, %191
  %201 = phi ptr [ %199, %191 ], [ %190, %188 ]
  %202 = icmp eq i64 %79, %173
  %203 = select i1 %81, i1 true, i1 %202
  br i1 %203, label %204, label %484

204:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #21
  store i8 0, ptr %6, align 16, !tbaa !78
  switch i16 %175, label %396 [
    i16 1, label %223
    i16 7, label %223
    i16 6, label %221
    i16 8, label %219
    i16 3, label %217
    i16 4, label %215
    i16 9, label %213
    i16 5, label %211
    i16 10, label %209
    i16 11, label %207
    i16 12, label %205
  ]

205:                                              ; preds = %204
  %206 = icmp sgt i64 %182, 0
  br i1 %206, label %381, label %428

207:                                              ; preds = %204
  %208 = icmp sgt i64 %182, 0
  br i1 %208, label %365, label %428

209:                                              ; preds = %204
  %210 = icmp sgt i64 %182, 0
  br i1 %210, label %344, label %428

211:                                              ; preds = %204
  %212 = icmp sgt i64 %182, 0
  br i1 %212, label %323, label %428

213:                                              ; preds = %204
  %214 = icmp sgt i64 %182, 0
  br i1 %214, label %306, label %428

215:                                              ; preds = %204
  %216 = icmp sgt i64 %182, 0
  br i1 %216, label %289, label %428

217:                                              ; preds = %204
  %218 = icmp sgt i64 %182, 0
  br i1 %218, label %273, label %428

219:                                              ; preds = %204
  %220 = icmp sgt i64 %182, 0
  br i1 %220, label %257, label %428

221:                                              ; preds = %204
  %222 = icmp sgt i64 %182, 0
  br i1 %222, label %241, label %428

223:                                              ; preds = %204, %204
  %224 = icmp sgt i64 %182, 0
  br i1 %224, label %225, label %428

225:                                              ; preds = %223, %225
  %226 = phi ptr [ %236, %225 ], [ %201, %223 ]
  %227 = phi i64 [ %235, %225 ], [ 0, %223 ]
  %228 = phi i64 [ %237, %225 ], [ 0, %223 ]
  %229 = getelementptr inbounds i8, ptr %6, i64 %227
  %230 = sub nuw nsw i64 4096, %227
  %231 = load i8, ptr %226, align 1, !tbaa !78
  %232 = uitofp i8 %231 to double
  %233 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %229, i64 noundef %230, ptr noundef nonnull @.str.399, double noundef %232) #19
  %234 = add i64 %233, %227
  %235 = call i64 @llvm.umin.i64(i64 %234, i64 4095)
  %236 = getelementptr inbounds i8, ptr %226, i64 1
  %237 = add nuw nsw i64 %228, 1
  %238 = icmp eq i64 %237, %182
  br i1 %238, label %239, label %225, !llvm.loop !119

239:                                              ; preds = %225
  %240 = icmp ugt i64 %234, 1
  br i1 %240, label %424, label %428

241:                                              ; preds = %221, %241
  %242 = phi ptr [ %252, %241 ], [ %201, %221 ]
  %243 = phi i64 [ %251, %241 ], [ 0, %221 ]
  %244 = phi i64 [ %253, %241 ], [ 0, %221 ]
  %245 = getelementptr inbounds i8, ptr %6, i64 %243
  %246 = sub nuw nsw i64 4096, %243
  %247 = load i8, ptr %242, align 1, !tbaa !78
  %248 = sitofp i8 %247 to double
  %249 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %245, i64 noundef %246, ptr noundef nonnull @.str.399, double noundef %248) #19
  %250 = add i64 %249, %243
  %251 = call i64 @llvm.umin.i64(i64 %250, i64 4095)
  %252 = getelementptr inbounds i8, ptr %242, i64 1
  %253 = add nuw nsw i64 %244, 1
  %254 = icmp eq i64 %253, %182
  br i1 %254, label %255, label %241, !llvm.loop !120

255:                                              ; preds = %241
  %256 = icmp ugt i64 %250, 1
  br i1 %256, label %424, label %428

257:                                              ; preds = %219, %257
  %258 = phi ptr [ %268, %257 ], [ %201, %219 ]
  %259 = phi i64 [ %267, %257 ], [ 0, %219 ]
  %260 = phi i64 [ %269, %257 ], [ 0, %219 ]
  %261 = getelementptr inbounds i8, ptr %6, i64 %259
  %262 = sub nuw nsw i64 4096, %259
  %263 = call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef %258) #20
  %264 = zext i16 %263 to i32
  %265 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %261, i64 noundef %262, ptr noundef nonnull @.str.400, i32 noundef %264) #19
  %266 = add i64 %265, %259
  %267 = call i64 @llvm.umin.i64(i64 %266, i64 4095)
  %268 = getelementptr inbounds i8, ptr %258, i64 2
  %269 = add nuw nsw i64 %260, 1
  %270 = icmp eq i64 %269, %182
  br i1 %270, label %271, label %257, !llvm.loop !121

271:                                              ; preds = %257
  %272 = icmp ugt i64 %266, 1
  br i1 %272, label %424, label %428

273:                                              ; preds = %217, %273
  %274 = phi ptr [ %284, %273 ], [ %201, %217 ]
  %275 = phi i64 [ %283, %273 ], [ 0, %217 ]
  %276 = phi i64 [ %285, %273 ], [ 0, %217 ]
  %277 = getelementptr inbounds i8, ptr %6, i64 %275
  %278 = sub nuw nsw i64 4096, %275
  %279 = call fastcc zeroext i16 @ReadPropertyShort(i32 noundef %117, ptr noundef %274) #20
  %280 = zext i16 %279 to i32
  %281 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %277, i64 noundef %278, ptr noundef nonnull @.str.401, i32 noundef %280) #19
  %282 = add i64 %281, %275
  %283 = call i64 @llvm.umin.i64(i64 %282, i64 4095)
  %284 = getelementptr inbounds i8, ptr %274, i64 2
  %285 = add nuw nsw i64 %276, 1
  %286 = icmp eq i64 %285, %182
  br i1 %286, label %287, label %273, !llvm.loop !122

287:                                              ; preds = %273
  %288 = icmp ugt i64 %282, 1
  br i1 %288, label %424, label %428

289:                                              ; preds = %215, %289
  %290 = phi ptr [ %301, %289 ], [ %201, %215 ]
  %291 = phi i64 [ %300, %289 ], [ 0, %215 ]
  %292 = phi i64 [ %302, %289 ], [ 0, %215 ]
  %293 = getelementptr inbounds i8, ptr %6, i64 %291
  %294 = sub nuw nsw i64 4096, %291
  %295 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef %290) #20, !range !114
  %296 = trunc i64 %295 to i32
  %297 = sitofp i32 %296 to double
  %298 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %293, i64 noundef %294, ptr noundef nonnull @.str.399, double noundef %297) #19
  %299 = add i64 %298, %291
  %300 = call i64 @llvm.umin.i64(i64 %299, i64 4095)
  %301 = getelementptr inbounds i8, ptr %290, i64 4
  %302 = add nuw nsw i64 %292, 1
  %303 = icmp eq i64 %302, %182
  br i1 %303, label %304, label %289, !llvm.loop !123

304:                                              ; preds = %289
  %305 = icmp ugt i64 %299, 1
  br i1 %305, label %424, label %428

306:                                              ; preds = %213, %306
  %307 = phi ptr [ %318, %306 ], [ %201, %213 ]
  %308 = phi i64 [ %317, %306 ], [ 0, %213 ]
  %309 = phi i64 [ %319, %306 ], [ 0, %213 ]
  %310 = getelementptr inbounds i8, ptr %6, i64 %308
  %311 = sub nuw nsw i64 4096, %308
  %312 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef %307) #20, !range !114
  %313 = trunc i64 %312 to i32
  %314 = sitofp i32 %313 to double
  %315 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %310, i64 noundef %311, ptr noundef nonnull @.str.399, double noundef %314) #19
  %316 = add i64 %315, %308
  %317 = call i64 @llvm.umin.i64(i64 %316, i64 4095)
  %318 = getelementptr inbounds i8, ptr %307, i64 4
  %319 = add nuw nsw i64 %309, 1
  %320 = icmp eq i64 %319, %182
  br i1 %320, label %321, label %306, !llvm.loop !124

321:                                              ; preds = %306
  %322 = icmp ugt i64 %316, 1
  br i1 %322, label %424, label %428

323:                                              ; preds = %211, %323
  %324 = phi ptr [ %339, %323 ], [ %201, %211 ]
  %325 = phi i64 [ %338, %323 ], [ 0, %211 ]
  %326 = phi i64 [ %340, %323 ], [ 0, %211 ]
  %327 = getelementptr inbounds i8, ptr %6, i64 %325
  %328 = sub nuw nsw i64 4096, %325
  %329 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef %324) #20, !range !114
  %330 = trunc i64 %329 to i32
  %331 = sitofp i32 %330 to double
  %332 = getelementptr inbounds i8, ptr %324, i64 4
  %333 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %332) #20, !range !114
  %334 = trunc i64 %333 to i32
  %335 = sitofp i32 %334 to double
  %336 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %327, i64 noundef %328, ptr noundef nonnull @.str.402, double noundef %331, double noundef %335) #19
  %337 = add i64 %336, %325
  %338 = call i64 @llvm.umin.i64(i64 %337, i64 4095)
  %339 = getelementptr inbounds i8, ptr %324, i64 8
  %340 = add nuw nsw i64 %326, 1
  %341 = icmp eq i64 %340, %182
  br i1 %341, label %342, label %323, !llvm.loop !125

342:                                              ; preds = %323
  %343 = icmp ugt i64 %337, 1
  br i1 %343, label %424, label %428

344:                                              ; preds = %209, %344
  %345 = phi ptr [ %360, %344 ], [ %201, %209 ]
  %346 = phi i64 [ %359, %344 ], [ 0, %209 ]
  %347 = phi i64 [ %361, %344 ], [ 0, %209 ]
  %348 = getelementptr inbounds i8, ptr %6, i64 %346
  %349 = sub nuw nsw i64 4096, %346
  %350 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef %345) #20, !range !114
  %351 = trunc i64 %350 to i32
  %352 = sitofp i32 %351 to double
  %353 = getelementptr inbounds i8, ptr %345, i64 4
  %354 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %353) #20, !range !114
  %355 = trunc i64 %354 to i32
  %356 = sitofp i32 %355 to double
  %357 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %348, i64 noundef %349, ptr noundef nonnull @.str.402, double noundef %352, double noundef %356) #19
  %358 = add i64 %357, %346
  %359 = call i64 @llvm.umin.i64(i64 %358, i64 4095)
  %360 = getelementptr inbounds i8, ptr %345, i64 8
  %361 = add nuw nsw i64 %347, 1
  %362 = icmp eq i64 %361, %182
  br i1 %362, label %363, label %344, !llvm.loop !126

363:                                              ; preds = %344
  %364 = icmp ugt i64 %358, 1
  br i1 %364, label %424, label %428

365:                                              ; preds = %207, %365
  %366 = phi ptr [ %376, %365 ], [ %201, %207 ]
  %367 = phi i64 [ %375, %365 ], [ 0, %207 ]
  %368 = phi i64 [ %377, %365 ], [ 0, %207 ]
  %369 = getelementptr inbounds i8, ptr %6, i64 %367
  %370 = sub nuw nsw i64 4096, %367
  %371 = load float, ptr %366, align 4, !tbaa !127
  %372 = fpext float %371 to double
  %373 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %369, i64 noundef %370, ptr noundef nonnull @.str.403, double noundef %372) #19
  %374 = add i64 %373, %367
  %375 = call i64 @llvm.umin.i64(i64 %374, i64 4095)
  %376 = getelementptr inbounds i8, ptr %366, i64 4
  %377 = add nuw nsw i64 %368, 1
  %378 = icmp eq i64 %377, %182
  br i1 %378, label %379, label %365, !llvm.loop !128

379:                                              ; preds = %365
  %380 = icmp ugt i64 %374, 1
  br i1 %380, label %424, label %428

381:                                              ; preds = %205, %381
  %382 = phi ptr [ %391, %381 ], [ %201, %205 ]
  %383 = phi i64 [ %390, %381 ], [ 0, %205 ]
  %384 = phi i64 [ %392, %381 ], [ 0, %205 ]
  %385 = getelementptr inbounds i8, ptr %6, i64 %383
  %386 = sub nuw nsw i64 4096, %383
  %387 = load double, ptr %382, align 8, !tbaa !58
  %388 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %385, i64 noundef %386, ptr noundef nonnull @.str.403, double noundef %387) #19
  %389 = add i64 %388, %383
  %390 = call i64 @llvm.umin.i64(i64 %389, i64 4095)
  %391 = getelementptr inbounds i8, ptr %382, i64 8
  %392 = add nuw nsw i64 %384, 1
  %393 = icmp eq i64 %392, %182
  br i1 %393, label %394, label %381, !llvm.loop !129

394:                                              ; preds = %381
  %395 = icmp ugt i64 %389, 1
  br i1 %395, label %424, label %428

396:                                              ; preds = %204
  %397 = icmp eq i64 %186, -1
  br i1 %397, label %482, label %398

398:                                              ; preds = %396
  %399 = add nsw i64 %186, 1
  %400 = call ptr @AcquireQuantumMemory(i64 noundef %399, i64 noundef 1) #23
  %401 = icmp eq ptr %400, null
  br i1 %401, label %482, label %402

402:                                              ; preds = %398
  %403 = icmp sgt i64 %186, 0
  br i1 %403, label %404, label %421

404:                                              ; preds = %402, %418
  %405 = phi i64 [ %419, %418 ], [ 0, %402 ]
  %406 = getelementptr inbounds i8, ptr %400, i64 %405
  store i8 46, ptr %406, align 1, !tbaa !78
  %407 = load ptr, ptr %14, align 8, !tbaa !73
  %408 = getelementptr inbounds i8, ptr %201, i64 %405
  %409 = load i8, ptr %408, align 1, !tbaa !78
  %410 = zext i8 %409 to i64
  %411 = getelementptr inbounds i16, ptr %407, i64 %410
  %412 = load i16, ptr %411, align 2, !tbaa !107
  %413 = and i16 %412, 16384
  %414 = icmp ne i16 %413, 0
  %415 = icmp eq i8 %409, 0
  %416 = or i1 %415, %414
  br i1 %416, label %417, label %418

417:                                              ; preds = %404
  store i8 %409, ptr %406, align 1, !tbaa !78
  br label %418

418:                                              ; preds = %404, %417
  %419 = add nuw nsw i64 %405, 1
  %420 = icmp eq i64 %419, %186
  br i1 %420, label %421, label %404, !llvm.loop !130

421:                                              ; preds = %418, %402
  %422 = phi i64 [ 0, %402 ], [ %186, %418 ]
  %423 = getelementptr inbounds i8, ptr %400, i64 %422
  store i8 0, ptr %423, align 1, !tbaa !78
  br label %431

424:                                              ; preds = %394, %379, %363, %342, %321, %304, %287, %271, %255, %239
  %425 = phi i64 [ %235, %239 ], [ %251, %255 ], [ %267, %271 ], [ %283, %287 ], [ %300, %304 ], [ %317, %321 ], [ %338, %342 ], [ %359, %363 ], [ %375, %379 ], [ %390, %394 ]
  %426 = add nsw i64 %425, -2
  %427 = getelementptr inbounds [4096 x i8], ptr %6, i64 0, i64 %426
  store i8 0, ptr %427, align 1, !tbaa !78
  br label %428

428:                                              ; preds = %424, %394, %205, %379, %207, %363, %209, %342, %211, %321, %213, %304, %215, %287, %217, %271, %219, %255, %221, %239, %223
  %429 = call ptr @AcquireString(ptr noundef nonnull %6) #19
  %430 = icmp eq ptr %429, null
  br i1 %430, label %482, label %431

431:                                              ; preds = %421, %428
  %432 = phi ptr [ %400, %421 ], [ %429, %428 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %433 = call ptr @AcquireString(ptr noundef %78) #19
  store ptr %433, ptr %7, align 8, !tbaa !73
  br i1 %160, label %434, label %436

434:                                              ; preds = %431
  %435 = call i32 @SubstituteString(ptr noundef nonnull %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.404) #19
  br label %436

436:                                              ; preds = %434, %431
  switch i64 %80, label %466 [
    i64 1, label %437
    i64 2, label %453
  ]

437:                                              ; preds = %436, %444
  %438 = phi i64 [ %447, %444 ], [ %80, %436 ]
  %439 = phi i64 [ %445, %444 ], [ 0, %436 ]
  %440 = icmp eq i64 %438, %173
  br i1 %440, label %441, label %444

441:                                              ; preds = %437
  %442 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %439, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !112
  br label %449

444:                                              ; preds = %437
  %445 = add nuw nsw i64 %439, 1
  %446 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %445
  %447 = load i64, ptr %446, align 16, !tbaa !110
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %437

449:                                              ; preds = %444, %441
  %450 = phi ptr [ %443, %441 ], [ @.str.405, %444 ]
  %451 = load ptr, ptr %7, align 8, !tbaa !73
  %452 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %451, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %450) #19
  br label %466

453:                                              ; preds = %436
  %454 = icmp slt i64 %173, 65536
  br i1 %454, label %455, label %458

455:                                              ; preds = %453
  %456 = load ptr, ptr %7, align 8, !tbaa !73
  %457 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %456, i64 noundef 4096, ptr noundef nonnull @.str.406, i64 noundef %173) #19
  br label %466

458:                                              ; preds = %453
  %459 = icmp ult i64 %173, 131072
  %460 = load ptr, ptr %7, align 8, !tbaa !73
  br i1 %459, label %461, label %464

461:                                              ; preds = %458
  %462 = and i64 %173, 65535
  %463 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %460, i64 noundef 4096, ptr noundef nonnull @.str.407, i64 noundef %462) #19
  br label %466

464:                                              ; preds = %458
  %465 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %460, i64 noundef 4096, ptr noundef nonnull @.str.405) #19
  br label %466

466:                                              ; preds = %455, %464, %461, %436, %449
  %467 = load ptr, ptr %132, align 8, !tbaa !77
  %468 = icmp eq ptr %467, null
  %469 = load ptr, ptr %7, align 8, !tbaa !73
  br i1 %468, label %475, label %470

470:                                              ; preds = %466
  %471 = call ptr @GetValueFromSplayTree(ptr noundef nonnull %467, ptr noundef %469) #19
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %478

473:                                              ; preds = %470
  %474 = load ptr, ptr %7, align 8, !tbaa !73
  br label %475

475:                                              ; preds = %473, %466
  %476 = phi ptr [ %474, %473 ], [ %469, %466 ]
  %477 = call i32 @SetImageProperty(ptr noundef nonnull %0, ptr noundef %476, ptr noundef nonnull %432) #20
  br label %478

478:                                              ; preds = %475, %470
  %479 = call ptr @DestroyString(ptr noundef nonnull %432) #19
  %480 = load ptr, ptr %7, align 8, !tbaa !73
  %481 = call ptr @DestroyString(ptr noundef %480) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %482

482:                                              ; preds = %396, %398, %478, %428
  %483 = phi i32 [ 1, %478 ], [ %162, %428 ], [ %162, %398 ], [ %162, %396 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
  br label %484

484:                                              ; preds = %200, %482
  %485 = phi i32 [ %483, %482 ], [ %162, %200 ]
  switch i64 %173, label %525 [
    i64 40965, label %486
    i64 34853, label %486
    i64 34665, label %486
  ]

486:                                              ; preds = %484, %484, %484
  %487 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef %201) #20, !range !114
  %488 = shl nuw i64 %487, 32
  %489 = ashr exact i64 %488, 32
  %490 = load i64, ptr %5, align 8, !tbaa !65
  %491 = icmp ult i64 %489, %490
  %492 = icmp slt i64 %149, 14
  %493 = and i1 %491, %492
  br i1 %493, label %494, label %529

494:                                              ; preds = %486
  %495 = icmp eq i64 %173, 34853
  %496 = select i1 %495, i64 65536, i64 0
  %497 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %149
  store ptr %152, ptr %497, align 8, !tbaa !115
  %498 = add nuw nsw i64 %163, 1
  %499 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %149, i32 1
  store i64 %498, ptr %499, align 8, !tbaa !117
  %500 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %149, i32 2
  store i64 %150, ptr %500, align 8, !tbaa !118
  %501 = add nsw i64 %149, 1
  %502 = load ptr, ptr %3, align 8, !tbaa !73
  %503 = getelementptr inbounds i8, ptr %502, i64 %489
  %504 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %501
  store ptr %503, ptr %504, align 8, !tbaa !115
  %505 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %501, i32 2
  store i64 %496, ptr %505, align 8, !tbaa !118
  %506 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %501, i32 1
  store i64 0, ptr %506, align 8, !tbaa !117
  %507 = add nsw i64 %149, 2
  %508 = getelementptr inbounds i8, ptr %502, i64 %490
  %509 = icmp ugt ptr %159, %508
  br i1 %509, label %529, label %510

510:                                              ; preds = %494
  %511 = call fastcc i64 @ReadPropertyLong(i32 noundef %117, ptr noundef nonnull %159) #20, !range !114
  %512 = shl nuw i64 %511, 32
  %513 = ashr exact i64 %512, 32
  %514 = icmp eq i64 %511, 0
  br i1 %514, label %529, label %515

515:                                              ; preds = %510
  %516 = icmp ult i64 %513, %490
  %517 = icmp slt i64 %149, 12
  %518 = and i1 %516, %517
  br i1 %518, label %519, label %529

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %502, i64 %513
  %521 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %507
  store ptr %520, ptr %521, align 8, !tbaa !115
  %522 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %507, i32 1
  store i64 0, ptr %522, align 8, !tbaa !117
  %523 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %4, i64 0, i64 %507, i32 2
  store i64 %496, ptr %523, align 8, !tbaa !118
  %524 = add nsw i64 %149, 3
  br label %529

525:                                              ; preds = %191, %484
  %526 = phi i32 [ %485, %484 ], [ %162, %191 ]
  %527 = add i64 %163, 1
  %528 = icmp ult i64 %527, %154
  br i1 %528, label %161, label %529, !llvm.loop !131

529:                                              ; preds = %525, %161, %169, %177, %510, %515, %519, %494, %486, %148
  %530 = phi i64 [ %149, %148 ], [ %149, %486 ], [ %507, %510 ], [ %507, %515 ], [ %524, %519 ], [ %507, %494 ], [ %149, %177 ], [ %149, %169 ], [ %149, %161 ], [ %149, %525 ]
  %531 = phi i64 [ %151, %148 ], [ %163, %486 ], [ %498, %510 ], [ %498, %515 ], [ %498, %519 ], [ %498, %494 ], [ %527, %525 ], [ %163, %161 ], [ %163, %169 ], [ %163, %177 ]
  %532 = phi i32 [ %137, %148 ], [ %485, %486 ], [ %485, %510 ], [ %485, %515 ], [ %485, %519 ], [ %485, %494 ], [ %526, %525 ], [ %162, %161 ], [ %162, %169 ], [ %162, %177 ]
  %533 = icmp sgt i64 %530, 0
  br i1 %533, label %133, label %534, !llvm.loop !132

534:                                              ; preds = %529
  %535 = call ptr @DestroySplayTree(ptr noundef %131) #19
  br label %536

536:                                              ; preds = %52, %62, %85, %77, %32, %121, %116, %112, %110, %73, %10, %2, %534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireFxInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FxEvaluateChannelExpression(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyFxInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetICCProperty(ptr noundef %0) unnamed_addr #0 !PGOFuncName !133 {
  %2 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.408) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.409) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %8) #19
  br label %10

10:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetIPTCProperty(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !134 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.410) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.92) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %88, label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.411, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %88

15:                                               ; preds = %11
  store ptr null, ptr %3, align 8, !tbaa !73
  %16 = call i64 @GetStringInfoLength(ptr noundef nonnull %12) #19
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %15, %66
  %19 = phi i64 [ %69, %66 ], [ 0, %15 ]
  %20 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !78
  %23 = icmp eq i8 %22, 28
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %26 = getelementptr i8, ptr %25, i64 %19
  %27 = getelementptr i8, ptr %26, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !78
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 8
  %31 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %32 = getelementptr i8, ptr %31, i64 %19
  %33 = getelementptr i8, ptr %32, i64 4
  %34 = load i8, ptr %33, align 1, !tbaa !78
  %35 = zext i8 %34 to i64
  %36 = or disjoint i64 %30, %35
  %37 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %38 = getelementptr i8, ptr %37, i64 %19
  %39 = getelementptr i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !78
  %41 = zext i8 %40 to i64
  %42 = load i64, ptr %4, align 8, !tbaa !65
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %44, label %64

44:                                               ; preds = %24
  %45 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %46 = getelementptr i8, ptr %45, i64 %19
  %47 = getelementptr i8, ptr %46, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !78
  %49 = zext i8 %48 to i64
  %50 = load i64, ptr %5, align 8, !tbaa !65
  %51 = icmp eq i64 %50, %49
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = add nuw nsw i64 %36, 1
  %54 = call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 1) #23
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = call ptr @GetStringInfoDatum(ptr noundef nonnull %12) #19
  %58 = getelementptr inbounds i8, ptr %57, i64 %19
  %59 = getelementptr inbounds i8, ptr %58, i64 5
  %60 = call i64 @CopyMagickString(ptr noundef nonnull %54, ptr noundef nonnull %59, i64 noundef %53) #19
  %61 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull %54) #19
  %62 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull @.str.412) #19
  %63 = call ptr @DestroyString(ptr noundef nonnull %54) #19
  br label %64

64:                                               ; preds = %52, %56, %44, %24
  %65 = add nsw i64 %19, 5
  br label %66

66:                                               ; preds = %18, %64
  %67 = phi i64 [ %19, %18 ], [ %65, %64 ]
  %68 = phi i64 [ 1, %18 ], [ %36, %64 ]
  %69 = add nsw i64 %68, %67
  %70 = call i64 @GetStringInfoLength(ptr noundef nonnull %12) #19
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %18, label %72, !llvm.loop !135

72:                                               ; preds = %66
  %73 = load ptr, ptr %3, align 8, !tbaa !73
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %73, align 1, !tbaa !78
  %77 = icmp eq i8 %76, 59
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call ptr @DestroyString(ptr noundef nonnull %73) #19
  br label %88

80:                                               ; preds = %75
  %81 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #22
  %82 = getelementptr i8, ptr %73, i64 %81
  %83 = getelementptr i8, ptr %82, i64 -1
  store i8 0, ptr %83, align 1, !tbaa !78
  %84 = load ptr, ptr %3, align 8, !tbaa !73
  %85 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %84) #20
  %86 = load ptr, ptr %3, align 8, !tbaa !73
  %87 = call ptr @DestroyString(ptr noundef %86) #19
  br label %88

88:                                               ; preds = %15, %72, %78, %11, %8, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetXMPProperty(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !136 {
  %3 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.413) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !78
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @StringInfoToString(ptr noundef nonnull %3) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %76, label %11

11:                                               ; preds = %8, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %8 ]
  %13 = load i8, ptr %12, align 1, !tbaa !78
  switch i8 %13, label %18 [
    i8 0, label %20
    i8 60, label %14
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !78
  %17 = icmp eq i8 %16, 120
  br i1 %17, label %20, label %18

18:                                               ; preds = %11, %14
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  br label %11, !llvm.loop !137

20:                                               ; preds = %11, %14
  %21 = tail call ptr @AcquireExceptionInfo() #19
  %22 = tail call ptr @NewXMLTree(ptr noundef nonnull %12, ptr noundef %21) #19
  %23 = tail call ptr @DestroyString(ptr noundef nonnull %9) #19
  %24 = tail call ptr @DestroyExceptionInfo(ptr noundef %21) #19
  %25 = icmp eq ptr %22, null
  br i1 %25, label %76, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %22, ptr noundef nonnull @.str.414) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %74, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #19
  store ptr %34, ptr %30, align 8, !tbaa !77
  br label %35

35:                                               ; preds = %33, %29
  %36 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %27, ptr noundef nonnull @.str.415) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %74, label %38

38:                                               ; preds = %35, %71
  %39 = phi ptr [ %72, %71 ], [ %36, %35 ]
  %40 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %39, ptr noundef null) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %38, %68
  %43 = phi ptr [ %69, %68 ], [ %40, %38 ]
  %44 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %43, ptr noundef null) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load ptr, ptr %30, align 8, !tbaa !77
  %48 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %43) #19
  %49 = tail call ptr @ConstantString(ptr noundef %48) #19
  %50 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %43) #19
  %51 = tail call ptr @ConstantString(ptr noundef %50) #19
  %52 = tail call i32 @AddValueToSplayTree(ptr noundef %47, ptr noundef %49, ptr noundef %51) #19
  br label %68

53:                                               ; preds = %42, %65
  %54 = phi ptr [ %66, %65 ], [ %44, %42 ]
  %55 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %54) #19
  %56 = tail call i32 @LocaleCompare(ptr noundef %55, ptr noundef nonnull @.str.416) #19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %30, align 8, !tbaa !77
  %60 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %54) #19
  %61 = tail call ptr @ConstantString(ptr noundef %60) #19
  %62 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %54) #19
  %63 = tail call ptr @ConstantString(ptr noundef %62) #19
  %64 = tail call i32 @AddValueToSplayTree(ptr noundef %59, ptr noundef %61, ptr noundef %63) #19
  br label %65

65:                                               ; preds = %58, %53
  %66 = tail call ptr @GetXMLTreeSibling(ptr noundef nonnull %54) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %53, !llvm.loop !138

68:                                               ; preds = %65, %46
  %69 = tail call ptr @GetXMLTreeSibling(ptr noundef nonnull %43) #19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42, !llvm.loop !139

71:                                               ; preds = %68, %38
  %72 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %39) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %38, !llvm.loop !140

74:                                               ; preds = %71, %35, %26
  %75 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %22) #19
  br label %76

76:                                               ; preds = %20, %8, %5, %2, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetMagickProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %18 = getelementptr inbounds i8, ptr %2, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !78
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8, ptr %2, align 1, !tbaa !78
  %23 = tail call fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %22) #20
  br label %370

24:                                               ; preds = %3
  store i8 0, ptr %4, align 16, !tbaa !78
  %25 = load i8, ptr %2, align 1, !tbaa !78
  switch i8 %25, label %361 [
    i8 98, label %26
    i8 99, label %42
    i8 100, label %70
    i8 101, label %83
    i8 103, label %88
    i8 104, label %105
    i8 105, label %115
    i8 107, label %120
    i8 109, label %131
    i8 111, label %175
    i8 112, label %200
    i8 114, label %224
    i8 115, label %238
    i8 116, label %296
    i8 117, label %304
    i8 118, label %319
    i8 119, label %324
    i8 120, label %334
    i8 121, label %344
    i8 122, label %354
  ]

26:                                               ; preds = %24
  %27 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %33, i32 noundef 5, ptr noundef nonnull %4) #19
  br label %361

34:                                               ; preds = %29
  %35 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %361

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %39 = tail call i64 @GetImageDepth(ptr noundef %1, ptr noundef nonnull %38) #19
  %40 = uitofp i64 %39 to double
  %41 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %40) #19
  br label %361

42:                                               ; preds = %24
  %43 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.16, ptr noundef nonnull %2) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !96
  %48 = zext i32 %47 to i64
  %49 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %48) #19
  %50 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %49) #19
  call void @LocaleLower(ptr noundef nonnull %4) #19
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !141
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %361, label %54

54:                                               ; preds = %45
  %55 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, i64 noundef 4096) #19
  br label %361

56:                                               ; preds = %42
  %57 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %2) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !96
  %62 = zext i32 %61 to i64
  %63 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %62) #19
  br label %361

64:                                               ; preds = %56
  %65 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %361

67:                                               ; preds = %64
  %68 = tail call ptr @GetMagickCopyright() #19
  %69 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %68, i64 noundef 4096) #19
  br label %361

70:                                               ; preds = %24
  %71 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = uitofp i64 %75 to double
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %76) #19
  br label %361

78:                                               ; preds = %70
  %79 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.21, ptr noundef nonnull %2) #19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %361

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %82, i32 noundef 3, ptr noundef nonnull %4) #19
  br label %361

83:                                               ; preds = %24
  %84 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.22, ptr noundef nonnull %2) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %361

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %87, i32 noundef 6, ptr noundef nonnull %4) #19
  br label %361

88:                                               ; preds = %24
  %89 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #19
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = tail call i32 @GetMagickPrecision() #19
  %93 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 15
  %94 = load double, ptr %93, align 8, !tbaa !56
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %92, double noundef %94) #19
  br label %361

96:                                               ; preds = %88
  %97 = icmp eq ptr %0, null
  br i1 %97, label %361, label %98

98:                                               ; preds = %96
  %99 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #19
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %361

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 33
  %103 = load i64, ptr %102, align 8, !tbaa !142
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.25, i64 noundef %103) #19
  br label %361

105:                                              ; preds = %24
  %106 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #19
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %361

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %110 = load i64, ptr %109, align 8, !tbaa !144
  %111 = icmp eq i64 %110, 0
  %112 = uitofp i64 %110 to double
  %113 = select i1 %111, double 2.560000e+02, double %112
  %114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %113) #19
  br label %361

115:                                              ; preds = %24
  %116 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.27, ptr noundef nonnull %2) #19
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %119 = select i1 %117, ptr %118, ptr null
  br label %361

120:                                              ; preds = %24
  %121 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.28, ptr noundef nonnull %2) #19
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %361

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %124 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %125 = load i32, ptr %124, align 8, !tbaa !145
  %126 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %127 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %125, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %126) #19
  %128 = call i32 @GetMagickPrecision() #19
  %129 = load double, ptr %5, align 8, !tbaa !58
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %128, double noundef %129) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %361

131:                                              ; preds = %24
  %132 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.29, ptr noundef nonnull %2) #19
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  br label %361

136:                                              ; preds = %131
  %137 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.30, ptr noundef nonnull %2) #19
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.31, ptr noundef nonnull %2) #19
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139, %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %144 = load i32, ptr %143, align 8, !tbaa !145
  %145 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %146 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %144, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %145) #19
  %147 = call i32 @GetMagickPrecision() #19
  %148 = load double, ptr %7, align 8, !tbaa !58
  %149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %147, double noundef %148) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %361

150:                                              ; preds = %139
  %151 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.32, ptr noundef nonnull %2) #19
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %154 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %155 = load i32, ptr %154, align 8, !tbaa !145
  %156 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %157 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %155, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %156) #19
  %158 = call i32 @GetMagickPrecision() #19
  %159 = load double, ptr %9, align 8, !tbaa !58
  %160 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %158, double noundef %159) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %361

161:                                              ; preds = %150
  %162 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.33, ptr noundef nonnull %2) #19
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.34, ptr noundef nonnull %2) #19
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %361

167:                                              ; preds = %164, %161
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  %168 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %169 = load i32, ptr %168, align 8, !tbaa !145
  %170 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %171 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %169, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %170) #19
  %172 = call i32 @GetMagickPrecision() #19
  %173 = load double, ptr %12, align 8, !tbaa !58
  %174 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %172, double noundef %173) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %361

175:                                              ; preds = %24
  %176 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.35, ptr noundef nonnull %2) #19
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %180 = tail call i32 @IsOpaqueImage(ptr noundef %1, ptr noundef nonnull %179) #19
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, ptr @.str.37, ptr @.str.36
  %183 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %182, i64 noundef 4096) #19
  br label %361

184:                                              ; preds = %175
  %185 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.38, ptr noundef nonnull %2) #19
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !146
  %190 = zext i32 %189 to i64
  %191 = tail call ptr @CommandOptionToMnemonic(i32 noundef 50, i64 noundef %190) #19
  br label %361

192:                                              ; preds = %184
  %193 = icmp eq ptr %0, null
  br i1 %193, label %361, label %194

194:                                              ; preds = %192
  %195 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.39, ptr noundef nonnull %2) #19
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %361

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %199 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %198, i64 noundef 4096) #19
  br label %361

200:                                              ; preds = %24
  %201 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.40, ptr noundef nonnull %2) #19
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = tail call i64 @GetImageIndexInList(ptr noundef %1) #19
  %205 = sitofp i64 %204 to double
  %206 = fadd double %205, 1.000000e+00
  %207 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %206) #19
  br label %361

208:                                              ; preds = %200
  %209 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.41, ptr noundef nonnull %2) #19
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %361

211:                                              ; preds = %208
  tail call void @ResetImageProfileIterator(ptr noundef %1) #19
  %212 = tail call ptr @GetNextImageProfile(ptr noundef %1) #19
  %213 = icmp eq ptr %212, null
  br i1 %213, label %361, label %214

214:                                              ; preds = %211
  %215 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %212, i64 noundef 4096) #19
  %216 = call ptr @GetNextImageProfile(ptr noundef %1) #19
  %217 = icmp eq ptr %216, null
  br i1 %217, label %361, label %218

218:                                              ; preds = %214, %218
  %219 = phi ptr [ %222, %218 ], [ %216, %214 ]
  %220 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i64 noundef 4096) #19
  %221 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull %219, i64 noundef 4096) #19
  %222 = call ptr @GetNextImageProfile(ptr noundef %1) #19
  %223 = icmp eq ptr %222, null
  br i1 %223, label %361, label %218, !llvm.loop !147

224:                                              ; preds = %24
  %225 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.43, ptr noundef nonnull %2) #19
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %229 = load double, ptr %228, align 8, !tbaa !87
  %230 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %229) #19
  br label %361

231:                                              ; preds = %224
  %232 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.45, ptr noundef nonnull %2) #19
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %361

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %236 = load double, ptr %235, align 8, !tbaa !148
  %237 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %236) #19
  br label %361

238:                                              ; preds = %24
  %239 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #19
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = icmp eq ptr %0, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %241
  %244 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %245 = load i64, ptr %244, align 8, !tbaa !149
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %249 = load i64, ptr %248, align 8, !tbaa !150
  %250 = uitofp i64 %249 to double
  %251 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %250) #19
  br label %361

252:                                              ; preds = %243, %241
  %253 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %254 = load i64, ptr %253, align 8, !tbaa !71
  %255 = uitofp i64 %254 to double
  %256 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %255) #19
  br label %361

257:                                              ; preds = %238
  %258 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #19
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = tail call i64 @GetImageListLength(ptr noundef %1) #19
  %262 = uitofp i64 %261 to double
  %263 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %262) #19
  br label %361

264:                                              ; preds = %257
  %265 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.48, ptr noundef nonnull %2) #19
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %13) #21
  %268 = tail call i64 @GetBlobSize(ptr noundef %1) #19
  %269 = call i64 @FormatMagickSize(i64 noundef %268, i32 noundef 0, ptr noundef nonnull %13) #19
  %270 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %13) #21
  br label %361

271:                                              ; preds = %264
  %272 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.50, ptr noundef nonnull %2) #19
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  %275 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %276 = load i32, ptr %275, align 8, !tbaa !145
  %277 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %278 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %276, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %277) #19
  %279 = call i32 @GetMagickPrecision() #19
  %280 = load double, ptr %15, align 8, !tbaa !58
  %281 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %279, double noundef %280) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  br label %361

282:                                              ; preds = %271
  %283 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.51, ptr noundef nonnull %2) #19
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.52, ptr noundef nonnull %2) #19
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %361

288:                                              ; preds = %285, %282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  %289 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %290 = load i32, ptr %289, align 8, !tbaa !145
  %291 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %292 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %290, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %291) #19
  %293 = call i32 @GetMagickPrecision() #19
  %294 = load double, ptr %17, align 8, !tbaa !58
  %295 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %293, double noundef %294) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  br label %361

296:                                              ; preds = %24
  %297 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.53, ptr noundef nonnull %2) #19
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %361

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %301 = tail call i32 @GetImageType(ptr noundef %1, ptr noundef nonnull %300) #19
  %302 = zext i32 %301 to i64
  %303 = tail call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %302) #19
  br label %361

304:                                              ; preds = %24
  %305 = icmp eq ptr %0, null
  br i1 %305, label %311, label %306

306:                                              ; preds = %304
  %307 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.54, ptr noundef nonnull %2) #19
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  br label %361

311:                                              ; preds = %306, %304
  %312 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %2) #19
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %361

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %316 = load i32, ptr %315, align 8, !tbaa !61
  %317 = zext i32 %316 to i64
  %318 = tail call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %317) #19
  br label %361

319:                                              ; preds = %24
  %320 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.56, ptr noundef nonnull %2) #19
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %361

322:                                              ; preds = %319
  %323 = tail call ptr @GetMagickVersion(ptr noundef null) #19
  br label %361

324:                                              ; preds = %24
  %325 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef nonnull %2) #19
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %361

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %329 = load i64, ptr %328, align 8, !tbaa !151
  %330 = icmp eq i64 %329, 0
  %331 = uitofp i64 %329 to double
  %332 = select i1 %330, double 2.560000e+02, double %331
  %333 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %332) #19
  br label %361

334:                                              ; preds = %24
  %335 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef nonnull %2) #19
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef nonnull %2) #19
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %361

340:                                              ; preds = %337, %334
  %341 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %342 = load double, ptr %341, align 8, !tbaa !87
  %343 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %342) #19
  br label %361

344:                                              ; preds = %24
  %345 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.60, ptr noundef nonnull %2) #19
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef nonnull %2) #19
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %347, %344
  %351 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %352 = load double, ptr %351, align 8, !tbaa !148
  %353 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %352) #19
  br label %361

354:                                              ; preds = %24
  %355 = icmp eq ptr %0, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %354
  %357 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.62, ptr noundef nonnull %2) #19
  %358 = icmp eq i32 %357, 0
  %359 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  %360 = select i1 %358, ptr %359, ptr null
  br label %361

361:                                              ; preds = %218, %214, %356, %115, %211, %354, %347, %337, %324, %319, %311, %296, %285, %247, %252, %231, %208, %192, %194, %164, %120, %105, %96, %98, %83, %78, %64, %45, %54, %34, %24, %350, %340, %327, %322, %314, %309, %299, %288, %274, %267, %260, %234, %227, %203, %197, %187, %178, %167, %153, %142, %134, %123, %108, %101, %91, %86, %81, %73, %67, %59, %37, %32
  %362 = phi ptr [ null, %24 ], [ null, %354 ], [ null, %350 ], [ null, %347 ], [ null, %340 ], [ null, %337 ], [ null, %327 ], [ null, %324 ], [ %323, %322 ], [ null, %319 ], [ %310, %309 ], [ %318, %314 ], [ null, %311 ], [ %303, %299 ], [ null, %296 ], [ null, %247 ], [ null, %252 ], [ null, %260 ], [ null, %267 ], [ null, %274 ], [ null, %288 ], [ null, %285 ], [ null, %227 ], [ null, %234 ], [ null, %231 ], [ null, %203 ], [ null, %208 ], [ null, %178 ], [ %191, %187 ], [ null, %197 ], [ null, %194 ], [ null, %192 ], [ %135, %134 ], [ null, %142 ], [ null, %153 ], [ null, %167 ], [ null, %164 ], [ null, %123 ], [ null, %120 ], [ null, %108 ], [ null, %105 ], [ null, %91 ], [ null, %101 ], [ null, %98 ], [ null, %96 ], [ null, %86 ], [ null, %83 ], [ null, %73 ], [ null, %81 ], [ null, %78 ], [ null, %54 ], [ null, %45 ], [ %63, %59 ], [ null, %67 ], [ null, %64 ], [ null, %32 ], [ null, %37 ], [ null, %34 ], [ %119, %115 ], [ null, %211 ], [ %360, %356 ], [ null, %214 ], [ null, %218 ]
  %363 = load i8, ptr %4, align 16, !tbaa !78
  %364 = icmp eq i8 %363, 0
  %365 = select i1 %364, ptr %362, ptr %4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %370, label %367

367:                                              ; preds = %361
  %368 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull %365) #19
  %369 = call ptr @GetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63) #19
  br label %370

370:                                              ; preds = %361, %367, %21
  %371 = phi ptr [ %23, %21 ], [ %369, %367 ], [ null, %361 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  ret ptr %371
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) unnamed_addr #0 !PGOFuncName !152 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #19
  br label %12

12:                                               ; preds = %9, %3
  store i8 0, ptr %4, align 16, !tbaa !78
  switch i8 %2, label %255 [
    i8 98, label %13
    i8 99, label %19
    i8 100, label %23
    i8 101, label %25
    i8 102, label %27
    i8 103, label %29
    i8 104, label %43
    i8 105, label %54
    i8 107, label %56
    i8 108, label %61
    i8 109, label %65
    i8 110, label %67
    i8 111, label %71
    i8 112, label %73
    i8 113, label %77
    i8 114, label %79
    i8 115, label %96
    i8 116, label %110
    i8 117, label %112
    i8 119, label %114
    i8 120, label %125
    i8 121, label %132
    i8 122, label %139
    i8 65, label %144
    i8 67, label %150
    i8 68, label %156
    i8 71, label %162
    i8 72, label %170
    i8 77, label %175
    i8 79, label %177
    i8 80, label %183
    i8 81, label %191
    i8 83, label %198
    i8 84, label %209
    i8 85, label %214
    i8 87, label %220
    i8 88, label %225
    i8 89, label %230
    i8 90, label %235
    i8 64, label %237
    i8 35, label %251
    i8 37, label %254
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 79
  %15 = load i64, ptr %14, align 8, !tbaa !153
  %16 = sitofp i64 %15 to double
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %16) #19
  %18 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.417, i64 noundef 4096) #19
  br label %255

19:                                               ; preds = %12
  %20 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.418) #20
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.1, ptr %20
  br label %255

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %24, i32 noundef 3, ptr noundef nonnull %4) #19
  br label %255

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %26, i32 noundef 6, ptr noundef nonnull %4) #19
  br label %255

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %28, i32 noundef 4, ptr noundef nonnull %4) #19
  br label %255

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %31 = load i64, ptr %30, align 8, !tbaa !154
  %32 = uitofp i64 %31 to double
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !155
  %35 = uitofp i64 %34 to double
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !156
  %38 = sitofp i64 %37 to double
  %39 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !157
  %41 = sitofp i64 %40 to double
  %42 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.419, double noundef %32, double noundef %35, double noundef %38, double noundef %41) #19
  br label %255

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %45 = load i64, ptr %44, align 8, !tbaa !104
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %49 = load i64, ptr %48, align 8, !tbaa !144
  br label %50

50:                                               ; preds = %43, %47
  %51 = phi i64 [ %49, %47 ], [ %45, %43 ]
  %52 = uitofp i64 %51 to double
  %53 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %52) #19
  br label %255

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  br label %255

56:                                               ; preds = %12
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %58 = tail call i64 @GetNumberColors(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %57) #19
  %59 = uitofp i64 %58 to double
  %60 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %59) #19
  br label %255

61:                                               ; preds = %12
  %62 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.420) #20
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @.str.1, ptr %62
  br label %255

65:                                               ; preds = %12
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  br label %255

67:                                               ; preds = %12
  %68 = tail call i64 @GetImageListLength(ptr noundef nonnull %1) #19
  %69 = uitofp i64 %68 to double
  %70 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %69) #19
  br label %255

71:                                               ; preds = %12
  %72 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  br label %255

73:                                               ; preds = %12
  %74 = tail call i64 @GetImageIndexInList(ptr noundef nonnull %1) #19
  %75 = sitofp i64 %74 to double
  %76 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %75) #19
  br label %255

77:                                               ; preds = %12
  %78 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef 1.600000e+01) #19
  br label %255

79:                                               ; preds = %12
  %80 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !96
  %82 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %83 = tail call i32 @IsGrayImage(ptr noundef nonnull %1, ptr noundef nonnull %82) #19
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 %81, i32 2
  %86 = load i32, ptr %1, align 8, !tbaa !158
  %87 = zext i32 %86 to i64
  %88 = tail call ptr @CommandOptionToMnemonic(i32 noundef 5, i64 noundef %87) #19
  %89 = zext i32 %85 to i64
  %90 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %89) #19
  %91 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !141
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.1, ptr @.str.422
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.421, ptr noundef %88, ptr noundef %90, ptr noundef nonnull %94) #19
  br label %255

96:                                               ; preds = %12
  %97 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %98 = load i64, ptr %97, align 8, !tbaa !149
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %102 = load i64, ptr %101, align 8, !tbaa !150
  %103 = uitofp i64 %102 to double
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %103) #19
  br label %255

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %107 = load i64, ptr %106, align 8, !tbaa !71
  %108 = uitofp i64 %107 to double
  %109 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %108) #19
  br label %255

110:                                              ; preds = %12
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %111, i32 noundef 5, ptr noundef nonnull %4) #19
  br label %255

112:                                              ; preds = %12
  %113 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  br label %255

114:                                              ; preds = %12
  %115 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !105
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %120 = load i64, ptr %119, align 8, !tbaa !151
  br label %121

121:                                              ; preds = %114, %118
  %122 = phi i64 [ %120, %118 ], [ %116, %114 ]
  %123 = uitofp i64 %122 to double
  %124 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %123) #19
  br label %255

125:                                              ; preds = %12
  %126 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %127 = load double, ptr %126, align 8, !tbaa !87
  %128 = tail call double @llvm.fabs.f64(double %127)
  %129 = fcmp ogt double %128, 1.000000e-15
  %130 = select i1 %129, double %127, double 7.200000e+01
  %131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %130) #19
  br label %255

132:                                              ; preds = %12
  %133 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %134 = load double, ptr %133, align 8, !tbaa !148
  %135 = tail call double @llvm.fabs.f64(double %134)
  %136 = fcmp ogt double %135, 1.000000e-15
  %137 = select i1 %136, double %134, double 7.200000e+01
  %138 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %137) #19
  br label %255

139:                                              ; preds = %12
  %140 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %141 = load i64, ptr %140, align 8, !tbaa !55
  %142 = uitofp i64 %141 to double
  %143 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %142) #19
  br label %255

144:                                              ; preds = %12
  %145 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %146 = load i32, ptr %145, align 8, !tbaa !141
  %147 = zext i32 %146 to i64
  %148 = tail call ptr @CommandOptionToMnemonic(i32 noundef 2, i64 noundef %147) #19
  %149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %148) #19
  br label %255

150:                                              ; preds = %12
  %151 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !53
  %153 = zext i32 %152 to i64
  %154 = tail call ptr @CommandOptionToMnemonic(i32 noundef 12, i64 noundef %153) #19
  %155 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %154) #19
  br label %255

156:                                              ; preds = %12
  %157 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 37
  %158 = load i32, ptr %157, align 4, !tbaa !72
  %159 = zext i32 %158 to i64
  %160 = tail call ptr @CommandOptionToMnemonic(i32 noundef 19, i64 noundef %159) #19
  %161 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %160) #19
  br label %255

162:                                              ; preds = %12
  %163 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %164 = load i64, ptr %163, align 8, !tbaa !151
  %165 = uitofp i64 %164 to double
  %166 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %167 = load i64, ptr %166, align 8, !tbaa !144
  %168 = uitofp i64 %167 to double
  %169 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.423, double noundef %165, double noundef %168) #19
  br label %255

170:                                              ; preds = %12
  %171 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !155
  %173 = uitofp i64 %172 to double
  %174 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %173) #19
  br label %255

175:                                              ; preds = %12
  %176 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  br label %255

177:                                              ; preds = %12
  %178 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !156
  %180 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %181 = load i64, ptr %180, align 8, !tbaa !157
  %182 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.424, i64 noundef %179, i64 noundef %181) #19
  br label %255

183:                                              ; preds = %12
  %184 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %185 = load i64, ptr %184, align 8, !tbaa !154
  %186 = uitofp i64 %185 to double
  %187 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %188 = load i64, ptr %187, align 8, !tbaa !155
  %189 = uitofp i64 %188 to double
  %190 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.423, double noundef %186, double noundef %189) #19
  br label %255

191:                                              ; preds = %12
  %192 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  %193 = load i64, ptr %192, align 8, !tbaa !54
  %194 = icmp eq i64 %193, 0
  %195 = uitofp i64 %193 to double
  %196 = select i1 %194, double 9.200000e+01, double %195
  %197 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %196) #19
  br label %255

198:                                              ; preds = %12
  %199 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %200 = load i64, ptr %199, align 8, !tbaa !149
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %255, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %204 = load i64, ptr %203, align 8, !tbaa !150
  %205 = uitofp i64 %204 to double
  %206 = uitofp i64 %200 to double
  %207 = fadd double %206, %205
  %208 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %207) #19
  br label %255

209:                                              ; preds = %12
  %210 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 40
  %211 = load i64, ptr %210, align 8, !tbaa !82
  %212 = uitofp i64 %211 to double
  %213 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %212) #19
  br label %255

214:                                              ; preds = %12
  %215 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %216 = load i32, ptr %215, align 8, !tbaa !61
  %217 = zext i32 %216 to i64
  %218 = tail call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %217) #19
  %219 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %218) #19
  br label %255

220:                                              ; preds = %12
  %221 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %222 = load i64, ptr %221, align 8, !tbaa !154
  %223 = uitofp i64 %222 to double
  %224 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %223) #19
  br label %255

225:                                              ; preds = %12
  %226 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %227 = load i64, ptr %226, align 8, !tbaa !156
  %228 = sitofp i64 %227 to double
  %229 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.426, double noundef %228) #19
  br label %255

230:                                              ; preds = %12
  %231 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %232 = load i64, ptr %231, align 8, !tbaa !157
  %233 = sitofp i64 %232 to double
  %234 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.426, double noundef %233) #19
  br label %255

235:                                              ; preds = %12
  %236 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  br label %255

237:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %238 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %1, ptr noundef nonnull %238) #19
  %239 = load i64, ptr %5, align 8, !tbaa.struct !64
  %240 = getelementptr inbounds i8, ptr %5, i64 8
  %241 = load i64, ptr %240, align 8, !tbaa.struct !159
  %242 = getelementptr inbounds i8, ptr %5, i64 16
  %243 = load i64, ptr %242, align 8, !tbaa.struct !160
  %244 = getelementptr inbounds i8, ptr %5, i64 24
  %245 = load i64, ptr %244, align 8, !tbaa.struct !161
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  %246 = uitofp i64 %239 to double
  %247 = uitofp i64 %241 to double
  %248 = sitofp i64 %243 to double
  %249 = sitofp i64 %245 to double
  %250 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.419, double noundef %246, double noundef %247, double noundef %248, double noundef %249) #19
  br label %255

251:                                              ; preds = %12
  %252 = tail call i32 @SignatureImage(ptr noundef nonnull %1) #19
  %253 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.427) #20
  br label %255

254:                                              ; preds = %12
  br label %255

255:                                              ; preds = %198, %202, %100, %105, %12, %254, %251, %237, %235, %230, %225, %220, %214, %209, %191, %183, %177, %175, %170, %162, %156, %150, %144, %139, %132, %125, %121, %112, %110, %79, %77, %73, %71, %67, %65, %61, %56, %54, %50, %29, %27, %25, %23, %19, %13
  %256 = phi ptr [ null, %12 ], [ @.str.428, %254 ], [ %253, %251 ], [ null, %237 ], [ %236, %235 ], [ null, %230 ], [ null, %225 ], [ null, %220 ], [ null, %214 ], [ null, %209 ], [ null, %202 ], [ null, %191 ], [ null, %183 ], [ null, %177 ], [ %176, %175 ], [ null, %170 ], [ null, %162 ], [ null, %156 ], [ null, %150 ], [ null, %144 ], [ null, %139 ], [ null, %132 ], [ null, %125 ], [ null, %121 ], [ %113, %112 ], [ null, %110 ], [ null, %100 ], [ null, %105 ], [ null, %79 ], [ null, %77 ], [ null, %73 ], [ %72, %71 ], [ null, %67 ], [ %66, %65 ], [ %64, %61 ], [ null, %56 ], [ %55, %54 ], [ null, %50 ], [ null, %29 ], [ null, %27 ], [ null, %25 ], [ null, %23 ], [ %22, %19 ], [ null, %13 ], [ @.str.425, %198 ]
  %257 = load i8, ptr %4, align 16, !tbaa !78
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, ptr %256, ptr %4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = call i32 @SetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull @.str.63, ptr noundef nonnull %259) #19
  %263 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull @.str.63) #19
  br label %264

264:                                              ; preds = %255, %261
  %265 = phi ptr [ %263, %261 ], [ null, %255 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  ret ptr %265
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetImageDepth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetMagickCopyright() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetImageChannelKurtosis(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsOpaqueImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3156, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #19
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #19
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @InterpretImageProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3284, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #19
  br label %11

11:                                               ; preds = %8, %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %521, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %2, align 1, !tbaa !78
  switch i8 %14, label %30 [
    i8 0, label %15
    i8 64, label %17
  ]

15:                                               ; preds = %13
  %16 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #19
  br label %521

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %2, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !78
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @IsPathAccessible(ptr noundef nonnull %18) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3297, i32 noundef 410, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #19
  br label %521

27:                                               ; preds = %21, %17
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %29 = tail call ptr @FileToString(ptr noundef nonnull %18, i64 noundef -1, ptr noundef nonnull %28) #19
  br label %521

30:                                               ; preds = %13
  %31 = tail call ptr @AcquireString(ptr noundef nonnull %2) #19
  %32 = load i8, ptr %2, align 1, !tbaa !78
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %518, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %0, null
  %36 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 61
  %37 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %38 = getelementptr inbounds i8, ptr %4, i64 9
  %39 = getelementptr inbounds i8, ptr %4, i64 7
  br label %40

40:                                               ; preds = %34, %501
  %41 = phi ptr [ %31, %34 ], [ %505, %501 ]
  %42 = phi ptr [ %31, %34 ], [ %504, %501 ]
  %43 = phi ptr [ %2, %34 ], [ %515, %501 ]
  %44 = phi i64 [ 4096, %34 ], [ %502, %501 ]
  %45 = phi i32 [ 0, %34 ], [ %514, %501 ]
  store i8 0, ptr %42, align 1, !tbaa !78
  %46 = ptrtoint ptr %42 to i64
  %47 = ptrtoint ptr %41 to i64
  %48 = add i64 %46, 4097
  %49 = sub i64 %48, %47
  %50 = icmp ult i64 %49, %44
  br i1 %50, label %59, label %51

51:                                               ; preds = %40
  %52 = add i64 %44, 8192
  %53 = call ptr @ResizeQuantumMemory(ptr noundef %41, i64 noundef %52, i64 noundef 1) #25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %521, label %55

55:                                               ; preds = %51
  %56 = add i64 %44, 4096
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #22
  %58 = getelementptr inbounds i8, ptr %53, i64 %57
  br label %59

59:                                               ; preds = %55, %40
  %60 = phi i64 [ %44, %40 ], [ %56, %55 ]
  %61 = phi ptr [ %42, %40 ], [ %58, %55 ]
  %62 = phi ptr [ %41, %40 ], [ %53, %55 ]
  %63 = load i8, ptr %43, align 1, !tbaa !78
  switch i8 %63, label %96 [
    i8 92, label %64
    i8 38, label %75
    i8 37, label %98
  ]

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, ptr %43, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !78
  switch i8 %66, label %73 [
    i8 0, label %501
    i8 114, label %67
    i8 110, label %69
    i8 10, label %71
    i8 13, label %72
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 13, ptr %61, align 1, !tbaa !78
  br label %501

69:                                               ; preds = %64
  %70 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 10, ptr %61, align 1, !tbaa !78
  br label %501

71:                                               ; preds = %64
  br label %501

72:                                               ; preds = %64
  br label %501

73:                                               ; preds = %64
  %74 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %66, ptr %61, align 1, !tbaa !78
  br label %501

75:                                               ; preds = %59
  %76 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.65, ptr noundef nonnull %43, i64 noundef 4) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 60, ptr %61, align 1, !tbaa !78
  %80 = getelementptr inbounds i8, ptr %43, i64 3
  br label %501

81:                                               ; preds = %75
  %82 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.66, ptr noundef nonnull %43, i64 noundef 4) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 62, ptr %61, align 1, !tbaa !78
  %86 = getelementptr inbounds i8, ptr %43, i64 3
  br label %501

87:                                               ; preds = %81
  %88 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.67, ptr noundef nonnull %43, i64 noundef 5) #19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 38, ptr %61, align 1, !tbaa !78
  %92 = getelementptr inbounds i8, ptr %43, i64 4
  br label %501

93:                                               ; preds = %87
  %94 = load i8, ptr %43, align 1, !tbaa !78
  %95 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %94, ptr %61, align 1, !tbaa !78
  br label %501

96:                                               ; preds = %59
  %97 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %63, ptr %61, align 1, !tbaa !78
  br label %501

98:                                               ; preds = %59
  %99 = getelementptr inbounds i8, ptr %43, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !78
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %101, i8 37, i8 %100
  %103 = select i1 %101, ptr %43, ptr %99
  switch i8 %102, label %106 [
    i8 37, label %104
    i8 91, label %140
  ]

104:                                              ; preds = %98
  %105 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 37, ptr %61, align 1, !tbaa !78
  br label %501

106:                                              ; preds = %98
  %107 = icmp eq i32 %45, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 37, ptr %61, align 1, !tbaa !78
  %110 = getelementptr inbounds i8, ptr %103, i64 -1
  br label %501

111:                                              ; preds = %106
  %112 = call fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %102) #20
  %113 = icmp eq ptr %112, null
  br i1 %113, label %136, label %114

114:                                              ; preds = %111
  %115 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %112) #22
  %116 = ptrtoint ptr %61 to i64
  %117 = ptrtoint ptr %62 to i64
  %118 = add i64 %116, 1
  %119 = sub i64 %118, %117
  %120 = add i64 %119, %115
  %121 = icmp ult i64 %120, %60
  br i1 %121, label %130, label %122

122:                                              ; preds = %114
  %123 = add i64 %115, %60
  %124 = add i64 %123, 4096
  %125 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %124, i64 noundef 1) #25
  %126 = icmp eq ptr %125, null
  br i1 %126, label %521, label %127

127:                                              ; preds = %122
  %128 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #22
  %129 = getelementptr inbounds i8, ptr %125, i64 %128
  br label %130

130:                                              ; preds = %127, %114
  %131 = phi i64 [ %123, %127 ], [ %60, %114 ]
  %132 = phi ptr [ %129, %127 ], [ %61, %114 ]
  %133 = phi ptr [ %125, %127 ], [ %62, %114 ]
  %134 = call i64 @CopyMagickString(ptr noundef %132, ptr noundef nonnull %112, i64 noundef %131) #19
  %135 = getelementptr inbounds i8, ptr %132, i64 %115
  br label %501

136:                                              ; preds = %111
  %137 = load i8, ptr %103, align 1, !tbaa !78
  %138 = sext i8 %137 to i32
  %139 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3391, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %138) #19
  br label %501

140:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %141 = getelementptr inbounds i8, ptr %103, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !78
  %143 = icmp eq i8 %142, 93
  br i1 %143, label %499, label %144

144:                                              ; preds = %140, %172
  %145 = phi ptr [ %173, %172 ], [ %141, %140 ]
  %146 = phi i64 [ %170, %172 ], [ 1, %140 ]
  %147 = phi i64 [ %174, %172 ], [ 0, %140 ]
  br label %148

148:                                              ; preds = %144, %156
  %149 = phi ptr [ %145, %144 ], [ %159, %156 ]
  %150 = phi i64 [ %147, %144 ], [ %161, %156 ]
  %151 = load i8, ptr %149, align 1, !tbaa !78
  switch i8 %151, label %164 [
    i8 0, label %177
    i8 92, label %152
  ]

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %149, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !78
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = add nsw i64 %150, 1
  %158 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %150
  store i8 92, ptr %158, align 1, !tbaa !78
  %159 = getelementptr inbounds i8, ptr %149, i64 2
  %160 = load i8, ptr %153, align 1, !tbaa !78
  %161 = add nsw i64 %150, 2
  %162 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %157
  store i8 %160, ptr %162, align 1, !tbaa !78
  %163 = icmp slt i64 %150, 4093
  br i1 %163, label %148, label %177, !llvm.loop !162

164:                                              ; preds = %148, %152
  %165 = icmp eq i8 %151, 91
  %166 = zext i1 %165 to i64
  %167 = add nsw i64 %146, %166
  %168 = icmp eq i8 %151, 93
  %169 = sext i1 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = icmp slt i64 %170, 1
  br i1 %171, label %180, label %172

172:                                              ; preds = %164
  %173 = getelementptr inbounds i8, ptr %149, i64 1
  %174 = add nsw i64 %150, 1
  %175 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %150
  store i8 %151, ptr %175, align 1, !tbaa !78
  %176 = icmp slt i64 %150, 4094
  br i1 %176, label %144, label %177, !llvm.loop !162

177:                                              ; preds = %172, %156, %148
  %178 = phi i64 [ %150, %148 ], [ %161, %156 ], [ %174, %172 ]
  %179 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %178
  store i8 0, ptr %179, align 1, !tbaa !78
  br label %183

180:                                              ; preds = %164
  %181 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %150
  store i8 0, ptr %181, align 1, !tbaa !78
  %182 = icmp eq i64 %170, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %180, %177
  %184 = phi i64 [ %178, %177 ], [ %150, %180 ]
  %185 = icmp sgt i64 %184, 63
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store <4 x i8> <i8 46, i8 46, i8 46, i8 0>, ptr %36, align 1, !tbaa !78
  br label %187

187:                                              ; preds = %186, %183
  %188 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3446, i32 noundef 410, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #19
  %189 = call ptr @DestroyString(ptr noundef %62) #19
  br label %498

190:                                              ; preds = %180
  %191 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.73, ptr noundef nonnull %4, i64 noundef 7) #19
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %266

193:                                              ; preds = %190
  br i1 %35, label %494, label %194

194:                                              ; preds = %193
  %195 = call i32 @IsGlob(ptr noundef nonnull %39) #19
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %241, label %197

197:                                              ; preds = %194
  call void @ResetImageOptionIterator(ptr noundef nonnull %0) #19
  %198 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #19
  %199 = icmp eq ptr %198, null
  br i1 %199, label %494, label %200

200:                                              ; preds = %197, %235
  %201 = phi ptr [ %239, %235 ], [ %198, %197 ]
  %202 = phi ptr [ %238, %235 ], [ %62, %197 ]
  %203 = phi ptr [ %237, %235 ], [ %61, %197 ]
  %204 = phi i64 [ %236, %235 ], [ %60, %197 ]
  %205 = call i32 @GlobExpression(ptr noundef nonnull %201, ptr noundef nonnull %39, i32 noundef 1) #19
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %235, label %207

207:                                              ; preds = %200
  %208 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %201) #19
  %209 = icmp eq ptr %208, null
  br i1 %209, label %235, label %210

210:                                              ; preds = %207
  %211 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %201) #22
  %212 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %208) #22
  %213 = add i64 %211, 2
  %214 = add i64 %213, %212
  %215 = ptrtoint ptr %203 to i64
  %216 = ptrtoint ptr %202 to i64
  %217 = add i64 %215, 1
  %218 = sub i64 %217, %216
  %219 = add i64 %218, %214
  %220 = icmp ult i64 %219, %204
  br i1 %220, label %229, label %221

221:                                              ; preds = %210
  %222 = add i64 %214, %204
  %223 = add i64 %222, 4096
  %224 = call ptr @ResizeQuantumMemory(ptr noundef %202, i64 noundef %223, i64 noundef 1) #25
  %225 = icmp eq ptr %224, null
  br i1 %225, label %498, label %226

226:                                              ; preds = %221
  %227 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %224) #22
  %228 = getelementptr inbounds i8, ptr %224, i64 %227
  br label %229

229:                                              ; preds = %210, %226
  %230 = phi i64 [ %222, %226 ], [ %204, %210 ]
  %231 = phi ptr [ %228, %226 ], [ %203, %210 ]
  %232 = phi ptr [ %224, %226 ], [ %202, %210 ]
  %233 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %231, i64 noundef %230, ptr noundef nonnull @.str.74, ptr noundef nonnull %201, ptr noundef nonnull %208) #19
  %234 = getelementptr inbounds i8, ptr %231, i64 %233
  br label %235

235:                                              ; preds = %229, %207, %200
  %236 = phi i64 [ %204, %207 ], [ %204, %200 ], [ %230, %229 ]
  %237 = phi ptr [ %203, %207 ], [ %203, %200 ], [ %234, %229 ]
  %238 = phi ptr [ %202, %207 ], [ %202, %200 ], [ %232, %229 ]
  %239 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #19
  %240 = icmp eq ptr %239, null
  br i1 %240, label %494, label %200, !llvm.loop !163

241:                                              ; preds = %194
  %242 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %39) #19
  %243 = icmp eq ptr %242, null
  br i1 %243, label %494, label %244

244:                                              ; preds = %241
  %245 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %242) #22
  %246 = ptrtoint ptr %61 to i64
  %247 = ptrtoint ptr %62 to i64
  %248 = add i64 %246, 1
  %249 = sub i64 %248, %247
  %250 = add i64 %249, %245
  %251 = icmp ult i64 %250, %60
  br i1 %251, label %260, label %252

252:                                              ; preds = %244
  %253 = add i64 %245, %60
  %254 = add i64 %253, 4096
  %255 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %254, i64 noundef 1) #25
  %256 = icmp eq ptr %255, null
  br i1 %256, label %498, label %257

257:                                              ; preds = %252
  %258 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %255) #22
  %259 = getelementptr inbounds i8, ptr %255, i64 %258
  br label %260

260:                                              ; preds = %244, %257
  %261 = phi i64 [ %253, %257 ], [ %60, %244 ]
  %262 = phi ptr [ %259, %257 ], [ %61, %244 ]
  %263 = phi ptr [ %255, %257 ], [ %62, %244 ]
  %264 = call i64 @CopyMagickString(ptr noundef %262, ptr noundef nonnull %242, i64 noundef %261) #19
  %265 = getelementptr inbounds i8, ptr %262, i64 %245
  br label %494

266:                                              ; preds = %190
  %267 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.75, ptr noundef nonnull %4, i64 noundef 9) #19
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %341

269:                                              ; preds = %266
  %270 = call i32 @IsGlob(ptr noundef nonnull %38) #19
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %316, label %272

272:                                              ; preds = %269
  call void @ResetImageArtifactIterator(ptr noundef nonnull %1) #19
  %273 = call ptr @GetNextImageArtifact(ptr noundef nonnull %1) #19
  %274 = icmp eq ptr %273, null
  br i1 %274, label %494, label %275

275:                                              ; preds = %272, %310
  %276 = phi ptr [ %314, %310 ], [ %273, %272 ]
  %277 = phi ptr [ %313, %310 ], [ %62, %272 ]
  %278 = phi ptr [ %312, %310 ], [ %61, %272 ]
  %279 = phi i64 [ %311, %310 ], [ %60, %272 ]
  %280 = call i32 @GlobExpression(ptr noundef nonnull %276, ptr noundef nonnull %38, i32 noundef 1) #19
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %310, label %282

282:                                              ; preds = %275
  %283 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %276) #19
  %284 = icmp eq ptr %283, null
  br i1 %284, label %310, label %285

285:                                              ; preds = %282
  %286 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %276) #22
  %287 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %283) #22
  %288 = add i64 %286, 2
  %289 = add i64 %288, %287
  %290 = ptrtoint ptr %278 to i64
  %291 = ptrtoint ptr %277 to i64
  %292 = add i64 %290, 1
  %293 = sub i64 %292, %291
  %294 = add i64 %293, %289
  %295 = icmp ult i64 %294, %279
  br i1 %295, label %304, label %296

296:                                              ; preds = %285
  %297 = add i64 %289, %279
  %298 = add i64 %297, 4096
  %299 = call ptr @ResizeQuantumMemory(ptr noundef %277, i64 noundef %298, i64 noundef 1) #25
  %300 = icmp eq ptr %299, null
  br i1 %300, label %498, label %301

301:                                              ; preds = %296
  %302 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %299) #22
  %303 = getelementptr inbounds i8, ptr %299, i64 %302
  br label %304

304:                                              ; preds = %285, %301
  %305 = phi i64 [ %297, %301 ], [ %279, %285 ]
  %306 = phi ptr [ %303, %301 ], [ %278, %285 ]
  %307 = phi ptr [ %299, %301 ], [ %277, %285 ]
  %308 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %306, i64 noundef %305, ptr noundef nonnull @.str.74, ptr noundef nonnull %276, ptr noundef nonnull %283) #19
  %309 = getelementptr inbounds i8, ptr %306, i64 %308
  br label %310

310:                                              ; preds = %304, %282, %275
  %311 = phi i64 [ %279, %282 ], [ %279, %275 ], [ %305, %304 ]
  %312 = phi ptr [ %278, %282 ], [ %278, %275 ], [ %309, %304 ]
  %313 = phi ptr [ %277, %282 ], [ %277, %275 ], [ %307, %304 ]
  %314 = call ptr @GetNextImageArtifact(ptr noundef nonnull %1) #19
  %315 = icmp eq ptr %314, null
  br i1 %315, label %494, label %275, !llvm.loop !164

316:                                              ; preds = %269
  %317 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %38) #19
  %318 = icmp eq ptr %317, null
  br i1 %318, label %494, label %319

319:                                              ; preds = %316
  %320 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %317) #22
  %321 = ptrtoint ptr %61 to i64
  %322 = ptrtoint ptr %62 to i64
  %323 = add i64 %321, 1
  %324 = sub i64 %323, %322
  %325 = add i64 %324, %320
  %326 = icmp ult i64 %325, %60
  br i1 %326, label %335, label %327

327:                                              ; preds = %319
  %328 = add i64 %320, %60
  %329 = add i64 %328, 4096
  %330 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %329, i64 noundef 1) #25
  %331 = icmp eq ptr %330, null
  br i1 %331, label %498, label %332

332:                                              ; preds = %327
  %333 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %330) #22
  %334 = getelementptr inbounds i8, ptr %330, i64 %333
  br label %335

335:                                              ; preds = %319, %332
  %336 = phi i64 [ %328, %332 ], [ %60, %319 ]
  %337 = phi ptr [ %334, %332 ], [ %61, %319 ]
  %338 = phi ptr [ %330, %332 ], [ %62, %319 ]
  %339 = call i64 @CopyMagickString(ptr noundef %337, ptr noundef nonnull %317, i64 noundef %336) #19
  %340 = getelementptr inbounds i8, ptr %337, i64 %320
  br label %494

341:                                              ; preds = %266
  %342 = call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull %4) #20
  %343 = icmp eq ptr %342, null
  br i1 %343, label %366, label %344

344:                                              ; preds = %341
  %345 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %342) #22
  %346 = ptrtoint ptr %61 to i64
  %347 = ptrtoint ptr %62 to i64
  %348 = add i64 %346, 1
  %349 = sub i64 %348, %347
  %350 = add i64 %349, %345
  %351 = icmp ult i64 %350, %60
  br i1 %351, label %360, label %352

352:                                              ; preds = %344
  %353 = add i64 %345, %60
  %354 = add i64 %353, 4096
  %355 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %354, i64 noundef 1) #25
  %356 = icmp eq ptr %355, null
  br i1 %356, label %498, label %357

357:                                              ; preds = %352
  %358 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %355) #22
  %359 = getelementptr inbounds i8, ptr %355, i64 %358
  br label %360

360:                                              ; preds = %357, %344
  %361 = phi i64 [ %353, %357 ], [ %60, %344 ]
  %362 = phi ptr [ %359, %357 ], [ %61, %344 ]
  %363 = phi ptr [ %355, %357 ], [ %62, %344 ]
  %364 = call i64 @CopyMagickString(ptr noundef %362, ptr noundef nonnull %342, i64 noundef %361) #19
  %365 = getelementptr inbounds i8, ptr %362, i64 %345
  br label %494

366:                                              ; preds = %341
  %367 = call i32 @IsGlob(ptr noundef nonnull %4) #19
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %413, label %369

369:                                              ; preds = %366
  call void @ResetImagePropertyIterator(ptr noundef %1) #20
  %370 = call ptr @GetNextImageProperty(ptr noundef %1) #20
  %371 = icmp eq ptr %370, null
  br i1 %371, label %494, label %372

372:                                              ; preds = %369, %407
  %373 = phi ptr [ %411, %407 ], [ %370, %369 ]
  %374 = phi ptr [ %410, %407 ], [ %62, %369 ]
  %375 = phi ptr [ %409, %407 ], [ %61, %369 ]
  %376 = phi i64 [ %408, %407 ], [ %60, %369 ]
  %377 = call i32 @GlobExpression(ptr noundef nonnull %373, ptr noundef nonnull %4, i32 noundef 1) #19
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %407, label %379

379:                                              ; preds = %372
  %380 = call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull %373) #20
  %381 = icmp eq ptr %380, null
  br i1 %381, label %407, label %382

382:                                              ; preds = %379
  %383 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %373) #22
  %384 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %380) #22
  %385 = add i64 %383, 2
  %386 = add i64 %385, %384
  %387 = ptrtoint ptr %375 to i64
  %388 = ptrtoint ptr %374 to i64
  %389 = add i64 %387, 1
  %390 = sub i64 %389, %388
  %391 = add i64 %390, %386
  %392 = icmp ult i64 %391, %376
  br i1 %392, label %401, label %393

393:                                              ; preds = %382
  %394 = add i64 %386, %376
  %395 = add i64 %394, 4096
  %396 = call ptr @ResizeQuantumMemory(ptr noundef %374, i64 noundef %395, i64 noundef 1) #25
  %397 = icmp eq ptr %396, null
  br i1 %397, label %498, label %398

398:                                              ; preds = %393
  %399 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %396) #22
  %400 = getelementptr inbounds i8, ptr %396, i64 %399
  br label %401

401:                                              ; preds = %382, %398
  %402 = phi i64 [ %394, %398 ], [ %376, %382 ]
  %403 = phi ptr [ %400, %398 ], [ %375, %382 ]
  %404 = phi ptr [ %396, %398 ], [ %374, %382 ]
  %405 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %403, i64 noundef %402, ptr noundef nonnull @.str.74, ptr noundef nonnull %373, ptr noundef nonnull %380) #19
  %406 = getelementptr inbounds i8, ptr %403, i64 %405
  br label %407

407:                                              ; preds = %401, %379, %372
  %408 = phi i64 [ %376, %379 ], [ %376, %372 ], [ %402, %401 ]
  %409 = phi ptr [ %375, %379 ], [ %375, %372 ], [ %406, %401 ]
  %410 = phi ptr [ %374, %379 ], [ %374, %372 ], [ %404, %401 ]
  %411 = call ptr @GetNextImageProperty(ptr noundef %1) #20
  %412 = icmp eq ptr %411, null
  br i1 %412, label %494, label %372, !llvm.loop !165

413:                                              ; preds = %366
  %414 = call ptr @GetMagickProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #20
  %415 = icmp eq ptr %414, null
  br i1 %415, label %438, label %416

416:                                              ; preds = %413
  %417 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %414) #22
  %418 = ptrtoint ptr %61 to i64
  %419 = ptrtoint ptr %62 to i64
  %420 = add i64 %418, 1
  %421 = sub i64 %420, %419
  %422 = add i64 %421, %417
  %423 = icmp ult i64 %422, %60
  br i1 %423, label %432, label %424

424:                                              ; preds = %416
  %425 = add i64 %417, %60
  %426 = add i64 %425, 4096
  %427 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %426, i64 noundef 1) #25
  %428 = icmp eq ptr %427, null
  br i1 %428, label %498, label %429

429:                                              ; preds = %424
  %430 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %427) #22
  %431 = getelementptr inbounds i8, ptr %427, i64 %430
  br label %432

432:                                              ; preds = %429, %416
  %433 = phi i64 [ %425, %429 ], [ %60, %416 ]
  %434 = phi ptr [ %431, %429 ], [ %61, %416 ]
  %435 = phi ptr [ %427, %429 ], [ %62, %416 ]
  %436 = call i64 @CopyMagickString(ptr noundef %434, ptr noundef nonnull %414, i64 noundef %433) #19
  %437 = getelementptr inbounds i8, ptr %434, i64 %417
  br label %494

438:                                              ; preds = %413
  %439 = call ptr @GetImageArtifact(ptr noundef %1, ptr noundef nonnull %4) #19
  %440 = icmp eq ptr %439, null
  br i1 %440, label %463, label %441

441:                                              ; preds = %438
  %442 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %439) #22
  %443 = ptrtoint ptr %61 to i64
  %444 = ptrtoint ptr %62 to i64
  %445 = add i64 %443, 1
  %446 = sub i64 %445, %444
  %447 = add i64 %446, %442
  %448 = icmp ult i64 %447, %60
  br i1 %448, label %457, label %449

449:                                              ; preds = %441
  %450 = add i64 %442, %60
  %451 = add i64 %450, 4096
  %452 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %451, i64 noundef 1) #25
  %453 = icmp eq ptr %452, null
  br i1 %453, label %498, label %454

454:                                              ; preds = %449
  %455 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %452) #22
  %456 = getelementptr inbounds i8, ptr %452, i64 %455
  br label %457

457:                                              ; preds = %454, %441
  %458 = phi i64 [ %450, %454 ], [ %60, %441 ]
  %459 = phi ptr [ %456, %454 ], [ %61, %441 ]
  %460 = phi ptr [ %452, %454 ], [ %62, %441 ]
  %461 = call i64 @CopyMagickString(ptr noundef %459, ptr noundef nonnull %439, i64 noundef %458) #19
  %462 = getelementptr inbounds i8, ptr %459, i64 %442
  br label %494

463:                                              ; preds = %438
  br i1 %35, label %489, label %464

464:                                              ; preds = %463
  %465 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %466 = icmp eq ptr %465, null
  br i1 %466, label %489, label %467

467:                                              ; preds = %464
  %468 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %465) #22
  %469 = ptrtoint ptr %61 to i64
  %470 = ptrtoint ptr %62 to i64
  %471 = add i64 %469, 1
  %472 = sub i64 %471, %470
  %473 = add i64 %472, %468
  %474 = icmp ult i64 %473, %60
  br i1 %474, label %483, label %475

475:                                              ; preds = %467
  %476 = add i64 %468, %60
  %477 = add i64 %476, 4096
  %478 = call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %477, i64 noundef 1) #25
  %479 = icmp eq ptr %478, null
  br i1 %479, label %498, label %480

480:                                              ; preds = %475
  %481 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %478) #22
  %482 = getelementptr inbounds i8, ptr %478, i64 %481
  br label %483

483:                                              ; preds = %480, %467
  %484 = phi i64 [ %476, %480 ], [ %60, %467 ]
  %485 = phi ptr [ %482, %480 ], [ %61, %467 ]
  %486 = phi ptr [ %478, %480 ], [ %62, %467 ]
  %487 = call i64 @CopyMagickString(ptr noundef %485, ptr noundef nonnull %465, i64 noundef %484) #19
  %488 = getelementptr inbounds i8, ptr %485, i64 %468
  br label %494

489:                                              ; preds = %464, %463
  %490 = icmp sgt i64 %150, 63
  br i1 %490, label %491, label %492

491:                                              ; preds = %489
  store <4 x i8> <i8 46, i8 46, i8 46, i8 0>, ptr %36, align 1, !tbaa !78
  br label %492

492:                                              ; preds = %491, %489
  %493 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3570, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.76, ptr noundef nonnull %4) #19
  br label %494

494:                                              ; preds = %407, %310, %235, %369, %272, %197, %492, %193, %241, %316, %360, %432, %457, %483, %260, %335
  %495 = phi i64 [ %336, %335 ], [ %261, %260 ], [ %484, %483 ], [ %458, %457 ], [ %433, %432 ], [ %361, %360 ], [ %60, %316 ], [ %60, %241 ], [ %60, %193 ], [ %60, %492 ], [ %60, %197 ], [ %60, %272 ], [ %60, %369 ], [ %236, %235 ], [ %311, %310 ], [ %408, %407 ]
  %496 = phi ptr [ %340, %335 ], [ %265, %260 ], [ %488, %483 ], [ %462, %457 ], [ %437, %432 ], [ %365, %360 ], [ %61, %316 ], [ %61, %241 ], [ %61, %193 ], [ %61, %492 ], [ %61, %197 ], [ %61, %272 ], [ %61, %369 ], [ %237, %235 ], [ %312, %310 ], [ %409, %407 ]
  %497 = phi ptr [ %338, %335 ], [ %263, %260 ], [ %486, %483 ], [ %460, %457 ], [ %435, %432 ], [ %363, %360 ], [ %62, %316 ], [ %62, %241 ], [ %62, %193 ], [ %62, %492 ], [ %62, %197 ], [ %62, %272 ], [ %62, %369 ], [ %238, %235 ], [ %313, %310 ], [ %410, %407 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  br label %501

498:                                              ; preds = %352, %424, %449, %475, %252, %327, %393, %296, %221, %187
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  br label %521

499:                                              ; preds = %140
  %500 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3417, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  br label %518

501:                                              ; preds = %130, %136, %108, %494, %72, %78, %90, %93, %84, %64, %104, %96, %73, %71, %69, %67
  %502 = phi i64 [ %60, %96 ], [ %60, %104 ], [ %60, %78 ], [ %60, %84 ], [ %60, %90 ], [ %60, %93 ], [ %60, %73 ], [ %60, %72 ], [ %60, %71 ], [ %60, %69 ], [ %60, %67 ], [ %60, %64 ], [ %495, %494 ], [ %131, %130 ], [ %60, %136 ], [ %60, %108 ]
  %503 = phi ptr [ %43, %96 ], [ %103, %104 ], [ %80, %78 ], [ %86, %84 ], [ %92, %90 ], [ %43, %93 ], [ %65, %73 ], [ %65, %72 ], [ %65, %71 ], [ %65, %69 ], [ %65, %67 ], [ %43, %64 ], [ %149, %494 ], [ %103, %130 ], [ %103, %136 ], [ %110, %108 ]
  %504 = phi ptr [ %97, %96 ], [ %105, %104 ], [ %79, %78 ], [ %85, %84 ], [ %91, %90 ], [ %95, %93 ], [ %74, %73 ], [ %61, %72 ], [ %61, %71 ], [ %70, %69 ], [ %68, %67 ], [ %61, %64 ], [ %496, %494 ], [ %135, %130 ], [ %61, %136 ], [ %109, %108 ]
  %505 = phi ptr [ %62, %96 ], [ %62, %104 ], [ %62, %78 ], [ %62, %84 ], [ %62, %90 ], [ %62, %93 ], [ %62, %73 ], [ %62, %72 ], [ %62, %71 ], [ %62, %69 ], [ %62, %67 ], [ %62, %64 ], [ %497, %494 ], [ %133, %130 ], [ %62, %136 ], [ %62, %108 ]
  %506 = tail call ptr @__ctype_b_loc() #24
  %507 = load ptr, ptr %506, align 8, !tbaa !73
  %508 = load i8, ptr %503, align 1, !tbaa !78
  %509 = zext i8 %508 to i64
  %510 = getelementptr inbounds i16, ptr %507, i64 %509
  %511 = load i16, ptr %510, align 2, !tbaa !107
  %512 = lshr i16 %511, 11
  %513 = and i16 %512, 1
  %514 = zext nneg i16 %513 to i32
  %515 = getelementptr inbounds i8, ptr %503, i64 1
  %516 = load i8, ptr %515, align 1, !tbaa !78
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %518, label %40, !llvm.loop !166

518:                                              ; preds = %501, %30, %499
  %519 = phi ptr [ %61, %499 ], [ %31, %30 ], [ %504, %501 ]
  %520 = phi ptr [ %62, %499 ], [ %31, %30 ], [ %505, %501 ]
  store i8 0, ptr %519, align 1, !tbaa !78
  br label %521

521:                                              ; preds = %122, %51, %498, %11, %518, %27, %24, %15
  %522 = phi ptr [ %16, %15 ], [ null, %24 ], [ %29, %27 ], [ %520, %518 ], [ null, %11 ], [ null, %498 ], [ null, %51 ], [ null, %122 ]
  ret ptr %522
}

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsGlob(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ResetImageArtifactIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextImageArtifact(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImagePropertyIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3655, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #19
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #19
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3617, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #19
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDoubleInterval(ptr noundef %0) unnamed_addr #0 !PGOFuncName !167 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %2) #19
  %4 = load ptr, ptr %2, align 8, !tbaa !73
  %5 = load i8, ptr %4, align 1, !tbaa !78
  %6 = icmp eq i8 %5, 37
  %7 = fmul double %3, 6.553600e+02
  %8 = select i1 %6, double %7, double %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret double %8
}

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !168 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #19
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 !PGOFuncName !169 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #19
  ret double %2
}

; Function Attrs: optsize
declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @FileToStringInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !170 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #19
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #11 !PGOFuncName !171 {
  %2 = tail call i64 @llvm.smax.i64(i64 %0, i64 1)
  ret i64 %2
}

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @ReadPropertyByte(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !PGOFuncName !172 {
  %3 = load i64, ptr %1, align 8, !tbaa !65
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %0, align 8, !tbaa !73
  %8 = load i8, ptr %6, align 1, !tbaa !78
  %9 = zext i8 %8 to i32
  %10 = add i64 %3, -1
  store i64 %10, ptr %1, align 8, !tbaa !65
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %9, %5 ], [ -1, %2 ]
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @ReadPropertyMSBShort(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !PGOFuncName !173 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #21
  %4 = load i64, ptr %1, align 8, !tbaa !65
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i1 [ true, %6 ], [ false, %8 ]
  %10 = phi i64 [ 0, %6 ], [ 1, %8 ]
  %11 = phi ptr [ %7, %6 ], [ %13, %8 ]
  %12 = phi i64 [ %4, %6 ], [ %15, %8 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !73
  %14 = load i8, ptr %11, align 1, !tbaa !78
  %15 = add i64 %12, -1
  store i64 %15, ptr %1, align 8, !tbaa !65
  %16 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 %10
  store i8 %14, ptr %16, align 1, !tbaa !78
  br i1 %9, label %8, label %17, !llvm.loop !174

17:                                               ; preds = %8
  %18 = load i8, ptr %3, align 1, !tbaa !78
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 8
  %21 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !78
  %23 = zext i8 %22 to i16
  %24 = or disjoint i16 %20, %23
  br label %25

25:                                               ; preds = %2, %17
  %26 = phi i16 [ %24, %17 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #21
  ret i16 %26
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ReadPropertyMSBLong(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !PGOFuncName !175 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = load i64, ptr %1, align 8, !tbaa !65
  %5 = icmp ult i64 %4, 4
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = phi ptr [ %7, %6 ], [ %12, %8 ]
  %11 = phi i64 [ %4, %6 ], [ %14, %8 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %12, ptr %0, align 8, !tbaa !73
  %13 = load i8, ptr %10, align 1, !tbaa !78
  %14 = add i64 %11, -1
  store i64 %14, ptr %1, align 8, !tbaa !65
  %15 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 %9
  store i8 %13, ptr %15, align 1, !tbaa !78
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %8, !llvm.loop !176

18:                                               ; preds = %8
  %19 = load i8, ptr %3, align 1, !tbaa !78
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !78
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or disjoint i64 %25, %21
  %27 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !78
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 8
  %31 = or disjoint i64 %26, %30
  %32 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !78
  %34 = zext i8 %33 to i64
  %35 = or disjoint i64 %31, %34
  br label %36

36:                                               ; preds = %2, %18
  %37 = phi i64 [ %35, %18 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i64 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #11 !PGOFuncName !177 {
  %3 = tail call i64 @llvm.smin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @TraceSVGClippath(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !PGOFuncName !178 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [3 x %struct._PointInfo], align 16
  %9 = alloca [3 x %struct._PointInfo], align 16
  %10 = alloca [3 x %struct._PointInfo], align 16
  store ptr %0, ptr %5, align 8, !tbaa !73
  store i64 %1, ptr %6, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #21
  %11 = tail call ptr @AcquireString(ptr noundef null) #19
  store ptr %11, ptr %7, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %221, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @AcquireString(ptr noundef null) #19
  %15 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.96) #19
  %16 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %17 = uitofp i64 %2 to double
  %18 = uitofp i64 %3 to double
  %19 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.97, double noundef %17, double noundef %18) #19
  %20 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %21 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.98) #19
  %22 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %23 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.99) #19
  %24 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.100) #19
  %26 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %27 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 48) #19
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 48) #19
  %29 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 48) #19
  %30 = icmp eq i64 %1, 0
  br i1 %30, label %212, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds [3 x %struct._PointInfo], ptr %9, i64 0, i64 1
  %33 = getelementptr inbounds [3 x %struct._PointInfo], ptr %9, i64 0, i64 2
  %34 = getelementptr inbounds [3 x %struct._PointInfo], ptr %9, i64 0, i64 1, i32 1
  %35 = getelementptr inbounds [3 x %struct._PointInfo], ptr %9, i64 0, i64 2, i32 1
  %36 = getelementptr inbounds [3 x %struct._PointInfo], ptr %10, i64 0, i64 1
  %37 = getelementptr inbounds %struct._PointInfo, ptr %10, i64 0, i32 1
  %38 = getelementptr inbounds [3 x %struct._PointInfo], ptr %10, i64 0, i64 1, i32 1
  %39 = getelementptr inbounds [3 x %struct._PointInfo], ptr %8, i64 0, i64 1
  %40 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  %41 = getelementptr inbounds [3 x %struct._PointInfo], ptr %8, i64 0, i64 1, i32 1
  br label %42

42:                                               ; preds = %31, %207
  %43 = phi i32 [ 0, %31 ], [ %210, %207 ]
  %44 = phi i64 [ 0, %31 ], [ %209, %207 ]
  %45 = call fastcc zeroext i16 @ReadPropertyMSBShort(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  switch i16 %45, label %198 [
    i16 0, label %46
    i16 3, label %46
    i16 1, label %62
    i16 2, label %62
    i16 4, label %62
    i16 5, label %62
  ]

46:                                               ; preds = %42, %42
  %47 = icmp eq i64 %44, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %5, align 8, !tbaa !73
  %50 = getelementptr inbounds i8, ptr %49, i64 24
  store ptr %50, ptr %5, align 8, !tbaa !73
  %51 = load i64, ptr %6, align 8, !tbaa !65
  %52 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %51) #20, !range !102
  %53 = sub i64 %51, %52
  store i64 %53, ptr %6, align 8, !tbaa !65
  br label %207

54:                                               ; preds = %46
  %55 = call fastcc zeroext i16 @ReadPropertyMSBShort(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %56 = zext i16 %55 to i64
  %57 = load ptr, ptr %5, align 8, !tbaa !73
  %58 = getelementptr inbounds i8, ptr %57, i64 22
  store ptr %58, ptr %5, align 8, !tbaa !73
  %59 = load i64, ptr %6, align 8, !tbaa !65
  %60 = call fastcc i64 @MagickMin(i64 noundef 22, i64 noundef %59) #20, !range !102
  %61 = sub i64 %59, %60
  store i64 %61, ptr %6, align 8, !tbaa !65
  br label %207

62:                                               ; preds = %42, %42, %42, %42
  %63 = icmp eq i64 %44, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = load ptr, ptr %5, align 8, !tbaa !73
  %66 = getelementptr inbounds i8, ptr %65, i64 24
  store ptr %66, ptr %5, align 8, !tbaa !73
  %67 = load i64, ptr %6, align 8, !tbaa !65
  %68 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %67) #20, !range !102
  %69 = sub i64 %67, %68
  store i64 %69, ptr %6, align 8, !tbaa !65
  br label %207

70:                                               ; preds = %62, %70
  %71 = phi i64 [ %94, %70 ], [ 0, %62 ]
  %72 = call fastcc i64 @ReadPropertyMSBLong(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !101
  %73 = shl i64 %72, 32
  %74 = ashr exact i64 %73, 32
  %75 = call fastcc i64 @ReadPropertyMSBLong(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !101
  %76 = shl i64 %75, 32
  %77 = ashr exact i64 %76, 32
  %78 = icmp ugt i64 %77, 2147483647
  %79 = add nsw i64 %77, -4294967296
  %80 = select i1 %78, i64 %79, i64 %77
  %81 = icmp ugt i64 %74, 2147483647
  %82 = add nsw i64 %74, -4294967296
  %83 = select i1 %81, i64 %82, i64 %74
  %84 = sitofp i64 %80 to double
  %85 = fmul double %17, %84
  %86 = fmul double %85, 0x3F30000000000000
  %87 = fmul double %86, 0x3F30000000000000
  %88 = getelementptr inbounds [3 x %struct._PointInfo], ptr %10, i64 0, i64 %71
  store double %87, ptr %88, align 16, !tbaa !179
  %89 = sitofp i64 %83 to double
  %90 = fmul double %18, %89
  %91 = fmul double %90, 0x3F30000000000000
  %92 = fmul double %91, 0x3F30000000000000
  %93 = getelementptr inbounds [3 x %struct._PointInfo], ptr %10, i64 0, i64 %71, i32 1
  store double %92, ptr %93, align 8, !tbaa !181
  %94 = add nuw nsw i64 %71, 1
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %70, !llvm.loop !182

96:                                               ; preds = %70
  %97 = icmp eq i32 %43, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load double, ptr %36, align 16, !tbaa !179
  %100 = load double, ptr %38, align 8, !tbaa !181
  %101 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.101, double noundef %99, double noundef %100) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, ptr noundef nonnull align 16 dereferenceable(48) %10, i64 48, i1 false)
  br label %147

102:                                              ; preds = %96
  %103 = load double, ptr %32, align 16, !tbaa !179
  %104 = load double, ptr %33, align 16, !tbaa !179
  %105 = fcmp oeq double %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load double, ptr %10, align 16, !tbaa !179
  %108 = load double, ptr %36, align 16, !tbaa !179
  br label %127

109:                                              ; preds = %102
  %110 = load double, ptr %34, align 8, !tbaa !181
  %111 = load double, ptr %35, align 8, !tbaa !181
  %112 = fcmp oeq double %110, %111
  %113 = load double, ptr %10, align 16, !tbaa !179
  %114 = load double, ptr %36, align 16, !tbaa !179
  br i1 %112, label %115, label %127

115:                                              ; preds = %109
  %116 = fcmp oeq double %113, %114
  br i1 %116, label %117, label %123

117:                                              ; preds = %115
  %118 = load double, ptr %37, align 8, !tbaa !181
  %119 = load double, ptr %38, align 8, !tbaa !181
  %120 = fcmp oeq double %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.102, double noundef %114, double noundef %119) #19
  br label %147

123:                                              ; preds = %117, %115
  %124 = load double, ptr %37, align 8, !tbaa !181
  %125 = load double, ptr %38, align 8, !tbaa !181
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.103, double noundef %113, double noundef %124, double noundef %114, double noundef %125) #19
  br label %147

127:                                              ; preds = %109, %106
  %128 = phi double [ %108, %106 ], [ %114, %109 ]
  %129 = phi double [ %107, %106 ], [ %113, %109 ]
  %130 = fcmp oeq double %129, %128
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load double, ptr %35, align 8, !tbaa !181
  %133 = load double, ptr %37, align 8, !tbaa !181
  %134 = load double, ptr %38, align 8, !tbaa !181
  br label %142

135:                                              ; preds = %127
  %136 = load double, ptr %37, align 8, !tbaa !181
  %137 = load double, ptr %38, align 8, !tbaa !181
  %138 = fcmp oeq double %136, %137
  %139 = load double, ptr %35, align 8, !tbaa !181
  br i1 %138, label %140, label %142

140:                                              ; preds = %135
  %141 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.104, double noundef %104, double noundef %139, double noundef %128, double noundef %137) #19
  br label %147

142:                                              ; preds = %131, %135
  %143 = phi double [ %134, %131 ], [ %137, %135 ]
  %144 = phi double [ %133, %131 ], [ %136, %135 ]
  %145 = phi double [ %132, %131 ], [ %139, %135 ]
  %146 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.105, double noundef %104, double noundef %145, double noundef %129, double noundef %144, double noundef %128, double noundef %143) #19
  br label %147

147:                                              ; preds = %121, %140, %142, %123, %98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(48) %10, i64 48, i1 false)
  %148 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %149 = add nsw i64 %44, -1
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %204

151:                                              ; preds = %147
  %152 = load double, ptr %32, align 16, !tbaa !179
  %153 = load double, ptr %33, align 16, !tbaa !179
  %154 = fcmp oeq double %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load double, ptr %8, align 16, !tbaa !179
  %157 = load double, ptr %39, align 16, !tbaa !179
  br label %176

158:                                              ; preds = %151
  %159 = load double, ptr %34, align 8, !tbaa !181
  %160 = load double, ptr %35, align 8, !tbaa !181
  %161 = fcmp oeq double %159, %160
  %162 = load double, ptr %8, align 16, !tbaa !179
  %163 = load double, ptr %39, align 16, !tbaa !179
  br i1 %161, label %164, label %176

164:                                              ; preds = %158
  %165 = fcmp oeq double %162, %163
  br i1 %165, label %166, label %172

166:                                              ; preds = %164
  %167 = load double, ptr %40, align 8, !tbaa !181
  %168 = load double, ptr %41, align 8, !tbaa !181
  %169 = fcmp oeq double %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.106, double noundef %163, double noundef %168) #19
  br label %196

172:                                              ; preds = %166, %164
  %173 = load double, ptr %40, align 8, !tbaa !181
  %174 = load double, ptr %41, align 8, !tbaa !181
  %175 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.107, double noundef %162, double noundef %173, double noundef %163, double noundef %174) #19
  br label %196

176:                                              ; preds = %158, %155
  %177 = phi double [ %157, %155 ], [ %163, %158 ]
  %178 = phi double [ %156, %155 ], [ %162, %158 ]
  %179 = fcmp oeq double %178, %177
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load double, ptr %35, align 8, !tbaa !181
  %182 = load double, ptr %40, align 8, !tbaa !181
  %183 = load double, ptr %41, align 8, !tbaa !181
  br label %191

184:                                              ; preds = %176
  %185 = load double, ptr %40, align 8, !tbaa !181
  %186 = load double, ptr %41, align 8, !tbaa !181
  %187 = fcmp oeq double %185, %186
  %188 = load double, ptr %35, align 8, !tbaa !181
  br i1 %187, label %189, label %191

189:                                              ; preds = %184
  %190 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.108, double noundef %153, double noundef %188, double noundef %177, double noundef %186) #19
  br label %196

191:                                              ; preds = %180, %184
  %192 = phi double [ %183, %180 ], [ %186, %184 ]
  %193 = phi double [ %182, %180 ], [ %185, %184 ]
  %194 = phi double [ %181, %180 ], [ %188, %184 ]
  %195 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.109, double noundef %153, double noundef %194, double noundef %178, double noundef %193, double noundef %177, double noundef %192) #19
  br label %196

196:                                              ; preds = %172, %191, %189, %170
  %197 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  br label %204

198:                                              ; preds = %42
  %199 = load ptr, ptr %5, align 8, !tbaa !73
  %200 = getelementptr inbounds i8, ptr %199, i64 24
  store ptr %200, ptr %5, align 8, !tbaa !73
  %201 = load i64, ptr %6, align 8, !tbaa !65
  %202 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %201) #20, !range !102
  %203 = sub i64 %201, %202
  store i64 %203, ptr %6, align 8, !tbaa !65
  br label %207

204:                                              ; preds = %196, %147
  %205 = phi i32 [ 1, %147 ], [ 0, %196 ]
  %206 = load i64, ptr %6, align 8, !tbaa !65
  br label %207

207:                                              ; preds = %204, %198, %64, %54, %48
  %208 = phi i64 [ %206, %204 ], [ %203, %198 ], [ %69, %64 ], [ %61, %54 ], [ %53, %48 ]
  %209 = phi i64 [ %149, %204 ], [ %44, %198 ], [ 0, %64 ], [ %56, %54 ], [ %44, %48 ]
  %210 = phi i32 [ %205, %204 ], [ %43, %198 ], [ %43, %64 ], [ %43, %54 ], [ %43, %48 ]
  %211 = icmp eq i64 %208, 0
  br i1 %211, label %212, label %42, !llvm.loop !183

212:                                              ; preds = %207, %13
  %213 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.110) #19
  %214 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %215 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.111) #19
  %216 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %217 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %14, i64 noundef 4096, ptr noundef nonnull @.str.112) #19
  %218 = call i32 @ConcatenateString(ptr noundef nonnull %7, ptr noundef %14) #19
  %219 = call ptr @DestroyString(ptr noundef %14) #19
  %220 = load ptr, ptr %7, align 8, !tbaa !73
  br label %221

221:                                              ; preds = %4, %212
  %222 = phi ptr [ %220, %212 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret ptr %222
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @TracePSClippath(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !184 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x %struct._PointInfo], align 16
  %7 = alloca [3 x %struct._PointInfo], align 16
  %8 = alloca [3 x %struct._PointInfo], align 16
  store ptr %0, ptr %3, align 8, !tbaa !73
  store i64 %1, ptr %4, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #21
  %9 = tail call ptr @AcquireString(ptr noundef null) #19
  store ptr %9, ptr %5, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %223, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @AcquireString(ptr noundef null) #19
  %13 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.113) #19
  %14 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %15 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.114) #19
  %16 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.115) #19
  %18 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %19 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.116) #19
  %20 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %21 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.117) #19
  %22 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %23 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.118) #19
  %24 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.119) #19
  %26 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %27 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.120) #19
  %28 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %29 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.121) #19
  %30 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 48) #19
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 48) #19
  %33 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 48) #19
  %34 = icmp eq i64 %1, 0
  br i1 %34, label %216, label %35

35:                                               ; preds = %11
  %36 = getelementptr inbounds [3 x %struct._PointInfo], ptr %7, i64 0, i64 1
  %37 = getelementptr inbounds [3 x %struct._PointInfo], ptr %7, i64 0, i64 2
  %38 = getelementptr inbounds [3 x %struct._PointInfo], ptr %7, i64 0, i64 1, i32 1
  %39 = getelementptr inbounds [3 x %struct._PointInfo], ptr %7, i64 0, i64 2, i32 1
  %40 = getelementptr inbounds [3 x %struct._PointInfo], ptr %8, i64 0, i64 1
  %41 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  %42 = getelementptr inbounds [3 x %struct._PointInfo], ptr %8, i64 0, i64 1, i32 1
  %43 = getelementptr inbounds [3 x %struct._PointInfo], ptr %6, i64 0, i64 1
  %44 = getelementptr inbounds %struct._PointInfo, ptr %6, i64 0, i32 1
  %45 = getelementptr inbounds [3 x %struct._PointInfo], ptr %6, i64 0, i64 1, i32 1
  br label %46

46:                                               ; preds = %35, %211
  %47 = phi i32 [ 0, %35 ], [ %214, %211 ]
  %48 = phi i64 [ 0, %35 ], [ %213, %211 ]
  %49 = call fastcc zeroext i16 @ReadPropertyMSBShort(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  switch i16 %49, label %202 [
    i16 0, label %50
    i16 3, label %50
    i16 1, label %66
    i16 2, label %66
    i16 4, label %66
    i16 5, label %66
  ]

50:                                               ; preds = %46, %46
  %51 = icmp eq i64 %48, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %3, align 8, !tbaa !73
  %54 = getelementptr inbounds i8, ptr %53, i64 24
  store ptr %54, ptr %3, align 8, !tbaa !73
  %55 = load i64, ptr %4, align 8, !tbaa !65
  %56 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %55) #20, !range !102
  %57 = sub i64 %55, %56
  store i64 %57, ptr %4, align 8, !tbaa !65
  br label %211

58:                                               ; preds = %50
  %59 = call fastcc zeroext i16 @ReadPropertyMSBShort(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %60 = zext i16 %59 to i64
  %61 = load ptr, ptr %3, align 8, !tbaa !73
  %62 = getelementptr inbounds i8, ptr %61, i64 22
  store ptr %62, ptr %3, align 8, !tbaa !73
  %63 = load i64, ptr %4, align 8, !tbaa !65
  %64 = call fastcc i64 @MagickMin(i64 noundef 22, i64 noundef %63) #20, !range !102
  %65 = sub i64 %63, %64
  store i64 %65, ptr %4, align 8, !tbaa !65
  br label %211

66:                                               ; preds = %46, %46, %46, %46
  %67 = icmp eq i64 %48, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  %69 = load ptr, ptr %3, align 8, !tbaa !73
  %70 = getelementptr inbounds i8, ptr %69, i64 24
  store ptr %70, ptr %3, align 8, !tbaa !73
  %71 = load i64, ptr %4, align 8, !tbaa !65
  %72 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %71) #20, !range !102
  %73 = sub i64 %71, %72
  store i64 %73, ptr %4, align 8, !tbaa !65
  br label %211

74:                                               ; preds = %66, %74
  %75 = phi i64 [ %98, %74 ], [ 0, %66 ]
  %76 = call fastcc i64 @ReadPropertyMSBLong(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !101
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = call fastcc i64 @ReadPropertyMSBLong(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !101
  %80 = shl i64 %79, 32
  %81 = ashr exact i64 %80, 32
  %82 = icmp ugt i64 %81, 2147483647
  %83 = add nsw i64 %81, -4294967296
  %84 = select i1 %82, i64 %83, i64 %81
  %85 = icmp ugt i64 %78, 2147483647
  %86 = add nsw i64 %78, -4294967296
  %87 = select i1 %85, i64 %86, i64 %78
  %88 = sitofp i64 %84 to double
  %89 = getelementptr inbounds [3 x %struct._PointInfo], ptr %8, i64 0, i64 %75
  %90 = sitofp i64 %87 to double
  %91 = fmul double %90, 0x3F30000000000000
  %92 = insertelement <2 x double> poison, double %88, i64 0
  %93 = insertelement <2 x double> %92, double %91, i64 1
  %94 = fmul <2 x double> %93, <double 0x3F30000000000000, double 0x3F30000000000000>
  %95 = fmul <2 x double> %94, <double 0x3F30000000000000, double poison>
  %96 = fsub <2 x double> <double poison, double 1.000000e+00>, %94
  %97 = shufflevector <2 x double> %95, <2 x double> %96, <2 x i32> <i32 0, i32 3>
  store <2 x double> %97, ptr %89, align 16, !tbaa !58
  %98 = add nuw nsw i64 %75, 1
  %99 = icmp eq i64 %98, 3
  br i1 %99, label %100, label %74, !llvm.loop !185

100:                                              ; preds = %74
  %101 = icmp eq i32 %47, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = load double, ptr %40, align 16, !tbaa !179
  %104 = load double, ptr %42, align 8, !tbaa !181
  %105 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.122, double noundef %103, double noundef %104) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 16 dereferenceable(48) %8, i64 48, i1 false)
  br label %151

106:                                              ; preds = %100
  %107 = load double, ptr %36, align 16, !tbaa !179
  %108 = load double, ptr %37, align 16, !tbaa !179
  %109 = fcmp oeq double %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load double, ptr %8, align 16, !tbaa !179
  %112 = load double, ptr %40, align 16, !tbaa !179
  br label %131

113:                                              ; preds = %106
  %114 = load double, ptr %38, align 8, !tbaa !181
  %115 = load double, ptr %39, align 8, !tbaa !181
  %116 = fcmp oeq double %114, %115
  %117 = load double, ptr %8, align 16, !tbaa !179
  %118 = load double, ptr %40, align 16, !tbaa !179
  br i1 %116, label %119, label %131

119:                                              ; preds = %113
  %120 = fcmp oeq double %117, %118
  br i1 %120, label %121, label %127

121:                                              ; preds = %119
  %122 = load double, ptr %41, align 8, !tbaa !181
  %123 = load double, ptr %42, align 8, !tbaa !181
  %124 = fcmp oeq double %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.123, double noundef %118, double noundef %123) #19
  br label %151

127:                                              ; preds = %121, %119
  %128 = load double, ptr %41, align 8, !tbaa !181
  %129 = load double, ptr %42, align 8, !tbaa !181
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.124, double noundef %117, double noundef %128, double noundef %118, double noundef %129) #19
  br label %151

131:                                              ; preds = %113, %110
  %132 = phi double [ %112, %110 ], [ %118, %113 ]
  %133 = phi double [ %111, %110 ], [ %117, %113 ]
  %134 = fcmp oeq double %133, %132
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load double, ptr %39, align 8, !tbaa !181
  %137 = load double, ptr %41, align 8, !tbaa !181
  %138 = load double, ptr %42, align 8, !tbaa !181
  br label %146

139:                                              ; preds = %131
  %140 = load double, ptr %41, align 8, !tbaa !181
  %141 = load double, ptr %42, align 8, !tbaa !181
  %142 = fcmp oeq double %140, %141
  %143 = load double, ptr %39, align 8, !tbaa !181
  br i1 %142, label %144, label %146

144:                                              ; preds = %139
  %145 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.125, double noundef %108, double noundef %143, double noundef %132, double noundef %141) #19
  br label %151

146:                                              ; preds = %135, %139
  %147 = phi double [ %138, %135 ], [ %141, %139 ]
  %148 = phi double [ %137, %135 ], [ %140, %139 ]
  %149 = phi double [ %136, %135 ], [ %143, %139 ]
  %150 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.126, double noundef %108, double noundef %149, double noundef %133, double noundef %148, double noundef %132, double noundef %147) #19
  br label %151

151:                                              ; preds = %125, %144, %146, %127, %102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 16 dereferenceable(48) %8, i64 48, i1 false)
  %152 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %153 = add nsw i64 %48, -1
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %208

155:                                              ; preds = %151
  %156 = load double, ptr %36, align 16, !tbaa !179
  %157 = load double, ptr %37, align 16, !tbaa !179
  %158 = fcmp oeq double %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load double, ptr %6, align 16, !tbaa !179
  %161 = load double, ptr %43, align 16, !tbaa !179
  br label %180

162:                                              ; preds = %155
  %163 = load double, ptr %38, align 8, !tbaa !181
  %164 = load double, ptr %39, align 8, !tbaa !181
  %165 = fcmp oeq double %163, %164
  %166 = load double, ptr %6, align 16, !tbaa !179
  %167 = load double, ptr %43, align 16, !tbaa !179
  br i1 %165, label %168, label %180

168:                                              ; preds = %162
  %169 = fcmp oeq double %166, %167
  br i1 %169, label %170, label %176

170:                                              ; preds = %168
  %171 = load double, ptr %44, align 8, !tbaa !181
  %172 = load double, ptr %45, align 8, !tbaa !181
  %173 = fcmp oeq double %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.127, double noundef %167, double noundef %172) #19
  br label %200

176:                                              ; preds = %170, %168
  %177 = load double, ptr %44, align 8, !tbaa !181
  %178 = load double, ptr %45, align 8, !tbaa !181
  %179 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.128, double noundef %166, double noundef %177, double noundef %167, double noundef %178) #19
  br label %200

180:                                              ; preds = %162, %159
  %181 = phi double [ %161, %159 ], [ %167, %162 ]
  %182 = phi double [ %160, %159 ], [ %166, %162 ]
  %183 = fcmp oeq double %182, %181
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load double, ptr %39, align 8, !tbaa !181
  %186 = load double, ptr %44, align 8, !tbaa !181
  %187 = load double, ptr %45, align 8, !tbaa !181
  br label %195

188:                                              ; preds = %180
  %189 = load double, ptr %44, align 8, !tbaa !181
  %190 = load double, ptr %45, align 8, !tbaa !181
  %191 = fcmp oeq double %189, %190
  %192 = load double, ptr %39, align 8, !tbaa !181
  br i1 %191, label %193, label %195

193:                                              ; preds = %188
  %194 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.129, double noundef %157, double noundef %192, double noundef %181, double noundef %190) #19
  br label %200

195:                                              ; preds = %184, %188
  %196 = phi double [ %187, %184 ], [ %190, %188 ]
  %197 = phi double [ %186, %184 ], [ %189, %188 ]
  %198 = phi double [ %185, %184 ], [ %192, %188 ]
  %199 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.130, double noundef %157, double noundef %198, double noundef %182, double noundef %197, double noundef %181, double noundef %196) #19
  br label %200

200:                                              ; preds = %176, %195, %193, %174
  %201 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  br label %208

202:                                              ; preds = %46
  %203 = load ptr, ptr %3, align 8, !tbaa !73
  %204 = getelementptr inbounds i8, ptr %203, i64 24
  store ptr %204, ptr %3, align 8, !tbaa !73
  %205 = load i64, ptr %4, align 8, !tbaa !65
  %206 = call fastcc i64 @MagickMin(i64 noundef 24, i64 noundef %205) #20, !range !102
  %207 = sub i64 %205, %206
  store i64 %207, ptr %4, align 8, !tbaa !65
  br label %211

208:                                              ; preds = %200, %151
  %209 = phi i32 [ 1, %151 ], [ 0, %200 ]
  %210 = load i64, ptr %4, align 8, !tbaa !65
  br label %211

211:                                              ; preds = %208, %202, %68, %58, %52
  %212 = phi i64 [ %210, %208 ], [ %207, %202 ], [ %73, %68 ], [ %65, %58 ], [ %57, %52 ]
  %213 = phi i64 [ %153, %208 ], [ %48, %202 ], [ 0, %68 ], [ %60, %58 ], [ %48, %52 ]
  %214 = phi i32 [ %209, %208 ], [ %47, %202 ], [ %47, %68 ], [ %47, %58 ], [ %47, %52 ]
  %215 = icmp eq i64 %212, 0
  br i1 %215, label %216, label %46, !llvm.loop !186

216:                                              ; preds = %211, %11
  %217 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.131) #19
  %218 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %219 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %12, i64 noundef 4096, ptr noundef nonnull @.str.132) #19
  %220 = call i32 @ConcatenateString(ptr noundef nonnull %5, ptr noundef %12) #19
  %221 = call ptr @DestroyString(ptr noundef %12) #19
  %222 = load ptr, ptr %5, align 8, !tbaa !73
  br label %223

223:                                              ; preds = %2, %216
  %224 = phi ptr [ %222, %216 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret ptr %224
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @ReadPropertyShort(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !187 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 1
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !78
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !78
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %9, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i16 [ %5, %4 ], [ %13, %6 ]
  ret i16 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ReadPropertyLong(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !188 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 1
  %6 = zext i32 %5 to i64
  br label %25

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !78
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 24
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !78
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %14, %10
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !78
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 8
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr inbounds i8, ptr %1, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !78
  %23 = zext i8 %22 to i64
  %24 = or disjoint i64 %20, %23
  br label %25

25:                                               ; preds = %7, %4
  %26 = phi i64 [ %6, %4 ], [ %24, %7 ]
  ret i64 %26
}

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @StringInfoToString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeTag(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetXMLTreeSibling(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: optsize
declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SignatureImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { nounwind optsize allocsize(0,1) }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { nounwind optsize allocsize(1,2) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !36, i64 8}
!54 = !{!35, !39, i64 16}
!55 = !{!35, !39, i64 56}
!56 = !{!35, !43, i64 104}
!57 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !58, i64 40, i64 8, !58, i64 48, i64 8, !58, i64 56, i64 8, !58, i64 64, i64 8, !58, i64 72, i64 8, !58, i64 80, i64 8, !58, i64 88, i64 8, !58}
!58 = !{!43, !43, i64 0}
!59 = !{!35, !36, i64 208}
!60 = !{!35, !36, i64 13116}
!61 = !{!35, !36, i64 224}
!62 = !{!35, !40, i64 248}
!63 = !{!35, !39, i64 256}
!64 = !{i64 0, i64 8, !65, i64 8, i64 8, !65, i64 16, i64 8, !65, i64 24, i64 8, !65}
!65 = !{!39, !39, i64 0}
!66 = !{!35, !43, i64 392}
!67 = !{!35, !36, i64 13224}
!68 = !{!35, !36, i64 13112}
!69 = !{!36, !36, i64 0}
!70 = !{!35, !36, i64 416}
!71 = !{!35, !39, i64 432}
!72 = !{!35, !36, i64 420}
!73 = !{!40, !40, i64 0}
!74 = !{!35, !39, i64 472}
!75 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58}
!76 = !{!35, !39, i64 13080}
!77 = !{!35, !40, i64 13168}
!78 = !{!37, !37, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!35, !43, i64 376}
!82 = !{!35, !39, i64 440}
!83 = !{!84, !43, i64 0}
!84 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!85 = !{!84, !43, i64 8}
!86 = !{!35, !39, i64 448}
!87 = !{!35, !43, i64 264}
!88 = !{!35, !36, i64 412}
!89 = !{!35, !39, i64 456}
!90 = !{!91, !92, i64 32}
!91 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !92, i64 32, !92, i64 36, !92, i64 40, !92, i64 44, !92, i64 48}
!92 = !{!"float", !37, i64 0}
!93 = !{!91, !92, i64 36}
!94 = !{!91, !92, i64 40}
!95 = !{!91, !92, i64 44}
!96 = !{!35, !36, i64 4}
!97 = !{!91, !92, i64 48}
!98 = !{!"property.c:Get8BIMProperty"}
!99 = !{i32 -1, i32 256}
!100 = distinct !{!100, !80}
!101 = !{i64 -1, i64 4294967296}
!102 = !{i64 -9223372036854775808, i64 2147483648}
!103 = distinct !{!103, !80}
!104 = !{!35, !39, i64 48}
!105 = !{!35, !39, i64 40}
!106 = !{!"property.c:GetEXIFProperty"}
!107 = !{!42, !42, i64 0}
!108 = distinct !{!108, !80}
!109 = distinct !{!109, !80}
!110 = !{!111, !39, i64 0}
!111 = !{!"_TagInfo", !39, i64 0, !40, i64 8}
!112 = !{!111, !40, i64 8}
!113 = distinct !{!113, !80}
!114 = !{i64 0, i64 4294967296}
!115 = !{!116, !40, i64 0}
!116 = !{!"_DirectoryInfo", !40, i64 0, !39, i64 8, !39, i64 16}
!117 = !{!116, !39, i64 8}
!118 = !{!116, !39, i64 16}
!119 = distinct !{!119, !80}
!120 = distinct !{!120, !80}
!121 = distinct !{!121, !80}
!122 = distinct !{!122, !80}
!123 = distinct !{!123, !80}
!124 = distinct !{!124, !80}
!125 = distinct !{!125, !80}
!126 = distinct !{!126, !80}
!127 = !{!92, !92, i64 0}
!128 = distinct !{!128, !80}
!129 = distinct !{!129, !80}
!130 = distinct !{!130, !80}
!131 = distinct !{!131, !80}
!132 = distinct !{!132, !80}
!133 = !{!"property.c:GetICCProperty"}
!134 = !{!"property.c:GetIPTCProperty"}
!135 = distinct !{!135, !80}
!136 = !{!"property.c:GetXMPProperty"}
!137 = distinct !{!137, !80}
!138 = distinct !{!138, !80}
!139 = distinct !{!139, !80}
!140 = distinct !{!140, !80}
!141 = !{!35, !36, i64 32}
!142 = !{!143, !39, i64 216}
!143 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!144 = !{!35, !39, i64 12912}
!145 = !{!143, !36, i64 248}
!146 = !{!35, !36, i64 24}
!147 = distinct !{!147, !80}
!148 = !{!35, !43, i64 272}
!149 = !{!143, !39, i64 64}
!150 = !{!143, !39, i64 56}
!151 = !{!35, !39, i64 12904}
!152 = !{!"property.c:GetMagickPropertyLetter"}
!153 = !{!35, !52, i64 13192}
!154 = !{!35, !39, i64 280}
!155 = !{!35, !39, i64 288}
!156 = !{!35, !39, i64 296}
!157 = !{!35, !39, i64 304}
!158 = !{!35, !36, i64 0}
!159 = !{i64 0, i64 8, !65, i64 8, i64 8, !65, i64 16, i64 8, !65}
!160 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!161 = !{i64 0, i64 8, !65}
!162 = distinct !{!162, !80}
!163 = distinct !{!163, !80}
!164 = distinct !{!164, !80}
!165 = distinct !{!165, !80}
!166 = distinct !{!166, !80}
!167 = !{!"property.c:StringToDoubleInterval"}
!168 = !{!"property.c:StringToUnsignedLong"}
!169 = !{!"property.c:StringToDouble"}
!170 = !{!"property.c:StringToLong"}
!171 = !{!"property.c:MagickMax"}
!172 = !{!"property.c:ReadPropertyByte"}
!173 = !{!"property.c:ReadPropertyMSBShort"}
!174 = distinct !{!174, !80}
!175 = !{!"property.c:ReadPropertyMSBLong"}
!176 = distinct !{!176, !80}
!177 = !{!"property.c:MagickMin"}
!178 = !{!"property.c:TraceSVGClippath"}
!179 = !{!180, !43, i64 0}
!180 = !{!"_PointInfo", !43, i64 0, !43, i64 8}
!181 = !{!180, !43, i64 8}
!182 = distinct !{!182, !80}
!183 = distinct !{!183, !80}
!184 = !{!"property.c:TracePSClippath"}
!185 = distinct !{!185, !80}
!186 = distinct !{!186, !80}
!187 = !{!"property.c:ReadPropertyShort"}
!188 = !{!"property.c:ReadPropertyLong"}
