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
%struct._DirectoryInfo = type { ptr, i64, i64 }
%struct._PointInfo = type { double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CloneImageProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 136, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 140, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #14
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %19 = tail call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 4096) #14
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  %22 = tail call i64 @CopyMagickString(ptr noundef nonnull %20, ptr noundef nonnull %21, i64 noundef 4096) #14
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
  %62 = tail call ptr @CloneString(ptr noundef nonnull %59, ptr noundef %61) #14
  %63 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 23
  %64 = load i64, ptr %63, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 23
  store i64 %64, ptr %65, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %67 = load double, ptr %66, align 8, !tbaa !64
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  store double %67, ptr %68, align 8, !tbaa !64
  %69 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %70 = load double, ptr %69, align 8, !tbaa !65
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  store double %70, ptr %71, align 8, !tbaa !65
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %73 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(32) %73, i64 32, i1 false), !tbaa.struct !66
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74
  %75 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(32) %75, i64 32, i1 false), !tbaa.struct !66
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27
  %77 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !66
  %78 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 29
  %79 = load double, ptr %78, align 8, !tbaa !68
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  store double %79, ptr %80, align 8, !tbaa !68
  %81 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 32
  %82 = load i32, ptr %81, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  store i32 %82, ptr %83, align 8, !tbaa !69
  %84 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 30
  %85 = load double, ptr %84, align 8, !tbaa !70
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  store double %85, ptr %86, align 8, !tbaa !70
  %87 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 31
  %88 = load double, ptr %87, align 8, !tbaa !71
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  store double %88, ptr %89, align 8, !tbaa !71
  %90 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 83
  %91 = load i32, ptr %90, align 8, !tbaa !72
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %91, ptr %92, align 8, !tbaa !72
  %93 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 33
  %94 = load i32, ptr %93, align 4, !tbaa !73
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 33
  store i32 %94, ptr %95, align 4, !tbaa !73
  %96 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 70
  %97 = load i32, ptr %96, align 8, !tbaa !74
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  store i32 %97, ptr %98, align 8, !tbaa !74
  %99 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %100 = load i32, ptr %99, align 8, !tbaa !75
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  store i32 %100, ptr %101, align 8, !tbaa !75
  %102 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 35
  %103 = load i32, ptr %102, align 4, !tbaa !76
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  store i32 %103, ptr %104, align 4, !tbaa !76
  %105 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 36
  %106 = load i32, ptr %105, align 8, !tbaa !77
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  store i32 %106, ptr %107, align 8, !tbaa !77
  %108 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %109 = load i64, ptr %108, align 8, !tbaa !78
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  store i64 %109, ptr %110, align 8, !tbaa !78
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !79
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  store i32 %112, ptr %113, align 8, !tbaa !79
  %114 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 37
  %115 = load i32, ptr %114, align 4, !tbaa !80
  %116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  store i32 %115, ptr %116, align 4, !tbaa !80
  %117 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 40
  %118 = load i64, ptr %117, align 8, !tbaa !81
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  store i64 %118, ptr %119, align 8, !tbaa !81
  %120 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 41
  %121 = load i64, ptr %120, align 8, !tbaa !82
  %122 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  store i64 %121, ptr %122, align 8, !tbaa !82
  %123 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 42
  %124 = load i64, ptr %123, align 8, !tbaa !83
  %125 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  store i64 %124, ptr %125, align 8, !tbaa !83
  %126 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 43
  %127 = load i64, ptr %126, align 8, !tbaa !84
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  store i64 %127, ptr %128, align 8, !tbaa !84
  %129 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !85
  %131 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 5
  store i32 %130, ptr %131, align 4, !tbaa !85
  %132 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  store ptr %133, ptr %134, align 8, !tbaa !86
  %135 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  %136 = load ptr, ptr %135, align 8, !tbaa !87
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  store ptr %136, ptr %137, align 8, !tbaa !87
  %138 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 44
  %139 = load i64, ptr %138, align 8, !tbaa !88
  %140 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 44
  store i64 %139, ptr %140, align 8, !tbaa !88
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %142 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %141, ptr noundef nonnull align 8 dereferenceable(24) %142, i64 24, i1 false), !tbaa.struct !89
  %143 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 66
  %144 = load i64, ptr %143, align 8, !tbaa !90
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 66
  store i64 %144, ptr %145, align 8, !tbaa !90
  %146 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 75
  %147 = load ptr, ptr %146, align 8, !tbaa !91
  %148 = icmp eq ptr %147, null
  br i1 %148, label %166, label %149

149:                                              ; preds = %16
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %151 = load ptr, ptr %150, align 8, !tbaa !91
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %3, align 8, !tbaa !34
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #14
  br label %158

158:                                              ; preds = %156, %153
  %159 = load ptr, ptr %150, align 8, !tbaa !91
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call ptr @DestroySplayTree(ptr noundef nonnull %159) #14
  store ptr %162, ptr %150, align 8, !tbaa !91
  br label %163

163:                                              ; preds = %161, %158, %149
  %164 = load ptr, ptr %146, align 8, !tbaa !91
  %165 = tail call ptr @CloneSplayTree(ptr noundef %164, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #14
  store ptr %165, ptr %150, align 8, !tbaa !91
  br label %166

166:                                              ; preds = %163, %16
  ret i32 1
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageProperties(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 313, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #14
  store ptr %13, ptr %9, align 8, !tbaa !91
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ConstantString(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @DefineImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4095) #14
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi ptr [ %3, %2 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !92
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 61, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !93

11:                                               ; preds = %6, %6
  store i8 0, ptr %4, align 16, !tbaa !92
  %12 = icmp eq i8 %8, 61
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef 4096) #14
  br label %16

16:                                               ; preds = %13, %11
  store i8 0, ptr %7, align 1, !tbaa !92
  %17 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #14
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3705, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #14
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #14
  store ptr %18, ptr %14, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %17, %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load i32, ptr %7, align 8, !tbaa !34
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 278, ptr noundef nonnull @.str.2, ptr noundef nonnull %25) #14
  br label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr %14, align 8, !tbaa !91
  %29 = icmp eq ptr %28, null
  br i1 %29, label %311, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %28, ptr noundef %1) #14
  br label %311

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = load i8, ptr %1, align 1, !tbaa !92
  switch i8 %34, label %306 [
    i8 66, label %35
    i8 98, label %35
    i8 67, label %57
    i8 99, label %57
    i8 68, label %89
    i8 100, label %89
    i8 71, label %173
    i8 103, label %173
    i8 73, label %193
    i8 105, label %193
    i8 76, label %225
    i8 108, label %225
    i8 80, label %236
    i8 112, label %236
    i8 82, label %265
    i8 114, label %265
    i8 84, label %279
    i8 116, label %279
    i8 85, label %292
    i8 117, label %292
  ]

35:                                               ; preds = %32, %32
  %36 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.77, ptr noundef nonnull %1) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %40 = tail call i32 @QueryColorDatabase(ptr noundef %2, ptr noundef nonnull %39, ptr noundef nonnull %33) #14
  br label %311

41:                                               ; preds = %35
  %42 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.78, ptr noundef nonnull %1) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %45 = call double @InterpretLocaleValue(ptr noundef %2, ptr noundef nonnull %4) #14
  %46 = load ptr, ptr %4, align 8, !tbaa !96
  %47 = load i8, ptr %46, align 1, !tbaa !92
  %48 = icmp eq i8 %47, 37
  %49 = fmul double %45, 6.553600e+02
  %50 = select i1 %48, double %49, double %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  store double %50, ptr %51, align 8, !tbaa !68
  br label %311

52:                                               ; preds = %41
  %53 = load ptr, ptr %14, align 8, !tbaa !91
  %54 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %55 = tail call ptr @ConstantString(ptr noundef %2) #14
  %56 = tail call i32 @AddValueToSplayTree(ptr noundef %53, ptr noundef %54, ptr noundef %55) #14
  br label %311

57:                                               ; preds = %32, %32
  %58 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = tail call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef %2) #14
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %311, label %63

63:                                               ; preds = %60
  %64 = trunc i64 %61 to i32
  %65 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef %64) #14
  br label %311

66:                                               ; preds = %57
  %67 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.79, ptr noundef nonnull %1) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = tail call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef %2) #14
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %311, label %72

72:                                               ; preds = %69
  %73 = trunc i64 %70 to i32
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  store i32 %73, ptr %74, align 8, !tbaa !77
  br label %311

75:                                               ; preds = %66
  %76 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.80, ptr noundef nonnull %1) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = tail call i64 @ParseCommandOption(i32 noundef 12, i32 noundef 0, ptr noundef %2) #14
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %311, label %81

81:                                               ; preds = %78
  %82 = trunc i64 %79 to i32
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !53
  br label %311

84:                                               ; preds = %75
  %85 = load ptr, ptr %14, align 8, !tbaa !91
  %86 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %87 = tail call ptr @ConstantString(ptr noundef %2) #14
  %88 = tail call i32 @AddValueToSplayTree(ptr noundef %85, ptr noundef %86, ptr noundef %87) #14
  br label %311

89:                                               ; preds = %32, %32
  %90 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.81, ptr noundef nonnull %1) #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %93 = call i32 @ParseGeometry(ptr noundef %2, ptr noundef nonnull %5) #14
  %94 = and i32 %93, 32768
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %98 = load i64, ptr %97, align 8, !tbaa !81
  %99 = load double, ptr %5, align 8, !tbaa !97
  %100 = fadd double %99, 5.000000e-01
  %101 = call double @llvm.floor.f64(double %100)
  %102 = fptoui double %101 to i64
  %103 = icmp ugt i64 %98, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %96
  store i64 %102, ptr %97, align 8, !tbaa !81
  br label %129

105:                                              ; preds = %92
  %106 = and i32 %93, 16384
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %110 = load i64, ptr %109, align 8, !tbaa !81
  %111 = load double, ptr %5, align 8, !tbaa !97
  %112 = fadd double %111, 5.000000e-01
  %113 = call double @llvm.floor.f64(double %112)
  %114 = fptoui double %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %118 = load double, ptr %117, align 8, !tbaa !99
  %119 = fadd double %118, 5.000000e-01
  %120 = call double @llvm.floor.f64(double %119)
  %121 = fptosi double %120 to i64
  %122 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  store i64 %121, ptr %122, align 8, !tbaa !82
  br label %129

123:                                              ; preds = %105
  %124 = load double, ptr %5, align 8, !tbaa !97
  %125 = fadd double %124, 5.000000e-01
  %126 = call double @llvm.floor.f64(double %125)
  %127 = fptoui double %126 to i64
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  store i64 %127, ptr %128, align 8, !tbaa !81
  br label %129

129:                                              ; preds = %123, %116, %108, %96, %104
  %130 = and i32 %93, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %134 = load double, ptr %133, align 8, !tbaa !99
  %135 = fadd double %134, 5.000000e-01
  %136 = call double @llvm.floor.f64(double %135)
  %137 = fptosi double %136 to i64
  %138 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  store i64 %137, ptr %138, align 8, !tbaa !82
  br label %139

139:                                              ; preds = %132, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %311

140:                                              ; preds = %89
  %141 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.82, ptr noundef nonnull %1) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %144 = call i32 @ParseGeometry(ptr noundef %2, ptr noundef nonnull %6) #14
  %145 = load double, ptr %6, align 8, !tbaa !97
  %146 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  store double %145, ptr %146, align 8, !tbaa !64
  %147 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %148 = load double, ptr %147, align 8, !tbaa !99
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %150 = and i32 %144, 8
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, double %145, double %148
  store double %152, ptr %149, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  br label %153

153:                                              ; preds = %143, %140
  %154 = call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %1) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = call i64 @strtoul(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #14
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %157, ptr %158, align 8, !tbaa !55
  br label %311

159:                                              ; preds = %153
  %160 = call i32 @LocaleCompare(ptr noundef nonnull @.str.83, ptr noundef nonnull %1) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = call i64 @ParseCommandOption(i32 noundef 19, i32 noundef 0, ptr noundef %2) #14
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %311, label %165

165:                                              ; preds = %162
  %166 = trunc i64 %163 to i32
  %167 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  store i32 %166, ptr %167, align 4, !tbaa !80
  br label %311

168:                                              ; preds = %159
  %169 = load ptr, ptr %14, align 8, !tbaa !91
  %170 = call ptr @ConstantString(ptr noundef nonnull %1) #14
  %171 = call ptr @ConstantString(ptr noundef %2) #14
  %172 = call i32 @AddValueToSplayTree(ptr noundef %169, ptr noundef %170, ptr noundef %171) #14
  br label %311

173:                                              ; preds = %32, %32
  %174 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %1) #14
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = tail call double @InterpretLocaleValue(ptr noundef %2, ptr noundef null) #14
  %178 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  store double %177, ptr %178, align 8, !tbaa !56
  br label %311

179:                                              ; preds = %173
  %180 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.84, ptr noundef nonnull %1) #14
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef %2) #14
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %311, label %185

185:                                              ; preds = %182
  %186 = trunc i64 %183 to i32
  %187 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  store i32 %186, ptr %187, align 4, !tbaa !76
  br label %311

188:                                              ; preds = %179
  %189 = load ptr, ptr %14, align 8, !tbaa !91
  %190 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %191 = tail call ptr @ConstantString(ptr noundef %2) #14
  %192 = tail call i32 @AddValueToSplayTree(ptr noundef %189, ptr noundef %190, ptr noundef %191) #14
  br label %311

193:                                              ; preds = %32, %32
  %194 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.85, ptr noundef nonnull %1) #14
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = tail call i64 @ParseCommandOption(i32 noundef 51, i32 noundef 0, ptr noundef %2) #14
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %311, label %199

199:                                              ; preds = %196
  %200 = trunc i64 %197 to i32
  %201 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  store i32 %200, ptr %201, align 8, !tbaa !72
  br label %311

202:                                              ; preds = %193
  %203 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #14
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = tail call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef %2) #14
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %311, label %208

208:                                              ; preds = %205
  %209 = trunc i64 %206 to i32
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  store i32 %209, ptr %210, align 8, !tbaa !59
  br label %311

211:                                              ; preds = %202
  %212 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.87, ptr noundef nonnull %1) #14
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = tail call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef %2) #14
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %311, label %217

217:                                              ; preds = %214
  %218 = trunc i64 %215 to i32
  %219 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  store i32 %218, ptr %219, align 8, !tbaa !74
  br label %311

220:                                              ; preds = %211
  %221 = load ptr, ptr %14, align 8, !tbaa !91
  %222 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %223 = tail call ptr @ConstantString(ptr noundef %2) #14
  %224 = tail call i32 @AddValueToSplayTree(ptr noundef %221, ptr noundef %222, ptr noundef %223) #14
  br label %311

225:                                              ; preds = %32, %32
  %226 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.88, ptr noundef nonnull %1) #14
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = tail call i64 @strtoul(ptr nocapture noundef %2, ptr noundef null, i32 noundef 10) #14
  %230 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  store i64 %229, ptr %230, align 8, !tbaa !83
  br label %311

231:                                              ; preds = %225
  %232 = load ptr, ptr %14, align 8, !tbaa !91
  %233 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %234 = tail call ptr @ConstantString(ptr noundef %2) #14
  %235 = tail call i32 @AddValueToSplayTree(ptr noundef %232, ptr noundef %233, ptr noundef %234) #14
  br label %311

236:                                              ; preds = %32, %32
  %237 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #14
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = tail call ptr @GetPageGeometry(ptr noundef %2) #14
  %241 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %242 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %240, ptr noundef nonnull %241) #14
  %243 = tail call ptr @DestroyString(ptr noundef %240) #14
  br label %311

244:                                              ; preds = %236
  %245 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.89, ptr noundef nonnull %1) #14
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %244
  %248 = tail call ptr @AcquireImageInfo() #14
  %249 = getelementptr inbounds %struct._ImageInfo, ptr %248, i64 0, i32 51
  %250 = tail call i64 @CopyMagickString(ptr noundef nonnull %249, ptr noundef %2, i64 noundef 4096) #14
  %251 = tail call i32 @SetImageInfo(ptr noundef %248, i32 noundef 1, ptr noundef nonnull %33) #14
  %252 = tail call ptr @FileToStringInfo(ptr noundef nonnull %249, i64 noundef -1, ptr noundef nonnull %33) #14
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct._ImageInfo, ptr %248, i64 0, i32 48
  %256 = tail call i32 @SetImageProfile(ptr noundef %0, ptr noundef nonnull %255, ptr noundef nonnull %252) #14
  br label %257

257:                                              ; preds = %254, %247
  %258 = phi i32 [ %256, %254 ], [ 1, %247 ]
  %259 = tail call ptr @DestroyImageInfo(ptr noundef %248) #14
  br label %311

260:                                              ; preds = %244
  %261 = load ptr, ptr %14, align 8, !tbaa !91
  %262 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %263 = tail call ptr @ConstantString(ptr noundef %2) #14
  %264 = tail call i32 @AddValueToSplayTree(ptr noundef %261, ptr noundef %262, ptr noundef %263) #14
  br label %311

265:                                              ; preds = %32, %32
  %266 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.90, ptr noundef nonnull %1) #14
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = tail call i64 @ParseCommandOption(i32 noundef 31, i32 noundef 0, ptr noundef %2) #14
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %311, label %271

271:                                              ; preds = %268
  %272 = trunc i64 %269 to i32
  %273 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  store i32 %272, ptr %273, align 8, !tbaa !59
  br label %311

274:                                              ; preds = %265
  %275 = load ptr, ptr %14, align 8, !tbaa !91
  %276 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %277 = tail call ptr @ConstantString(ptr noundef %2) #14
  %278 = tail call i32 @AddValueToSplayTree(ptr noundef %275, ptr noundef %276, ptr noundef %277) #14
  br label %311

279:                                              ; preds = %32, %32
  %280 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.91, ptr noundef nonnull %1) #14
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = tail call ptr @GetPageGeometry(ptr noundef %2) #14
  %284 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74
  %285 = tail call i32 @ParseAbsoluteGeometry(ptr noundef %283, ptr noundef nonnull %284) #14
  %286 = tail call ptr @DestroyString(ptr noundef %283) #14
  br label %311

287:                                              ; preds = %279
  %288 = load ptr, ptr %14, align 8, !tbaa !91
  %289 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %290 = tail call ptr @ConstantString(ptr noundef %2) #14
  %291 = tail call i32 @AddValueToSplayTree(ptr noundef %288, ptr noundef %289, ptr noundef %290) #14
  br label %311

292:                                              ; preds = %32, %32
  %293 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %1) #14
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %292
  %296 = tail call i64 @ParseCommandOption(i32 noundef 58, i32 noundef 0, ptr noundef %2) #14
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %311, label %298

298:                                              ; preds = %295
  %299 = trunc i64 %296 to i32
  %300 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  store i32 %299, ptr %300, align 8, !tbaa !61
  br label %311

301:                                              ; preds = %292
  %302 = load ptr, ptr %14, align 8, !tbaa !91
  %303 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %304 = tail call ptr @ConstantString(ptr noundef %2) #14
  %305 = tail call i32 @AddValueToSplayTree(ptr noundef %302, ptr noundef %303, ptr noundef %304) #14
  br label %311

306:                                              ; preds = %32
  %307 = load ptr, ptr %14, align 8, !tbaa !91
  %308 = tail call ptr @ConstantString(ptr noundef nonnull %1) #14
  %309 = tail call ptr @ConstantString(ptr noundef %2) #14
  %310 = tail call i32 @AddValueToSplayTree(ptr noundef %307, ptr noundef %308, ptr noundef %309) #14
  br label %311

311:                                              ; preds = %30, %27, %38, %44, %52, %84, %139, %156, %168, %176, %188, %220, %228, %231, %239, %257, %260, %274, %282, %287, %301, %306, %60, %63, %69, %72, %78, %81, %162, %165, %182, %185, %196, %199, %205, %208, %214, %217, %268, %271, %295, %298
  %312 = phi i32 [ %310, %306 ], [ %305, %301 ], [ 1, %282 ], [ %291, %287 ], [ %278, %274 ], [ 1, %239 ], [ %258, %257 ], [ %264, %260 ], [ 1, %228 ], [ %235, %231 ], [ %224, %220 ], [ 1, %176 ], [ %192, %188 ], [ 1, %139 ], [ 1, %156 ], [ %172, %168 ], [ %88, %84 ], [ 1, %38 ], [ 1, %44 ], [ %56, %52 ], [ %65, %63 ], [ 1, %60 ], [ 1, %69 ], [ 1, %72 ], [ 1, %78 ], [ 1, %81 ], [ 1, %162 ], [ 1, %165 ], [ 1, %182 ], [ 1, %185 ], [ 1, %196 ], [ 1, %199 ], [ 1, %205 ], [ 1, %208 ], [ 1, %214 ], [ 1, %217 ], [ 1, %268 ], [ 1, %271 ], [ 1, %295 ], [ 1, %298 ], [ %31, %30 ], [ 0, %27 ]
  ret i32 %312
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 278, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @FormatImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i64 @FormatLocaleStringList(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef %2, ptr noundef nonnull %5) #14
  call void @llvm.va_end(ptr %5)
  %7 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

declare i64 @FormatLocaleStringList(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x %struct._DirectoryInfo], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca ptr, align 8
  %14 = alloca [3 x %struct._PointInfo], align 16
  %15 = alloca [3 x %struct._PointInfo], align 16
  %16 = alloca [3 x %struct._PointInfo], align 16
  %17 = alloca [4 x i8], align 1
  %18 = alloca [4 x i8], align 1
  %19 = alloca [2 x i8], align 1
  %20 = alloca [2 x i8], align 1
  %21 = alloca ptr, align 8
  %22 = alloca [3 x %struct._PointInfo], align 16
  %23 = alloca [3 x %struct._PointInfo], align 16
  %24 = alloca [3 x %struct._PointInfo], align 16
  %25 = alloca [4 x i8], align 1
  %26 = alloca [2 x i8], align 1
  %27 = alloca [4096 x i8], align 16
  %28 = alloca [4096 x i8], align 16
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca double, align 8
  %32 = alloca [4096 x i8], align 16
  %33 = alloca %struct._MagickPixelPacket, align 8
  %34 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #14
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %40 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2087, ptr noundef nonnull @.str.2, ptr noundef nonnull %39) #14
  br label %41

41:                                               ; preds = %38, %2
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = icmp eq ptr %1, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %43) #14
  %48 = load ptr, ptr %42, align 8, !tbaa !91
  %49 = tail call ptr @GetNextValueInSplayTree(ptr noundef %48) #14
  br label %2247

50:                                               ; preds = %45
  %51 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.3, ptr noundef %1, i64 noundef 3) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %42, align 8, !tbaa !91
  %55 = tail call ptr @GetValueFromSplayTree(ptr noundef %54, ptr noundef %1) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %2247

57:                                               ; preds = %50, %53, %41
  %58 = icmp eq ptr %1, null
  br i1 %58, label %2247, label %59

59:                                               ; preds = %57
  %60 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %2247, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %64 = load i8, ptr %1, align 1, !tbaa !92
  switch i8 %64, label %2242 [
    i8 56, label %65
    i8 69, label %932
    i8 101, label %932
    i8 70, label %2000
    i8 102, label %2000
    i8 73, label %2014
    i8 105, label %2014
    i8 80, label %2118
    i8 112, label %2118
    i8 88, label %2166
    i8 120, label %2166
  ]

65:                                               ; preds = %62
  %66 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.4, ptr noundef nonnull %1, i64 noundef 5) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %2242

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %28) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  %69 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.92) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %931, label %71

71:                                               ; preds = %68
  %72 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.93, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %28, ptr noundef nonnull %27) #14
  %73 = add i32 %72, -5
  %74 = icmp ult i32 %73, -3
  br i1 %74, label %931, label %75

75:                                               ; preds = %71
  %76 = icmp slt i32 %72, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = call i64 @CopyMagickString(ptr noundef nonnull %27, ptr noundef nonnull @.str.94, i64 noundef 4096) #14
  br label %79

79:                                               ; preds = %77, %75
  %80 = icmp slt i32 %72, 3
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i8 0, ptr %28, align 16, !tbaa !92
  br label %82

82:                                               ; preds = %81, %79
  %83 = load i8, ptr %28, align 16, !tbaa !92
  %84 = icmp eq i8 %83, 35
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds [4096 x i8], ptr %28, i64 0, i64 1
  %87 = call i64 @strtol(ptr nocapture noundef nonnull %86, ptr noundef null, i32 noundef 10) #14
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i64 [ %87, %85 ], [ 1, %82 ]
  %90 = call i64 @GetStringInfoLength(ptr noundef nonnull %69) #14
  %91 = call ptr @GetStringInfoDatum(ptr noundef nonnull %69) #14
  %92 = icmp eq i64 %90, 0
  br i1 %92, label %926, label %93

93:                                               ; preds = %88
  %94 = call i64 @llvm.smax.i64(i64 %89, i64 1)
  %95 = getelementptr inbounds [2 x i8], ptr %26, i64 0, i64 1
  %96 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 1
  %97 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 2
  %98 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 3
  %99 = getelementptr inbounds [2 x i8], ptr %20, i64 0, i64 1
  %100 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 1
  %101 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 2
  %102 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  %103 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 1
  %104 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 2
  %105 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 3
  %106 = getelementptr inbounds [3 x %struct._PointInfo], ptr %23, i64 0, i64 1
  %107 = getelementptr inbounds [3 x %struct._PointInfo], ptr %23, i64 0, i64 2
  %108 = getelementptr inbounds [3 x %struct._PointInfo], ptr %23, i64 0, i64 1, i32 1
  %109 = getelementptr inbounds [3 x %struct._PointInfo], ptr %23, i64 0, i64 2, i32 1
  %110 = getelementptr inbounds [3 x %struct._PointInfo], ptr %24, i64 0, i64 1
  %111 = getelementptr inbounds %struct._PointInfo, ptr %24, i64 0, i32 1
  %112 = getelementptr inbounds [3 x %struct._PointInfo], ptr %24, i64 0, i64 1, i32 1
  %113 = getelementptr inbounds [3 x %struct._PointInfo], ptr %22, i64 0, i64 1
  %114 = getelementptr inbounds %struct._PointInfo, ptr %22, i64 0, i32 1
  %115 = getelementptr inbounds [3 x %struct._PointInfo], ptr %22, i64 0, i64 1, i32 1
  %116 = getelementptr inbounds [2 x i8], ptr %19, i64 0, i64 1
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %119 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 1
  %120 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %121 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %122 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %123 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %124 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  %125 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %126 = getelementptr inbounds [3 x %struct._PointInfo], ptr %15, i64 0, i64 1
  %127 = getelementptr inbounds [3 x %struct._PointInfo], ptr %15, i64 0, i64 2
  %128 = getelementptr inbounds [3 x %struct._PointInfo], ptr %15, i64 0, i64 1, i32 1
  %129 = getelementptr inbounds [3 x %struct._PointInfo], ptr %15, i64 0, i64 2, i32 1
  %130 = getelementptr inbounds [3 x %struct._PointInfo], ptr %16, i64 0, i64 1
  %131 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 0, i32 1
  %132 = getelementptr inbounds [3 x %struct._PointInfo], ptr %16, i64 0, i64 1, i32 1
  %133 = getelementptr inbounds [3 x %struct._PointInfo], ptr %14, i64 0, i64 1
  %134 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %135 = getelementptr inbounds [3 x %struct._PointInfo], ptr %14, i64 0, i64 1, i32 1
  %136 = getelementptr inbounds [2 x i8], ptr %11, i64 0, i64 1
  br label %137

137:                                              ; preds = %314, %93
  %138 = phi i64 [ %94, %93 ], [ %319, %314 ]
  %139 = phi ptr [ null, %93 ], [ %317, %314 ]
  %140 = phi i64 [ %90, %93 ], [ %316, %314 ]
  %141 = phi ptr [ %91, %93 ], [ %315, %314 ]
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %141, align 1, !tbaa !92
  %144 = add i64 %140, -1
  %145 = icmp eq i8 %143, 56
  br i1 %145, label %146, label %314

146:                                              ; preds = %137
  %147 = icmp eq i64 %144, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds i8, ptr %141, i64 2
  %150 = load i8, ptr %142, align 1, !tbaa !92
  %151 = zext i8 %150 to i32
  %152 = add i64 %140, -2
  br label %153

153:                                              ; preds = %148, %146
  %154 = phi ptr [ %142, %146 ], [ %149, %148 ]
  %155 = phi i64 [ %144, %146 ], [ %152, %148 ]
  %156 = phi i32 [ -1, %146 ], [ %151, %148 ]
  %157 = icmp eq i32 %156, 66
  br i1 %157, label %158, label %314

158:                                              ; preds = %153
  %159 = icmp eq i64 %155, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds i8, ptr %154, i64 1
  %162 = load i8, ptr %154, align 1, !tbaa !92
  %163 = zext i8 %162 to i32
  %164 = add i64 %155, -1
  br label %165

165:                                              ; preds = %160, %158
  %166 = phi ptr [ %154, %158 ], [ %161, %160 ]
  %167 = phi i64 [ %155, %158 ], [ %164, %160 ]
  %168 = phi i32 [ -1, %158 ], [ %163, %160 ]
  %169 = icmp eq i32 %168, 73
  br i1 %169, label %170, label %314

170:                                              ; preds = %165
  %171 = icmp eq i64 %167, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds i8, ptr %166, i64 1
  %174 = load i8, ptr %166, align 1, !tbaa !92
  %175 = zext i8 %174 to i32
  %176 = add i64 %167, -1
  br label %177

177:                                              ; preds = %172, %170
  %178 = phi ptr [ %166, %170 ], [ %173, %172 ]
  %179 = phi i64 [ %167, %170 ], [ %176, %172 ]
  %180 = phi i32 [ -1, %170 ], [ %175, %172 ]
  %181 = icmp eq i32 %180, 77
  br i1 %181, label %182, label %314

182:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #14
  %183 = icmp ult i64 %179, 2
  br i1 %183, label %200, label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ %190, %184 ], [ 0, %182 ]
  %186 = phi ptr [ %187, %184 ], [ %178, %182 ]
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  %188 = load i8, ptr %186, align 1, !tbaa !92
  %189 = getelementptr inbounds [2 x i8], ptr %26, i64 0, i64 %185
  store i8 %188, ptr %189, align 1, !tbaa !92
  %190 = add nuw nsw i64 %185, 1
  %191 = icmp eq i64 %185, 0
  br i1 %191, label %184, label %192, !llvm.loop !100

192:                                              ; preds = %184
  %193 = add i64 %179, -2
  %194 = load i8, ptr %26, align 1, !tbaa !92
  %195 = zext i8 %194 to i16
  %196 = shl nuw i16 %195, 8
  %197 = load i8, ptr %95, align 1, !tbaa !92
  %198 = zext i8 %197 to i16
  %199 = or disjoint i16 %196, %198
  br label %200

200:                                              ; preds = %192, %182
  %201 = phi ptr [ %178, %182 ], [ %187, %192 ]
  %202 = phi i64 [ %179, %182 ], [ %193, %192 ]
  %203 = phi i16 [ -1, %182 ], [ %199, %192 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #14
  %204 = zext i16 %203 to i64
  %205 = load i64, ptr %29, align 8, !tbaa !67
  %206 = icmp sgt i64 %205, %204
  %207 = load i64, ptr %30, align 8
  %208 = icmp slt i64 %207, %204
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %314, label %210

210:                                              ; preds = %200
  %211 = icmp eq ptr %139, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = call ptr @DestroyString(ptr noundef nonnull %139) #14
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi ptr [ %213, %212 ], [ null, %210 ]
  %216 = icmp eq i64 %202, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %201, i64 1
  %219 = load i8, ptr %201, align 1, !tbaa !92
  %220 = zext i8 %219 to i32
  %221 = add i64 %202, -1
  br label %222

222:                                              ; preds = %217, %214
  %223 = phi ptr [ %201, %214 ], [ %218, %217 ]
  %224 = phi i64 [ %202, %214 ], [ %221, %217 ]
  %225 = phi i32 [ -1, %214 ], [ %220, %217 ]
  %226 = sext i32 %225 to i64
  %227 = icmp eq i32 %225, 0
  %228 = icmp ult i64 %224, %226
  %229 = select i1 %227, i1 true, i1 %228
  br i1 %229, label %260, label %230

230:                                              ; preds = %222
  %231 = icmp ult i32 %225, -4095
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = add nsw i64 %226, 4096
  %234 = call ptr @AcquireQuantumMemory(i64 noundef %233, i64 noundef 1) #16
  br label %235

235:                                              ; preds = %232, %230
  %236 = phi ptr [ %234, %232 ], [ null, %230 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %260, label %238

238:                                              ; preds = %235
  %239 = icmp sgt i32 %225, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %238, %249
  %241 = phi i64 [ %254, %249 ], [ 0, %238 ]
  %242 = phi i64 [ %251, %249 ], [ %224, %238 ]
  %243 = phi ptr [ %250, %249 ], [ %223, %238 ]
  %244 = icmp eq i64 %242, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds i8, ptr %243, i64 1
  %247 = load i8, ptr %243, align 1, !tbaa !92
  %248 = add i64 %242, -1
  br label %249

249:                                              ; preds = %245, %240
  %250 = phi ptr [ %243, %240 ], [ %246, %245 ]
  %251 = phi i64 [ %242, %240 ], [ %248, %245 ]
  %252 = phi i8 [ -1, %240 ], [ %247, %245 ]
  %253 = getelementptr inbounds i8, ptr %236, i64 %241
  store i8 %252, ptr %253, align 1, !tbaa !92
  %254 = add nuw nsw i64 %241, 1
  %255 = icmp eq i64 %254, %226
  br i1 %255, label %256, label %240, !llvm.loop !101

256:                                              ; preds = %249, %238
  %257 = phi ptr [ %223, %238 ], [ %250, %249 ]
  %258 = phi i64 [ %224, %238 ], [ %251, %249 ]
  %259 = getelementptr inbounds i8, ptr %236, i64 %226
  store i8 0, ptr %259, align 1, !tbaa !92
  br label %260

260:                                              ; preds = %256, %235, %222
  %261 = phi ptr [ %223, %222 ], [ %223, %235 ], [ %257, %256 ]
  %262 = phi i64 [ %224, %222 ], [ %224, %235 ], [ %258, %256 ]
  %263 = phi ptr [ %215, %222 ], [ null, %235 ], [ %236, %256 ]
  %264 = and i64 %226, 1
  %265 = icmp eq i64 %264, 0
  %266 = icmp ne i64 %262, 0
  %267 = and i1 %265, %266
  %268 = zext i1 %267 to i64
  %269 = getelementptr i8, ptr %261, i64 %268
  %270 = sext i1 %267 to i64
  %271 = add i64 %262, %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  %272 = icmp ult i64 %271, 4
  br i1 %272, label %298, label %273

273:                                              ; preds = %260, %273
  %274 = phi i64 [ %279, %273 ], [ 0, %260 ]
  %275 = phi ptr [ %276, %273 ], [ %269, %260 ]
  %276 = getelementptr inbounds i8, ptr %275, i64 1
  %277 = load i8, ptr %275, align 1, !tbaa !92
  %278 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 %274
  store i8 %277, ptr %278, align 1, !tbaa !92
  %279 = add nuw nsw i64 %274, 1
  %280 = icmp eq i64 %279, 4
  br i1 %280, label %281, label %273, !llvm.loop !102

281:                                              ; preds = %273
  %282 = add i64 %262, %270
  %283 = add i64 %282, -4
  %284 = load i8, ptr %25, align 1, !tbaa !92
  %285 = zext i8 %284 to i64
  %286 = shl nuw nsw i64 %285, 24
  %287 = load i8, ptr %96, align 1, !tbaa !92
  %288 = zext i8 %287 to i64
  %289 = shl nuw nsw i64 %288, 16
  %290 = or disjoint i64 %289, %286
  %291 = load i8, ptr %97, align 1, !tbaa !92
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, 8
  %294 = or disjoint i64 %290, %293
  %295 = load i8, ptr %98, align 1, !tbaa !92
  %296 = zext i8 %295 to i64
  %297 = or disjoint i64 %294, %296
  br label %298

298:                                              ; preds = %281, %260
  %299 = phi ptr [ %269, %260 ], [ %276, %281 ]
  %300 = phi i64 [ %271, %260 ], [ %283, %281 ]
  %301 = phi i64 [ -1, %260 ], [ %297, %281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = load i8, ptr %28, align 16
  switch i8 %304, label %305 [
    i8 35, label %322
    i8 0, label %322
  ]

305:                                              ; preds = %298
  %306 = icmp eq ptr %263, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %305
  %308 = call i32 @LocaleCompare(ptr noundef nonnull %28, ptr noundef nonnull %263) #14
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %322, label %310

310:                                              ; preds = %307, %305
  %311 = getelementptr inbounds i8, ptr %299, i64 %303
  %312 = call i64 @llvm.smin.i64(i64 %303, i64 %300)
  %313 = sub i64 %300, %312
  br label %314

314:                                              ; preds = %924, %337, %327, %310, %200, %177, %165, %153, %137
  %315 = phi ptr [ %201, %200 ], [ %311, %310 ], [ %329, %327 ], [ %178, %177 ], [ %166, %165 ], [ %154, %153 ], [ %142, %137 ], [ %299, %337 ], [ %343, %924 ]
  %316 = phi i64 [ %202, %200 ], [ %313, %310 ], [ %331, %327 ], [ %179, %177 ], [ %167, %165 ], [ %155, %153 ], [ %144, %137 ], [ %300, %337 ], [ %345, %924 ]
  %317 = phi ptr [ %139, %200 ], [ %263, %310 ], [ %263, %327 ], [ %139, %177 ], [ %139, %165 ], [ %139, %153 ], [ %139, %137 ], [ %263, %337 ], [ %263, %924 ]
  %318 = phi i1 [ true, %200 ], [ true, %310 ], [ true, %327 ], [ true, %177 ], [ true, %165 ], [ true, %153 ], [ true, %137 ], [ true, %337 ], [ false, %924 ]
  %319 = phi i64 [ %138, %200 ], [ %138, %310 ], [ %328, %327 ], [ %138, %177 ], [ %138, %165 ], [ %138, %153 ], [ %138, %137 ], [ %138, %337 ], [ %138, %924 ]
  %320 = icmp ne i64 %316, 0
  %321 = and i1 %320, %318
  br i1 %321, label %137, label %926, !llvm.loop !103

322:                                              ; preds = %307, %298, %298
  %323 = load i8, ptr %28, align 16, !tbaa !92
  %324 = icmp eq i8 %323, 35
  %325 = icmp ne i64 %138, 1
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = add nsw i64 %138, -1
  %329 = getelementptr inbounds i8, ptr %299, i64 %303
  %330 = call i64 @llvm.smin.i64(i64 %303, i64 %300)
  %331 = sub i64 %300, %330
  br label %314

332:                                              ; preds = %322
  %333 = icmp ult i64 %303, -4095
  br i1 %333, label %334, label %337

334:                                              ; preds = %332
  %335 = add nsw i64 %303, 4096
  %336 = call ptr @AcquireQuantumMemory(i64 noundef %335, i64 noundef 1) #16
  br label %337

337:                                              ; preds = %334, %332
  %338 = phi ptr [ %336, %334 ], [ null, %332 ]
  %339 = icmp eq ptr %338, null
  br i1 %339, label %314, label %340

340:                                              ; preds = %337
  %341 = call ptr @CopyMagickMemory(ptr noundef nonnull %338, ptr noundef %299, i64 noundef %303) #14
  %342 = getelementptr inbounds i8, ptr %338, i64 %303
  store i8 0, ptr %342, align 1, !tbaa !92
  %343 = getelementptr inbounds i8, ptr %299, i64 %303
  %344 = call i64 @llvm.smin.i64(i64 %303, i64 %300)
  %345 = sub i64 %300, %344
  %346 = add i16 %203, -2999
  %347 = icmp ult i16 %346, -999
  br i1 %347, label %348, label %350

348:                                              ; preds = %340
  %349 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %338)
  br label %924

350:                                              ; preds = %340
  %351 = call i32 @LocaleCompare(ptr noundef nonnull %27, ptr noundef nonnull @.str.95) #14
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %633

353:                                              ; preds = %350
  %354 = load i64, ptr %117, align 8, !tbaa !104
  %355 = load i64, ptr %118, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #14
  %356 = call ptr @AcquireString(ptr noundef null) #14
  store ptr %356, ptr %13, align 8, !tbaa !96
  %357 = icmp eq ptr %356, null
  br i1 %357, label %631, label %358

358:                                              ; preds = %353
  %359 = call ptr @AcquireString(ptr noundef null) #14
  %360 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.96) #14
  %361 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %362 = uitofp i64 %354 to double
  %363 = uitofp i64 %355 to double
  %364 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.97, double noundef %362, double noundef %363) #14
  %365 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %366 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.98) #14
  %367 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %368 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.99) #14
  %369 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %370 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.100) #14
  %371 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %372 = call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 48) #14
  %373 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 48) #14
  %374 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 48) #14
  %375 = icmp eq i64 %302, 0
  br i1 %375, label %622, label %376

376:                                              ; preds = %358, %616
  %377 = phi i32 [ %620, %616 ], [ 0, %358 ]
  %378 = phi i64 [ %619, %616 ], [ 0, %358 ]
  %379 = phi i64 [ %618, %616 ], [ %303, %358 ]
  %380 = phi ptr [ %617, %616 ], [ %338, %358 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #14
  %381 = icmp eq i64 %379, 1
  br i1 %381, label %398, label %382

382:                                              ; preds = %376, %382
  %383 = phi i64 [ %388, %382 ], [ 0, %376 ]
  %384 = phi ptr [ %385, %382 ], [ %380, %376 ]
  %385 = getelementptr inbounds i8, ptr %384, i64 1
  %386 = load i8, ptr %384, align 1, !tbaa !92
  %387 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 %383
  store i8 %386, ptr %387, align 1, !tbaa !92
  %388 = add nuw nsw i64 %383, 1
  %389 = icmp eq i64 %383, 0
  br i1 %389, label %382, label %390, !llvm.loop !100

390:                                              ; preds = %382
  %391 = add i64 %379, -2
  %392 = load i8, ptr %12, align 1, !tbaa !92
  %393 = zext i8 %392 to i16
  %394 = shl nuw i16 %393, 8
  %395 = load i8, ptr %119, align 1, !tbaa !92
  %396 = zext i8 %395 to i16
  %397 = or disjoint i16 %394, %396
  br label %398

398:                                              ; preds = %390, %376
  %399 = phi ptr [ %380, %376 ], [ %385, %390 ]
  %400 = phi i64 [ %379, %376 ], [ %391, %390 ]
  %401 = phi i16 [ -1, %376 ], [ %397, %390 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  switch i16 %401, label %612 [
    i16 0, label %402
    i16 3, label %402
    i16 1, label %434
    i16 2, label %434
    i16 4, label %434
    i16 5, label %434
  ]

402:                                              ; preds = %398, %398
  %403 = icmp eq i64 %378, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %402
  %405 = getelementptr inbounds i8, ptr %399, i64 24
  %406 = call i64 @llvm.smin.i64(i64 %400, i64 24)
  %407 = sub i64 %400, %406
  br label %616

408:                                              ; preds = %402
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #14
  %409 = icmp ult i64 %400, 2
  br i1 %409, label %426, label %410

410:                                              ; preds = %408, %410
  %411 = phi i64 [ %416, %410 ], [ 0, %408 ]
  %412 = phi ptr [ %413, %410 ], [ %399, %408 ]
  %413 = getelementptr inbounds i8, ptr %412, i64 1
  %414 = load i8, ptr %412, align 1, !tbaa !92
  %415 = getelementptr inbounds [2 x i8], ptr %11, i64 0, i64 %411
  store i8 %414, ptr %415, align 1, !tbaa !92
  %416 = add nuw nsw i64 %411, 1
  %417 = icmp eq i64 %411, 0
  br i1 %417, label %410, label %418, !llvm.loop !100

418:                                              ; preds = %410
  %419 = add i64 %400, -2
  %420 = load i8, ptr %11, align 1, !tbaa !92
  %421 = zext i8 %420 to i64
  %422 = shl nuw nsw i64 %421, 8
  %423 = load i8, ptr %136, align 1, !tbaa !92
  %424 = zext i8 %423 to i64
  %425 = or disjoint i64 %422, %424
  br label %426

426:                                              ; preds = %418, %408
  %427 = phi ptr [ %399, %408 ], [ %413, %418 ]
  %428 = phi i64 [ %400, %408 ], [ %419, %418 ]
  %429 = phi i64 [ 65535, %408 ], [ %425, %418 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  %430 = and i64 %429, 65535
  %431 = getelementptr inbounds i8, ptr %427, i64 22
  %432 = call i64 @llvm.smin.i64(i64 %428, i64 22)
  %433 = sub i64 %428, %432
  br label %616

434:                                              ; preds = %398, %398, %398, %398
  %435 = icmp eq i64 %378, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %434
  %437 = getelementptr inbounds i8, ptr %399, i64 24
  %438 = call i64 @llvm.smin.i64(i64 %400, i64 24)
  %439 = sub i64 %400, %438
  br label %616

440:                                              ; preds = %434, %500
  %441 = phi i64 [ %522, %500 ], [ 0, %434 ]
  %442 = phi i64 [ %502, %500 ], [ %400, %434 ]
  %443 = phi ptr [ %501, %500 ], [ %399, %434 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %444 = icmp ult i64 %442, 4
  br i1 %444, label %469, label %445

445:                                              ; preds = %440, %445
  %446 = phi i64 [ %451, %445 ], [ 0, %440 ]
  %447 = phi ptr [ %448, %445 ], [ %443, %440 ]
  %448 = getelementptr inbounds i8, ptr %447, i64 1
  %449 = load i8, ptr %447, align 1, !tbaa !92
  %450 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %446
  store i8 %449, ptr %450, align 1, !tbaa !92
  %451 = add nuw nsw i64 %446, 1
  %452 = icmp eq i64 %451, 4
  br i1 %452, label %453, label %445, !llvm.loop !102

453:                                              ; preds = %445
  %454 = add i64 %442, -4
  %455 = load i8, ptr %10, align 1, !tbaa !92
  %456 = zext i8 %455 to i64
  %457 = shl nuw nsw i64 %456, 24
  %458 = load i8, ptr %120, align 1, !tbaa !92
  %459 = zext i8 %458 to i64
  %460 = shl nuw nsw i64 %459, 16
  %461 = or disjoint i64 %460, %457
  %462 = load i8, ptr %121, align 1, !tbaa !92
  %463 = zext i8 %462 to i64
  %464 = shl nuw nsw i64 %463, 8
  %465 = or disjoint i64 %461, %464
  %466 = load i8, ptr %122, align 1, !tbaa !92
  %467 = zext i8 %466 to i64
  %468 = or disjoint i64 %465, %467
  br label %469

469:                                              ; preds = %453, %440
  %470 = phi ptr [ %443, %440 ], [ %448, %453 ]
  %471 = phi i64 [ %442, %440 ], [ %454, %453 ]
  %472 = phi i64 [ -1, %440 ], [ %468, %453 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %473 = shl i64 %472, 32
  %474 = ashr exact i64 %473, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %475 = icmp ult i64 %471, 4
  br i1 %475, label %500, label %476

476:                                              ; preds = %469, %476
  %477 = phi i64 [ %482, %476 ], [ 0, %469 ]
  %478 = phi ptr [ %479, %476 ], [ %470, %469 ]
  %479 = getelementptr inbounds i8, ptr %478, i64 1
  %480 = load i8, ptr %478, align 1, !tbaa !92
  %481 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 %477
  store i8 %480, ptr %481, align 1, !tbaa !92
  %482 = add nuw nsw i64 %477, 1
  %483 = icmp eq i64 %482, 4
  br i1 %483, label %484, label %476, !llvm.loop !102

484:                                              ; preds = %476
  %485 = add i64 %471, -4
  %486 = load i8, ptr %9, align 1, !tbaa !92
  %487 = zext i8 %486 to i64
  %488 = shl nuw nsw i64 %487, 24
  %489 = load i8, ptr %123, align 1, !tbaa !92
  %490 = zext i8 %489 to i64
  %491 = shl nuw nsw i64 %490, 16
  %492 = or disjoint i64 %491, %488
  %493 = load i8, ptr %124, align 1, !tbaa !92
  %494 = zext i8 %493 to i64
  %495 = shl nuw nsw i64 %494, 8
  %496 = or disjoint i64 %492, %495
  %497 = load i8, ptr %125, align 1, !tbaa !92
  %498 = zext i8 %497 to i64
  %499 = or disjoint i64 %496, %498
  br label %500

500:                                              ; preds = %484, %469
  %501 = phi ptr [ %470, %469 ], [ %479, %484 ]
  %502 = phi i64 [ %471, %469 ], [ %485, %484 ]
  %503 = phi i64 [ -1, %469 ], [ %499, %484 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %504 = shl i64 %503, 32
  %505 = ashr exact i64 %504, 32
  %506 = icmp ugt i64 %505, 2147483647
  %507 = add nsw i64 %505, -4294967296
  %508 = select i1 %506, i64 %507, i64 %505
  %509 = icmp ugt i64 %474, 2147483647
  %510 = add nsw i64 %474, -4294967296
  %511 = select i1 %509, i64 %510, i64 %474
  %512 = sitofp i64 %508 to double
  %513 = fmul double %362, %512
  %514 = fmul double %513, 0x3F30000000000000
  %515 = fmul double %514, 0x3F30000000000000
  %516 = getelementptr inbounds [3 x %struct._PointInfo], ptr %16, i64 0, i64 %441
  store double %515, ptr %516, align 16, !tbaa !106
  %517 = sitofp i64 %511 to double
  %518 = fmul double %363, %517
  %519 = fmul double %518, 0x3F30000000000000
  %520 = fmul double %519, 0x3F30000000000000
  %521 = getelementptr inbounds [3 x %struct._PointInfo], ptr %16, i64 0, i64 %441, i32 1
  store double %520, ptr %521, align 8, !tbaa !108
  %522 = add nuw nsw i64 %441, 1
  %523 = icmp eq i64 %522, 3
  br i1 %523, label %524, label %440, !llvm.loop !109

524:                                              ; preds = %500
  %525 = icmp eq i32 %377, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %524
  %527 = load double, ptr %130, align 16, !tbaa !106
  %528 = load double, ptr %132, align 8, !tbaa !108
  %529 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.101, double noundef %527, double noundef %528) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %14, ptr noundef nonnull align 16 dereferenceable(48) %16, i64 48, i1 false)
  br label %568

530:                                              ; preds = %524
  %531 = load double, ptr %126, align 16, !tbaa !106
  %532 = load double, ptr %127, align 16, !tbaa !106
  %533 = fcmp oeq double %531, %532
  br i1 %533, label %534, label %552

534:                                              ; preds = %530
  %535 = load double, ptr %128, align 8, !tbaa !108
  %536 = load double, ptr %129, align 8, !tbaa !108
  %537 = fcmp oeq double %535, %536
  br i1 %537, label %538, label %552

538:                                              ; preds = %534
  %539 = load double, ptr %16, align 16, !tbaa !106
  %540 = load double, ptr %130, align 16, !tbaa !106
  %541 = fcmp oeq double %539, %540
  br i1 %541, label %542, label %548

542:                                              ; preds = %538
  %543 = load double, ptr %131, align 8, !tbaa !108
  %544 = load double, ptr %132, align 8, !tbaa !108
  %545 = fcmp oeq double %543, %544
  br i1 %545, label %546, label %548

546:                                              ; preds = %542
  %547 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.102, double noundef %540, double noundef %544) #14
  br label %568

548:                                              ; preds = %538, %542
  %549 = load double, ptr %131, align 8, !tbaa !108
  %550 = load double, ptr %132, align 8, !tbaa !108
  %551 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.103, double noundef %539, double noundef %549, double noundef %540, double noundef %550) #14
  br label %568

552:                                              ; preds = %534, %530
  %553 = load double, ptr %16, align 16, !tbaa !106
  %554 = load double, ptr %130, align 16, !tbaa !106
  %555 = fcmp oeq double %553, %554
  br i1 %555, label %556, label %563

556:                                              ; preds = %552
  %557 = load double, ptr %131, align 8, !tbaa !108
  %558 = load double, ptr %132, align 8, !tbaa !108
  %559 = fcmp oeq double %557, %558
  br i1 %559, label %560, label %563

560:                                              ; preds = %556
  %561 = load double, ptr %129, align 8, !tbaa !108
  %562 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.104, double noundef %532, double noundef %561, double noundef %554, double noundef %558) #14
  br label %568

563:                                              ; preds = %556, %552
  %564 = load double, ptr %129, align 8, !tbaa !108
  %565 = load double, ptr %131, align 8, !tbaa !108
  %566 = load double, ptr %132, align 8, !tbaa !108
  %567 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.105, double noundef %532, double noundef %564, double noundef %553, double noundef %565, double noundef %554, double noundef %566) #14
  br label %568

568:                                              ; preds = %546, %548, %560, %563, %526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %15, ptr noundef nonnull align 16 dereferenceable(48) %16, i64 48, i1 false)
  %569 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %570 = add nsw i64 %378, -1
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %616

572:                                              ; preds = %568
  %573 = load double, ptr %126, align 16, !tbaa !106
  %574 = load double, ptr %127, align 16, !tbaa !106
  %575 = fcmp oeq double %573, %574
  br i1 %575, label %576, label %594

576:                                              ; preds = %572
  %577 = load double, ptr %128, align 8, !tbaa !108
  %578 = load double, ptr %129, align 8, !tbaa !108
  %579 = fcmp oeq double %577, %578
  br i1 %579, label %580, label %594

580:                                              ; preds = %576
  %581 = load double, ptr %14, align 16, !tbaa !106
  %582 = load double, ptr %133, align 16, !tbaa !106
  %583 = fcmp oeq double %581, %582
  br i1 %583, label %584, label %590

584:                                              ; preds = %580
  %585 = load double, ptr %134, align 8, !tbaa !108
  %586 = load double, ptr %135, align 8, !tbaa !108
  %587 = fcmp oeq double %585, %586
  br i1 %587, label %588, label %590

588:                                              ; preds = %584
  %589 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.106, double noundef %582, double noundef %586) #14
  br label %610

590:                                              ; preds = %580, %584
  %591 = load double, ptr %134, align 8, !tbaa !108
  %592 = load double, ptr %135, align 8, !tbaa !108
  %593 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.107, double noundef %581, double noundef %591, double noundef %582, double noundef %592) #14
  br label %610

594:                                              ; preds = %576, %572
  %595 = load double, ptr %14, align 16, !tbaa !106
  %596 = load double, ptr %133, align 16, !tbaa !106
  %597 = fcmp oeq double %595, %596
  br i1 %597, label %598, label %605

598:                                              ; preds = %594
  %599 = load double, ptr %134, align 8, !tbaa !108
  %600 = load double, ptr %135, align 8, !tbaa !108
  %601 = fcmp oeq double %599, %600
  br i1 %601, label %602, label %605

602:                                              ; preds = %598
  %603 = load double, ptr %129, align 8, !tbaa !108
  %604 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.108, double noundef %574, double noundef %603, double noundef %596, double noundef %600) #14
  br label %610

605:                                              ; preds = %598, %594
  %606 = load double, ptr %129, align 8, !tbaa !108
  %607 = load double, ptr %134, align 8, !tbaa !108
  %608 = load double, ptr %135, align 8, !tbaa !108
  %609 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.109, double noundef %574, double noundef %606, double noundef %595, double noundef %607, double noundef %596, double noundef %608) #14
  br label %610

610:                                              ; preds = %605, %602, %590, %588
  %611 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  br label %616

612:                                              ; preds = %398
  %613 = getelementptr inbounds i8, ptr %399, i64 24
  %614 = call i64 @llvm.smin.i64(i64 %400, i64 24)
  %615 = sub i64 %400, %614
  br label %616

616:                                              ; preds = %612, %610, %568, %436, %426, %404
  %617 = phi ptr [ %613, %612 ], [ %437, %436 ], [ %501, %610 ], [ %501, %568 ], [ %431, %426 ], [ %405, %404 ]
  %618 = phi i64 [ %615, %612 ], [ %439, %436 ], [ %502, %610 ], [ %502, %568 ], [ %433, %426 ], [ %407, %404 ]
  %619 = phi i64 [ %378, %612 ], [ 0, %436 ], [ 0, %610 ], [ %570, %568 ], [ %430, %426 ], [ %378, %404 ]
  %620 = phi i32 [ %377, %612 ], [ %377, %436 ], [ 0, %610 ], [ 1, %568 ], [ %377, %426 ], [ %377, %404 ]
  %621 = icmp eq i64 %618, 0
  br i1 %621, label %622, label %376, !llvm.loop !110

622:                                              ; preds = %616, %358
  %623 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.110) #14
  %624 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %625 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.111) #14
  %626 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %627 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %359, i64 noundef 4096, ptr noundef nonnull @.str.112) #14
  %628 = call i32 @ConcatenateString(ptr noundef nonnull %13, ptr noundef %359) #14
  %629 = call ptr @DestroyString(ptr noundef %359) #14
  %630 = load ptr, ptr %13, align 8, !tbaa !96
  br label %631

631:                                              ; preds = %622, %353
  %632 = phi ptr [ %630, %622 ], [ null, %353 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %920

633:                                              ; preds = %350
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %24) #14
  %634 = call ptr @AcquireString(ptr noundef null) #14
  store ptr %634, ptr %21, align 8, !tbaa !96
  %635 = icmp eq ptr %634, null
  br i1 %635, label %918, label %636

636:                                              ; preds = %633
  %637 = call ptr @AcquireString(ptr noundef null) #14
  %638 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.113) #14
  %639 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %640 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.114) #14
  %641 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %642 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.115) #14
  %643 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %644 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.116) #14
  %645 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %646 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.117) #14
  %647 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %648 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.118) #14
  %649 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %650 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.119) #14
  %651 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %652 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.120) #14
  %653 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %654 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.121) #14
  %655 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %656 = call ptr @ResetMagickMemory(ptr noundef nonnull %24, i32 noundef 0, i64 noundef 48) #14
  %657 = call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef 48) #14
  %658 = call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 48) #14
  %659 = icmp eq i64 %302, 0
  br i1 %659, label %911, label %660

660:                                              ; preds = %636, %905
  %661 = phi i32 [ %909, %905 ], [ 0, %636 ]
  %662 = phi i64 [ %908, %905 ], [ 0, %636 ]
  %663 = phi i64 [ %907, %905 ], [ %303, %636 ]
  %664 = phi ptr [ %906, %905 ], [ %338, %636 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #14
  %665 = icmp eq i64 %663, 1
  br i1 %665, label %682, label %666

666:                                              ; preds = %660, %666
  %667 = phi i64 [ %672, %666 ], [ 0, %660 ]
  %668 = phi ptr [ %669, %666 ], [ %664, %660 ]
  %669 = getelementptr inbounds i8, ptr %668, i64 1
  %670 = load i8, ptr %668, align 1, !tbaa !92
  %671 = getelementptr inbounds [2 x i8], ptr %20, i64 0, i64 %667
  store i8 %670, ptr %671, align 1, !tbaa !92
  %672 = add nuw nsw i64 %667, 1
  %673 = icmp eq i64 %667, 0
  br i1 %673, label %666, label %674, !llvm.loop !100

674:                                              ; preds = %666
  %675 = add i64 %663, -2
  %676 = load i8, ptr %20, align 1, !tbaa !92
  %677 = zext i8 %676 to i16
  %678 = shl nuw i16 %677, 8
  %679 = load i8, ptr %99, align 1, !tbaa !92
  %680 = zext i8 %679 to i16
  %681 = or disjoint i16 %678, %680
  br label %682

682:                                              ; preds = %674, %660
  %683 = phi ptr [ %664, %660 ], [ %669, %674 ]
  %684 = phi i64 [ %663, %660 ], [ %675, %674 ]
  %685 = phi i16 [ -1, %660 ], [ %681, %674 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #14
  switch i16 %685, label %901 [
    i16 0, label %686
    i16 3, label %686
    i16 1, label %718
    i16 2, label %718
    i16 4, label %718
    i16 5, label %718
  ]

686:                                              ; preds = %682, %682
  %687 = icmp eq i64 %662, 0
  br i1 %687, label %692, label %688

688:                                              ; preds = %686
  %689 = getelementptr inbounds i8, ptr %683, i64 24
  %690 = call i64 @llvm.smin.i64(i64 %684, i64 24)
  %691 = sub i64 %684, %690
  br label %905

692:                                              ; preds = %686
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #14
  %693 = icmp ult i64 %684, 2
  br i1 %693, label %710, label %694

694:                                              ; preds = %692, %694
  %695 = phi i64 [ %700, %694 ], [ 0, %692 ]
  %696 = phi ptr [ %697, %694 ], [ %683, %692 ]
  %697 = getelementptr inbounds i8, ptr %696, i64 1
  %698 = load i8, ptr %696, align 1, !tbaa !92
  %699 = getelementptr inbounds [2 x i8], ptr %19, i64 0, i64 %695
  store i8 %698, ptr %699, align 1, !tbaa !92
  %700 = add nuw nsw i64 %695, 1
  %701 = icmp eq i64 %695, 0
  br i1 %701, label %694, label %702, !llvm.loop !100

702:                                              ; preds = %694
  %703 = add i64 %684, -2
  %704 = load i8, ptr %19, align 1, !tbaa !92
  %705 = zext i8 %704 to i64
  %706 = shl nuw nsw i64 %705, 8
  %707 = load i8, ptr %116, align 1, !tbaa !92
  %708 = zext i8 %707 to i64
  %709 = or disjoint i64 %706, %708
  br label %710

710:                                              ; preds = %702, %692
  %711 = phi ptr [ %683, %692 ], [ %697, %702 ]
  %712 = phi i64 [ %684, %692 ], [ %703, %702 ]
  %713 = phi i64 [ 65535, %692 ], [ %709, %702 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #14
  %714 = and i64 %713, 65535
  %715 = getelementptr inbounds i8, ptr %711, i64 22
  %716 = call i64 @llvm.smin.i64(i64 %712, i64 22)
  %717 = sub i64 %712, %716
  br label %905

718:                                              ; preds = %682, %682, %682, %682
  %719 = icmp eq i64 %662, 0
  br i1 %719, label %720, label %724

720:                                              ; preds = %718
  %721 = getelementptr inbounds i8, ptr %683, i64 24
  %722 = call i64 @llvm.smin.i64(i64 %684, i64 24)
  %723 = sub i64 %684, %722
  br label %905

724:                                              ; preds = %718, %784
  %725 = phi i64 [ %805, %784 ], [ 0, %718 ]
  %726 = phi i64 [ %786, %784 ], [ %684, %718 ]
  %727 = phi ptr [ %785, %784 ], [ %683, %718 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #14
  %728 = icmp ult i64 %726, 4
  br i1 %728, label %753, label %729

729:                                              ; preds = %724, %729
  %730 = phi i64 [ %735, %729 ], [ 0, %724 ]
  %731 = phi ptr [ %732, %729 ], [ %727, %724 ]
  %732 = getelementptr inbounds i8, ptr %731, i64 1
  %733 = load i8, ptr %731, align 1, !tbaa !92
  %734 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 %730
  store i8 %733, ptr %734, align 1, !tbaa !92
  %735 = add nuw nsw i64 %730, 1
  %736 = icmp eq i64 %735, 4
  br i1 %736, label %737, label %729, !llvm.loop !102

737:                                              ; preds = %729
  %738 = add i64 %726, -4
  %739 = load i8, ptr %18, align 1, !tbaa !92
  %740 = zext i8 %739 to i64
  %741 = shl nuw nsw i64 %740, 24
  %742 = load i8, ptr %100, align 1, !tbaa !92
  %743 = zext i8 %742 to i64
  %744 = shl nuw nsw i64 %743, 16
  %745 = or disjoint i64 %744, %741
  %746 = load i8, ptr %101, align 1, !tbaa !92
  %747 = zext i8 %746 to i64
  %748 = shl nuw nsw i64 %747, 8
  %749 = or disjoint i64 %745, %748
  %750 = load i8, ptr %102, align 1, !tbaa !92
  %751 = zext i8 %750 to i64
  %752 = or disjoint i64 %749, %751
  br label %753

753:                                              ; preds = %737, %724
  %754 = phi ptr [ %727, %724 ], [ %732, %737 ]
  %755 = phi i64 [ %726, %724 ], [ %738, %737 ]
  %756 = phi i64 [ -1, %724 ], [ %752, %737 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  %757 = shl i64 %756, 32
  %758 = ashr exact i64 %757, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  %759 = icmp ult i64 %755, 4
  br i1 %759, label %784, label %760

760:                                              ; preds = %753, %760
  %761 = phi i64 [ %766, %760 ], [ 0, %753 ]
  %762 = phi ptr [ %763, %760 ], [ %754, %753 ]
  %763 = getelementptr inbounds i8, ptr %762, i64 1
  %764 = load i8, ptr %762, align 1, !tbaa !92
  %765 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 %761
  store i8 %764, ptr %765, align 1, !tbaa !92
  %766 = add nuw nsw i64 %761, 1
  %767 = icmp eq i64 %766, 4
  br i1 %767, label %768, label %760, !llvm.loop !102

768:                                              ; preds = %760
  %769 = add i64 %755, -4
  %770 = load i8, ptr %17, align 1, !tbaa !92
  %771 = zext i8 %770 to i64
  %772 = shl nuw nsw i64 %771, 24
  %773 = load i8, ptr %103, align 1, !tbaa !92
  %774 = zext i8 %773 to i64
  %775 = shl nuw nsw i64 %774, 16
  %776 = or disjoint i64 %775, %772
  %777 = load i8, ptr %104, align 1, !tbaa !92
  %778 = zext i8 %777 to i64
  %779 = shl nuw nsw i64 %778, 8
  %780 = or disjoint i64 %776, %779
  %781 = load i8, ptr %105, align 1, !tbaa !92
  %782 = zext i8 %781 to i64
  %783 = or disjoint i64 %780, %782
  br label %784

784:                                              ; preds = %768, %753
  %785 = phi ptr [ %754, %753 ], [ %763, %768 ]
  %786 = phi i64 [ %755, %753 ], [ %769, %768 ]
  %787 = phi i64 [ -1, %753 ], [ %783, %768 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  %788 = shl i64 %787, 32
  %789 = ashr exact i64 %788, 32
  %790 = icmp ugt i64 %789, 2147483647
  %791 = add nsw i64 %789, -4294967296
  %792 = select i1 %790, i64 %791, i64 %789
  %793 = icmp ugt i64 %758, 2147483647
  %794 = add nsw i64 %758, -4294967296
  %795 = select i1 %793, i64 %794, i64 %758
  %796 = sitofp i64 %792 to double
  %797 = fmul double %796, 0x3F30000000000000
  %798 = fmul double %797, 0x3F30000000000000
  %799 = getelementptr inbounds [3 x %struct._PointInfo], ptr %24, i64 0, i64 %725
  store double %798, ptr %799, align 16, !tbaa !106
  %800 = sitofp i64 %795 to double
  %801 = fmul double %800, 0x3F30000000000000
  %802 = fmul double %801, 0x3F30000000000000
  %803 = fsub double 1.000000e+00, %802
  %804 = getelementptr inbounds [3 x %struct._PointInfo], ptr %24, i64 0, i64 %725, i32 1
  store double %803, ptr %804, align 8, !tbaa !108
  %805 = add nuw nsw i64 %725, 1
  %806 = icmp eq i64 %805, 3
  br i1 %806, label %807, label %724, !llvm.loop !111

807:                                              ; preds = %784
  %808 = icmp eq i32 %661, 0
  br i1 %808, label %809, label %813

809:                                              ; preds = %807
  %810 = load double, ptr %110, align 16, !tbaa !106
  %811 = load double, ptr %112, align 8, !tbaa !108
  %812 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.122, double noundef %810, double noundef %811) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %22, ptr noundef nonnull align 16 dereferenceable(48) %24, i64 48, i1 false)
  br label %854

813:                                              ; preds = %807
  %814 = load double, ptr %106, align 16, !tbaa !106
  %815 = load double, ptr %107, align 16, !tbaa !106
  %816 = fcmp oeq double %814, %815
  br i1 %816, label %817, label %838

817:                                              ; preds = %813
  %818 = load double, ptr %108, align 8, !tbaa !108
  %819 = load double, ptr %109, align 8, !tbaa !108
  %820 = fcmp oeq double %818, %819
  br i1 %820, label %821, label %838

821:                                              ; preds = %817
  %822 = load double, ptr %24, align 16, !tbaa !106
  %823 = load double, ptr %110, align 16, !tbaa !106
  %824 = fcmp oeq double %822, %823
  br i1 %824, label %825, label %831

825:                                              ; preds = %821
  %826 = load double, ptr %111, align 8, !tbaa !108
  %827 = load double, ptr %112, align 8, !tbaa !108
  %828 = fcmp oeq double %826, %827
  br i1 %828, label %829, label %831

829:                                              ; preds = %825
  %830 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.123, double noundef %823, double noundef %827) #14
  br label %854

831:                                              ; preds = %821, %825
  br i1 %820, label %832, label %838

832:                                              ; preds = %831
  %833 = load double, ptr %24, align 16, !tbaa !106
  %834 = load double, ptr %111, align 8, !tbaa !108
  %835 = load double, ptr %110, align 16, !tbaa !106
  %836 = load double, ptr %112, align 8, !tbaa !108
  %837 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.124, double noundef %833, double noundef %834, double noundef %835, double noundef %836) #14
  br label %854

838:                                              ; preds = %817, %831, %813
  %839 = load double, ptr %24, align 16, !tbaa !106
  %840 = load double, ptr %110, align 16, !tbaa !106
  %841 = fcmp oeq double %839, %840
  br i1 %841, label %842, label %849

842:                                              ; preds = %838
  %843 = load double, ptr %111, align 8, !tbaa !108
  %844 = load double, ptr %112, align 8, !tbaa !108
  %845 = fcmp oeq double %843, %844
  br i1 %845, label %846, label %849

846:                                              ; preds = %842
  %847 = load double, ptr %109, align 8, !tbaa !108
  %848 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.125, double noundef %815, double noundef %847, double noundef %840, double noundef %844) #14
  br label %854

849:                                              ; preds = %842, %838
  %850 = load double, ptr %109, align 8, !tbaa !108
  %851 = load double, ptr %111, align 8, !tbaa !108
  %852 = load double, ptr %112, align 8, !tbaa !108
  %853 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.126, double noundef %815, double noundef %850, double noundef %839, double noundef %851, double noundef %840, double noundef %852) #14
  br label %854

854:                                              ; preds = %829, %832, %846, %849, %809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %23, ptr noundef nonnull align 16 dereferenceable(48) %24, i64 48, i1 false)
  %855 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %856 = add nsw i64 %662, -1
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %858, label %905

858:                                              ; preds = %854
  %859 = load double, ptr %106, align 16, !tbaa !106
  %860 = load double, ptr %107, align 16, !tbaa !106
  %861 = fcmp oeq double %859, %860
  br i1 %861, label %862, label %883

862:                                              ; preds = %858
  %863 = load double, ptr %108, align 8, !tbaa !108
  %864 = load double, ptr %109, align 8, !tbaa !108
  %865 = fcmp oeq double %863, %864
  br i1 %865, label %866, label %883

866:                                              ; preds = %862
  %867 = load double, ptr %22, align 16, !tbaa !106
  %868 = load double, ptr %113, align 16, !tbaa !106
  %869 = fcmp oeq double %867, %868
  br i1 %869, label %870, label %876

870:                                              ; preds = %866
  %871 = load double, ptr %114, align 8, !tbaa !108
  %872 = load double, ptr %115, align 8, !tbaa !108
  %873 = fcmp oeq double %871, %872
  br i1 %873, label %874, label %876

874:                                              ; preds = %870
  %875 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.127, double noundef %868, double noundef %872) #14
  br label %899

876:                                              ; preds = %866, %870
  br i1 %865, label %877, label %883

877:                                              ; preds = %876
  %878 = load double, ptr %22, align 16, !tbaa !106
  %879 = load double, ptr %114, align 8, !tbaa !108
  %880 = load double, ptr %113, align 16, !tbaa !106
  %881 = load double, ptr %115, align 8, !tbaa !108
  %882 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.128, double noundef %878, double noundef %879, double noundef %880, double noundef %881) #14
  br label %899

883:                                              ; preds = %862, %876, %858
  %884 = load double, ptr %22, align 16, !tbaa !106
  %885 = load double, ptr %113, align 16, !tbaa !106
  %886 = fcmp oeq double %884, %885
  br i1 %886, label %887, label %894

887:                                              ; preds = %883
  %888 = load double, ptr %114, align 8, !tbaa !108
  %889 = load double, ptr %115, align 8, !tbaa !108
  %890 = fcmp oeq double %888, %889
  br i1 %890, label %891, label %894

891:                                              ; preds = %887
  %892 = load double, ptr %109, align 8, !tbaa !108
  %893 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.129, double noundef %860, double noundef %892, double noundef %885, double noundef %889) #14
  br label %899

894:                                              ; preds = %887, %883
  %895 = load double, ptr %109, align 8, !tbaa !108
  %896 = load double, ptr %114, align 8, !tbaa !108
  %897 = load double, ptr %115, align 8, !tbaa !108
  %898 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.130, double noundef %860, double noundef %895, double noundef %884, double noundef %896, double noundef %885, double noundef %897) #14
  br label %899

899:                                              ; preds = %894, %891, %877, %874
  %900 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  br label %905

901:                                              ; preds = %682
  %902 = getelementptr inbounds i8, ptr %683, i64 24
  %903 = call i64 @llvm.smin.i64(i64 %684, i64 24)
  %904 = sub i64 %684, %903
  br label %905

905:                                              ; preds = %901, %899, %854, %720, %710, %688
  %906 = phi ptr [ %902, %901 ], [ %721, %720 ], [ %785, %899 ], [ %785, %854 ], [ %715, %710 ], [ %689, %688 ]
  %907 = phi i64 [ %904, %901 ], [ %723, %720 ], [ %786, %899 ], [ %786, %854 ], [ %717, %710 ], [ %691, %688 ]
  %908 = phi i64 [ %662, %901 ], [ 0, %720 ], [ 0, %899 ], [ %856, %854 ], [ %714, %710 ], [ %662, %688 ]
  %909 = phi i32 [ %661, %901 ], [ %661, %720 ], [ 0, %899 ], [ 1, %854 ], [ %661, %710 ], [ %661, %688 ]
  %910 = icmp eq i64 %907, 0
  br i1 %910, label %911, label %660, !llvm.loop !112

911:                                              ; preds = %905, %636
  %912 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.131) #14
  %913 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %914 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %637, i64 noundef 4096, ptr noundef nonnull @.str.132) #14
  %915 = call i32 @ConcatenateString(ptr noundef nonnull %21, ptr noundef %637) #14
  %916 = call ptr @DestroyString(ptr noundef %637) #14
  %917 = load ptr, ptr %21, align 8, !tbaa !96
  br label %918

918:                                              ; preds = %911, %633
  %919 = phi ptr [ %917, %911 ], [ null, %633 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #14
  br label %920

920:                                              ; preds = %918, %631
  %921 = phi ptr [ %632, %631 ], [ %919, %918 ]
  %922 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %921)
  %923 = call ptr @DestroyString(ptr noundef %921) #14
  br label %924

924:                                              ; preds = %920, %348
  %925 = call ptr @DestroyString(ptr noundef nonnull %338) #14
  br label %314

926:                                              ; preds = %314, %88
  %927 = phi ptr [ null, %88 ], [ %317, %314 ]
  %928 = icmp eq ptr %927, null
  br i1 %928, label %931, label %929

929:                                              ; preds = %926
  %930 = call ptr @DestroyString(ptr noundef nonnull %927) #14
  br label %931

931:                                              ; preds = %68, %71, %926, %929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %27) #14
  br label %2242

932:                                              ; preds = %62, %62
  %933 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, i64 noundef 5) #14
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %2242

935:                                              ; preds = %932
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #14
  %936 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.398) #14
  %937 = icmp eq ptr %936, null
  br i1 %937, label %1999, label %938

938:                                              ; preds = %935
  %939 = load i8, ptr %1, align 1, !tbaa !92
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %1999, label %941

941:                                              ; preds = %938
  %942 = tail call ptr @__ctype_b_loc() #17
  %943 = load ptr, ptr %942, align 8, !tbaa !96
  br label %944

944:                                              ; preds = %944, %941
  %945 = phi ptr [ %952, %944 ], [ %1, %941 ]
  %946 = load i8, ptr %945, align 1, !tbaa !92
  %947 = zext i8 %946 to i64
  %948 = getelementptr inbounds i16, ptr %943, i64 %947
  %949 = load i16, ptr %948, align 2, !tbaa !113
  %950 = and i16 %949, 8192
  %951 = icmp eq i16 %950, 0
  %952 = getelementptr inbounds i8, ptr %945, i64 1
  br i1 %951, label %953, label %944, !llvm.loop !114

953:                                              ; preds = %944
  %954 = getelementptr inbounds i8, ptr %945, i64 5
  %955 = load i8, ptr %954, align 1, !tbaa !92
  switch i8 %955, label %956 [
    i8 42, label %1003
    i8 33, label %959
    i8 35, label %960
    i8 64, label %960
  ]

956:                                              ; preds = %953
  %957 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.133, ptr noundef nonnull %945) #14
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %1003, label %992

959:                                              ; preds = %953
  br label %1003

960:                                              ; preds = %953, %953
  %961 = icmp eq i8 %955, 64
  %962 = zext i1 %961 to i64
  %963 = getelementptr inbounds i8, ptr %945, i64 6
  %964 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %963) #15
  %965 = icmp eq i64 %964, 4
  br i1 %965, label %966, label %988

966:                                              ; preds = %960, %981
  %967 = phi i64 [ %985, %981 ], [ %962, %960 ]
  %968 = phi ptr [ %969, %981 ], [ %963, %960 ]
  %969 = getelementptr inbounds i8, ptr %968, i64 1
  %970 = load i8, ptr %968, align 1, !tbaa !92
  %971 = sext i8 %970 to i64
  %972 = shl i64 %967, 4
  %973 = add i8 %970, -48
  %974 = icmp ult i8 %973, 10
  br i1 %974, label %981, label %975

975:                                              ; preds = %966
  %976 = add i8 %970, -65
  %977 = icmp ult i8 %976, 6
  br i1 %977, label %981, label %978

978:                                              ; preds = %975
  %979 = add i8 %970, -97
  %980 = icmp ult i8 %979, 6
  br i1 %980, label %981, label %988

981:                                              ; preds = %978, %975, %966
  %982 = phi i64 [ 4294967248, %966 ], [ 4294967241, %975 ], [ 4294967209, %978 ]
  %983 = add nsw i64 %982, %971
  %984 = and i64 %983, 4294967295
  %985 = or i64 %972, %984
  %986 = load i8, ptr %969, align 1, !tbaa !92
  %987 = icmp eq i8 %986, 0
  br i1 %987, label %988, label %966, !llvm.loop !115

988:                                              ; preds = %981, %978, %960
  %989 = phi i64 [ %962, %960 ], [ %985, %981 ], [ %972, %978 ]
  %990 = phi i1 [ false, %960 ], [ true, %981 ], [ false, %978 ]
  %991 = phi ptr [ %963, %960 ], [ %969, %978 ], [ %969, %981 ]
  br i1 %990, label %1003, label %1999

992:                                              ; preds = %956, %998
  %993 = phi i64 [ %994, %998 ], [ 0, %956 ]
  %994 = add nuw nsw i64 %993, 1
  %995 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %994
  %996 = load i64, ptr %995, align 16, !tbaa !116
  %997 = icmp eq i64 %996, 0
  br i1 %997, label %1003, label %998, !llvm.loop !118

998:                                              ; preds = %992
  %999 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %994, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !119
  %1001 = tail call i32 @LocaleCompare(ptr noundef %1000, ptr noundef nonnull %945) #14
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %992, !llvm.loop !118

1003:                                             ; preds = %992, %998, %956, %988, %959, %953
  %1004 = phi i1 [ false, %988 ], [ true, %959 ], [ true, %953 ], [ false, %956 ], [ false, %998 ], [ false, %992 ]
  %1005 = phi i64 [ 0, %988 ], [ 2, %959 ], [ 1, %953 ], [ 0, %956 ], [ 0, %998 ], [ 0, %992 ]
  %1006 = phi i64 [ %989, %988 ], [ 0, %959 ], [ 0, %953 ], [ 1, %956 ], [ -1, %992 ], [ %996, %998 ]
  %1007 = phi ptr [ %991, %988 ], [ %945, %959 ], [ %945, %953 ], [ %945, %956 ], [ %945, %998 ], [ %945, %992 ]
  %1008 = icmp eq i64 %1006, -1
  br i1 %1008, label %1999, label %1009

1009:                                             ; preds = %1003
  %1010 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %936) #14
  %1011 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %936) #14
  %1012 = icmp eq i64 %1010, 0
  br i1 %1012, label %1096, label %1017

1013:                                             ; preds = %1074, %1062, %1050, %1038, %1026
  %1014 = phi ptr [ %1027, %1026 ], [ %1039, %1038 ], [ %1051, %1050 ], [ %1063, %1062 ], [ %1075, %1074 ]
  %1015 = phi i64 [ %1028, %1026 ], [ %1040, %1038 ], [ %1052, %1050 ], [ %1064, %1062 ], [ %1076, %1074 ]
  %1016 = icmp eq i64 %1015, 0
  br i1 %1016, label %1096, label %1093

1017:                                             ; preds = %1009, %1093
  %1018 = phi ptr [ %1094, %1093 ], [ %1011, %1009 ]
  %1019 = phi i64 [ %1095, %1093 ], [ %1010, %1009 ]
  %1020 = icmp eq i64 %1019, 0
  br i1 %1020, label %1026, label %1021

1021:                                             ; preds = %1017
  %1022 = getelementptr inbounds i8, ptr %1018, i64 1
  %1023 = load i8, ptr %1018, align 1, !tbaa !92
  %1024 = zext i8 %1023 to i32
  %1025 = add i64 %1019, -1
  br label %1026

1026:                                             ; preds = %1021, %1017
  %1027 = phi ptr [ %1018, %1017 ], [ %1022, %1021 ]
  %1028 = phi i64 [ %1019, %1017 ], [ %1025, %1021 ]
  %1029 = phi i32 [ -1, %1017 ], [ %1024, %1021 ]
  %1030 = icmp eq i32 %1029, 69
  br i1 %1030, label %1031, label %1013, !llvm.loop !120

1031:                                             ; preds = %1026
  %1032 = icmp eq i64 %1028, 0
  br i1 %1032, label %1038, label %1033

1033:                                             ; preds = %1031
  %1034 = getelementptr inbounds i8, ptr %1027, i64 1
  %1035 = load i8, ptr %1027, align 1, !tbaa !92
  %1036 = zext i8 %1035 to i32
  %1037 = add i64 %1028, -1
  br label %1038

1038:                                             ; preds = %1033, %1031
  %1039 = phi ptr [ %1027, %1031 ], [ %1034, %1033 ]
  %1040 = phi i64 [ %1028, %1031 ], [ %1037, %1033 ]
  %1041 = phi i32 [ -1, %1031 ], [ %1036, %1033 ]
  %1042 = icmp eq i32 %1041, 120
  br i1 %1042, label %1043, label %1013, !llvm.loop !120

1043:                                             ; preds = %1038
  %1044 = icmp eq i64 %1040, 0
  br i1 %1044, label %1050, label %1045

1045:                                             ; preds = %1043
  %1046 = getelementptr inbounds i8, ptr %1039, i64 1
  %1047 = load i8, ptr %1039, align 1, !tbaa !92
  %1048 = zext i8 %1047 to i32
  %1049 = add i64 %1040, -1
  br label %1050

1050:                                             ; preds = %1045, %1043
  %1051 = phi ptr [ %1039, %1043 ], [ %1046, %1045 ]
  %1052 = phi i64 [ %1040, %1043 ], [ %1049, %1045 ]
  %1053 = phi i32 [ -1, %1043 ], [ %1048, %1045 ]
  %1054 = icmp eq i32 %1053, 105
  br i1 %1054, label %1055, label %1013, !llvm.loop !120

1055:                                             ; preds = %1050
  %1056 = icmp eq i64 %1052, 0
  br i1 %1056, label %1062, label %1057

1057:                                             ; preds = %1055
  %1058 = getelementptr inbounds i8, ptr %1051, i64 1
  %1059 = load i8, ptr %1051, align 1, !tbaa !92
  %1060 = zext i8 %1059 to i32
  %1061 = add i64 %1052, -1
  br label %1062

1062:                                             ; preds = %1057, %1055
  %1063 = phi ptr [ %1051, %1055 ], [ %1058, %1057 ]
  %1064 = phi i64 [ %1052, %1055 ], [ %1061, %1057 ]
  %1065 = phi i32 [ -1, %1055 ], [ %1060, %1057 ]
  %1066 = icmp eq i32 %1065, 102
  br i1 %1066, label %1067, label %1013, !llvm.loop !120

1067:                                             ; preds = %1062
  %1068 = icmp eq i64 %1064, 0
  br i1 %1068, label %1074, label %1069

1069:                                             ; preds = %1067
  %1070 = getelementptr inbounds i8, ptr %1063, i64 1
  %1071 = load i8, ptr %1063, align 1, !tbaa !92
  %1072 = zext i8 %1071 to i32
  %1073 = add i64 %1064, -1
  br label %1074

1074:                                             ; preds = %1069, %1067
  %1075 = phi ptr [ %1063, %1067 ], [ %1070, %1069 ]
  %1076 = phi i64 [ %1064, %1067 ], [ %1073, %1069 ]
  %1077 = phi i32 [ -1, %1067 ], [ %1072, %1069 ]
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1079, label %1013, !llvm.loop !120

1079:                                             ; preds = %1074
  %1080 = icmp eq i64 %1076, 0
  br i1 %1080, label %1086, label %1081

1081:                                             ; preds = %1079
  %1082 = getelementptr inbounds i8, ptr %1075, i64 1
  %1083 = load i8, ptr %1075, align 1, !tbaa !92
  %1084 = zext i8 %1083 to i32
  %1085 = add i64 %1076, -1
  br label %1086

1086:                                             ; preds = %1081, %1079
  %1087 = phi ptr [ %1075, %1079 ], [ %1082, %1081 ]
  %1088 = phi i64 [ %1076, %1079 ], [ %1085, %1081 ]
  %1089 = phi i32 [ -1, %1079 ], [ %1084, %1081 ]
  %1090 = icmp ne i32 %1089, 0
  %1091 = icmp ne i64 %1088, 0
  %1092 = select i1 %1090, i1 %1091, i1 false
  br i1 %1092, label %1093, label %1096

1093:                                             ; preds = %1086, %1013
  %1094 = phi ptr [ %1087, %1086 ], [ %1014, %1013 ]
  %1095 = phi i64 [ %1088, %1086 ], [ %1015, %1013 ]
  br label %1017, !llvm.loop !120

1096:                                             ; preds = %1013, %1086, %1009
  %1097 = phi ptr [ %1011, %1009 ], [ %1014, %1013 ], [ %1087, %1086 ]
  %1098 = phi i64 [ %1010, %1009 ], [ %1015, %1013 ], [ %1088, %1086 ]
  %1099 = icmp ult i64 %1098, 16
  br i1 %1099, label %1999, label %1100

1100:                                             ; preds = %1096
  %1101 = getelementptr inbounds i8, ptr %1097, i64 1
  %1102 = load i8, ptr %1101, align 1, !tbaa !92
  %1103 = zext i8 %1102 to i16
  %1104 = shl nuw i16 %1103, 8
  %1105 = load i8, ptr %1097, align 1, !tbaa !92
  %1106 = zext i8 %1105 to i16
  %1107 = or disjoint i16 %1104, %1106
  switch i16 %1107, label %1999 [
    i16 18761, label %1109
    i16 19789, label %1108
  ]

1108:                                             ; preds = %1100
  br label %1109

1109:                                             ; preds = %1108, %1100
  %1110 = phi i1 [ false, %1108 ], [ true, %1100 ]
  %1111 = getelementptr inbounds i8, ptr %1097, i64 2
  %1112 = getelementptr inbounds i8, ptr %1097, i64 3
  %1113 = getelementptr inbounds i8, ptr %1097, i64 3
  %1114 = select i1 %1110, ptr %1111, ptr %1112
  %1115 = select i1 %1110, ptr %1113, ptr %1111
  %1116 = load i8, ptr %1115, align 1, !tbaa !92
  %1117 = zext i8 %1116 to i16
  %1118 = shl nuw i16 %1117, 8
  %1119 = load i8, ptr %1114, align 1, !tbaa !92
  %1120 = zext i8 %1119 to i16
  %1121 = or disjoint i16 %1118, %1120
  %1122 = icmp eq i16 %1121, 42
  br i1 %1122, label %1123, label %1999

1123:                                             ; preds = %1109
  %1124 = getelementptr inbounds i8, ptr %1097, i64 4
  br i1 %1110, label %1125, label %1140

1125:                                             ; preds = %1123
  %1126 = getelementptr inbounds i8, ptr %1097, i64 7
  %1127 = load i8, ptr %1126, align 1, !tbaa !92
  %1128 = zext i8 %1127 to i64
  %1129 = shl nuw nsw i64 %1128, 24
  %1130 = getelementptr inbounds i8, ptr %1097, i64 6
  %1131 = load i8, ptr %1130, align 1, !tbaa !92
  %1132 = zext i8 %1131 to i64
  %1133 = shl nuw nsw i64 %1132, 16
  %1134 = or disjoint i64 %1133, %1129
  %1135 = getelementptr inbounds i8, ptr %1097, i64 5
  %1136 = load i8, ptr %1135, align 1, !tbaa !92
  %1137 = zext i8 %1136 to i64
  %1138 = shl nuw nsw i64 %1137, 8
  %1139 = or disjoint i64 %1134, %1138
  br label %1155

1140:                                             ; preds = %1123
  %1141 = load i8, ptr %1124, align 1, !tbaa !92
  %1142 = zext i8 %1141 to i64
  %1143 = shl nuw nsw i64 %1142, 24
  %1144 = getelementptr inbounds i8, ptr %1097, i64 5
  %1145 = load i8, ptr %1144, align 1, !tbaa !92
  %1146 = zext i8 %1145 to i64
  %1147 = shl nuw nsw i64 %1146, 16
  %1148 = or disjoint i64 %1147, %1143
  %1149 = getelementptr inbounds i8, ptr %1097, i64 6
  %1150 = load i8, ptr %1149, align 1, !tbaa !92
  %1151 = zext i8 %1150 to i64
  %1152 = shl nuw nsw i64 %1151, 8
  %1153 = or disjoint i64 %1148, %1152
  %1154 = getelementptr inbounds i8, ptr %1097, i64 7
  br label %1155

1155:                                             ; preds = %1140, %1125
  %1156 = phi ptr [ %1154, %1140 ], [ %1124, %1125 ]
  %1157 = phi i64 [ %1153, %1140 ], [ %1139, %1125 ]
  %1158 = load i8, ptr %1156, align 1, !tbaa !92
  %1159 = zext i8 %1158 to i64
  %1160 = or disjoint i64 %1157, %1159
  %1161 = shl nuw i64 %1160, 32
  %1162 = ashr exact i64 %1161, 32
  %1163 = icmp sgt i64 %1162, -1
  %1164 = icmp ult i64 %1162, %1098
  %1165 = and i1 %1163, %1164
  br i1 %1165, label %1166, label %1999

1166:                                             ; preds = %1155
  %1167 = getelementptr inbounds i8, ptr %1097, i64 %1162
  %1168 = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #14
  %1169 = getelementptr inbounds i8, ptr %1097, i64 %1098
  br label %1170

1170:                                             ; preds = %1992, %1166
  %1171 = phi i64 [ 0, %1166 ], [ %1993, %1992 ]
  %1172 = phi i64 [ 0, %1166 ], [ %1187, %1992 ]
  %1173 = phi i64 [ 0, %1166 ], [ %1994, %1992 ]
  %1174 = phi ptr [ undef, %1166 ], [ %1995, %1992 ]
  %1175 = phi ptr [ %1167, %1166 ], [ %1189, %1992 ]
  %1176 = icmp eq i64 %1171, 0
  br i1 %1176, label %1185, label %1177

1177:                                             ; preds = %1170
  %1178 = add nsw i64 %1171, -1
  %1179 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1178
  %1180 = load ptr, ptr %1179, align 8, !tbaa !121
  %1181 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1178, i32 1
  %1182 = load i64, ptr %1181, align 8, !tbaa !123
  %1183 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1178, i32 2
  %1184 = load i64, ptr %1183, align 8, !tbaa !124
  br label %1185

1185:                                             ; preds = %1177, %1170
  %1186 = phi i64 [ %1178, %1177 ], [ 0, %1170 ]
  %1187 = phi i64 [ %1184, %1177 ], [ %1172, %1170 ]
  %1188 = phi i64 [ %1182, %1177 ], [ %1173, %1170 ]
  %1189 = phi ptr [ %1180, %1177 ], [ %1175, %1170 ]
  %1190 = getelementptr inbounds i8, ptr %1189, i64 1
  %1191 = getelementptr inbounds i8, ptr %1189, i64 1
  %1192 = select i1 %1110, ptr %1189, ptr %1190
  %1193 = select i1 %1110, ptr %1191, ptr %1189
  %1194 = load i8, ptr %1193, align 1, !tbaa !92
  %1195 = zext i8 %1194 to i64
  %1196 = shl nuw nsw i64 %1195, 8
  %1197 = load i8, ptr %1192, align 1, !tbaa !92
  %1198 = zext i8 %1197 to i64
  %1199 = or disjoint i64 %1196, %1198
  %1200 = icmp ult i64 %1188, %1199
  br i1 %1200, label %1201, label %1992

1201:                                             ; preds = %1185
  %1202 = getelementptr inbounds i8, ptr %1189, i64 2
  %1203 = mul nuw nsw i64 %1199, 12
  %1204 = getelementptr inbounds i8, ptr %1202, i64 %1203
  %1205 = icmp ugt ptr %1204, %1169
  %1206 = getelementptr inbounds i8, ptr %1204, i64 1
  %1207 = getelementptr inbounds i8, ptr %1204, i64 2
  %1208 = getelementptr inbounds i8, ptr %1204, i64 3
  %1209 = select i1 %1110, ptr %1208, ptr %1204
  %1210 = select i1 %1110, ptr %1207, ptr %1206
  %1211 = select i1 %1110, ptr %1206, ptr %1207
  %1212 = select i1 %1110, ptr %1204, ptr %1208
  br label %1213

1213:                                             ; preds = %1989, %1201
  %1214 = phi ptr [ %1174, %1201 ], [ %1988, %1989 ]
  %1215 = phi i64 [ %1188, %1201 ], [ %1990, %1989 ]
  %1216 = phi i64 [ %1186, %1201 ], [ %1985, %1989 ]
  %1217 = mul nuw nsw i64 %1215, 12
  %1218 = getelementptr inbounds i8, ptr %1189, i64 %1217
  %1219 = getelementptr inbounds i8, ptr %1218, i64 2
  %1220 = call ptr @GetValueFromSplayTree(ptr noundef %1168, ptr noundef nonnull %1219) #14
  %1221 = icmp eq ptr %1220, %1219
  br i1 %1221, label %1984, label %1222

1222:                                             ; preds = %1213
  %1223 = call i32 @AddValueToSplayTree(ptr noundef %1168, ptr noundef nonnull %1219, ptr noundef nonnull %1219) #14
  %1224 = getelementptr inbounds i8, ptr %1218, i64 3
  %1225 = getelementptr inbounds i8, ptr %1218, i64 3
  %1226 = select i1 %1110, ptr %1219, ptr %1224
  %1227 = select i1 %1110, ptr %1225, ptr %1219
  %1228 = load i8, ptr %1227, align 1, !tbaa !92
  %1229 = zext i8 %1228 to i64
  %1230 = shl nuw nsw i64 %1229, 8
  %1231 = load i8, ptr %1226, align 1, !tbaa !92
  %1232 = zext i8 %1231 to i64
  %1233 = or disjoint i64 %1230, %1232
  %1234 = add nsw i64 %1233, %1187
  %1235 = getelementptr inbounds i8, ptr %1218, i64 4
  %1236 = getelementptr inbounds i8, ptr %1218, i64 5
  %1237 = getelementptr inbounds i8, ptr %1218, i64 5
  %1238 = select i1 %1110, ptr %1235, ptr %1236
  %1239 = select i1 %1110, ptr %1237, ptr %1235
  %1240 = load i8, ptr %1239, align 1, !tbaa !92
  %1241 = zext i8 %1240 to i16
  %1242 = shl nuw i16 %1241, 8
  %1243 = load i8, ptr %1238, align 1, !tbaa !92
  %1244 = zext i8 %1243 to i16
  %1245 = or disjoint i16 %1242, %1244
  %1246 = icmp ugt i16 %1245, 12
  br i1 %1246, label %1984, label %1247

1247:                                             ; preds = %1222
  %1248 = zext nneg i16 %1245 to i64
  %1249 = getelementptr inbounds i8, ptr %1218, i64 6
  br i1 %1110, label %1250, label %1265

1250:                                             ; preds = %1247
  %1251 = getelementptr inbounds i8, ptr %1218, i64 9
  %1252 = load i8, ptr %1251, align 1, !tbaa !92
  %1253 = zext i8 %1252 to i64
  %1254 = shl nuw nsw i64 %1253, 24
  %1255 = getelementptr inbounds i8, ptr %1218, i64 8
  %1256 = load i8, ptr %1255, align 1, !tbaa !92
  %1257 = zext i8 %1256 to i64
  %1258 = shl nuw nsw i64 %1257, 16
  %1259 = or disjoint i64 %1258, %1254
  %1260 = getelementptr inbounds i8, ptr %1218, i64 7
  %1261 = load i8, ptr %1260, align 1, !tbaa !92
  %1262 = zext i8 %1261 to i64
  %1263 = shl nuw nsw i64 %1262, 8
  %1264 = or disjoint i64 %1259, %1263
  br label %1280

1265:                                             ; preds = %1247
  %1266 = load i8, ptr %1249, align 1, !tbaa !92
  %1267 = zext i8 %1266 to i64
  %1268 = shl nuw nsw i64 %1267, 24
  %1269 = getelementptr inbounds i8, ptr %1218, i64 7
  %1270 = load i8, ptr %1269, align 1, !tbaa !92
  %1271 = zext i8 %1270 to i64
  %1272 = shl nuw nsw i64 %1271, 16
  %1273 = or disjoint i64 %1272, %1268
  %1274 = getelementptr inbounds i8, ptr %1218, i64 8
  %1275 = load i8, ptr %1274, align 1, !tbaa !92
  %1276 = zext i8 %1275 to i64
  %1277 = shl nuw nsw i64 %1276, 8
  %1278 = or disjoint i64 %1273, %1277
  %1279 = getelementptr inbounds i8, ptr %1218, i64 9
  br label %1280

1280:                                             ; preds = %1265, %1250
  %1281 = phi ptr [ %1279, %1265 ], [ %1249, %1250 ]
  %1282 = phi i64 [ %1278, %1265 ], [ %1264, %1250 ]
  %1283 = load i8, ptr %1281, align 1, !tbaa !92
  %1284 = zext i8 %1283 to i64
  %1285 = or disjoint i64 %1282, %1284
  %1286 = shl nuw i64 %1285, 32
  %1287 = ashr exact i64 %1286, 32
  %1288 = getelementptr inbounds [13 x i32], ptr @GetEXIFProperty.tag_bytes, i64 0, i64 %1248
  %1289 = load i32, ptr %1288, align 4, !tbaa !125
  %1290 = sext i32 %1289 to i64
  %1291 = mul nsw i64 %1287, %1290
  %1292 = icmp slt i64 %1291, %1287
  br i1 %1292, label %1984, label %1293

1293:                                             ; preds = %1280
  %1294 = icmp slt i64 %1291, 5
  %1295 = getelementptr inbounds i8, ptr %1218, i64 10
  br i1 %1294, label %1339, label %1296

1296:                                             ; preds = %1293
  br i1 %1110, label %1297, label %1312

1297:                                             ; preds = %1296
  %1298 = getelementptr inbounds i8, ptr %1218, i64 13
  %1299 = load i8, ptr %1298, align 1, !tbaa !92
  %1300 = zext i8 %1299 to i64
  %1301 = shl nuw nsw i64 %1300, 24
  %1302 = getelementptr inbounds i8, ptr %1218, i64 12
  %1303 = load i8, ptr %1302, align 1, !tbaa !92
  %1304 = zext i8 %1303 to i64
  %1305 = shl nuw nsw i64 %1304, 16
  %1306 = or disjoint i64 %1305, %1301
  %1307 = getelementptr inbounds i8, ptr %1218, i64 11
  %1308 = load i8, ptr %1307, align 1, !tbaa !92
  %1309 = zext i8 %1308 to i64
  %1310 = shl nuw nsw i64 %1309, 8
  %1311 = or disjoint i64 %1306, %1310
  br label %1327

1312:                                             ; preds = %1296
  %1313 = load i8, ptr %1295, align 1, !tbaa !92
  %1314 = zext i8 %1313 to i64
  %1315 = shl nuw nsw i64 %1314, 24
  %1316 = getelementptr inbounds i8, ptr %1218, i64 11
  %1317 = load i8, ptr %1316, align 1, !tbaa !92
  %1318 = zext i8 %1317 to i64
  %1319 = shl nuw nsw i64 %1318, 16
  %1320 = or disjoint i64 %1319, %1315
  %1321 = getelementptr inbounds i8, ptr %1218, i64 12
  %1322 = load i8, ptr %1321, align 1, !tbaa !92
  %1323 = zext i8 %1322 to i64
  %1324 = shl nuw nsw i64 %1323, 8
  %1325 = or disjoint i64 %1320, %1324
  %1326 = getelementptr inbounds i8, ptr %1218, i64 13
  br label %1327

1327:                                             ; preds = %1312, %1297
  %1328 = phi ptr [ %1326, %1312 ], [ %1295, %1297 ]
  %1329 = phi i64 [ %1325, %1312 ], [ %1311, %1297 ]
  %1330 = load i8, ptr %1328, align 1, !tbaa !92
  %1331 = zext i8 %1330 to i64
  %1332 = or disjoint i64 %1329, %1331
  %1333 = shl nuw i64 %1332, 32
  %1334 = ashr exact i64 %1333, 32
  %1335 = add nsw i64 %1334, %1291
  %1336 = icmp ugt i64 %1335, %1098
  %1337 = getelementptr inbounds i8, ptr %1097, i64 %1334
  %1338 = select i1 %1336, ptr %1214, ptr %1337
  br i1 %1336, label %1984, label %1339

1339:                                             ; preds = %1293, %1327
  %1340 = phi ptr [ %1338, %1327 ], [ %1295, %1293 ]
  %1341 = icmp eq i64 %1006, %1234
  %1342 = select i1 %1004, i1 true, i1 %1341
  br i1 %1342, label %1343, label %1900

1343:                                             ; preds = %1339
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  store i8 0, ptr %7, align 16, !tbaa !92
  switch i16 %1245, label %1815 [
    i16 1, label %1362
    i16 7, label %1362
    i16 6, label %1360
    i16 8, label %1358
    i16 3, label %1356
    i16 4, label %1354
    i16 9, label %1352
    i16 5, label %1350
    i16 10, label %1348
    i16 11, label %1346
    i16 12, label %1344
  ]

1344:                                             ; preds = %1343
  %1345 = icmp sgt i64 %1287, 0
  br i1 %1345, label %1794, label %1807

1346:                                             ; preds = %1343
  %1347 = icmp sgt i64 %1287, 0
  br i1 %1347, label %1772, label %1786

1348:                                             ; preds = %1343
  %1349 = icmp sgt i64 %1287, 0
  br i1 %1349, label %1677, label %1764

1350:                                             ; preds = %1343
  %1351 = icmp sgt i64 %1287, 0
  br i1 %1351, label %1582, label %1669

1352:                                             ; preds = %1343
  %1353 = icmp sgt i64 %1287, 0
  br i1 %1353, label %1525, label %1574

1354:                                             ; preds = %1343
  %1355 = icmp sgt i64 %1287, 0
  br i1 %1355, label %1468, label %1517

1356:                                             ; preds = %1343
  %1357 = icmp sgt i64 %1287, 0
  br i1 %1357, label %1438, label %1460

1358:                                             ; preds = %1343
  %1359 = icmp sgt i64 %1287, 0
  br i1 %1359, label %1408, label %1430

1360:                                             ; preds = %1343
  %1361 = icmp sgt i64 %1287, 0
  br i1 %1361, label %1386, label %1400

1362:                                             ; preds = %1343, %1343
  %1363 = icmp sgt i64 %1287, 0
  br i1 %1363, label %1364, label %1378

1364:                                             ; preds = %1362, %1364
  %1365 = phi ptr [ %1375, %1364 ], [ %1340, %1362 ]
  %1366 = phi i64 [ %1374, %1364 ], [ 0, %1362 ]
  %1367 = phi i64 [ %1376, %1364 ], [ 0, %1362 ]
  %1368 = getelementptr inbounds i8, ptr %7, i64 %1366
  %1369 = sub nuw nsw i64 4096, %1366
  %1370 = load i8, ptr %1365, align 1, !tbaa !92
  %1371 = uitofp i8 %1370 to double
  %1372 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1368, i64 noundef %1369, ptr noundef nonnull @.str.399, double noundef %1371) #14
  %1373 = add i64 %1372, %1366
  %1374 = call i64 @llvm.umin.i64(i64 %1373, i64 4095)
  %1375 = getelementptr inbounds i8, ptr %1365, i64 1
  %1376 = add nuw nsw i64 %1367, 1
  %1377 = icmp eq i64 %1376, %1287
  br i1 %1377, label %1378, label %1364, !llvm.loop !126

1378:                                             ; preds = %1364, %1362
  %1379 = phi i64 [ 0, %1362 ], [ %1374, %1364 ]
  %1380 = icmp ugt i64 %1379, 1
  br i1 %1380, label %1381, label %1384

1381:                                             ; preds = %1378
  %1382 = add nsw i64 %1379, -2
  %1383 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1382
  store i8 0, ptr %1383, align 1, !tbaa !92
  br label %1384

1384:                                             ; preds = %1381, %1378
  %1385 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1386:                                             ; preds = %1360, %1386
  %1387 = phi ptr [ %1397, %1386 ], [ %1340, %1360 ]
  %1388 = phi i64 [ %1396, %1386 ], [ 0, %1360 ]
  %1389 = phi i64 [ %1398, %1386 ], [ 0, %1360 ]
  %1390 = getelementptr inbounds i8, ptr %7, i64 %1388
  %1391 = sub nuw nsw i64 4096, %1388
  %1392 = load i8, ptr %1387, align 1, !tbaa !92
  %1393 = sitofp i8 %1392 to double
  %1394 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1390, i64 noundef %1391, ptr noundef nonnull @.str.399, double noundef %1393) #14
  %1395 = add i64 %1394, %1388
  %1396 = call i64 @llvm.umin.i64(i64 %1395, i64 4095)
  %1397 = getelementptr inbounds i8, ptr %1387, i64 1
  %1398 = add nuw nsw i64 %1389, 1
  %1399 = icmp eq i64 %1398, %1287
  br i1 %1399, label %1400, label %1386, !llvm.loop !127

1400:                                             ; preds = %1386, %1360
  %1401 = phi i64 [ 0, %1360 ], [ %1396, %1386 ]
  %1402 = icmp ugt i64 %1401, 1
  br i1 %1402, label %1403, label %1406

1403:                                             ; preds = %1400
  %1404 = add nsw i64 %1401, -2
  %1405 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1404
  store i8 0, ptr %1405, align 1, !tbaa !92
  br label %1406

1406:                                             ; preds = %1403, %1400
  %1407 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1408:                                             ; preds = %1358, %1408
  %1409 = phi ptr [ %1427, %1408 ], [ %1340, %1358 ]
  %1410 = phi i64 [ %1426, %1408 ], [ 0, %1358 ]
  %1411 = phi i64 [ %1428, %1408 ], [ 0, %1358 ]
  %1412 = getelementptr inbounds i8, ptr %7, i64 %1410
  %1413 = sub nuw nsw i64 4096, %1410
  %1414 = getelementptr inbounds i8, ptr %1409, i64 1
  %1415 = getelementptr inbounds i8, ptr %1409, i64 1
  %1416 = select i1 %1110, ptr %1409, ptr %1414
  %1417 = select i1 %1110, ptr %1415, ptr %1409
  %1418 = load i8, ptr %1417, align 1, !tbaa !92
  %1419 = zext i8 %1418 to i32
  %1420 = shl nuw nsw i32 %1419, 8
  %1421 = load i8, ptr %1416, align 1, !tbaa !92
  %1422 = zext i8 %1421 to i32
  %1423 = or disjoint i32 %1420, %1422
  %1424 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1412, i64 noundef %1413, ptr noundef nonnull @.str.400, i32 noundef %1423) #14
  %1425 = add i64 %1424, %1410
  %1426 = call i64 @llvm.umin.i64(i64 %1425, i64 4095)
  %1427 = getelementptr inbounds i8, ptr %1409, i64 2
  %1428 = add nuw nsw i64 %1411, 1
  %1429 = icmp eq i64 %1428, %1287
  br i1 %1429, label %1430, label %1408, !llvm.loop !128

1430:                                             ; preds = %1408, %1358
  %1431 = phi i64 [ 0, %1358 ], [ %1426, %1408 ]
  %1432 = icmp ugt i64 %1431, 1
  br i1 %1432, label %1433, label %1436

1433:                                             ; preds = %1430
  %1434 = add nsw i64 %1431, -2
  %1435 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1434
  store i8 0, ptr %1435, align 1, !tbaa !92
  br label %1436

1436:                                             ; preds = %1433, %1430
  %1437 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1438:                                             ; preds = %1356, %1438
  %1439 = phi ptr [ %1457, %1438 ], [ %1340, %1356 ]
  %1440 = phi i64 [ %1456, %1438 ], [ 0, %1356 ]
  %1441 = phi i64 [ %1458, %1438 ], [ 0, %1356 ]
  %1442 = getelementptr inbounds i8, ptr %7, i64 %1440
  %1443 = sub nuw nsw i64 4096, %1440
  %1444 = getelementptr inbounds i8, ptr %1439, i64 1
  %1445 = getelementptr inbounds i8, ptr %1439, i64 1
  %1446 = select i1 %1110, ptr %1439, ptr %1444
  %1447 = select i1 %1110, ptr %1445, ptr %1439
  %1448 = load i8, ptr %1447, align 1, !tbaa !92
  %1449 = zext i8 %1448 to i32
  %1450 = shl nuw nsw i32 %1449, 8
  %1451 = load i8, ptr %1446, align 1, !tbaa !92
  %1452 = zext i8 %1451 to i32
  %1453 = or disjoint i32 %1450, %1452
  %1454 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1442, i64 noundef %1443, ptr noundef nonnull @.str.401, i32 noundef %1453) #14
  %1455 = add i64 %1454, %1440
  %1456 = call i64 @llvm.umin.i64(i64 %1455, i64 4095)
  %1457 = getelementptr inbounds i8, ptr %1439, i64 2
  %1458 = add nuw nsw i64 %1441, 1
  %1459 = icmp eq i64 %1458, %1287
  br i1 %1459, label %1460, label %1438, !llvm.loop !129

1460:                                             ; preds = %1438, %1356
  %1461 = phi i64 [ 0, %1356 ], [ %1456, %1438 ]
  %1462 = icmp ugt i64 %1461, 1
  br i1 %1462, label %1463, label %1466

1463:                                             ; preds = %1460
  %1464 = add nsw i64 %1461, -2
  %1465 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1464
  store i8 0, ptr %1465, align 1, !tbaa !92
  br label %1466

1466:                                             ; preds = %1463, %1460
  %1467 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1468:                                             ; preds = %1354, %1504
  %1469 = phi ptr [ %1514, %1504 ], [ %1340, %1354 ]
  %1470 = phi i64 [ %1513, %1504 ], [ 0, %1354 ]
  %1471 = phi i64 [ %1515, %1504 ], [ 0, %1354 ]
  %1472 = getelementptr inbounds i8, ptr %7, i64 %1470
  %1473 = sub nuw nsw i64 4096, %1470
  br i1 %1110, label %1474, label %1489

1474:                                             ; preds = %1468
  %1475 = getelementptr inbounds i8, ptr %1469, i64 3
  %1476 = load i8, ptr %1475, align 1, !tbaa !92
  %1477 = zext i8 %1476 to i32
  %1478 = shl nuw i32 %1477, 24
  %1479 = getelementptr inbounds i8, ptr %1469, i64 2
  %1480 = load i8, ptr %1479, align 1, !tbaa !92
  %1481 = zext i8 %1480 to i32
  %1482 = shl nuw nsw i32 %1481, 16
  %1483 = or disjoint i32 %1482, %1478
  %1484 = getelementptr inbounds i8, ptr %1469, i64 1
  %1485 = load i8, ptr %1484, align 1, !tbaa !92
  %1486 = zext i8 %1485 to i32
  %1487 = shl nuw nsw i32 %1486, 8
  %1488 = or disjoint i32 %1483, %1487
  br label %1504

1489:                                             ; preds = %1468
  %1490 = load i8, ptr %1469, align 1, !tbaa !92
  %1491 = zext i8 %1490 to i32
  %1492 = shl nuw i32 %1491, 24
  %1493 = getelementptr inbounds i8, ptr %1469, i64 1
  %1494 = load i8, ptr %1493, align 1, !tbaa !92
  %1495 = zext i8 %1494 to i32
  %1496 = shl nuw nsw i32 %1495, 16
  %1497 = or disjoint i32 %1496, %1492
  %1498 = getelementptr inbounds i8, ptr %1469, i64 2
  %1499 = load i8, ptr %1498, align 1, !tbaa !92
  %1500 = zext i8 %1499 to i32
  %1501 = shl nuw nsw i32 %1500, 8
  %1502 = or disjoint i32 %1497, %1501
  %1503 = getelementptr inbounds i8, ptr %1469, i64 3
  br label %1504

1504:                                             ; preds = %1489, %1474
  %1505 = phi ptr [ %1503, %1489 ], [ %1469, %1474 ]
  %1506 = phi i32 [ %1502, %1489 ], [ %1488, %1474 ]
  %1507 = load i8, ptr %1505, align 1, !tbaa !92
  %1508 = zext i8 %1507 to i32
  %1509 = or disjoint i32 %1506, %1508
  %1510 = sitofp i32 %1509 to double
  %1511 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1472, i64 noundef %1473, ptr noundef nonnull @.str.399, double noundef %1510) #14
  %1512 = add i64 %1511, %1470
  %1513 = call i64 @llvm.umin.i64(i64 %1512, i64 4095)
  %1514 = getelementptr inbounds i8, ptr %1469, i64 4
  %1515 = add nuw nsw i64 %1471, 1
  %1516 = icmp eq i64 %1515, %1287
  br i1 %1516, label %1517, label %1468, !llvm.loop !130

1517:                                             ; preds = %1504, %1354
  %1518 = phi i64 [ 0, %1354 ], [ %1513, %1504 ]
  %1519 = icmp ugt i64 %1518, 1
  br i1 %1519, label %1520, label %1523

1520:                                             ; preds = %1517
  %1521 = add nsw i64 %1518, -2
  %1522 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1521
  store i8 0, ptr %1522, align 1, !tbaa !92
  br label %1523

1523:                                             ; preds = %1520, %1517
  %1524 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1525:                                             ; preds = %1352, %1561
  %1526 = phi ptr [ %1571, %1561 ], [ %1340, %1352 ]
  %1527 = phi i64 [ %1570, %1561 ], [ 0, %1352 ]
  %1528 = phi i64 [ %1572, %1561 ], [ 0, %1352 ]
  %1529 = getelementptr inbounds i8, ptr %7, i64 %1527
  %1530 = sub nuw nsw i64 4096, %1527
  br i1 %1110, label %1531, label %1546

1531:                                             ; preds = %1525
  %1532 = getelementptr inbounds i8, ptr %1526, i64 3
  %1533 = load i8, ptr %1532, align 1, !tbaa !92
  %1534 = zext i8 %1533 to i32
  %1535 = shl nuw i32 %1534, 24
  %1536 = getelementptr inbounds i8, ptr %1526, i64 2
  %1537 = load i8, ptr %1536, align 1, !tbaa !92
  %1538 = zext i8 %1537 to i32
  %1539 = shl nuw nsw i32 %1538, 16
  %1540 = or disjoint i32 %1539, %1535
  %1541 = getelementptr inbounds i8, ptr %1526, i64 1
  %1542 = load i8, ptr %1541, align 1, !tbaa !92
  %1543 = zext i8 %1542 to i32
  %1544 = shl nuw nsw i32 %1543, 8
  %1545 = or disjoint i32 %1540, %1544
  br label %1561

1546:                                             ; preds = %1525
  %1547 = load i8, ptr %1526, align 1, !tbaa !92
  %1548 = zext i8 %1547 to i32
  %1549 = shl nuw i32 %1548, 24
  %1550 = getelementptr inbounds i8, ptr %1526, i64 1
  %1551 = load i8, ptr %1550, align 1, !tbaa !92
  %1552 = zext i8 %1551 to i32
  %1553 = shl nuw nsw i32 %1552, 16
  %1554 = or disjoint i32 %1553, %1549
  %1555 = getelementptr inbounds i8, ptr %1526, i64 2
  %1556 = load i8, ptr %1555, align 1, !tbaa !92
  %1557 = zext i8 %1556 to i32
  %1558 = shl nuw nsw i32 %1557, 8
  %1559 = or disjoint i32 %1554, %1558
  %1560 = getelementptr inbounds i8, ptr %1526, i64 3
  br label %1561

1561:                                             ; preds = %1546, %1531
  %1562 = phi ptr [ %1560, %1546 ], [ %1526, %1531 ]
  %1563 = phi i32 [ %1559, %1546 ], [ %1545, %1531 ]
  %1564 = load i8, ptr %1562, align 1, !tbaa !92
  %1565 = zext i8 %1564 to i32
  %1566 = or disjoint i32 %1563, %1565
  %1567 = sitofp i32 %1566 to double
  %1568 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1529, i64 noundef %1530, ptr noundef nonnull @.str.399, double noundef %1567) #14
  %1569 = add i64 %1568, %1527
  %1570 = call i64 @llvm.umin.i64(i64 %1569, i64 4095)
  %1571 = getelementptr inbounds i8, ptr %1526, i64 4
  %1572 = add nuw nsw i64 %1528, 1
  %1573 = icmp eq i64 %1572, %1287
  br i1 %1573, label %1574, label %1525, !llvm.loop !131

1574:                                             ; preds = %1561, %1352
  %1575 = phi i64 [ 0, %1352 ], [ %1570, %1561 ]
  %1576 = icmp ugt i64 %1575, 1
  br i1 %1576, label %1577, label %1580

1577:                                             ; preds = %1574
  %1578 = add nsw i64 %1575, -2
  %1579 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1578
  store i8 0, ptr %1579, align 1, !tbaa !92
  br label %1580

1580:                                             ; preds = %1577, %1574
  %1581 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1582:                                             ; preds = %1350, %1656
  %1583 = phi ptr [ %1666, %1656 ], [ %1340, %1350 ]
  %1584 = phi i64 [ %1665, %1656 ], [ 0, %1350 ]
  %1585 = phi i64 [ %1667, %1656 ], [ 0, %1350 ]
  %1586 = getelementptr inbounds i8, ptr %7, i64 %1584
  %1587 = sub nuw nsw i64 4096, %1584
  br i1 %1110, label %1588, label %1603

1588:                                             ; preds = %1582
  %1589 = getelementptr inbounds i8, ptr %1583, i64 3
  %1590 = load i8, ptr %1589, align 1, !tbaa !92
  %1591 = zext i8 %1590 to i32
  %1592 = shl nuw i32 %1591, 24
  %1593 = getelementptr inbounds i8, ptr %1583, i64 2
  %1594 = load i8, ptr %1593, align 1, !tbaa !92
  %1595 = zext i8 %1594 to i32
  %1596 = shl nuw nsw i32 %1595, 16
  %1597 = or disjoint i32 %1596, %1592
  %1598 = getelementptr inbounds i8, ptr %1583, i64 1
  %1599 = load i8, ptr %1598, align 1, !tbaa !92
  %1600 = zext i8 %1599 to i32
  %1601 = shl nuw nsw i32 %1600, 8
  %1602 = or disjoint i32 %1597, %1601
  br label %1618

1603:                                             ; preds = %1582
  %1604 = load i8, ptr %1583, align 1, !tbaa !92
  %1605 = zext i8 %1604 to i32
  %1606 = shl nuw i32 %1605, 24
  %1607 = getelementptr inbounds i8, ptr %1583, i64 1
  %1608 = load i8, ptr %1607, align 1, !tbaa !92
  %1609 = zext i8 %1608 to i32
  %1610 = shl nuw nsw i32 %1609, 16
  %1611 = or disjoint i32 %1610, %1606
  %1612 = getelementptr inbounds i8, ptr %1583, i64 2
  %1613 = load i8, ptr %1612, align 1, !tbaa !92
  %1614 = zext i8 %1613 to i32
  %1615 = shl nuw nsw i32 %1614, 8
  %1616 = or disjoint i32 %1611, %1615
  %1617 = getelementptr inbounds i8, ptr %1583, i64 3
  br label %1618

1618:                                             ; preds = %1603, %1588
  %1619 = phi ptr [ %1617, %1603 ], [ %1583, %1588 ]
  %1620 = phi i32 [ %1616, %1603 ], [ %1602, %1588 ]
  %1621 = load i8, ptr %1619, align 1, !tbaa !92
  %1622 = zext i8 %1621 to i32
  %1623 = or disjoint i32 %1620, %1622
  %1624 = sitofp i32 %1623 to double
  %1625 = getelementptr inbounds i8, ptr %1583, i64 4
  br i1 %1110, label %1626, label %1641

1626:                                             ; preds = %1618
  %1627 = getelementptr inbounds i8, ptr %1583, i64 7
  %1628 = load i8, ptr %1627, align 1, !tbaa !92
  %1629 = zext i8 %1628 to i32
  %1630 = shl nuw i32 %1629, 24
  %1631 = getelementptr inbounds i8, ptr %1583, i64 6
  %1632 = load i8, ptr %1631, align 1, !tbaa !92
  %1633 = zext i8 %1632 to i32
  %1634 = shl nuw nsw i32 %1633, 16
  %1635 = or disjoint i32 %1634, %1630
  %1636 = getelementptr inbounds i8, ptr %1583, i64 5
  %1637 = load i8, ptr %1636, align 1, !tbaa !92
  %1638 = zext i8 %1637 to i32
  %1639 = shl nuw nsw i32 %1638, 8
  %1640 = or disjoint i32 %1635, %1639
  br label %1656

1641:                                             ; preds = %1618
  %1642 = load i8, ptr %1625, align 1, !tbaa !92
  %1643 = zext i8 %1642 to i32
  %1644 = shl nuw i32 %1643, 24
  %1645 = getelementptr inbounds i8, ptr %1583, i64 5
  %1646 = load i8, ptr %1645, align 1, !tbaa !92
  %1647 = zext i8 %1646 to i32
  %1648 = shl nuw nsw i32 %1647, 16
  %1649 = or disjoint i32 %1648, %1644
  %1650 = getelementptr inbounds i8, ptr %1583, i64 6
  %1651 = load i8, ptr %1650, align 1, !tbaa !92
  %1652 = zext i8 %1651 to i32
  %1653 = shl nuw nsw i32 %1652, 8
  %1654 = or disjoint i32 %1649, %1653
  %1655 = getelementptr inbounds i8, ptr %1583, i64 7
  br label %1656

1656:                                             ; preds = %1641, %1626
  %1657 = phi ptr [ %1655, %1641 ], [ %1625, %1626 ]
  %1658 = phi i32 [ %1654, %1641 ], [ %1640, %1626 ]
  %1659 = load i8, ptr %1657, align 1, !tbaa !92
  %1660 = zext i8 %1659 to i32
  %1661 = or disjoint i32 %1658, %1660
  %1662 = sitofp i32 %1661 to double
  %1663 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1586, i64 noundef %1587, ptr noundef nonnull @.str.402, double noundef %1624, double noundef %1662) #14
  %1664 = add i64 %1663, %1584
  %1665 = call i64 @llvm.umin.i64(i64 %1664, i64 4095)
  %1666 = getelementptr inbounds i8, ptr %1583, i64 8
  %1667 = add nuw nsw i64 %1585, 1
  %1668 = icmp eq i64 %1667, %1287
  br i1 %1668, label %1669, label %1582, !llvm.loop !132

1669:                                             ; preds = %1656, %1350
  %1670 = phi i64 [ 0, %1350 ], [ %1665, %1656 ]
  %1671 = icmp ugt i64 %1670, 1
  br i1 %1671, label %1672, label %1675

1672:                                             ; preds = %1669
  %1673 = add nsw i64 %1670, -2
  %1674 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1673
  store i8 0, ptr %1674, align 1, !tbaa !92
  br label %1675

1675:                                             ; preds = %1672, %1669
  %1676 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1677:                                             ; preds = %1348, %1751
  %1678 = phi ptr [ %1761, %1751 ], [ %1340, %1348 ]
  %1679 = phi i64 [ %1760, %1751 ], [ 0, %1348 ]
  %1680 = phi i64 [ %1762, %1751 ], [ 0, %1348 ]
  %1681 = getelementptr inbounds i8, ptr %7, i64 %1679
  %1682 = sub nuw nsw i64 4096, %1679
  br i1 %1110, label %1683, label %1698

1683:                                             ; preds = %1677
  %1684 = getelementptr inbounds i8, ptr %1678, i64 3
  %1685 = load i8, ptr %1684, align 1, !tbaa !92
  %1686 = zext i8 %1685 to i32
  %1687 = shl nuw i32 %1686, 24
  %1688 = getelementptr inbounds i8, ptr %1678, i64 2
  %1689 = load i8, ptr %1688, align 1, !tbaa !92
  %1690 = zext i8 %1689 to i32
  %1691 = shl nuw nsw i32 %1690, 16
  %1692 = or disjoint i32 %1691, %1687
  %1693 = getelementptr inbounds i8, ptr %1678, i64 1
  %1694 = load i8, ptr %1693, align 1, !tbaa !92
  %1695 = zext i8 %1694 to i32
  %1696 = shl nuw nsw i32 %1695, 8
  %1697 = or disjoint i32 %1692, %1696
  br label %1713

1698:                                             ; preds = %1677
  %1699 = load i8, ptr %1678, align 1, !tbaa !92
  %1700 = zext i8 %1699 to i32
  %1701 = shl nuw i32 %1700, 24
  %1702 = getelementptr inbounds i8, ptr %1678, i64 1
  %1703 = load i8, ptr %1702, align 1, !tbaa !92
  %1704 = zext i8 %1703 to i32
  %1705 = shl nuw nsw i32 %1704, 16
  %1706 = or disjoint i32 %1705, %1701
  %1707 = getelementptr inbounds i8, ptr %1678, i64 2
  %1708 = load i8, ptr %1707, align 1, !tbaa !92
  %1709 = zext i8 %1708 to i32
  %1710 = shl nuw nsw i32 %1709, 8
  %1711 = or disjoint i32 %1706, %1710
  %1712 = getelementptr inbounds i8, ptr %1678, i64 3
  br label %1713

1713:                                             ; preds = %1698, %1683
  %1714 = phi ptr [ %1712, %1698 ], [ %1678, %1683 ]
  %1715 = phi i32 [ %1711, %1698 ], [ %1697, %1683 ]
  %1716 = load i8, ptr %1714, align 1, !tbaa !92
  %1717 = zext i8 %1716 to i32
  %1718 = or disjoint i32 %1715, %1717
  %1719 = sitofp i32 %1718 to double
  %1720 = getelementptr inbounds i8, ptr %1678, i64 4
  br i1 %1110, label %1721, label %1736

1721:                                             ; preds = %1713
  %1722 = getelementptr inbounds i8, ptr %1678, i64 7
  %1723 = load i8, ptr %1722, align 1, !tbaa !92
  %1724 = zext i8 %1723 to i32
  %1725 = shl nuw i32 %1724, 24
  %1726 = getelementptr inbounds i8, ptr %1678, i64 6
  %1727 = load i8, ptr %1726, align 1, !tbaa !92
  %1728 = zext i8 %1727 to i32
  %1729 = shl nuw nsw i32 %1728, 16
  %1730 = or disjoint i32 %1729, %1725
  %1731 = getelementptr inbounds i8, ptr %1678, i64 5
  %1732 = load i8, ptr %1731, align 1, !tbaa !92
  %1733 = zext i8 %1732 to i32
  %1734 = shl nuw nsw i32 %1733, 8
  %1735 = or disjoint i32 %1730, %1734
  br label %1751

1736:                                             ; preds = %1713
  %1737 = load i8, ptr %1720, align 1, !tbaa !92
  %1738 = zext i8 %1737 to i32
  %1739 = shl nuw i32 %1738, 24
  %1740 = getelementptr inbounds i8, ptr %1678, i64 5
  %1741 = load i8, ptr %1740, align 1, !tbaa !92
  %1742 = zext i8 %1741 to i32
  %1743 = shl nuw nsw i32 %1742, 16
  %1744 = or disjoint i32 %1743, %1739
  %1745 = getelementptr inbounds i8, ptr %1678, i64 6
  %1746 = load i8, ptr %1745, align 1, !tbaa !92
  %1747 = zext i8 %1746 to i32
  %1748 = shl nuw nsw i32 %1747, 8
  %1749 = or disjoint i32 %1744, %1748
  %1750 = getelementptr inbounds i8, ptr %1678, i64 7
  br label %1751

1751:                                             ; preds = %1736, %1721
  %1752 = phi ptr [ %1750, %1736 ], [ %1720, %1721 ]
  %1753 = phi i32 [ %1749, %1736 ], [ %1735, %1721 ]
  %1754 = load i8, ptr %1752, align 1, !tbaa !92
  %1755 = zext i8 %1754 to i32
  %1756 = or disjoint i32 %1753, %1755
  %1757 = sitofp i32 %1756 to double
  %1758 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1681, i64 noundef %1682, ptr noundef nonnull @.str.402, double noundef %1719, double noundef %1757) #14
  %1759 = add i64 %1758, %1679
  %1760 = call i64 @llvm.umin.i64(i64 %1759, i64 4095)
  %1761 = getelementptr inbounds i8, ptr %1678, i64 8
  %1762 = add nuw nsw i64 %1680, 1
  %1763 = icmp eq i64 %1762, %1287
  br i1 %1763, label %1764, label %1677, !llvm.loop !133

1764:                                             ; preds = %1751, %1348
  %1765 = phi i64 [ 0, %1348 ], [ %1760, %1751 ]
  %1766 = icmp ugt i64 %1765, 1
  br i1 %1766, label %1767, label %1770

1767:                                             ; preds = %1764
  %1768 = add nsw i64 %1765, -2
  %1769 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1768
  store i8 0, ptr %1769, align 1, !tbaa !92
  br label %1770

1770:                                             ; preds = %1767, %1764
  %1771 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1772:                                             ; preds = %1346, %1772
  %1773 = phi ptr [ %1783, %1772 ], [ %1340, %1346 ]
  %1774 = phi i64 [ %1782, %1772 ], [ 0, %1346 ]
  %1775 = phi i64 [ %1784, %1772 ], [ 0, %1346 ]
  %1776 = getelementptr inbounds i8, ptr %7, i64 %1774
  %1777 = sub nuw nsw i64 4096, %1774
  %1778 = load float, ptr %1773, align 4, !tbaa !134
  %1779 = fpext float %1778 to double
  %1780 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1776, i64 noundef %1777, ptr noundef nonnull @.str.403, double noundef %1779) #14
  %1781 = add i64 %1780, %1774
  %1782 = call i64 @llvm.umin.i64(i64 %1781, i64 4095)
  %1783 = getelementptr inbounds i8, ptr %1773, i64 4
  %1784 = add nuw nsw i64 %1775, 1
  %1785 = icmp eq i64 %1784, %1287
  br i1 %1785, label %1786, label %1772, !llvm.loop !136

1786:                                             ; preds = %1772, %1346
  %1787 = phi i64 [ 0, %1346 ], [ %1782, %1772 ]
  %1788 = icmp ugt i64 %1787, 1
  br i1 %1788, label %1789, label %1792

1789:                                             ; preds = %1786
  %1790 = add nsw i64 %1787, -2
  %1791 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1790
  store i8 0, ptr %1791, align 1, !tbaa !92
  br label %1792

1792:                                             ; preds = %1789, %1786
  %1793 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1794:                                             ; preds = %1344, %1794
  %1795 = phi ptr [ %1804, %1794 ], [ %1340, %1344 ]
  %1796 = phi i64 [ %1803, %1794 ], [ 0, %1344 ]
  %1797 = phi i64 [ %1805, %1794 ], [ 0, %1344 ]
  %1798 = getelementptr inbounds i8, ptr %7, i64 %1796
  %1799 = sub nuw nsw i64 4096, %1796
  %1800 = load double, ptr %1795, align 8, !tbaa !58
  %1801 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1798, i64 noundef %1799, ptr noundef nonnull @.str.403, double noundef %1800) #14
  %1802 = add i64 %1801, %1796
  %1803 = call i64 @llvm.umin.i64(i64 %1802, i64 4095)
  %1804 = getelementptr inbounds i8, ptr %1795, i64 8
  %1805 = add nuw nsw i64 %1797, 1
  %1806 = icmp eq i64 %1805, %1287
  br i1 %1806, label %1807, label %1794, !llvm.loop !137

1807:                                             ; preds = %1794, %1344
  %1808 = phi i64 [ 0, %1344 ], [ %1803, %1794 ]
  %1809 = icmp ugt i64 %1808, 1
  br i1 %1809, label %1810, label %1813

1810:                                             ; preds = %1807
  %1811 = add nsw i64 %1808, -2
  %1812 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %1811
  store i8 0, ptr %1812, align 1, !tbaa !92
  br label %1813

1813:                                             ; preds = %1810, %1807
  %1814 = call ptr @AcquireString(ptr noundef nonnull %7) #14
  br label %1845

1815:                                             ; preds = %1343
  %1816 = icmp eq i64 %1291, -1
  br i1 %1816, label %1820, label %1817

1817:                                             ; preds = %1815
  %1818 = add nsw i64 %1291, 1
  %1819 = call ptr @AcquireQuantumMemory(i64 noundef %1818, i64 noundef 1) #16
  br label %1820

1820:                                             ; preds = %1817, %1815
  %1821 = phi ptr [ %1819, %1817 ], [ null, %1815 ]
  %1822 = icmp eq ptr %1821, null
  br i1 %1822, label %1845, label %1823

1823:                                             ; preds = %1820
  %1824 = icmp sgt i64 %1291, 0
  br i1 %1824, label %1825, label %1842

1825:                                             ; preds = %1823, %1839
  %1826 = phi i64 [ %1840, %1839 ], [ 0, %1823 ]
  %1827 = getelementptr inbounds i8, ptr %1821, i64 %1826
  store i8 46, ptr %1827, align 1, !tbaa !92
  %1828 = load ptr, ptr %942, align 8, !tbaa !96
  %1829 = getelementptr inbounds i8, ptr %1340, i64 %1826
  %1830 = load i8, ptr %1829, align 1, !tbaa !92
  %1831 = zext i8 %1830 to i64
  %1832 = getelementptr inbounds i16, ptr %1828, i64 %1831
  %1833 = load i16, ptr %1832, align 2, !tbaa !113
  %1834 = and i16 %1833, 16384
  %1835 = icmp ne i16 %1834, 0
  %1836 = icmp eq i8 %1830, 0
  %1837 = or i1 %1836, %1835
  br i1 %1837, label %1838, label %1839

1838:                                             ; preds = %1825
  store i8 %1830, ptr %1827, align 1, !tbaa !92
  br label %1839

1839:                                             ; preds = %1838, %1825
  %1840 = add nuw nsw i64 %1826, 1
  %1841 = icmp eq i64 %1840, %1291
  br i1 %1841, label %1842, label %1825, !llvm.loop !138

1842:                                             ; preds = %1839, %1823
  %1843 = phi i64 [ 0, %1823 ], [ %1840, %1839 ]
  %1844 = getelementptr inbounds i8, ptr %1821, i64 %1843
  store i8 0, ptr %1844, align 1, !tbaa !92
  br label %1845

1845:                                             ; preds = %1842, %1820, %1813, %1792, %1770, %1675, %1580, %1523, %1466, %1436, %1406, %1384
  %1846 = phi ptr [ %1821, %1842 ], [ null, %1820 ], [ %1814, %1813 ], [ %1793, %1792 ], [ %1771, %1770 ], [ %1676, %1675 ], [ %1581, %1580 ], [ %1524, %1523 ], [ %1467, %1466 ], [ %1437, %1436 ], [ %1407, %1406 ], [ %1385, %1384 ]
  %1847 = icmp eq ptr %1846, null
  br i1 %1847, label %1899, label %1848

1848:                                             ; preds = %1845
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %1849 = call ptr @AcquireString(ptr noundef %1007) #14
  store ptr %1849, ptr %8, align 8, !tbaa !96
  %1850 = icmp eq i64 %1216, 2
  br i1 %1850, label %1851, label %1853

1851:                                             ; preds = %1848
  %1852 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.404) #14
  br label %1853

1853:                                             ; preds = %1851, %1848
  switch i64 %1005, label %1883 [
    i64 1, label %1854
    i64 2, label %1870
  ]

1854:                                             ; preds = %1853, %1861
  %1855 = phi i64 [ %1864, %1861 ], [ %1005, %1853 ]
  %1856 = phi i64 [ %1862, %1861 ], [ 0, %1853 ]
  %1857 = icmp eq i64 %1855, %1234
  br i1 %1857, label %1858, label %1861

1858:                                             ; preds = %1854
  %1859 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %1856, i32 1
  %1860 = load ptr, ptr %1859, align 8, !tbaa !119
  br label %1866

1861:                                             ; preds = %1854
  %1862 = add nuw nsw i64 %1856, 1
  %1863 = getelementptr inbounds [271 x %struct._TagInfo], ptr @GetEXIFProperty.EXIFTag, i64 0, i64 %1862
  %1864 = load i64, ptr %1863, align 16, !tbaa !116
  %1865 = icmp eq i64 %1864, 0
  br i1 %1865, label %1866, label %1854, !llvm.loop !139

1866:                                             ; preds = %1861, %1858
  %1867 = phi ptr [ %1860, %1858 ], [ @.str.405, %1861 ]
  %1868 = load ptr, ptr %8, align 8, !tbaa !96
  %1869 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1868, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %1867) #14
  br label %1883

1870:                                             ; preds = %1853
  %1871 = icmp slt i64 %1234, 65536
  br i1 %1871, label %1872, label %1875

1872:                                             ; preds = %1870
  %1873 = load ptr, ptr %8, align 8, !tbaa !96
  %1874 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1873, i64 noundef 4096, ptr noundef nonnull @.str.406, i64 noundef %1234) #14
  br label %1883

1875:                                             ; preds = %1870
  %1876 = icmp slt i64 %1234, 131072
  %1877 = load ptr, ptr %8, align 8, !tbaa !96
  br i1 %1876, label %1878, label %1881

1878:                                             ; preds = %1875
  %1879 = and i64 %1234, 65535
  %1880 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1877, i64 noundef 4096, ptr noundef nonnull @.str.407, i64 noundef %1879) #14
  br label %1883

1881:                                             ; preds = %1875
  %1882 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %1877, i64 noundef 4096, ptr noundef nonnull @.str.405) #14
  br label %1883

1883:                                             ; preds = %1881, %1878, %1872, %1866, %1853
  %1884 = load ptr, ptr %42, align 8, !tbaa !91
  %1885 = icmp eq ptr %1884, null
  br i1 %1885, label %1889, label %1886

1886:                                             ; preds = %1883
  %1887 = load ptr, ptr %8, align 8, !tbaa !96
  %1888 = call ptr @GetValueFromSplayTree(ptr noundef nonnull %1884, ptr noundef %1887) #14
  br label %1889

1889:                                             ; preds = %1886, %1883
  %1890 = phi ptr [ %1888, %1886 ], [ null, %1883 ]
  %1891 = icmp eq ptr %1890, null
  br i1 %1891, label %1892, label %1895

1892:                                             ; preds = %1889
  %1893 = load ptr, ptr %8, align 8, !tbaa !96
  %1894 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef %1893, ptr noundef nonnull %1846)
  br label %1895

1895:                                             ; preds = %1892, %1889
  %1896 = call ptr @DestroyString(ptr noundef nonnull %1846) #14
  %1897 = load ptr, ptr %8, align 8, !tbaa !96
  %1898 = call ptr @DestroyString(ptr noundef %1897) #14
  store ptr %1898, ptr %8, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %1899

1899:                                             ; preds = %1895, %1845
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  br label %1900

1900:                                             ; preds = %1899, %1339
  %1901 = icmp eq i64 %1234, 34853
  switch i64 %1234, label %1984 [
    i64 40965, label %1902
    i64 34853, label %1902
    i64 34665, label %1902
  ]

1902:                                             ; preds = %1900, %1900, %1900
  br i1 %1110, label %1903, label %1918

1903:                                             ; preds = %1902
  %1904 = getelementptr inbounds i8, ptr %1340, i64 3
  %1905 = load i8, ptr %1904, align 1, !tbaa !92
  %1906 = zext i8 %1905 to i64
  %1907 = shl nuw nsw i64 %1906, 24
  %1908 = getelementptr inbounds i8, ptr %1340, i64 2
  %1909 = load i8, ptr %1908, align 1, !tbaa !92
  %1910 = zext i8 %1909 to i64
  %1911 = shl nuw nsw i64 %1910, 16
  %1912 = or disjoint i64 %1911, %1907
  %1913 = getelementptr inbounds i8, ptr %1340, i64 1
  %1914 = load i8, ptr %1913, align 1, !tbaa !92
  %1915 = zext i8 %1914 to i64
  %1916 = shl nuw nsw i64 %1915, 8
  %1917 = or disjoint i64 %1912, %1916
  br label %1933

1918:                                             ; preds = %1902
  %1919 = load i8, ptr %1340, align 1, !tbaa !92
  %1920 = zext i8 %1919 to i64
  %1921 = shl nuw nsw i64 %1920, 24
  %1922 = getelementptr inbounds i8, ptr %1340, i64 1
  %1923 = load i8, ptr %1922, align 1, !tbaa !92
  %1924 = zext i8 %1923 to i64
  %1925 = shl nuw nsw i64 %1924, 16
  %1926 = or disjoint i64 %1925, %1921
  %1927 = getelementptr inbounds i8, ptr %1340, i64 2
  %1928 = load i8, ptr %1927, align 1, !tbaa !92
  %1929 = zext i8 %1928 to i64
  %1930 = shl nuw nsw i64 %1929, 8
  %1931 = or disjoint i64 %1926, %1930
  %1932 = getelementptr inbounds i8, ptr %1340, i64 3
  br label %1933

1933:                                             ; preds = %1918, %1903
  %1934 = phi ptr [ %1932, %1918 ], [ %1340, %1903 ]
  %1935 = phi i64 [ %1931, %1918 ], [ %1917, %1903 ]
  %1936 = load i8, ptr %1934, align 1, !tbaa !92
  %1937 = zext i8 %1936 to i64
  %1938 = or disjoint i64 %1935, %1937
  %1939 = shl nuw i64 %1938, 32
  %1940 = ashr exact i64 %1939, 32
  %1941 = icmp ult i64 %1940, %1098
  %1942 = icmp slt i64 %1216, 14
  %1943 = select i1 %1941, i1 %1942, i1 false
  br i1 %1943, label %1944, label %1984

1944:                                             ; preds = %1933
  %1945 = select i1 %1901, i64 65536, i64 0
  %1946 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1216
  store ptr %1189, ptr %1946, align 8, !tbaa !121
  %1947 = add nuw nsw i64 %1215, 1
  %1948 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1216, i32 1
  store i64 %1947, ptr %1948, align 8, !tbaa !123
  %1949 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1216, i32 2
  store i64 %1187, ptr %1949, align 8, !tbaa !124
  %1950 = add nsw i64 %1216, 1
  %1951 = getelementptr inbounds i8, ptr %1097, i64 %1940
  %1952 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1950
  store ptr %1951, ptr %1952, align 8, !tbaa !121
  %1953 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1950, i32 2
  store i64 %1945, ptr %1953, align 8, !tbaa !124
  %1954 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1950, i32 1
  store i64 0, ptr %1954, align 8, !tbaa !123
  %1955 = add nsw i64 %1216, 2
  br i1 %1205, label %1984, label %1956

1956:                                             ; preds = %1944
  %1957 = load i8, ptr %1209, align 1, !tbaa !92
  %1958 = zext i8 %1957 to i64
  %1959 = shl nuw nsw i64 %1958, 24
  %1960 = load i8, ptr %1210, align 1, !tbaa !92
  %1961 = zext i8 %1960 to i64
  %1962 = shl nuw nsw i64 %1961, 16
  %1963 = or disjoint i64 %1962, %1959
  %1964 = load i8, ptr %1211, align 1, !tbaa !92
  %1965 = zext i8 %1964 to i64
  %1966 = shl nuw nsw i64 %1965, 8
  %1967 = or disjoint i64 %1963, %1966
  %1968 = load i8, ptr %1212, align 1, !tbaa !92
  %1969 = zext i8 %1968 to i64
  %1970 = or disjoint i64 %1967, %1969
  %1971 = shl nuw i64 %1970, 32
  %1972 = ashr exact i64 %1971, 32
  %1973 = icmp eq i64 %1970, 0
  br i1 %1973, label %1984, label %1974

1974:                                             ; preds = %1956
  %1975 = icmp ult i64 %1972, %1098
  %1976 = icmp slt i64 %1216, 12
  %1977 = select i1 %1975, i1 %1976, i1 false
  br i1 %1977, label %1978, label %1984

1978:                                             ; preds = %1974
  %1979 = getelementptr inbounds i8, ptr %1097, i64 %1972
  %1980 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1955
  store ptr %1979, ptr %1980, align 8, !tbaa !121
  %1981 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1955, i32 1
  store i64 0, ptr %1981, align 8, !tbaa !123
  %1982 = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %6, i64 0, i64 %1955, i32 2
  store i64 %1945, ptr %1982, align 8, !tbaa !124
  %1983 = add nsw i64 %1216, 3
  br label %1984

1984:                                             ; preds = %1978, %1974, %1956, %1944, %1933, %1900, %1327, %1280, %1222, %1213
  %1985 = phi i64 [ %1216, %1327 ], [ %1216, %1213 ], [ %1216, %1222 ], [ %1216, %1280 ], [ %1216, %1933 ], [ %1216, %1900 ], [ %1955, %1944 ], [ %1983, %1978 ], [ %1955, %1974 ], [ %1955, %1956 ]
  %1986 = phi i1 [ false, %1327 ], [ true, %1213 ], [ true, %1222 ], [ true, %1280 ], [ true, %1933 ], [ false, %1900 ], [ true, %1944 ], [ true, %1978 ], [ true, %1974 ], [ true, %1956 ]
  %1987 = phi i64 [ %1215, %1327 ], [ %1215, %1213 ], [ %1215, %1222 ], [ %1215, %1280 ], [ %1215, %1933 ], [ %1215, %1900 ], [ %1947, %1944 ], [ %1947, %1978 ], [ %1947, %1974 ], [ %1947, %1956 ]
  %1988 = phi ptr [ %1338, %1327 ], [ %1214, %1213 ], [ %1214, %1222 ], [ %1214, %1280 ], [ %1340, %1933 ], [ %1340, %1900 ], [ %1340, %1944 ], [ %1340, %1978 ], [ %1340, %1974 ], [ %1340, %1956 ]
  br i1 %1986, label %1992, label %1989

1989:                                             ; preds = %1984
  %1990 = add i64 %1987, 1
  %1991 = icmp ult i64 %1990, %1199
  br i1 %1991, label %1213, label %1992, !llvm.loop !140

1992:                                             ; preds = %1989, %1984, %1185
  %1993 = phi i64 [ %1186, %1185 ], [ %1985, %1984 ], [ %1985, %1989 ]
  %1994 = phi i64 [ %1188, %1185 ], [ %1990, %1989 ], [ %1987, %1984 ]
  %1995 = phi ptr [ %1174, %1185 ], [ %1988, %1984 ], [ %1988, %1989 ]
  %1996 = icmp sgt i64 %1993, 0
  br i1 %1996, label %1170, label %1997, !llvm.loop !141

1997:                                             ; preds = %1992
  %1998 = call ptr @DestroySplayTree(ptr noundef %1168) #14
  br label %1999

1999:                                             ; preds = %935, %938, %988, %1003, %1096, %1100, %1109, %1155, %1997
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #14
  br label %2242

2000:                                             ; preds = %62, %62
  %2001 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.3, ptr noundef nonnull %1, i64 noundef 3) #14
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2003, label %2242

2003:                                             ; preds = %2000
  %2004 = getelementptr inbounds i8, ptr %1, i64 3
  %2005 = tail call ptr @AcquireFxInfo(ptr noundef %0, ptr noundef nonnull %2004) #14
  %2006 = call i32 @FxEvaluateChannelExpression(ptr noundef %2005, i32 noundef 134217719, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2007 = call ptr @DestroyFxInfo(ptr noundef %2005) #14
  %2008 = icmp eq i32 %2006, 0
  br i1 %2008, label %2242, label %2009

2009:                                             ; preds = %2003
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %32) #14
  %2010 = call i32 @GetMagickPrecision() #14
  %2011 = load double, ptr %31, align 8, !tbaa !58
  %2012 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %32, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %2010, double noundef %2011) #14
  %2013 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %32)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %32) #14
  br label %2242

2014:                                             ; preds = %62, %62
  %2015 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.7, ptr noundef nonnull %1, i64 noundef 4) #14
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2020, label %2017

2017:                                             ; preds = %2014
  %2018 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.8, ptr noundef nonnull %1, i64 noundef 4) #14
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2020, label %2030

2020:                                             ; preds = %2017, %2014
  %2021 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.408) #14
  %2022 = icmp eq ptr %2021, null
  br i1 %2022, label %2023, label %2025

2023:                                             ; preds = %2020
  %2024 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.409) #14
  br label %2025

2025:                                             ; preds = %2023, %2020
  %2026 = phi ptr [ %2024, %2023 ], [ %2021, %2020 ]
  %2027 = icmp eq ptr %2026, null
  br i1 %2027, label %2242, label %2028

2028:                                             ; preds = %2025
  %2029 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %2026) #14
  br label %2242

2030:                                             ; preds = %2017
  %2031 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.9, ptr noundef nonnull %1, i64 noundef 5) #14
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2033, label %2242

2033:                                             ; preds = %2030
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %2034 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.410) #14
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2036, label %2038

2036:                                             ; preds = %2033
  %2037 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.92) #14
  br label %2038

2038:                                             ; preds = %2036, %2033
  %2039 = phi ptr [ %2037, %2036 ], [ %2034, %2033 ]
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2117, label %2041

2041:                                             ; preds = %2038
  %2042 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.411, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %2043 = icmp eq i32 %2042, 2
  br i1 %2043, label %2044, label %2117

2044:                                             ; preds = %2041
  store ptr null, ptr %3, align 8, !tbaa !96
  %2045 = call i64 @GetStringInfoLength(ptr noundef nonnull %2039) #14
  %2046 = icmp sgt i64 %2045, 0
  br i1 %2046, label %2047, label %2101

2047:                                             ; preds = %2044, %2095
  %2048 = phi i64 [ %2098, %2095 ], [ 0, %2044 ]
  %2049 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2050 = getelementptr inbounds i8, ptr %2049, i64 %2048
  %2051 = load i8, ptr %2050, align 1, !tbaa !92
  %2052 = icmp eq i8 %2051, 28
  br i1 %2052, label %2053, label %2095

2053:                                             ; preds = %2047
  %2054 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2055 = getelementptr i8, ptr %2054, i64 %2048
  %2056 = getelementptr i8, ptr %2055, i64 3
  %2057 = load i8, ptr %2056, align 1, !tbaa !92
  %2058 = zext i8 %2057 to i64
  %2059 = shl nuw nsw i64 %2058, 8
  %2060 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2061 = getelementptr i8, ptr %2060, i64 %2048
  %2062 = getelementptr i8, ptr %2061, i64 4
  %2063 = load i8, ptr %2062, align 1, !tbaa !92
  %2064 = zext i8 %2063 to i64
  %2065 = or disjoint i64 %2059, %2064
  %2066 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2067 = getelementptr i8, ptr %2066, i64 %2048
  %2068 = getelementptr i8, ptr %2067, i64 1
  %2069 = load i8, ptr %2068, align 1, !tbaa !92
  %2070 = zext i8 %2069 to i64
  %2071 = load i64, ptr %4, align 8, !tbaa !67
  %2072 = icmp eq i64 %2071, %2070
  br i1 %2072, label %2073, label %2093

2073:                                             ; preds = %2053
  %2074 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2075 = getelementptr i8, ptr %2074, i64 %2048
  %2076 = getelementptr i8, ptr %2075, i64 2
  %2077 = load i8, ptr %2076, align 1, !tbaa !92
  %2078 = zext i8 %2077 to i64
  %2079 = load i64, ptr %5, align 8, !tbaa !67
  %2080 = icmp eq i64 %2079, %2078
  br i1 %2080, label %2081, label %2093

2081:                                             ; preds = %2073
  %2082 = add nuw nsw i64 %2065, 1
  %2083 = call ptr @AcquireQuantumMemory(i64 noundef %2082, i64 noundef 1) #16
  %2084 = icmp eq ptr %2083, null
  br i1 %2084, label %2093, label %2085

2085:                                             ; preds = %2081
  %2086 = call ptr @GetStringInfoDatum(ptr noundef nonnull %2039) #14
  %2087 = getelementptr inbounds i8, ptr %2086, i64 %2048
  %2088 = getelementptr inbounds i8, ptr %2087, i64 5
  %2089 = call i64 @CopyMagickString(ptr noundef nonnull %2083, ptr noundef nonnull %2088, i64 noundef %2082) #14
  %2090 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull %2083) #14
  %2091 = call i32 @ConcatenateString(ptr noundef nonnull %3, ptr noundef nonnull @.str.412) #14
  %2092 = call ptr @DestroyString(ptr noundef nonnull %2083) #14
  br label %2093

2093:                                             ; preds = %2085, %2081, %2073, %2053
  %2094 = add nsw i64 %2048, 5
  br label %2095

2095:                                             ; preds = %2093, %2047
  %2096 = phi i64 [ %2048, %2047 ], [ %2094, %2093 ]
  %2097 = phi i64 [ 1, %2047 ], [ %2065, %2093 ]
  %2098 = add nsw i64 %2097, %2096
  %2099 = call i64 @GetStringInfoLength(ptr noundef nonnull %2039) #14
  %2100 = icmp slt i64 %2098, %2099
  br i1 %2100, label %2047, label %2101, !llvm.loop !142

2101:                                             ; preds = %2095, %2044
  %2102 = load ptr, ptr %3, align 8, !tbaa !96
  %2103 = icmp eq ptr %2102, null
  br i1 %2103, label %2117, label %2104

2104:                                             ; preds = %2101
  %2105 = load i8, ptr %2102, align 1, !tbaa !92
  %2106 = icmp eq i8 %2105, 59
  br i1 %2106, label %2107, label %2109

2107:                                             ; preds = %2104
  %2108 = call ptr @DestroyString(ptr noundef nonnull %2102) #14
  store ptr %2108, ptr %3, align 8, !tbaa !96
  br label %2117

2109:                                             ; preds = %2104
  %2110 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2102) #15
  %2111 = getelementptr i8, ptr %2102, i64 %2110
  %2112 = getelementptr i8, ptr %2111, i64 -1
  store i8 0, ptr %2112, align 1, !tbaa !92
  %2113 = load ptr, ptr %3, align 8, !tbaa !96
  %2114 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2113)
  %2115 = load ptr, ptr %3, align 8, !tbaa !96
  %2116 = call ptr @DestroyString(ptr noundef %2115) #14
  store ptr %2116, ptr %3, align 8, !tbaa !96
  br label %2117

2117:                                             ; preds = %2038, %2041, %2101, %2107, %2109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %2242

2118:                                             ; preds = %62, %62
  %2119 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.10, ptr noundef nonnull %1, i64 noundef 6) #14
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2121, label %2242

2121:                                             ; preds = %2118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %33) #14
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %33) #14
  %2122 = getelementptr inbounds i8, ptr %1, i64 6
  %2123 = call ptr @AcquireFxInfo(ptr noundef %0, ptr noundef nonnull %2122) #14
  %2124 = call i32 @FxEvaluateChannelExpression(ptr noundef %2123, i32 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2125 = load double, ptr %31, align 8, !tbaa !58
  %2126 = fmul double %2125, 6.553500e+04
  %2127 = fptrunc double %2126 to float
  %2128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 5
  store float %2127, ptr %2128, align 8, !tbaa !143
  %2129 = call i32 @FxEvaluateChannelExpression(ptr noundef %2123, i32 noundef 2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2130 = and i32 %2129, %2124
  %2131 = load double, ptr %31, align 8, !tbaa !58
  %2132 = fmul double %2131, 6.553500e+04
  %2133 = fptrunc double %2132 to float
  %2134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 6
  store float %2133, ptr %2134, align 4, !tbaa !145
  %2135 = call i32 @FxEvaluateChannelExpression(ptr noundef %2123, i32 noundef 4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2136 = and i32 %2130, %2135
  %2137 = load double, ptr %31, align 8, !tbaa !58
  %2138 = fmul double %2137, 6.553500e+04
  %2139 = fptrunc double %2138 to float
  %2140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 7
  store float %2139, ptr %2140, align 8, !tbaa !146
  %2141 = call i32 @FxEvaluateChannelExpression(ptr noundef %2123, i32 noundef 8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2142 = and i32 %2136, %2141
  %2143 = load double, ptr %31, align 8, !tbaa !58
  %2144 = fsub double 1.000000e+00, %2143
  %2145 = fmul double %2144, 6.553500e+04
  %2146 = fptrunc double %2145 to float
  %2147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 8
  store float %2146, ptr %2147, align 4, !tbaa !147
  %2148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %2149 = load i32, ptr %2148, align 4, !tbaa !148
  %2150 = icmp eq i32 %2149, 12
  br i1 %2150, label %2151, label %2158

2151:                                             ; preds = %2121
  %2152 = call i32 @FxEvaluateChannelExpression(ptr noundef %2123, i32 noundef 32, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %31, ptr noundef nonnull %63) #14
  %2153 = and i32 %2152, %2142
  %2154 = load double, ptr %31, align 8, !tbaa !58
  %2155 = fmul double %2154, 6.553500e+04
  %2156 = fptrunc double %2155 to float
  %2157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 9
  store float %2156, ptr %2157, align 8, !tbaa !149
  br label %2158

2158:                                             ; preds = %2151, %2121
  %2159 = phi i32 [ %2153, %2151 ], [ %2142, %2121 ]
  %2160 = call ptr @DestroyFxInfo(ptr noundef %2123) #14
  %2161 = icmp eq i32 %2159, 0
  br i1 %2161, label %2165, label %2162

2162:                                             ; preds = %2158
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %34) #14
  %2163 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %33, i32 noundef 1, ptr noundef nonnull %34, ptr noundef nonnull %63) #14
  %2164 = call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %34)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %34) #14
  br label %2165

2165:                                             ; preds = %2162, %2158
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %33) #14
  br label %2242

2166:                                             ; preds = %62, %62
  %2167 = tail call i32 @LocaleNCompare(ptr noundef nonnull @.str.11, ptr noundef nonnull %1, i64 noundef 4) #14
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2169, label %2242

2169:                                             ; preds = %2166
  %2170 = tail call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull @.str.413) #14
  %2171 = icmp eq ptr %2170, null
  br i1 %2171, label %2242, label %2172

2172:                                             ; preds = %2169
  %2173 = load i8, ptr %1, align 1, !tbaa !92
  %2174 = icmp eq i8 %2173, 0
  br i1 %2174, label %2242, label %2175

2175:                                             ; preds = %2172
  %2176 = tail call ptr @StringInfoToString(ptr noundef nonnull %2170) #14
  %2177 = icmp eq ptr %2176, null
  br i1 %2177, label %2242, label %2178

2178:                                             ; preds = %2175, %2185
  %2179 = phi ptr [ %2186, %2185 ], [ %2176, %2175 ]
  %2180 = load i8, ptr %2179, align 1, !tbaa !92
  switch i8 %2180, label %2185 [
    i8 0, label %2187
    i8 60, label %2181
  ]

2181:                                             ; preds = %2178
  %2182 = getelementptr inbounds i8, ptr %2179, i64 1
  %2183 = load i8, ptr %2182, align 1, !tbaa !92
  %2184 = icmp eq i8 %2183, 120
  br i1 %2184, label %2187, label %2185

2185:                                             ; preds = %2181, %2178
  %2186 = getelementptr inbounds i8, ptr %2179, i64 1
  br label %2178, !llvm.loop !150

2187:                                             ; preds = %2181, %2178
  %2188 = tail call ptr @AcquireExceptionInfo() #14
  %2189 = tail call ptr @NewXMLTree(ptr noundef nonnull %2179, ptr noundef %2188) #14
  %2190 = tail call ptr @DestroyString(ptr noundef nonnull %2176) #14
  %2191 = tail call ptr @DestroyExceptionInfo(ptr noundef %2188) #14
  %2192 = icmp eq ptr %2189, null
  br i1 %2192, label %2242, label %2193

2193:                                             ; preds = %2187
  %2194 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %2189, ptr noundef nonnull @.str.414) #14
  %2195 = icmp eq ptr %2194, null
  br i1 %2195, label %2240, label %2196

2196:                                             ; preds = %2193
  %2197 = load ptr, ptr %42, align 8, !tbaa !91
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2199, label %2201

2199:                                             ; preds = %2196
  %2200 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #14
  store ptr %2200, ptr %42, align 8, !tbaa !91
  br label %2201

2201:                                             ; preds = %2199, %2196
  %2202 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %2194, ptr noundef nonnull @.str.415) #14
  %2203 = icmp eq ptr %2202, null
  br i1 %2203, label %2240, label %2204

2204:                                             ; preds = %2201, %2237
  %2205 = phi ptr [ %2238, %2237 ], [ %2202, %2201 ]
  %2206 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %2205, ptr noundef null) #14
  %2207 = icmp eq ptr %2206, null
  br i1 %2207, label %2237, label %2208

2208:                                             ; preds = %2204, %2234
  %2209 = phi ptr [ %2235, %2234 ], [ %2206, %2204 ]
  %2210 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %2209, ptr noundef null) #14
  %2211 = icmp eq ptr %2210, null
  br i1 %2211, label %2212, label %2219

2212:                                             ; preds = %2208
  %2213 = load ptr, ptr %42, align 8, !tbaa !91
  %2214 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %2209) #14
  %2215 = tail call ptr @ConstantString(ptr noundef %2214) #14
  %2216 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %2209) #14
  %2217 = tail call ptr @ConstantString(ptr noundef %2216) #14
  %2218 = tail call i32 @AddValueToSplayTree(ptr noundef %2213, ptr noundef %2215, ptr noundef %2217) #14
  br label %2234

2219:                                             ; preds = %2208, %2231
  %2220 = phi ptr [ %2232, %2231 ], [ %2210, %2208 ]
  %2221 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %2220) #14
  %2222 = tail call i32 @LocaleCompare(ptr noundef %2221, ptr noundef nonnull @.str.416) #14
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2231, label %2224

2224:                                             ; preds = %2219
  %2225 = load ptr, ptr %42, align 8, !tbaa !91
  %2226 = tail call ptr @GetXMLTreeTag(ptr noundef nonnull %2220) #14
  %2227 = tail call ptr @ConstantString(ptr noundef %2226) #14
  %2228 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %2220) #14
  %2229 = tail call ptr @ConstantString(ptr noundef %2228) #14
  %2230 = tail call i32 @AddValueToSplayTree(ptr noundef %2225, ptr noundef %2227, ptr noundef %2229) #14
  br label %2231

2231:                                             ; preds = %2224, %2219
  %2232 = tail call ptr @GetXMLTreeSibling(ptr noundef nonnull %2220) #14
  %2233 = icmp eq ptr %2232, null
  br i1 %2233, label %2234, label %2219, !llvm.loop !151

2234:                                             ; preds = %2231, %2212
  %2235 = tail call ptr @GetXMLTreeSibling(ptr noundef nonnull %2209) #14
  %2236 = icmp eq ptr %2235, null
  br i1 %2236, label %2237, label %2208, !llvm.loop !152

2237:                                             ; preds = %2234, %2204
  %2238 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %2205) #14
  %2239 = icmp eq ptr %2238, null
  br i1 %2239, label %2240, label %2204, !llvm.loop !153

2240:                                             ; preds = %2237, %2201, %2193
  %2241 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %2189) #14
  br label %2242

2242:                                             ; preds = %2240, %2187, %2175, %2172, %2169, %2028, %2025, %62, %2166, %2118, %2030, %2000, %2003, %2009, %932, %65, %2165, %2117, %1999, %931
  %2243 = load ptr, ptr %42, align 8, !tbaa !91
  %2244 = icmp eq ptr %2243, null
  br i1 %2244, label %2247, label %2245

2245:                                             ; preds = %2242
  %2246 = call ptr @GetValueFromSplayTree(ptr noundef nonnull %2243, ptr noundef nonnull %1) #14
  br label %2247

2247:                                             ; preds = %2242, %57, %59, %53, %2245, %47
  %2248 = phi ptr [ %49, %47 ], [ %2246, %2245 ], [ %55, %53 ], [ null, %59 ], [ null, %57 ], [ null, %2242 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #14
  ret ptr %2248
}

declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @AcquireFxInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @FxEvaluateChannelExpression(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyFxInfo(ptr noundef) local_unnamed_addr #1

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @GetMagickPrecision() local_unnamed_addr #1

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %18 = getelementptr inbounds i8, ptr %2, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !92
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8, ptr %2, align 1, !tbaa !92
  %23 = tail call fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %22)
  br label %370

24:                                               ; preds = %3
  store i8 0, ptr %4, align 16, !tbaa !92
  %25 = load i8, ptr %2, align 1, !tbaa !92
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
  %27 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %33, i32 noundef 5, ptr noundef nonnull %4) #14
  br label %361

34:                                               ; preds = %29
  %35 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %361

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %39 = tail call i64 @GetImageDepth(ptr noundef %1, ptr noundef nonnull %38) #14
  %40 = uitofp i64 %39 to double
  %41 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %40) #14
  br label %361

42:                                               ; preds = %24
  %43 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.16, ptr noundef nonnull %2) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !148
  %48 = zext i32 %47 to i64
  %49 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %48) #14
  %50 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %49) #14
  call void @LocaleLower(ptr noundef nonnull %4) #14
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !154
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %361, label %54

54:                                               ; preds = %45
  %55 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, i64 noundef 4096) #14
  br label %361

56:                                               ; preds = %42
  %57 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %2) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !148
  %62 = zext i32 %61 to i64
  %63 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %62) #14
  br label %361

64:                                               ; preds = %56
  %65 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %361

67:                                               ; preds = %64
  %68 = tail call ptr @GetMagickCopyright() #14
  %69 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %68, i64 noundef 4096) #14
  br label %361

70:                                               ; preds = %24
  %71 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #14
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = uitofp i64 %75 to double
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %76) #14
  br label %361

78:                                               ; preds = %70
  %79 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.21, ptr noundef nonnull %2) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %361

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %82, i32 noundef 3, ptr noundef nonnull %4) #14
  br label %361

83:                                               ; preds = %24
  %84 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.22, ptr noundef nonnull %2) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %361

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %87, i32 noundef 6, ptr noundef nonnull %4) #14
  br label %361

88:                                               ; preds = %24
  %89 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = tail call i32 @GetMagickPrecision() #14
  %93 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 15
  %94 = load double, ptr %93, align 8, !tbaa !56
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %92, double noundef %94) #14
  br label %361

96:                                               ; preds = %88
  %97 = icmp eq ptr %0, null
  br i1 %97, label %361, label %98

98:                                               ; preds = %96
  %99 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %361

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 33
  %103 = load i64, ptr %102, align 8, !tbaa !155
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.25, i64 noundef %103) #14
  br label %361

105:                                              ; preds = %24
  %106 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %361

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %110 = load i64, ptr %109, align 8, !tbaa !157
  %111 = icmp eq i64 %110, 0
  %112 = uitofp i64 %110 to double
  %113 = select i1 %111, double 2.560000e+02, double %112
  %114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %113) #14
  br label %361

115:                                              ; preds = %24
  %116 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.27, ptr noundef nonnull %2) #14
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %119 = select i1 %117, ptr %118, ptr null
  br label %361

120:                                              ; preds = %24
  %121 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.28, ptr noundef nonnull %2) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %361

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %124 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %125 = load i32, ptr %124, align 8, !tbaa !158
  %126 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %127 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %125, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %126) #14
  %128 = call i32 @GetMagickPrecision() #14
  %129 = load double, ptr %5, align 8, !tbaa !58
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %128, double noundef %129) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %361

131:                                              ; preds = %24
  %132 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.29, ptr noundef nonnull %2) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  br label %361

136:                                              ; preds = %131
  %137 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.30, ptr noundef nonnull %2) #14
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.31, ptr noundef nonnull %2) #14
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139, %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %143 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %144 = load i32, ptr %143, align 8, !tbaa !158
  %145 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %146 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %144, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %145) #14
  %147 = call i32 @GetMagickPrecision() #14
  %148 = load double, ptr %7, align 8, !tbaa !58
  %149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %147, double noundef %148) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %361

150:                                              ; preds = %139
  %151 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.32, ptr noundef nonnull %2) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %154 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %155 = load i32, ptr %154, align 8, !tbaa !158
  %156 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %157 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %155, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %156) #14
  %158 = call i32 @GetMagickPrecision() #14
  %159 = load double, ptr %9, align 8, !tbaa !58
  %160 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %158, double noundef %159) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %361

161:                                              ; preds = %150
  %162 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.33, ptr noundef nonnull %2) #14
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.34, ptr noundef nonnull %2) #14
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %361

167:                                              ; preds = %164, %161
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  %168 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %169 = load i32, ptr %168, align 8, !tbaa !158
  %170 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %171 = call i32 @GetImageChannelRange(ptr noundef %1, i32 noundef %169, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %170) #14
  %172 = call i32 @GetMagickPrecision() #14
  %173 = load double, ptr %12, align 8, !tbaa !58
  %174 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %172, double noundef %173) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %361

175:                                              ; preds = %24
  %176 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.35, ptr noundef nonnull %2) #14
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %180 = tail call i32 @IsOpaqueImage(ptr noundef %1, ptr noundef nonnull %179) #14
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, ptr @.str.37, ptr @.str.36
  %183 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %182, i64 noundef 4096) #14
  br label %361

184:                                              ; preds = %175
  %185 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.38, ptr noundef nonnull %2) #14
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !79
  %190 = zext i32 %189 to i64
  %191 = tail call ptr @CommandOptionToMnemonic(i32 noundef 50, i64 noundef %190) #14
  br label %361

192:                                              ; preds = %184
  %193 = icmp eq ptr %0, null
  br i1 %193, label %361, label %194

194:                                              ; preds = %192
  %195 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.39, ptr noundef nonnull %2) #14
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %361

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %199 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %198, i64 noundef 4096) #14
  br label %361

200:                                              ; preds = %24
  %201 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.40, ptr noundef nonnull %2) #14
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = tail call i64 @GetImageIndexInList(ptr noundef %1) #14
  %205 = sitofp i64 %204 to double
  %206 = fadd double %205, 1.000000e+00
  %207 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %206) #14
  br label %361

208:                                              ; preds = %200
  %209 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.41, ptr noundef nonnull %2) #14
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %361

211:                                              ; preds = %208
  tail call void @ResetImageProfileIterator(ptr noundef %1) #14
  %212 = tail call ptr @GetNextImageProfile(ptr noundef %1) #14
  %213 = icmp eq ptr %212, null
  br i1 %213, label %361, label %214

214:                                              ; preds = %211
  %215 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %212, i64 noundef 4096) #14
  %216 = call ptr @GetNextImageProfile(ptr noundef %1) #14
  %217 = icmp eq ptr %216, null
  br i1 %217, label %361, label %218

218:                                              ; preds = %214, %218
  %219 = phi ptr [ %222, %218 ], [ %216, %214 ]
  %220 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i64 noundef 4096) #14
  %221 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull %219, i64 noundef 4096) #14
  %222 = call ptr @GetNextImageProfile(ptr noundef %1) #14
  %223 = icmp eq ptr %222, null
  br i1 %223, label %361, label %218, !llvm.loop !159

224:                                              ; preds = %24
  %225 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.43, ptr noundef nonnull %2) #14
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %229 = load double, ptr %228, align 8, !tbaa !64
  %230 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %229) #14
  br label %361

231:                                              ; preds = %224
  %232 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.45, ptr noundef nonnull %2) #14
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %361

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %236 = load double, ptr %235, align 8, !tbaa !65
  %237 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.44, double noundef %236) #14
  br label %361

238:                                              ; preds = %24
  %239 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #14
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = icmp eq ptr %0, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %241
  %244 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %245 = load i64, ptr %244, align 8, !tbaa !160
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %249 = load i64, ptr %248, align 8, !tbaa !161
  %250 = uitofp i64 %249 to double
  %251 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %250) #14
  br label %361

252:                                              ; preds = %243, %241
  %253 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %254 = load i64, ptr %253, align 8, !tbaa !78
  %255 = uitofp i64 %254 to double
  %256 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %255) #14
  br label %361

257:                                              ; preds = %238
  %258 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #14
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = tail call i64 @GetImageListLength(ptr noundef %1) #14
  %262 = uitofp i64 %261 to double
  %263 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %262) #14
  br label %361

264:                                              ; preds = %257
  %265 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.48, ptr noundef nonnull %2) #14
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %13) #14
  %268 = tail call i64 @GetBlobSize(ptr noundef %1) #14
  %269 = call i64 @FormatMagickSize(i64 noundef %268, i32 noundef 0, ptr noundef nonnull %13) #14
  %270 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %13) #14
  br label %361

271:                                              ; preds = %264
  %272 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.50, ptr noundef nonnull %2) #14
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  %275 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %276 = load i32, ptr %275, align 8, !tbaa !158
  %277 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %278 = call i32 @GetImageChannelKurtosis(ptr noundef %1, i32 noundef %276, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %277) #14
  %279 = call i32 @GetMagickPrecision() #14
  %280 = load double, ptr %15, align 8, !tbaa !58
  %281 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %279, double noundef %280) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  br label %361

282:                                              ; preds = %271
  %283 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.51, ptr noundef nonnull %2) #14
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.52, ptr noundef nonnull %2) #14
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %361

288:                                              ; preds = %285, %282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  %289 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 38
  %290 = load i32, ptr %289, align 8, !tbaa !158
  %291 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %292 = call i32 @GetImageChannelMean(ptr noundef %1, i32 noundef %290, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %291) #14
  %293 = call i32 @GetMagickPrecision() #14
  %294 = load double, ptr %17, align 8, !tbaa !58
  %295 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %293, double noundef %294) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  br label %361

296:                                              ; preds = %24
  %297 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.53, ptr noundef nonnull %2) #14
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %361

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %301 = tail call i32 @GetImageType(ptr noundef %1, ptr noundef nonnull %300) #14
  %302 = zext i32 %301 to i64
  %303 = tail call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %302) #14
  br label %361

304:                                              ; preds = %24
  %305 = icmp eq ptr %0, null
  br i1 %305, label %311, label %306

306:                                              ; preds = %304
  %307 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.54, ptr noundef nonnull %2) #14
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  br label %361

311:                                              ; preds = %306, %304
  %312 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %2) #14
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %361

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %316 = load i32, ptr %315, align 8, !tbaa !61
  %317 = zext i32 %316 to i64
  %318 = tail call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %317) #14
  br label %361

319:                                              ; preds = %24
  %320 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.56, ptr noundef nonnull %2) #14
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %361

322:                                              ; preds = %319
  %323 = tail call ptr @GetMagickVersion(ptr noundef null) #14
  br label %361

324:                                              ; preds = %24
  %325 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef nonnull %2) #14
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %361

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %329 = load i64, ptr %328, align 8, !tbaa !162
  %330 = icmp eq i64 %329, 0
  %331 = uitofp i64 %329 to double
  %332 = select i1 %330, double 2.560000e+02, double %331
  %333 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %332) #14
  br label %361

334:                                              ; preds = %24
  %335 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef nonnull %2) #14
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef nonnull %2) #14
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %361

340:                                              ; preds = %337, %334
  %341 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %342 = load double, ptr %341, align 8, !tbaa !64
  %343 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %342) #14
  br label %361

344:                                              ; preds = %24
  %345 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.60, ptr noundef nonnull %2) #14
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef nonnull %2) #14
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %347, %344
  %351 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %352 = load double, ptr %351, align 8, !tbaa !65
  %353 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %352) #14
  br label %361

354:                                              ; preds = %24
  %355 = icmp eq ptr %0, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %354
  %357 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.62, ptr noundef nonnull %2) #14
  %358 = icmp eq i32 %357, 0
  %359 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  %360 = select i1 %358, ptr %359, ptr null
  br label %361

361:                                              ; preds = %218, %214, %356, %115, %211, %354, %347, %337, %324, %319, %311, %296, %285, %247, %252, %231, %208, %192, %194, %164, %120, %105, %96, %98, %83, %78, %64, %45, %54, %34, %24, %350, %340, %327, %322, %314, %309, %299, %288, %274, %267, %260, %234, %227, %203, %197, %187, %178, %167, %153, %142, %134, %123, %108, %101, %91, %86, %81, %73, %67, %59, %37, %32
  %362 = phi ptr [ null, %24 ], [ null, %354 ], [ null, %350 ], [ null, %347 ], [ null, %340 ], [ null, %337 ], [ null, %327 ], [ null, %324 ], [ %323, %322 ], [ null, %319 ], [ %310, %309 ], [ %318, %314 ], [ null, %311 ], [ %303, %299 ], [ null, %296 ], [ null, %247 ], [ null, %252 ], [ null, %260 ], [ null, %267 ], [ null, %274 ], [ null, %288 ], [ null, %285 ], [ null, %227 ], [ null, %234 ], [ null, %231 ], [ null, %203 ], [ null, %208 ], [ null, %178 ], [ %191, %187 ], [ null, %197 ], [ null, %194 ], [ null, %192 ], [ %135, %134 ], [ null, %142 ], [ null, %153 ], [ null, %167 ], [ null, %164 ], [ null, %123 ], [ null, %120 ], [ null, %108 ], [ null, %105 ], [ null, %91 ], [ null, %101 ], [ null, %98 ], [ null, %96 ], [ null, %86 ], [ null, %83 ], [ null, %73 ], [ null, %81 ], [ null, %78 ], [ null, %54 ], [ null, %45 ], [ %63, %59 ], [ null, %67 ], [ null, %64 ], [ null, %32 ], [ null, %37 ], [ null, %34 ], [ %119, %115 ], [ null, %211 ], [ %360, %356 ], [ null, %214 ], [ null, %218 ]
  %363 = load i8, ptr %4, align 16, !tbaa !92
  %364 = icmp eq i8 %363, 0
  %365 = select i1 %364, ptr %362, ptr %4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %370, label %367

367:                                              ; preds = %361
  %368 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull %365) #14
  %369 = call ptr @GetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63) #14
  br label %370

370:                                              ; preds = %361, %367, %21
  %371 = phi ptr [ %23, %21 ], [ %369, %367 ], [ null, %361 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  ret ptr %371
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2282, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  br label %12

12:                                               ; preds = %9, %3
  store i8 0, ptr %4, align 16, !tbaa !92
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
  %15 = load i64, ptr %14, align 8, !tbaa !163
  %16 = sitofp i64 %15 to double
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %16) #14
  %18 = call i64 @ConcatenateMagickString(ptr noundef nonnull %4, ptr noundef nonnull @.str.417, i64 noundef 4096) #14
  br label %255

19:                                               ; preds = %12
  %20 = tail call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull @.str.418)
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.1, ptr %20
  br label %255

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %24, i32 noundef 3, ptr noundef nonnull %4) #14
  br label %255

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %26, i32 noundef 6, ptr noundef nonnull %4) #14
  br label %255

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %28, i32 noundef 4, ptr noundef nonnull %4) #14
  br label %255

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %31 = load i64, ptr %30, align 8, !tbaa !164
  %32 = uitofp i64 %31 to double
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !165
  %35 = uitofp i64 %34 to double
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !166
  %38 = sitofp i64 %37 to double
  %39 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !167
  %41 = sitofp i64 %40 to double
  %42 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.419, double noundef %32, double noundef %35, double noundef %38, double noundef %41) #14
  br label %255

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %45 = load i64, ptr %44, align 8, !tbaa !105
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %49 = load i64, ptr %48, align 8, !tbaa !157
  br label %50

50:                                               ; preds = %43, %47
  %51 = phi i64 [ %49, %47 ], [ %45, %43 ]
  %52 = uitofp i64 %51 to double
  %53 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %52) #14
  br label %255

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  br label %255

56:                                               ; preds = %12
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %58 = tail call i64 @GetNumberColors(ptr noundef %1, ptr noundef null, ptr noundef nonnull %57) #14
  %59 = uitofp i64 %58 to double
  %60 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %59) #14
  br label %255

61:                                               ; preds = %12
  %62 = tail call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull @.str.420)
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @.str.1, ptr %62
  br label %255

65:                                               ; preds = %12
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  br label %255

67:                                               ; preds = %12
  %68 = tail call i64 @GetImageListLength(ptr noundef %1) #14
  %69 = uitofp i64 %68 to double
  %70 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %69) #14
  br label %255

71:                                               ; preds = %12
  %72 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  br label %255

73:                                               ; preds = %12
  %74 = tail call i64 @GetImageIndexInList(ptr noundef %1) #14
  %75 = sitofp i64 %74 to double
  %76 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %75) #14
  br label %255

77:                                               ; preds = %12
  %78 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef 1.600000e+01) #14
  br label %255

79:                                               ; preds = %12
  %80 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !148
  %82 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %83 = tail call i32 @IsGrayImage(ptr noundef %1, ptr noundef nonnull %82) #14
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 %81, i32 2
  %86 = load i32, ptr %1, align 8, !tbaa !168
  %87 = zext i32 %86 to i64
  %88 = tail call ptr @CommandOptionToMnemonic(i32 noundef 5, i64 noundef %87) #14
  %89 = zext i32 %85 to i64
  %90 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %89) #14
  %91 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !154
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.1, ptr @.str.422
  %95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.421, ptr noundef %88, ptr noundef %90, ptr noundef nonnull %94) #14
  br label %255

96:                                               ; preds = %12
  %97 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %98 = load i64, ptr %97, align 8, !tbaa !160
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %102 = load i64, ptr %101, align 8, !tbaa !161
  %103 = uitofp i64 %102 to double
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %103) #14
  br label %255

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %107 = load i64, ptr %106, align 8, !tbaa !78
  %108 = uitofp i64 %107 to double
  %109 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %108) #14
  br label %255

110:                                              ; preds = %12
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  call void @GetPathComponent(ptr noundef nonnull %111, i32 noundef 5, ptr noundef nonnull %4) #14
  br label %255

112:                                              ; preds = %12
  %113 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 49
  br label %255

114:                                              ; preds = %12
  %115 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %116 = load i64, ptr %115, align 8, !tbaa !104
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %120 = load i64, ptr %119, align 8, !tbaa !162
  br label %121

121:                                              ; preds = %114, %118
  %122 = phi i64 [ %120, %118 ], [ %116, %114 ]
  %123 = uitofp i64 %122 to double
  %124 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %123) #14
  br label %255

125:                                              ; preds = %12
  %126 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 24
  %127 = load double, ptr %126, align 8, !tbaa !64
  %128 = tail call double @llvm.fabs.f64(double %127)
  %129 = fcmp ogt double %128, 1.000000e-15
  %130 = select i1 %129, double %127, double 7.200000e+01
  %131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %130) #14
  br label %255

132:                                              ; preds = %12
  %133 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 25
  %134 = load double, ptr %133, align 8, !tbaa !65
  %135 = tail call double @llvm.fabs.f64(double %134)
  %136 = fcmp ogt double %135, 1.000000e-15
  %137 = select i1 %136, double %134, double 7.200000e+01
  %138 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %137) #14
  br label %255

139:                                              ; preds = %12
  %140 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %141 = load i64, ptr %140, align 8, !tbaa !55
  %142 = uitofp i64 %141 to double
  %143 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %142) #14
  br label %255

144:                                              ; preds = %12
  %145 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %146 = load i32, ptr %145, align 8, !tbaa !154
  %147 = zext i32 %146 to i64
  %148 = tail call ptr @CommandOptionToMnemonic(i32 noundef 2, i64 noundef %147) #14
  %149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %148) #14
  br label %255

150:                                              ; preds = %12
  %151 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !53
  %153 = zext i32 %152 to i64
  %154 = tail call ptr @CommandOptionToMnemonic(i32 noundef 12, i64 noundef %153) #14
  %155 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %154) #14
  br label %255

156:                                              ; preds = %12
  %157 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 37
  %158 = load i32, ptr %157, align 4, !tbaa !80
  %159 = zext i32 %158 to i64
  %160 = tail call ptr @CommandOptionToMnemonic(i32 noundef 19, i64 noundef %159) #14
  %161 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %160) #14
  br label %255

162:                                              ; preds = %12
  %163 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 56
  %164 = load i64, ptr %163, align 8, !tbaa !162
  %165 = uitofp i64 %164 to double
  %166 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 57
  %167 = load i64, ptr %166, align 8, !tbaa !157
  %168 = uitofp i64 %167 to double
  %169 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.423, double noundef %165, double noundef %168) #14
  br label %255

170:                                              ; preds = %12
  %171 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !165
  %173 = uitofp i64 %172 to double
  %174 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %173) #14
  br label %255

175:                                              ; preds = %12
  %176 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 54
  br label %255

177:                                              ; preds = %12
  %178 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !166
  %180 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %181 = load i64, ptr %180, align 8, !tbaa !167
  %182 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.424, i64 noundef %179, i64 noundef %181) #14
  br label %255

183:                                              ; preds = %12
  %184 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %185 = load i64, ptr %184, align 8, !tbaa !164
  %186 = uitofp i64 %185 to double
  %187 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 1
  %188 = load i64, ptr %187, align 8, !tbaa !165
  %189 = uitofp i64 %188 to double
  %190 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.423, double noundef %186, double noundef %189) #14
  br label %255

191:                                              ; preds = %12
  %192 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 3
  %193 = load i64, ptr %192, align 8, !tbaa !54
  %194 = icmp eq i64 %193, 0
  %195 = uitofp i64 %193 to double
  %196 = select i1 %194, double 9.200000e+01, double %195
  %197 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %196) #14
  br label %255

198:                                              ; preds = %12
  %199 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 11
  %200 = load i64, ptr %199, align 8, !tbaa !160
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %255, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 10
  %204 = load i64, ptr %203, align 8, !tbaa !161
  %205 = uitofp i64 %204 to double
  %206 = uitofp i64 %200 to double
  %207 = fadd double %206, %205
  %208 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %207) #14
  br label %255

209:                                              ; preds = %12
  %210 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 40
  %211 = load i64, ptr %210, align 8, !tbaa !81
  %212 = uitofp i64 %211 to double
  %213 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %212) #14
  br label %255

214:                                              ; preds = %12
  %215 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 19
  %216 = load i32, ptr %215, align 8, !tbaa !61
  %217 = zext i32 %216 to i64
  %218 = tail call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %217) #14
  %219 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %218) #14
  br label %255

220:                                              ; preds = %12
  %221 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26
  %222 = load i64, ptr %221, align 8, !tbaa !164
  %223 = uitofp i64 %222 to double
  %224 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %223) #14
  br label %255

225:                                              ; preds = %12
  %226 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 2
  %227 = load i64, ptr %226, align 8, !tbaa !166
  %228 = sitofp i64 %227 to double
  %229 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.426, double noundef %228) #14
  br label %255

230:                                              ; preds = %12
  %231 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 26, i32 3
  %232 = load i64, ptr %231, align 8, !tbaa !167
  %233 = sitofp i64 %232 to double
  %234 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.426, double noundef %233) #14
  br label %255

235:                                              ; preds = %12
  %236 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 50
  br label %255

237:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %238 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef %1, ptr noundef nonnull %238) #14
  %239 = load i64, ptr %5, align 8, !tbaa.struct !66
  %240 = getelementptr inbounds i8, ptr %5, i64 8
  %241 = load i64, ptr %240, align 8, !tbaa.struct !169
  %242 = getelementptr inbounds i8, ptr %5, i64 16
  %243 = load i64, ptr %242, align 8, !tbaa.struct !170
  %244 = getelementptr inbounds i8, ptr %5, i64 24
  %245 = load i64, ptr %244, align 8, !tbaa.struct !171
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  %246 = uitofp i64 %239 to double
  %247 = uitofp i64 %241 to double
  %248 = sitofp i64 %243 to double
  %249 = sitofp i64 %245 to double
  %250 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.419, double noundef %246, double noundef %247, double noundef %248, double noundef %249) #14
  br label %255

251:                                              ; preds = %12
  %252 = tail call i32 @SignatureImage(ptr noundef %1) #14
  %253 = tail call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull @.str.427)
  br label %255

254:                                              ; preds = %12
  br label %255

255:                                              ; preds = %198, %202, %100, %105, %12, %254, %251, %237, %235, %230, %225, %220, %214, %209, %191, %183, %177, %175, %170, %162, %156, %150, %144, %139, %132, %125, %121, %112, %110, %79, %77, %73, %71, %67, %65, %61, %56, %54, %50, %29, %27, %25, %23, %19, %13
  %256 = phi ptr [ null, %12 ], [ @.str.428, %254 ], [ %253, %251 ], [ null, %237 ], [ %236, %235 ], [ null, %230 ], [ null, %225 ], [ null, %220 ], [ null, %214 ], [ null, %209 ], [ null, %202 ], [ null, %191 ], [ null, %183 ], [ null, %177 ], [ %176, %175 ], [ null, %170 ], [ null, %162 ], [ null, %156 ], [ null, %150 ], [ null, %144 ], [ null, %139 ], [ null, %132 ], [ null, %125 ], [ null, %121 ], [ %113, %112 ], [ null, %110 ], [ null, %100 ], [ null, %105 ], [ null, %79 ], [ null, %77 ], [ null, %73 ], [ %72, %71 ], [ null, %67 ], [ %66, %65 ], [ %64, %61 ], [ null, %56 ], [ %55, %54 ], [ null, %50 ], [ null, %29 ], [ null, %27 ], [ null, %25 ], [ null, %23 ], [ %22, %19 ], [ null, %13 ], [ @.str.425, %198 ]
  %257 = load i8, ptr %4, align 16, !tbaa !92
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, ptr %256, ptr %4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = call i32 @SetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull %259) #14
  %263 = call ptr @GetImageArtifact(ptr noundef %1, ptr noundef nonnull @.str.63) #14
  br label %264

264:                                              ; preds = %255, %261
  %265 = phi ptr [ %263, %261 ], [ null, %255 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  ret ptr %265
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @GetImageDepth(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @GetMagickCopyright() local_unnamed_addr #1

declare i32 @GetImageChannelKurtosis(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @IsOpaqueImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @GetImageIndexInList(ptr noundef) local_unnamed_addr #1

declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #1

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #1

declare i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #1

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3156, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @InterpretImageProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3284, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %11

11:                                               ; preds = %8, %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %575, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %2, align 1, !tbaa !92
  switch i8 %14, label %30 [
    i8 0, label %15
    i8 64, label %17
  ]

15:                                               ; preds = %13
  %16 = tail call ptr @ConstantString(ptr noundef nonnull @.str.1) #14
  br label %575

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %2, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !92
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @IsPathAccessible(ptr noundef nonnull %18) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3297, i32 noundef 410, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #14
  br label %575

27:                                               ; preds = %21, %17
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %29 = tail call ptr @FileToString(ptr noundef nonnull %18, i64 noundef -1, ptr noundef nonnull %28) #14
  br label %575

30:                                               ; preds = %13
  %31 = tail call ptr @AcquireString(ptr noundef nonnull %2) #14
  %32 = load i8, ptr %2, align 1, !tbaa !92
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %572, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 61
  %36 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 62
  %37 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 63
  %38 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 64
  %39 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %40 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %41 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 75
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %43 = icmp eq ptr %0, null
  %44 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 61
  %45 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 62
  %46 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 63
  %47 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 64
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %49 = icmp eq ptr %1, null
  %50 = getelementptr inbounds i8, ptr %4, i64 9
  %51 = icmp eq ptr %0, null
  %52 = getelementptr inbounds i8, ptr %4, i64 7
  %53 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %54 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  br label %55

55:                                               ; preds = %34, %555
  %56 = phi ptr [ %31, %34 ], [ %559, %555 ]
  %57 = phi ptr [ %31, %34 ], [ %558, %555 ]
  %58 = phi ptr [ %2, %34 ], [ %569, %555 ]
  %59 = phi i64 [ 4096, %34 ], [ %556, %555 ]
  %60 = phi i32 [ 0, %34 ], [ %568, %555 ]
  store i8 0, ptr %57, align 1, !tbaa !92
  %61 = ptrtoint ptr %57 to i64
  %62 = ptrtoint ptr %56 to i64
  %63 = add i64 %61, 4097
  %64 = sub i64 %63, %62
  %65 = icmp ult i64 %64, %59
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = add i64 %59, 4096
  %68 = add i64 %59, 8192
  %69 = call ptr @ResizeQuantumMemory(ptr noundef %56, i64 noundef %68, i64 noundef 1) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #15
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  br label %74

74:                                               ; preds = %55, %71, %66
  %75 = phi i1 [ false, %66 ], [ true, %71 ], [ true, %55 ]
  %76 = phi i64 [ %67, %66 ], [ %67, %71 ], [ %59, %55 ]
  %77 = phi ptr [ %57, %66 ], [ %73, %71 ], [ %57, %55 ]
  %78 = phi ptr [ null, %66 ], [ %69, %71 ], [ %56, %55 ]
  br i1 %75, label %79, label %575

79:                                               ; preds = %74
  %80 = load i8, ptr %58, align 1, !tbaa !92
  switch i8 %80, label %113 [
    i8 92, label %81
    i8 38, label %92
    i8 37, label %115
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %58, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !92
  switch i8 %83, label %90 [
    i8 0, label %555
    i8 114, label %84
    i8 110, label %86
    i8 10, label %88
    i8 13, label %89
  ]

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 13, ptr %77, align 1, !tbaa !92
  br label %555

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 10, ptr %77, align 1, !tbaa !92
  br label %555

88:                                               ; preds = %81
  br label %555

89:                                               ; preds = %81
  br label %555

90:                                               ; preds = %81
  %91 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %83, ptr %77, align 1, !tbaa !92
  br label %555

92:                                               ; preds = %79
  %93 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.65, ptr noundef nonnull %58, i64 noundef 4) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 60, ptr %77, align 1, !tbaa !92
  %97 = getelementptr inbounds i8, ptr %58, i64 3
  br label %555

98:                                               ; preds = %92
  %99 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.66, ptr noundef nonnull %58, i64 noundef 4) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 62, ptr %77, align 1, !tbaa !92
  %103 = getelementptr inbounds i8, ptr %58, i64 3
  br label %555

104:                                              ; preds = %98
  %105 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.67, ptr noundef nonnull %58, i64 noundef 5) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 38, ptr %77, align 1, !tbaa !92
  %109 = getelementptr inbounds i8, ptr %58, i64 4
  br label %555

110:                                              ; preds = %104
  %111 = load i8, ptr %58, align 1, !tbaa !92
  %112 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %111, ptr %77, align 1, !tbaa !92
  br label %555

113:                                              ; preds = %79
  %114 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %80, ptr %77, align 1, !tbaa !92
  br label %555

115:                                              ; preds = %79
  %116 = getelementptr inbounds i8, ptr %58, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !92
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, ptr %58, ptr %116
  %120 = load i8, ptr %119, align 1, !tbaa !92
  switch i8 %120, label %123 [
    i8 37, label %121
    i8 91, label %163
  ]

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 37, ptr %77, align 1, !tbaa !92
  br label %555

123:                                              ; preds = %115
  %124 = icmp eq i32 %60, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 37, ptr %77, align 1, !tbaa !92
  %127 = getelementptr inbounds i8, ptr %119, i64 -1
  br label %157

128:                                              ; preds = %123
  %129 = call fastcc ptr @GetMagickPropertyLetter(ptr noundef %0, ptr noundef %1, i8 noundef signext %120)
  %130 = icmp eq ptr %129, null
  br i1 %130, label %153, label %131

131:                                              ; preds = %128
  %132 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %129) #15
  %133 = ptrtoint ptr %77 to i64
  %134 = ptrtoint ptr %78 to i64
  %135 = add i64 %133, 1
  %136 = sub i64 %135, %134
  %137 = add i64 %136, %132
  %138 = icmp ult i64 %137, %76
  br i1 %138, label %147, label %139

139:                                              ; preds = %131
  %140 = add i64 %132, %76
  %141 = add i64 %140, 4096
  %142 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %141, i64 noundef 1) #18
  %143 = icmp eq ptr %142, null
  br i1 %143, label %157, label %144

144:                                              ; preds = %139
  %145 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %142) #15
  %146 = getelementptr inbounds i8, ptr %142, i64 %145
  br label %147

147:                                              ; preds = %144, %131
  %148 = phi i64 [ %140, %144 ], [ %76, %131 ]
  %149 = phi ptr [ %146, %144 ], [ %77, %131 ]
  %150 = phi ptr [ %142, %144 ], [ %78, %131 ]
  %151 = call i64 @CopyMagickString(ptr noundef %149, ptr noundef nonnull %129, i64 noundef %148) #14
  %152 = getelementptr inbounds i8, ptr %149, i64 %132
  br label %157

153:                                              ; preds = %128
  %154 = load i8, ptr %119, align 1, !tbaa !92
  %155 = sext i8 %154 to i32
  %156 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3391, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %155) #14
  br label %157

157:                                              ; preds = %147, %139, %153, %125
  %158 = phi i1 [ true, %125 ], [ true, %153 ], [ true, %147 ], [ false, %139 ]
  %159 = phi i64 [ %76, %125 ], [ %76, %153 ], [ %148, %147 ], [ %140, %139 ]
  %160 = phi ptr [ %127, %125 ], [ %119, %153 ], [ %119, %147 ], [ %119, %139 ]
  %161 = phi ptr [ %126, %125 ], [ %77, %153 ], [ %152, %147 ], [ %77, %139 ]
  %162 = phi ptr [ %78, %125 ], [ %78, %153 ], [ %150, %147 ], [ null, %139 ]
  br i1 %158, label %555, label %575

163:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %164 = getelementptr inbounds i8, ptr %119, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !92
  %166 = icmp eq i8 %165, 93
  br i1 %166, label %167, label %198

167:                                              ; preds = %163
  %168 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %53, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3417, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70) #14
  br label %549

169:                                              ; preds = %198, %177
  %170 = phi ptr [ %199, %198 ], [ %180, %177 ]
  %171 = phi i64 [ %201, %198 ], [ %182, %177 ]
  %172 = load i8, ptr %170, align 1, !tbaa !92
  switch i8 %172, label %185 [
    i8 0, label %202
    i8 92, label %173
  ]

173:                                              ; preds = %169
  %174 = getelementptr inbounds i8, ptr %170, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !92
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = add nsw i64 %171, 1
  %179 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %171
  store i8 %172, ptr %179, align 1, !tbaa !92
  %180 = getelementptr inbounds i8, ptr %170, i64 2
  %181 = load i8, ptr %174, align 1, !tbaa !92
  %182 = add nsw i64 %171, 2
  %183 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %178
  store i8 %181, ptr %183, align 1, !tbaa !92
  %184 = icmp slt i64 %171, 4093
  br i1 %184, label %169, label %202, !llvm.loop !172

185:                                              ; preds = %169, %173
  %186 = icmp eq i8 %172, 91
  %187 = zext i1 %186 to i64
  %188 = add nsw i64 %200, %187
  %189 = icmp eq i8 %172, 93
  %190 = sext i1 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = icmp slt i64 %191, 1
  br i1 %192, label %202, label %193

193:                                              ; preds = %185
  %194 = getelementptr inbounds i8, ptr %170, i64 1
  %195 = add nsw i64 %171, 1
  %196 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %171
  store i8 %172, ptr %196, align 1, !tbaa !92
  %197 = icmp slt i64 %171, 4094
  br i1 %197, label %198, label %202, !llvm.loop !172

198:                                              ; preds = %163, %193
  %199 = phi ptr [ %194, %193 ], [ %164, %163 ]
  %200 = phi i64 [ %191, %193 ], [ 1, %163 ]
  %201 = phi i64 [ %195, %193 ], [ 0, %163 ]
  br label %169

202:                                              ; preds = %185, %193, %177, %169
  %203 = phi i64 [ %171, %169 ], [ %182, %177 ], [ %171, %185 ], [ %195, %193 ]
  %204 = phi ptr [ %170, %169 ], [ %180, %177 ], [ %170, %185 ], [ %194, %193 ]
  %205 = phi i64 [ 1, %169 ], [ 1, %177 ], [ %191, %185 ], [ 1, %193 ]
  %206 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %203
  store i8 0, ptr %206, align 1, !tbaa !92
  %207 = icmp eq i64 %205, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = icmp sgt i64 %203, 63
  br i1 %209, label %210, label %211

210:                                              ; preds = %208
  store i8 46, ptr %35, align 1, !tbaa !92
  store i8 46, ptr %36, align 2, !tbaa !92
  store i8 46, ptr %37, align 1, !tbaa !92
  store i8 0, ptr %38, align 16, !tbaa !92
  br label %211

211:                                              ; preds = %210, %208
  %212 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3446, i32 noundef 410, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull %4) #14
  %213 = call ptr @DestroyString(ptr noundef %78) #14
  br label %549

214:                                              ; preds = %202
  %215 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.73, ptr noundef nonnull %4, i64 noundef 7) #14
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %295

217:                                              ; preds = %214
  br i1 %51, label %549, label %218

218:                                              ; preds = %217
  %219 = call i32 @IsGlob(ptr noundef nonnull %52) #14
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %270, label %221

221:                                              ; preds = %218
  call void @ResetImageOptionIterator(ptr noundef nonnull %0) #14
  %222 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #14
  %223 = icmp eq ptr %222, null
  br i1 %223, label %549, label %224

224:                                              ; preds = %221, %264
  %225 = phi ptr [ %268, %264 ], [ %222, %221 ]
  %226 = phi ptr [ %267, %264 ], [ %78, %221 ]
  %227 = phi ptr [ %266, %264 ], [ %77, %221 ]
  %228 = phi i64 [ %265, %264 ], [ %76, %221 ]
  %229 = call i32 @GlobExpression(ptr noundef nonnull %225, ptr noundef nonnull %52, i32 noundef 1) #14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %264, label %231

231:                                              ; preds = %224
  %232 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %225) #14
  %233 = icmp eq ptr %232, null
  br i1 %233, label %264, label %234

234:                                              ; preds = %231
  %235 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %225) #15
  %236 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %232) #15
  %237 = add i64 %235, 2
  %238 = add i64 %237, %236
  %239 = ptrtoint ptr %227 to i64
  %240 = ptrtoint ptr %226 to i64
  %241 = add i64 %239, 1
  %242 = sub i64 %241, %240
  %243 = add i64 %242, %238
  %244 = icmp ult i64 %243, %228
  br i1 %244, label %253, label %245

245:                                              ; preds = %234
  %246 = add i64 %238, %228
  %247 = add i64 %246, 4096
  %248 = call ptr @ResizeQuantumMemory(ptr noundef %226, i64 noundef %247, i64 noundef 1) #18
  %249 = icmp eq ptr %248, null
  br i1 %249, label %259, label %250

250:                                              ; preds = %245
  %251 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %248) #15
  %252 = getelementptr inbounds i8, ptr %248, i64 %251
  br label %253

253:                                              ; preds = %250, %234
  %254 = phi i64 [ %246, %250 ], [ %228, %234 ]
  %255 = phi ptr [ %252, %250 ], [ %227, %234 ]
  %256 = phi ptr [ %248, %250 ], [ %226, %234 ]
  %257 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %255, i64 noundef %254, ptr noundef nonnull @.str.74, ptr noundef nonnull %225, ptr noundef nonnull %232) #14
  %258 = getelementptr inbounds i8, ptr %255, i64 %257
  br label %259

259:                                              ; preds = %245, %253
  %260 = phi i1 [ true, %253 ], [ false, %245 ]
  %261 = phi i64 [ %254, %253 ], [ %246, %245 ]
  %262 = phi ptr [ %258, %253 ], [ %227, %245 ]
  %263 = phi ptr [ %256, %253 ], [ null, %245 ]
  br i1 %260, label %264, label %549

264:                                              ; preds = %231, %259, %224
  %265 = phi i64 [ %261, %259 ], [ %228, %231 ], [ %228, %224 ]
  %266 = phi ptr [ %262, %259 ], [ %227, %231 ], [ %227, %224 ]
  %267 = phi ptr [ %263, %259 ], [ %226, %231 ], [ %226, %224 ]
  %268 = call ptr @GetNextImageOption(ptr noundef nonnull %0) #14
  %269 = icmp eq ptr %268, null
  br i1 %269, label %549, label %224, !llvm.loop !173

270:                                              ; preds = %218
  %271 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %52) #14
  %272 = icmp eq ptr %271, null
  br i1 %272, label %549, label %273

273:                                              ; preds = %270
  %274 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %271) #15
  %275 = ptrtoint ptr %77 to i64
  %276 = ptrtoint ptr %78 to i64
  %277 = add i64 %275, 1
  %278 = sub i64 %277, %276
  %279 = add i64 %278, %274
  %280 = icmp ult i64 %279, %76
  br i1 %280, label %289, label %281

281:                                              ; preds = %273
  %282 = add i64 %274, %76
  %283 = add i64 %282, 4096
  %284 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %283, i64 noundef 1) #18
  %285 = icmp eq ptr %284, null
  br i1 %285, label %549, label %286

286:                                              ; preds = %281
  %287 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %284) #15
  %288 = getelementptr inbounds i8, ptr %284, i64 %287
  br label %289

289:                                              ; preds = %286, %273
  %290 = phi i64 [ %282, %286 ], [ %76, %273 ]
  %291 = phi ptr [ %288, %286 ], [ %77, %273 ]
  %292 = phi ptr [ %284, %286 ], [ %78, %273 ]
  %293 = call i64 @CopyMagickString(ptr noundef %291, ptr noundef nonnull %271, i64 noundef %290) #14
  %294 = getelementptr inbounds i8, ptr %291, i64 %274
  br label %549

295:                                              ; preds = %214
  %296 = call i32 @LocaleNCompare(ptr noundef nonnull @.str.75, ptr noundef nonnull %4, i64 noundef 9) #14
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %376

298:                                              ; preds = %295
  br i1 %49, label %549, label %299

299:                                              ; preds = %298
  %300 = call i32 @IsGlob(ptr noundef nonnull %50) #14
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %351, label %302

302:                                              ; preds = %299
  call void @ResetImageArtifactIterator(ptr noundef nonnull %1) #14
  %303 = call ptr @GetNextImageArtifact(ptr noundef nonnull %1) #14
  %304 = icmp eq ptr %303, null
  br i1 %304, label %549, label %305

305:                                              ; preds = %302, %345
  %306 = phi ptr [ %349, %345 ], [ %303, %302 ]
  %307 = phi ptr [ %348, %345 ], [ %78, %302 ]
  %308 = phi ptr [ %347, %345 ], [ %77, %302 ]
  %309 = phi i64 [ %346, %345 ], [ %76, %302 ]
  %310 = call i32 @GlobExpression(ptr noundef nonnull %306, ptr noundef nonnull %50, i32 noundef 1) #14
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %345, label %312

312:                                              ; preds = %305
  %313 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %306) #14
  %314 = icmp eq ptr %313, null
  br i1 %314, label %345, label %315

315:                                              ; preds = %312
  %316 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %306) #15
  %317 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %313) #15
  %318 = add i64 %316, 2
  %319 = add i64 %318, %317
  %320 = ptrtoint ptr %308 to i64
  %321 = ptrtoint ptr %307 to i64
  %322 = add i64 %320, 1
  %323 = sub i64 %322, %321
  %324 = add i64 %323, %319
  %325 = icmp ult i64 %324, %309
  br i1 %325, label %334, label %326

326:                                              ; preds = %315
  %327 = add i64 %319, %309
  %328 = add i64 %327, 4096
  %329 = call ptr @ResizeQuantumMemory(ptr noundef %307, i64 noundef %328, i64 noundef 1) #18
  %330 = icmp eq ptr %329, null
  br i1 %330, label %340, label %331

331:                                              ; preds = %326
  %332 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %329) #15
  %333 = getelementptr inbounds i8, ptr %329, i64 %332
  br label %334

334:                                              ; preds = %331, %315
  %335 = phi i64 [ %327, %331 ], [ %309, %315 ]
  %336 = phi ptr [ %333, %331 ], [ %308, %315 ]
  %337 = phi ptr [ %329, %331 ], [ %307, %315 ]
  %338 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %336, i64 noundef %335, ptr noundef nonnull @.str.74, ptr noundef nonnull %306, ptr noundef nonnull %313) #14
  %339 = getelementptr inbounds i8, ptr %336, i64 %338
  br label %340

340:                                              ; preds = %326, %334
  %341 = phi i1 [ true, %334 ], [ false, %326 ]
  %342 = phi i64 [ %335, %334 ], [ %327, %326 ]
  %343 = phi ptr [ %339, %334 ], [ %308, %326 ]
  %344 = phi ptr [ %337, %334 ], [ null, %326 ]
  br i1 %341, label %345, label %549

345:                                              ; preds = %312, %340, %305
  %346 = phi i64 [ %342, %340 ], [ %309, %312 ], [ %309, %305 ]
  %347 = phi ptr [ %343, %340 ], [ %308, %312 ], [ %308, %305 ]
  %348 = phi ptr [ %344, %340 ], [ %307, %312 ], [ %307, %305 ]
  %349 = call ptr @GetNextImageArtifact(ptr noundef nonnull %1) #14
  %350 = icmp eq ptr %349, null
  br i1 %350, label %549, label %305, !llvm.loop !174

351:                                              ; preds = %299
  %352 = call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef nonnull %50) #14
  %353 = icmp eq ptr %352, null
  br i1 %353, label %549, label %354

354:                                              ; preds = %351
  %355 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %352) #15
  %356 = ptrtoint ptr %77 to i64
  %357 = ptrtoint ptr %78 to i64
  %358 = add i64 %356, 1
  %359 = sub i64 %358, %357
  %360 = add i64 %359, %355
  %361 = icmp ult i64 %360, %76
  br i1 %361, label %370, label %362

362:                                              ; preds = %354
  %363 = add i64 %355, %76
  %364 = add i64 %363, 4096
  %365 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %364, i64 noundef 1) #18
  %366 = icmp eq ptr %365, null
  br i1 %366, label %549, label %367

367:                                              ; preds = %362
  %368 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %365) #15
  %369 = getelementptr inbounds i8, ptr %365, i64 %368
  br label %370

370:                                              ; preds = %367, %354
  %371 = phi i64 [ %363, %367 ], [ %76, %354 ]
  %372 = phi ptr [ %369, %367 ], [ %77, %354 ]
  %373 = phi ptr [ %365, %367 ], [ %78, %354 ]
  %374 = call i64 @CopyMagickString(ptr noundef %372, ptr noundef nonnull %352, i64 noundef %371) #14
  %375 = getelementptr inbounds i8, ptr %372, i64 %355
  br label %549

376:                                              ; preds = %295
  %377 = call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull %4)
  %378 = icmp eq ptr %377, null
  br i1 %378, label %401, label %379

379:                                              ; preds = %376
  %380 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %377) #15
  %381 = ptrtoint ptr %77 to i64
  %382 = ptrtoint ptr %78 to i64
  %383 = add i64 %381, 1
  %384 = sub i64 %383, %382
  %385 = add i64 %384, %380
  %386 = icmp ult i64 %385, %76
  br i1 %386, label %395, label %387

387:                                              ; preds = %379
  %388 = add i64 %380, %76
  %389 = add i64 %388, 4096
  %390 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %389, i64 noundef 1) #18
  %391 = icmp eq ptr %390, null
  br i1 %391, label %549, label %392

392:                                              ; preds = %387
  %393 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %390) #15
  %394 = getelementptr inbounds i8, ptr %390, i64 %393
  br label %395

395:                                              ; preds = %392, %379
  %396 = phi i64 [ %388, %392 ], [ %76, %379 ]
  %397 = phi ptr [ %394, %392 ], [ %77, %379 ]
  %398 = phi ptr [ %390, %392 ], [ %78, %379 ]
  %399 = call i64 @CopyMagickString(ptr noundef %397, ptr noundef nonnull %377, i64 noundef %396) #14
  %400 = getelementptr inbounds i8, ptr %397, i64 %380
  br label %549

401:                                              ; preds = %376
  %402 = call i32 @IsGlob(ptr noundef nonnull %4) #14
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %468, label %404

404:                                              ; preds = %401
  %405 = load i32, ptr %5, align 8, !tbaa !34
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3655, ptr noundef nonnull @.str.2, ptr noundef nonnull %40) #14
  br label %409

409:                                              ; preds = %407, %404
  %410 = load ptr, ptr %41, align 8, !tbaa !91
  %411 = icmp eq ptr %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %409
  call void @ResetSplayTreeIterator(ptr noundef nonnull %410) #14
  br label %413

413:                                              ; preds = %409, %412
  br label %414

414:                                              ; preds = %413, %463
  %415 = phi i64 [ %76, %413 ], [ %465, %463 ]
  %416 = phi ptr [ %77, %413 ], [ %466, %463 ]
  %417 = phi ptr [ %78, %413 ], [ %467, %463 ]
  br label %418

418:                                              ; preds = %437, %414
  %419 = load i32, ptr %5, align 8, !tbaa !34
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %418
  %422 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3156, ptr noundef nonnull @.str.2, ptr noundef nonnull %42) #14
  br label %423

423:                                              ; preds = %421, %418
  %424 = load ptr, ptr %41, align 8, !tbaa !91
  %425 = icmp eq ptr %424, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %423
  %427 = call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %424) #14
  br label %428

428:                                              ; preds = %423, %426
  %429 = phi ptr [ %427, %426 ], [ null, %423 ]
  %430 = icmp eq ptr %429, null
  br i1 %430, label %549, label %431

431:                                              ; preds = %428
  %432 = call i32 @GlobExpression(ptr noundef nonnull %429, ptr noundef nonnull %4, i32 noundef 1) #14
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %437, label %434

434:                                              ; preds = %431
  %435 = call ptr @GetImageProperty(ptr noundef %1, ptr noundef nonnull %429)
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %438

437:                                              ; preds = %434, %431
  br label %418, !llvm.loop !175

438:                                              ; preds = %434
  %439 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %429) #15
  %440 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %435) #15
  %441 = add i64 %439, 2
  %442 = add i64 %441, %440
  %443 = ptrtoint ptr %416 to i64
  %444 = ptrtoint ptr %417 to i64
  %445 = add i64 %443, 1
  %446 = sub i64 %445, %444
  %447 = add i64 %446, %442
  %448 = icmp ult i64 %447, %415
  br i1 %448, label %457, label %449

449:                                              ; preds = %438
  %450 = add i64 %442, %415
  %451 = add i64 %450, 4096
  %452 = call ptr @ResizeQuantumMemory(ptr noundef %417, i64 noundef %451, i64 noundef 1) #18
  %453 = icmp eq ptr %452, null
  br i1 %453, label %463, label %454

454:                                              ; preds = %449
  %455 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %452) #15
  %456 = getelementptr inbounds i8, ptr %452, i64 %455
  br label %457

457:                                              ; preds = %454, %438
  %458 = phi i64 [ %450, %454 ], [ %415, %438 ]
  %459 = phi ptr [ %456, %454 ], [ %416, %438 ]
  %460 = phi ptr [ %452, %454 ], [ %417, %438 ]
  %461 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %459, i64 noundef %458, ptr noundef nonnull @.str.74, ptr noundef nonnull %429, ptr noundef nonnull %435) #14
  %462 = getelementptr inbounds i8, ptr %459, i64 %461
  br label %463

463:                                              ; preds = %449, %457
  %464 = phi i1 [ true, %457 ], [ false, %449 ]
  %465 = phi i64 [ %458, %457 ], [ %450, %449 ]
  %466 = phi ptr [ %462, %457 ], [ %416, %449 ]
  %467 = phi ptr [ %460, %457 ], [ null, %449 ]
  br i1 %464, label %414, label %549, !llvm.loop !175

468:                                              ; preds = %401
  %469 = call ptr @GetMagickProperty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %470 = icmp eq ptr %469, null
  br i1 %470, label %493, label %471

471:                                              ; preds = %468
  %472 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %469) #15
  %473 = ptrtoint ptr %77 to i64
  %474 = ptrtoint ptr %78 to i64
  %475 = add i64 %473, 1
  %476 = sub i64 %475, %474
  %477 = add i64 %476, %472
  %478 = icmp ult i64 %477, %76
  br i1 %478, label %487, label %479

479:                                              ; preds = %471
  %480 = add i64 %472, %76
  %481 = add i64 %480, 4096
  %482 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %481, i64 noundef 1) #18
  %483 = icmp eq ptr %482, null
  br i1 %483, label %549, label %484

484:                                              ; preds = %479
  %485 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %482) #15
  %486 = getelementptr inbounds i8, ptr %482, i64 %485
  br label %487

487:                                              ; preds = %484, %471
  %488 = phi i64 [ %480, %484 ], [ %76, %471 ]
  %489 = phi ptr [ %486, %484 ], [ %77, %471 ]
  %490 = phi ptr [ %482, %484 ], [ %78, %471 ]
  %491 = call i64 @CopyMagickString(ptr noundef %489, ptr noundef nonnull %469, i64 noundef %488) #14
  %492 = getelementptr inbounds i8, ptr %489, i64 %472
  br label %549

493:                                              ; preds = %468
  %494 = call ptr @GetImageArtifact(ptr noundef %1, ptr noundef nonnull %4) #14
  %495 = icmp eq ptr %494, null
  br i1 %495, label %518, label %496

496:                                              ; preds = %493
  %497 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %494) #15
  %498 = ptrtoint ptr %77 to i64
  %499 = ptrtoint ptr %78 to i64
  %500 = add i64 %498, 1
  %501 = sub i64 %500, %499
  %502 = add i64 %501, %497
  %503 = icmp ult i64 %502, %76
  br i1 %503, label %512, label %504

504:                                              ; preds = %496
  %505 = add i64 %497, %76
  %506 = add i64 %505, 4096
  %507 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %506, i64 noundef 1) #18
  %508 = icmp eq ptr %507, null
  br i1 %508, label %549, label %509

509:                                              ; preds = %504
  %510 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %507) #15
  %511 = getelementptr inbounds i8, ptr %507, i64 %510
  br label %512

512:                                              ; preds = %509, %496
  %513 = phi i64 [ %505, %509 ], [ %76, %496 ]
  %514 = phi ptr [ %511, %509 ], [ %77, %496 ]
  %515 = phi ptr [ %507, %509 ], [ %78, %496 ]
  %516 = call i64 @CopyMagickString(ptr noundef %514, ptr noundef nonnull %494, i64 noundef %513) #14
  %517 = getelementptr inbounds i8, ptr %514, i64 %497
  br label %549

518:                                              ; preds = %493
  br i1 %43, label %544, label %519

519:                                              ; preds = %518
  %520 = call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull %4) #14
  %521 = icmp eq ptr %520, null
  br i1 %521, label %544, label %522

522:                                              ; preds = %519
  %523 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %520) #15
  %524 = ptrtoint ptr %77 to i64
  %525 = ptrtoint ptr %78 to i64
  %526 = add i64 %524, 1
  %527 = sub i64 %526, %525
  %528 = add i64 %527, %523
  %529 = icmp ult i64 %528, %76
  br i1 %529, label %538, label %530

530:                                              ; preds = %522
  %531 = add i64 %523, %76
  %532 = add i64 %531, 4096
  %533 = call ptr @ResizeQuantumMemory(ptr noundef %78, i64 noundef %532, i64 noundef 1) #18
  %534 = icmp eq ptr %533, null
  br i1 %534, label %549, label %535

535:                                              ; preds = %530
  %536 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %533) #15
  %537 = getelementptr inbounds i8, ptr %533, i64 %536
  br label %538

538:                                              ; preds = %535, %522
  %539 = phi i64 [ %531, %535 ], [ %76, %522 ]
  %540 = phi ptr [ %537, %535 ], [ %77, %522 ]
  %541 = phi ptr [ %533, %535 ], [ %78, %522 ]
  %542 = call i64 @CopyMagickString(ptr noundef %540, ptr noundef nonnull %520, i64 noundef %539) #14
  %543 = getelementptr inbounds i8, ptr %540, i64 %523
  br label %549

544:                                              ; preds = %519, %518
  %545 = icmp sgt i64 %203, 63
  br i1 %545, label %546, label %547

546:                                              ; preds = %544
  store i8 46, ptr %44, align 1, !tbaa !92
  store i8 46, ptr %45, align 2, !tbaa !92
  store i8 46, ptr %46, align 1, !tbaa !92
  store i8 0, ptr %47, align 16, !tbaa !92
  br label %547

547:                                              ; preds = %546, %544
  %548 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %48, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3570, i32 noundef 310, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.76, ptr noundef nonnull %4) #14
  br label %549

549:                                              ; preds = %428, %463, %340, %345, %259, %264, %302, %221, %370, %362, %289, %281, %538, %530, %512, %504, %487, %479, %395, %387, %351, %298, %270, %217, %547, %211, %167
  %550 = phi i32 [ 2, %167 ], [ 1, %211 ], [ 0, %547 ], [ 4, %217 ], [ 4, %270 ], [ 4, %298 ], [ 4, %351 ], [ 4, %395 ], [ 1, %387 ], [ 4, %487 ], [ 1, %479 ], [ 4, %512 ], [ 1, %504 ], [ 4, %538 ], [ 1, %530 ], [ 4, %289 ], [ 1, %281 ], [ 4, %370 ], [ 1, %362 ], [ 4, %221 ], [ 4, %302 ], [ 4, %264 ], [ 1, %259 ], [ 4, %345 ], [ 1, %340 ], [ 4, %428 ], [ 1, %463 ]
  %551 = phi i64 [ %76, %167 ], [ %76, %211 ], [ %76, %547 ], [ %76, %217 ], [ %76, %270 ], [ %76, %298 ], [ %76, %351 ], [ %396, %395 ], [ %388, %387 ], [ %488, %487 ], [ %480, %479 ], [ %513, %512 ], [ %505, %504 ], [ %539, %538 ], [ %531, %530 ], [ %290, %289 ], [ %282, %281 ], [ %371, %370 ], [ %363, %362 ], [ %76, %221 ], [ %76, %302 ], [ %265, %264 ], [ %261, %259 ], [ %346, %345 ], [ %342, %340 ], [ %415, %428 ], [ %465, %463 ]
  %552 = phi ptr [ %164, %167 ], [ %204, %211 ], [ %204, %547 ], [ %204, %217 ], [ %204, %270 ], [ %204, %298 ], [ %204, %351 ], [ %204, %395 ], [ %204, %387 ], [ %204, %487 ], [ %204, %479 ], [ %204, %512 ], [ %204, %504 ], [ %204, %538 ], [ %204, %530 ], [ %204, %289 ], [ %204, %281 ], [ %204, %370 ], [ %204, %362 ], [ %204, %221 ], [ %204, %302 ], [ %204, %264 ], [ %204, %259 ], [ %204, %345 ], [ %204, %340 ], [ %204, %463 ], [ %204, %428 ]
  %553 = phi ptr [ %77, %167 ], [ %77, %211 ], [ %77, %547 ], [ %77, %217 ], [ %77, %270 ], [ %77, %298 ], [ %77, %351 ], [ %400, %395 ], [ %77, %387 ], [ %492, %487 ], [ %77, %479 ], [ %517, %512 ], [ %77, %504 ], [ %543, %538 ], [ %77, %530 ], [ %294, %289 ], [ %77, %281 ], [ %375, %370 ], [ %77, %362 ], [ %77, %221 ], [ %77, %302 ], [ %266, %264 ], [ %262, %259 ], [ %347, %345 ], [ %343, %340 ], [ %416, %428 ], [ %466, %463 ]
  %554 = phi ptr [ %78, %167 ], [ %213, %211 ], [ %78, %547 ], [ %78, %217 ], [ %78, %270 ], [ %78, %298 ], [ %78, %351 ], [ %398, %395 ], [ null, %387 ], [ %490, %487 ], [ null, %479 ], [ %515, %512 ], [ null, %504 ], [ %541, %538 ], [ null, %530 ], [ %292, %289 ], [ null, %281 ], [ %373, %370 ], [ null, %362 ], [ %78, %221 ], [ %78, %302 ], [ %267, %264 ], [ %263, %259 ], [ %348, %345 ], [ %344, %340 ], [ %417, %428 ], [ %467, %463 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  switch i32 %550, label %575 [
    i32 0, label %555
    i32 2, label %572
    i32 4, label %555
  ]

555:                                              ; preds = %89, %549, %95, %107, %110, %101, %81, %157, %549, %121, %113, %90, %88, %86, %84
  %556 = phi i64 [ %76, %113 ], [ %76, %121 ], [ %159, %157 ], [ %551, %549 ], [ %551, %549 ], [ %76, %95 ], [ %76, %101 ], [ %76, %107 ], [ %76, %110 ], [ %76, %90 ], [ %76, %89 ], [ %76, %88 ], [ %76, %86 ], [ %76, %84 ], [ %76, %81 ]
  %557 = phi ptr [ %58, %113 ], [ %119, %121 ], [ %160, %157 ], [ %552, %549 ], [ %552, %549 ], [ %97, %95 ], [ %103, %101 ], [ %109, %107 ], [ %58, %110 ], [ %82, %90 ], [ %82, %89 ], [ %82, %88 ], [ %82, %86 ], [ %82, %84 ], [ %58, %81 ]
  %558 = phi ptr [ %114, %113 ], [ %122, %121 ], [ %161, %157 ], [ %553, %549 ], [ %553, %549 ], [ %96, %95 ], [ %102, %101 ], [ %108, %107 ], [ %112, %110 ], [ %91, %90 ], [ %77, %89 ], [ %77, %88 ], [ %87, %86 ], [ %85, %84 ], [ %77, %81 ]
  %559 = phi ptr [ %78, %113 ], [ %78, %121 ], [ %162, %157 ], [ %554, %549 ], [ %554, %549 ], [ %78, %95 ], [ %78, %101 ], [ %78, %107 ], [ %78, %110 ], [ %78, %90 ], [ %78, %89 ], [ %78, %88 ], [ %78, %86 ], [ %78, %84 ], [ %78, %81 ]
  %560 = tail call ptr @__ctype_b_loc() #17
  %561 = load ptr, ptr %560, align 8, !tbaa !96
  %562 = load i8, ptr %557, align 1, !tbaa !92
  %563 = zext i8 %562 to i64
  %564 = getelementptr inbounds i16, ptr %561, i64 %563
  %565 = load i16, ptr %564, align 2, !tbaa !113
  %566 = lshr i16 %565, 11
  %567 = and i16 %566, 1
  %568 = zext nneg i16 %567 to i32
  %569 = getelementptr inbounds i8, ptr %557, i64 1
  %570 = load i8, ptr %569, align 1, !tbaa !92
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %55, !llvm.loop !176

572:                                              ; preds = %555, %549, %30
  %573 = phi ptr [ %31, %30 ], [ %558, %555 ], [ %553, %549 ]
  %574 = phi ptr [ %31, %30 ], [ %559, %555 ], [ %554, %549 ]
  store i8 0, ptr %573, align 1, !tbaa !92
  br label %575

575:                                              ; preds = %157, %74, %549, %11, %572, %27, %24, %15
  %576 = phi ptr [ %16, %15 ], [ null, %24 ], [ %29, %27 ], [ %574, %572 ], [ null, %11 ], [ null, %549 ], [ null, %74 ], [ null, %157 ]
  ret ptr %576
}

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare i32 @IsGlob(ptr noundef) local_unnamed_addr #1

declare void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ResetImageArtifactIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageArtifact(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ResetImagePropertyIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3655, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #14
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3617, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 75
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

declare ptr @RelinquishMagickMemory(ptr noundef) #1

declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare ptr @GetPageGeometry(ptr noundef) local_unnamed_addr #1

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireImageInfo() local_unnamed_addr #1

declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @FileToStringInfo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SetImageProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #1

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @StringInfoToString(ptr noundef) local_unnamed_addr #1

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeTag(ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #1

declare ptr @GetXMLTreeSibling(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #1

declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SignatureImage(ptr noundef) local_unnamed_addr #1

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind allocsize(1,2) }

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
!64 = !{!35, !43, i64 264}
!65 = !{!35, !43, i64 272}
!66 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 8, !67}
!67 = !{!39, !39, i64 0}
!68 = !{!35, !43, i64 376}
!69 = !{!35, !36, i64 400}
!70 = !{!35, !43, i64 384}
!71 = !{!35, !43, i64 392}
!72 = !{!35, !36, i64 13224}
!73 = !{!35, !36, i64 404}
!74 = !{!35, !36, i64 13112}
!75 = !{!35, !36, i64 408}
!76 = !{!35, !36, i64 412}
!77 = !{!35, !36, i64 416}
!78 = !{!35, !39, i64 432}
!79 = !{!35, !36, i64 24}
!80 = !{!35, !36, i64 420}
!81 = !{!35, !39, i64 440}
!82 = !{!35, !39, i64 448}
!83 = !{!35, !39, i64 456}
!84 = !{!35, !39, i64 464}
!85 = !{!35, !36, i64 28}
!86 = !{!35, !40, i64 568}
!87 = !{!35, !40, i64 576}
!88 = !{!35, !39, i64 472}
!89 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58}
!90 = !{!35, !39, i64 13080}
!91 = !{!35, !40, i64 13168}
!92 = !{!37, !37, i64 0}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!40, !40, i64 0}
!97 = !{!98, !43, i64 0}
!98 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!99 = !{!98, !43, i64 8}
!100 = distinct !{!100, !94, !95}
!101 = distinct !{!101, !94, !95}
!102 = distinct !{!102, !94, !95}
!103 = distinct !{!103, !94, !95}
!104 = !{!35, !39, i64 40}
!105 = !{!35, !39, i64 48}
!106 = !{!107, !43, i64 0}
!107 = !{!"_PointInfo", !43, i64 0, !43, i64 8}
!108 = !{!107, !43, i64 8}
!109 = distinct !{!109, !94, !95}
!110 = distinct !{!110, !94, !95}
!111 = distinct !{!111, !94, !95}
!112 = distinct !{!112, !94, !95}
!113 = !{!42, !42, i64 0}
!114 = distinct !{!114, !94, !95}
!115 = distinct !{!115, !94, !95}
!116 = !{!117, !39, i64 0}
!117 = !{!"_TagInfo", !39, i64 0, !40, i64 8}
!118 = distinct !{!118, !95}
!119 = !{!117, !40, i64 8}
!120 = distinct !{!120, !94, !95}
!121 = !{!122, !40, i64 0}
!122 = !{!"_DirectoryInfo", !40, i64 0, !39, i64 8, !39, i64 16}
!123 = !{!122, !39, i64 8}
!124 = !{!122, !39, i64 16}
!125 = !{!36, !36, i64 0}
!126 = distinct !{!126, !94, !95}
!127 = distinct !{!127, !94, !95}
!128 = distinct !{!128, !94, !95}
!129 = distinct !{!129, !94, !95}
!130 = distinct !{!130, !94, !95}
!131 = distinct !{!131, !94, !95}
!132 = distinct !{!132, !94, !95}
!133 = distinct !{!133, !94, !95}
!134 = !{!135, !135, i64 0}
!135 = !{!"float", !37, i64 0}
!136 = distinct !{!136, !94, !95}
!137 = distinct !{!137, !94, !95}
!138 = distinct !{!138, !94, !95}
!139 = distinct !{!139, !95}
!140 = distinct !{!140, !94, !95}
!141 = distinct !{!141, !94, !95}
!142 = distinct !{!142, !94, !95}
!143 = !{!144, !135, i64 32}
!144 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !135, i64 32, !135, i64 36, !135, i64 40, !135, i64 44, !135, i64 48}
!145 = !{!144, !135, i64 36}
!146 = !{!144, !135, i64 40}
!147 = !{!144, !135, i64 44}
!148 = !{!35, !36, i64 4}
!149 = !{!144, !135, i64 48}
!150 = distinct !{!150, !94, !95}
!151 = distinct !{!151, !94, !95}
!152 = distinct !{!152, !94, !95}
!153 = distinct !{!153, !94, !95}
!154 = !{!35, !36, i64 32}
!155 = !{!156, !39, i64 216}
!156 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!157 = !{!35, !39, i64 12912}
!158 = !{!156, !36, i64 248}
!159 = distinct !{!159, !94, !95}
!160 = !{!156, !39, i64 64}
!161 = !{!156, !39, i64 56}
!162 = !{!35, !39, i64 12904}
!163 = !{!35, !52, i64 13192}
!164 = !{!35, !39, i64 280}
!165 = !{!35, !39, i64 288}
!166 = !{!35, !39, i64 296}
!167 = !{!35, !39, i64 304}
!168 = !{!35, !36, i64 0}
!169 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !67}
!170 = !{i64 0, i64 8, !67, i64 8, i64 8, !67}
!171 = !{i64 0, i64 8, !67}
!172 = distinct !{!172, !94, !95}
!173 = distinct !{!173, !94, !95}
!174 = distinct !{!174, !94, !95}
!175 = distinct !{!175, !94, !95}
!176 = distinct !{!176, !94, !95}
