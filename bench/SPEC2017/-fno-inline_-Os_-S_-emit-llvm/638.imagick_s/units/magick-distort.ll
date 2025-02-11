; ModuleID = 'magick/distort.c'
source_filename = "magick/distort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [17 x i8] c"magick/distort.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s : '%s'\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid number of args: 2 only\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"distort:viewport\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"`%s' `%s'\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"  -size %.20gx%.20g -page %+.20g%+.20g xc: +insert \\\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"v.p{ xx-v.page.x-.5, yy-v.page.y-.5 }\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"p{ xx-page.x-.5, yy-page.y-.5 }\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"DistortImages\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"Affine Projection:\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"  -distort AffineProjection \\\0A      '\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%lf,\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%lf'\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Affine Distort, FX Equivelent:\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"  -fx 'ii=i+page.x+0.5; jj=j+page.y+0.5;\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"       xx=%+lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"       yy=%+lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"       %s' \\\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"DistortCoefficients\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Perspective Projection:\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"  -distort PerspectiveProjection \\\0A      '\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%lf, \00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Perspective Distort, FX Equivelent:\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"       rr=%+lf*ii %+lf*jj + 1;\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"       xx=(%+lf*ii %+lf*jj %+lf)/rr;\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"       yy=(%+lf*ii %+lf*jj %+lf)/rr;\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"       rr%s0 ? %s : blue' \\\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"BilinearForward Mapping Equations:\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"    i = %+lf*x %+lf*y %+lf*x*y %+lf;\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"    j = %+lf*x %+lf*y %+lf*x*y %+lf;\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"BilinearForward Distort, FX Equivelent:\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"  -fx 'ii=i+page.x%+lf; jj=j+page.y%+lf;\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"       bb=%lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"       rt=bb*bb %+lf*(%lf*ii%+lf*jj);\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"       yy=( -bb + sqrt(rt) ) / %lf;\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"       yy=(%lf*ii%+lf*jj)/bb;\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"       xx=(ii %+lf*yy)/(%lf %+lf*yy);\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"       (rt < 0 ) ? red : %s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"BilinearReverse Distort, FX Equivelent:\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"       xx=%+lf*ii %+lf*jj %+lf*ii*jj %+lf;\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"       yy=%+lf*ii %+lf*jj %+lf*ii*jj %+lf;\0A\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"Polynomial (order %lg, terms %lu), FX Equivelent\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"       xx =\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"\0A         \00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c" %+lf%s\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c";\0A       yy =\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c";\0A       %s' \\\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"Arc Distort, Internal Coefficients:\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"  c%.20g = %+lf\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Arc Distort, FX Equivelent:\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"  -fx 'ii=i+page.x; jj=j+page.y;\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"       xx=(atan2(jj,ii)%+lf)/(2*pi);\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"       xx=xx-round(xx);\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"       xx=xx*%lf %+lf;\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"       yy=(%lf - hypot(ii,jj)) * %lf;\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"       v.p{xx-.5,yy-.5}' \\\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Polar Distort, Internal Coefficents\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Polar Distort, FX Equivelent:\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"       xx=(atan2(ii,jj)%+lf)/(2*pi);\0A\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"       xx=xx*2*pi*%lf + v.w/2;\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"       yy=(hypot(ii,jj)%+lf)*%lf;\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"DePolar Distort, Internal Coefficents\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"DePolar Distort, FX Equivelent:\0A\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"  -fx 'aa=(i+.5)*%lf %+lf;\0A\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"       rr=(j+.5)*%lf %+lf;\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"       xx=rr*sin(aa) %+lf;\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"       yy=rr*cos(aa) %+lf;\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"Cylinder to Plane Distort, Internal Coefficents\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"  cylinder_radius = %+lf\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"Cylinder to Plane Distort, FX Equivelent:\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"  -fx 'ii=i+page.x%+lf+0.5; jj=j+page.y%+lf+0.5;\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"       aa=atan(ii/%+lf);\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"       xx=%lf*aa%+lf;\0A\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"       yy=jj*cos(aa)%+lf;\0A\00", align 1
@.str.84 = private unnamed_addr constant [49 x i8] c"Plane to Cylinder Distort, Internal Coefficents\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"Plane to Cylinder Distort, FX Equivelent:\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"       ii=ii/%+lf;\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"       xx=%lf*tan(ii)%+lf;\0A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"       yy=jj/cos(ii)%+lf;\0A\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"Barrel%s Distort, FX Equivelent:\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Inv\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"  -fx 'xc=(w-1)/2;  yc=(h-1)/2;\0A\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"  -fx 'xc=%lf;  yc=%lf;\0A\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"       ii=i-xc;  jj=j-yc;  rr=hypot(ii,jj);\0A\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"       ii=ii%s(%lf*rr*rr*rr %+lf*rr*rr %+lf*rr %+lf);\0A\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.97 = private unnamed_addr constant [55 x i8] c"       jj=jj%s(%lf*rr*rr*rr %+lf*rr*rr %+lf*rr %+lf);\0A\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"       v.p{fx*ii+xc,fy*jj+yc}' \\\0A\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"distort:scale\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"-define distort:scale\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@.str.101 = private unnamed_addr constant [28 x i8] c"x=%lf  y=%lf  u=%lf  v=%lf\0A\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"radius = %lf  phi = %lf  validity = %lf\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"du/dx=%lf  du/dx=%lf  dv/dx=%lf  dv/dy=%lf\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_DistortImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.104 = private unnamed_addr constant [14 x i8] c"Distort/Image\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"Polynomial\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"Invalid number of args: order [CPs]...\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"Invalid order, should be interger 1 to 5, or 1.5\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"%s : 'require at least %.20g CPs'\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"unknown method given\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"GenerateCoefficients\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Affine\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"%s : 'Unsolvable Matrix'\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"%s : 'Needs 6 coeff values'\00", align 1
@.str.114 = private unnamed_addr constant [33 x i8] c"%s : 'Needs at least 1 argument'\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"%s : 'Too Many Arguments (7 or less)'\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"%s : 'Zero Scale Given'\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"%s : 'Needs 8 coefficient values'\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"%s : 'Arc Angle Too Small'\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"%s : 'Outer Radius Too Small'\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"%s : number of arguments\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"%s : Invalid Radius\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"%s : Invalid FOV Angle\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"%s : 'requires CP's (4 numbers each)'\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"shepards:power\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"-define shepards:power\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"no method handler\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"*ii\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"*jj\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"*ii*jj\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"*ii*ii\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"*jj*jj\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"*ii*ii*ii\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"*ii*ii*jj\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"*ii*jj*jj\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"*jj*jj*jj\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*ii\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*jj\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"*ii*ii*jj*jj\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"*ii*jj*jj*jj\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"*jj*jj*jj*jj\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*ii\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*jj\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*jj*jj\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"*ii*ii*jj*jj*jj\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"*ii*jj*jj*jj*jj\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"*jj*jj*jj*jj*jj\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"Barycentric Sparse Color:\0A\00", align 1
@.str.150 = private unnamed_addr constant [41 x i8] c"  -channel R -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.151 = private unnamed_addr constant [41 x i8] c"  -channel G -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.152 = private unnamed_addr constant [41 x i8] c"  -channel B -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.153 = private unnamed_addr constant [41 x i8] c"  -channel K -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.154 = private unnamed_addr constant [41 x i8] c"  -channel A -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.155 = private unnamed_addr constant [23 x i8] c"Bilinear Sparse Color\0A\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"   -channel R -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.157 = private unnamed_addr constant [49 x i8] c"   -channel G -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"   -channel B -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.159 = private unnamed_addr constant [49 x i8] c"   -channel K -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.160 = private unnamed_addr constant [49 x i8] c"   -channel A -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.gomp_critical_user_MagickCore_SparseColorImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.161 = private unnamed_addr constant [20 x i8] c"Distort/SparseColor\00", align 1
@reltable.poly_basis_str = private unnamed_addr constant [21 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.129 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.130 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.131 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.132 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.133 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.134 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.135 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.136 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.137 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.138 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.139 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.141 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.142 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.143 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.144 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.145 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.146 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AffineTransformImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x double], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 308, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %3
  %12 = load <2 x double>, ptr %1, align 8, !tbaa !25
  store <2 x double> %12, ptr %4, align 16, !tbaa !25
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 2
  %15 = load <2 x double>, ptr %13, align 8, !tbaa !25
  store <2 x double> %15, ptr %14, align 16, !tbaa !25
  %16 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 4
  %18 = load <2 x double>, ptr %16, align 8, !tbaa !25
  store <2 x double> %18, ptr %17, align 16, !tbaa !25
  %19 = call ptr @DistortImage(ptr noundef nonnull %0, i32 noundef 2, i64 noundef 6, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DistortImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct._RectangleInfo, align 8
  %17 = alloca [6 x double], align 16
  %18 = alloca [8 x double], align 16
  %19 = alloca [4096 x i8], align 16
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct._MagickPixelPacket, align 8
  %24 = alloca ptr, align 8
  %25 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !26
  store i32 %1, ptr %8, align 4, !tbaa !27
  store i64 %2, ptr %9, align 8, !tbaa !28
  store ptr %3, ptr %10, align 8, !tbaa !26
  store i32 %4, ptr %11, align 4, !tbaa !27
  store ptr %5, ptr %12, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #10
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %27 = load i32, ptr %26, align 8, !tbaa !6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1708, ptr noundef nonnull @.str.2, ptr noundef nonnull %30) #20
  br label %32

32:                                               ; preds = %29, %6
  %33 = icmp eq i32 %1, 17
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = icmp eq i64 %2, 2
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1719, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #20
  br label %1073

38:                                               ; preds = %34
  %39 = load double, ptr %3, align 8, !tbaa !25
  %40 = fptoui double %39 to i64
  %41 = getelementptr inbounds double, ptr %3, i64 1
  %42 = load double, ptr %41, align 8, !tbaa !25
  %43 = fptoui double %42 to i64
  %44 = tail call ptr @DistortResizeImage(ptr noundef nonnull %0, i64 noundef %40, i64 noundef %43, ptr noundef %5) #21
  br label %1073

45:                                               ; preds = %32
  %46 = call fastcc ptr @GenerateCoefficients(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef %2, ptr noundef %3, i64 noundef 0, ptr noundef %5) #21
  store ptr %46, ptr %13, align 8, !tbaa !26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %1073, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !29
  store i64 %50, ptr %16, align 8, !tbaa !30
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 2
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  %56 = load i32, ptr %8, align 4, !tbaa !27
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %109

58:                                               ; preds = %48
  store i32 1, ptr %11, align 4, !tbaa !27
  %59 = load double, ptr %46, align 8, !tbaa !25
  %60 = getelementptr inbounds double, ptr %46, i64 1
  %61 = load double, ptr %60, align 8, !tbaa !25
  %62 = fmul double %61, 5.000000e-01
  %63 = fsub double %59, %62
  %64 = tail call double @cos(double noundef %63) #20
  %65 = tail call double @sin(double noundef %63) #20
  %66 = getelementptr inbounds double, ptr %46, i64 2
  %67 = load double, ptr %66, align 8, !tbaa !25
  %68 = fmul double %64, %67
  %69 = fmul double %65, %67
  %70 = getelementptr inbounds double, ptr %46, i64 3
  %71 = load double, ptr %70, align 8, !tbaa !25
  %72 = fsub double %67, %71
  %73 = fmul double %64, %72
  %74 = fmul double %65, %72
  %75 = tail call fastcc double @MagickMin(double noundef %68, double noundef %73) #21
  %76 = tail call fastcc double @MagickMax(double noundef %68, double noundef %73) #21
  %77 = tail call fastcc double @MagickMin(double noundef %69, double noundef %74) #21
  %78 = tail call fastcc double @MagickMax(double noundef %69, double noundef %74) #21
  %79 = load double, ptr %46, align 8, !tbaa !25
  %80 = load double, ptr %60, align 8, !tbaa !25
  %81 = fmul double %80, 5.000000e-01
  %82 = fadd double %79, %81
  %83 = tail call double @cos(double noundef %82) #20
  %84 = tail call double @sin(double noundef %82) #20
  %85 = load double, ptr %66, align 8, !tbaa !25
  %86 = fmul double %83, %85
  %87 = fmul double %84, %85
  %88 = tail call fastcc double @MagickMin(double noundef %75, double noundef %86) #21
  %89 = tail call fastcc double @MagickMax(double noundef %76, double noundef %86) #21
  %90 = tail call fastcc double @MagickMin(double noundef %77, double noundef %87) #21
  %91 = tail call fastcc double @MagickMax(double noundef %78, double noundef %87) #21
  %92 = load double, ptr %70, align 8, !tbaa !25
  %93 = fsub double %85, %92
  %94 = fmul double %83, %93
  %95 = fmul double %84, %93
  %96 = tail call fastcc double @MagickMin(double noundef %88, double noundef %94) #21
  %97 = tail call fastcc double @MagickMax(double noundef %89, double noundef %94) #21
  %98 = tail call fastcc double @MagickMin(double noundef %90, double noundef %95) #21
  %99 = tail call fastcc double @MagickMax(double noundef %91, double noundef %95) #21
  %100 = load double, ptr %46, align 8, !tbaa !25
  %101 = load double, ptr %60, align 8, !tbaa !25
  %102 = fmul double %101, 5.000000e-01
  %103 = fsub double %100, %102
  %104 = fdiv double %103, 0x3FF921FB54442D18
  %105 = tail call double @llvm.ceil.f64(double %104)
  %106 = fmul double %105, 0x3FF921FB54442D18
  %107 = fadd double %100, %102
  %108 = fcmp olt double %106, %107
  br i1 %108, label %246, label %269

109:                                              ; preds = %48
  %110 = icmp eq i32 %4, 0
  br i1 %110, label %391, label %111

111:                                              ; preds = %109
  switch i32 %56, label %369 [
    i32 1, label %112
    i32 4, label %166
    i32 13, label %352
    i32 10, label %283
    i32 11, label %305
    i32 12, label %327
  ]

112:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %17) #10
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %46, ptr noundef nonnull %17) #21
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !33
  %115 = sitofp i64 %114 to double
  %116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %117 = load i64, ptr %116, align 8, !tbaa !34
  %118 = sitofp i64 %117 to double
  %119 = load double, ptr %17, align 16, !tbaa !25
  %120 = getelementptr inbounds [6 x double], ptr %17, i64 0, i64 1
  %121 = load double, ptr %120, align 8, !tbaa !25
  %122 = fmul double %121, %118
  %123 = tail call double @llvm.fmuladd.f64(double %119, double %115, double %122)
  %124 = getelementptr inbounds [6 x double], ptr %17, i64 0, i64 2
  %125 = load double, ptr %124, align 16, !tbaa !25
  %126 = fadd double %125, %123
  %127 = getelementptr inbounds [6 x double], ptr %17, i64 0, i64 3
  %128 = load double, ptr %127, align 8, !tbaa !25
  %129 = getelementptr inbounds [6 x double], ptr %17, i64 0, i64 4
  %130 = load double, ptr %129, align 16, !tbaa !25
  %131 = fmul double %130, %118
  %132 = tail call double @llvm.fmuladd.f64(double %128, double %115, double %131)
  %133 = getelementptr inbounds [6 x double], ptr %17, i64 0, i64 5
  %134 = load double, ptr %133, align 8, !tbaa !25
  %135 = fadd double %134, %132
  %136 = uitofp i64 %50 to double
  %137 = fadd double %136, %115
  %138 = tail call double @llvm.fmuladd.f64(double %119, double %137, double %122)
  %139 = fadd double %125, %138
  %140 = tail call double @llvm.fmuladd.f64(double %128, double %137, double %131)
  %141 = fadd double %134, %140
  %142 = tail call fastcc double @MagickMin(double noundef %126, double noundef %139) #21
  %143 = tail call fastcc double @MagickMax(double noundef %126, double noundef %139) #21
  %144 = tail call fastcc double @MagickMin(double noundef %135, double noundef %141) #21
  %145 = tail call fastcc double @MagickMax(double noundef %135, double noundef %141) #21
  %146 = uitofp i64 %52 to double
  %147 = fadd double %146, %118
  %148 = fmul double %121, %147
  %149 = tail call double @llvm.fmuladd.f64(double %119, double %115, double %148)
  %150 = fadd double %125, %149
  %151 = fmul double %147, %130
  %152 = tail call double @llvm.fmuladd.f64(double %128, double %115, double %151)
  %153 = fadd double %134, %152
  %154 = tail call fastcc double @MagickMin(double noundef %142, double noundef %150) #21
  %155 = tail call fastcc double @MagickMax(double noundef %143, double noundef %150) #21
  %156 = tail call fastcc double @MagickMin(double noundef %144, double noundef %153) #21
  %157 = tail call fastcc double @MagickMax(double noundef %145, double noundef %153) #21
  %158 = tail call double @llvm.fmuladd.f64(double %119, double %137, double %148)
  %159 = fadd double %125, %158
  %160 = tail call double @llvm.fmuladd.f64(double %128, double %137, double %151)
  %161 = fadd double %134, %160
  %162 = tail call fastcc double @MagickMin(double noundef %154, double noundef %159) #21
  %163 = tail call fastcc double @MagickMax(double noundef %155, double noundef %159) #21
  %164 = tail call fastcc double @MagickMin(double noundef %156, double noundef %161) #21
  %165 = tail call fastcc double @MagickMax(double noundef %157, double noundef %161) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #10
  br label %370

166:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #10
  call fastcc void @InvertPerspectiveCoefficients(ptr noundef nonnull %46, ptr noundef nonnull %18) #21
  %167 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !33
  %169 = sitofp i64 %168 to double
  %170 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %171 = load i64, ptr %170, align 8, !tbaa !34
  %172 = sitofp i64 %171 to double
  %173 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 6
  %174 = load double, ptr %173, align 16, !tbaa !25
  %175 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 7
  %176 = load double, ptr %175, align 8, !tbaa !25
  %177 = fmul double %176, %172
  %178 = tail call double @llvm.fmuladd.f64(double %174, double %169, double %177)
  %179 = fadd double %178, 1.000000e+00
  %180 = tail call fastcc double @PerceptibleReciprocal(double noundef %179) #21
  %181 = load double, ptr %18, align 16, !tbaa !25
  %182 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 1
  %183 = load double, ptr %182, align 8, !tbaa !25
  %184 = fmul double %183, %172
  %185 = tail call double @llvm.fmuladd.f64(double %181, double %169, double %184)
  %186 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 2
  %187 = load double, ptr %186, align 16, !tbaa !25
  %188 = fadd double %187, %185
  %189 = fmul double %180, %188
  %190 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 3
  %191 = load double, ptr %190, align 8, !tbaa !25
  %192 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 4
  %193 = load double, ptr %192, align 16, !tbaa !25
  %194 = fmul double %193, %172
  %195 = tail call double @llvm.fmuladd.f64(double %191, double %169, double %194)
  %196 = getelementptr inbounds [8 x double], ptr %18, i64 0, i64 5
  %197 = load double, ptr %196, align 8, !tbaa !25
  %198 = fadd double %197, %195
  %199 = fmul double %180, %198
  %200 = uitofp i64 %50 to double
  %201 = fadd double %200, %169
  %202 = tail call double @llvm.fmuladd.f64(double %174, double %201, double %177)
  %203 = fadd double %202, 1.000000e+00
  %204 = tail call fastcc double @PerceptibleReciprocal(double noundef %203) #21
  %205 = tail call double @llvm.fmuladd.f64(double %181, double %201, double %184)
  %206 = fadd double %187, %205
  %207 = fmul double %206, %204
  %208 = tail call double @llvm.fmuladd.f64(double %191, double %201, double %194)
  %209 = fadd double %197, %208
  %210 = fmul double %204, %209
  %211 = tail call fastcc double @MagickMin(double noundef %189, double noundef %207) #21
  %212 = tail call fastcc double @MagickMax(double noundef %189, double noundef %207) #21
  %213 = tail call fastcc double @MagickMin(double noundef %199, double noundef %210) #21
  %214 = tail call fastcc double @MagickMax(double noundef %199, double noundef %210) #21
  %215 = uitofp i64 %52 to double
  %216 = fadd double %215, %172
  %217 = fmul double %176, %216
  %218 = tail call double @llvm.fmuladd.f64(double %174, double %169, double %217)
  %219 = fadd double %218, 1.000000e+00
  %220 = tail call fastcc double @PerceptibleReciprocal(double noundef %219) #21
  %221 = fmul double %216, %183
  %222 = tail call double @llvm.fmuladd.f64(double %181, double %169, double %221)
  %223 = fadd double %187, %222
  %224 = fmul double %223, %220
  %225 = fmul double %216, %193
  %226 = tail call double @llvm.fmuladd.f64(double %191, double %169, double %225)
  %227 = fadd double %197, %226
  %228 = fmul double %227, %220
  %229 = tail call fastcc double @MagickMin(double noundef %211, double noundef %224) #21
  %230 = tail call fastcc double @MagickMax(double noundef %212, double noundef %224) #21
  %231 = tail call fastcc double @MagickMin(double noundef %213, double noundef %228) #21
  %232 = tail call fastcc double @MagickMax(double noundef %214, double noundef %228) #21
  %233 = tail call double @llvm.fmuladd.f64(double %174, double %201, double %217)
  %234 = fadd double %233, 1.000000e+00
  %235 = tail call fastcc double @PerceptibleReciprocal(double noundef %234) #21
  %236 = tail call double @llvm.fmuladd.f64(double %181, double %201, double %221)
  %237 = fadd double %187, %236
  %238 = fmul double %237, %235
  %239 = tail call double @llvm.fmuladd.f64(double %191, double %201, double %225)
  %240 = fadd double %197, %239
  %241 = fmul double %240, %235
  %242 = tail call fastcc double @MagickMin(double noundef %229, double noundef %238) #21
  %243 = tail call fastcc double @MagickMax(double noundef %230, double noundef %238) #21
  %244 = tail call fastcc double @MagickMin(double noundef %231, double noundef %241) #21
  %245 = tail call fastcc double @MagickMax(double noundef %232, double noundef %241) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #10
  br label %370

246:                                              ; preds = %58, %246
  %247 = phi double [ %261, %246 ], [ %106, %58 ]
  %248 = phi double [ %259, %246 ], [ %98, %58 ]
  %249 = phi double [ %258, %246 ], [ %97, %58 ]
  %250 = phi double [ %260, %246 ], [ %99, %58 ]
  %251 = phi double [ %257, %246 ], [ %96, %58 ]
  %252 = tail call double @cos(double noundef %247) #20
  %253 = tail call double @sin(double noundef %247) #20
  %254 = load double, ptr %66, align 8, !tbaa !25
  %255 = fmul double %252, %254
  %256 = fmul double %253, %254
  %257 = tail call fastcc double @MagickMin(double noundef %251, double noundef %255) #21
  %258 = tail call fastcc double @MagickMax(double noundef %249, double noundef %255) #21
  %259 = tail call fastcc double @MagickMin(double noundef %248, double noundef %256) #21
  %260 = tail call fastcc double @MagickMax(double noundef %250, double noundef %256) #21
  %261 = fadd double %247, 0x3FF921FB54442D18
  %262 = load double, ptr %46, align 8, !tbaa !25
  %263 = load double, ptr %60, align 8, !tbaa !25
  %264 = fmul double %263, 5.000000e-01
  %265 = fadd double %262, %264
  %266 = fcmp olt double %261, %265
  br i1 %266, label %246, label %267, !llvm.loop !35

267:                                              ; preds = %246
  %268 = load double, ptr %70, align 8, !tbaa !25
  br label %269

269:                                              ; preds = %267, %58
  %270 = phi double [ %92, %58 ], [ %268, %267 ]
  %271 = phi double [ %96, %58 ], [ %257, %267 ]
  %272 = phi double [ %99, %58 ], [ %260, %267 ]
  %273 = phi double [ %97, %58 ], [ %258, %267 ]
  %274 = phi double [ %98, %58 ], [ %259, %267 ]
  %275 = phi double [ %101, %58 ], [ %263, %267 ]
  %276 = load i64, ptr %49, align 8, !tbaa !29
  %277 = uitofp i64 %276 to double
  %278 = fmul double %277, 0x401921FB54442D18
  %279 = fdiv double %278, %275
  store double %279, ptr %60, align 8, !tbaa !25
  %280 = load i64, ptr %51, align 8, !tbaa !31
  %281 = uitofp i64 %280 to double
  %282 = fdiv double %281, %270
  store double %282, ptr %70, align 8, !tbaa !25
  br label %370

283:                                              ; preds = %111
  %284 = icmp ult i64 %2, 2
  %285 = getelementptr inbounds double, ptr %46, i64 2
  br i1 %284, label %290, label %286

286:                                              ; preds = %283
  %287 = load double, ptr %285, align 8, !tbaa !25
  %288 = getelementptr inbounds double, ptr %46, i64 3
  %289 = load double, ptr %288, align 8, !tbaa !25
  br label %291

290:                                              ; preds = %283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  br label %291

291:                                              ; preds = %286, %290
  %292 = phi double [ %289, %286 ], [ 0.000000e+00, %290 ]
  %293 = phi double [ %287, %286 ], [ 0.000000e+00, %290 ]
  %294 = load double, ptr %46, align 8, !tbaa !25
  %295 = fsub double %293, %294
  %296 = fadd double %293, %294
  %297 = fsub double %292, %294
  %298 = fadd double %294, %292
  %299 = uitofp i64 %52 to double
  %300 = getelementptr inbounds double, ptr %46, i64 1
  %301 = load double, ptr %300, align 8, !tbaa !25
  %302 = fsub double %294, %301
  %303 = fdiv double %299, %302
  %304 = getelementptr inbounds double, ptr %46, i64 7
  store double %303, ptr %304, align 8, !tbaa !25
  br label %370

305:                                              ; preds = %111
  %306 = load double, ptr %46, align 8, !tbaa !25
  %307 = getelementptr inbounds double, ptr %46, i64 1
  %308 = load double, ptr %307, align 8, !tbaa !25
  %309 = fsub double %306, %308
  %310 = tail call double @llvm.ceil.f64(double %309)
  %311 = fptoui double %310 to i64
  store i64 %311, ptr %53, align 8, !tbaa !32
  %312 = getelementptr inbounds double, ptr %46, i64 5
  %313 = load double, ptr %312, align 8, !tbaa !25
  %314 = getelementptr inbounds double, ptr %46, i64 4
  %315 = load double, ptr %314, align 8, !tbaa !25
  %316 = fsub double %313, %315
  %317 = fmul double %309, %316
  %318 = fmul double %317, 5.000000e-01
  %319 = tail call double @llvm.ceil.f64(double %318)
  %320 = fptoui double %319 to i64
  store i64 %320, ptr %16, align 8, !tbaa !30
  %321 = uitofp i64 %320 to double
  %322 = fdiv double %316, %321
  %323 = getelementptr inbounds double, ptr %46, i64 6
  store double %322, ptr %323, align 8, !tbaa !25
  %324 = uitofp i64 %311 to double
  %325 = fdiv double %309, %324
  %326 = getelementptr inbounds double, ptr %46, i64 7
  store double %325, ptr %326, align 8, !tbaa !25
  br label %391

327:                                              ; preds = %111
  %328 = getelementptr inbounds double, ptr %46, i64 1
  %329 = load double, ptr %328, align 8, !tbaa !25
  %330 = fmul double %329, 2.000000e+00
  %331 = load double, ptr %46, align 8, !tbaa !25
  %332 = fmul double %331, 5.000000e-01
  %333 = tail call double @tan(double noundef %332) #20
  %334 = fmul double %330, %333
  %335 = tail call double @llvm.ceil.f64(double %334)
  %336 = fptoui double %335 to i64
  store i64 %336, ptr %16, align 8, !tbaa !30
  %337 = getelementptr inbounds double, ptr %46, i64 3
  %338 = load double, ptr %337, align 8, !tbaa !25
  %339 = fmul double %338, 2.000000e+00
  %340 = load double, ptr %46, align 8, !tbaa !25
  %341 = fmul double %340, 5.000000e-01
  %342 = tail call double @cos(double noundef %341) #20
  %343 = fdiv double %339, %342
  %344 = tail call double @llvm.ceil.f64(double %343)
  %345 = fptoui double %344 to i64
  store i64 %345, ptr %53, align 8, !tbaa !32
  %346 = uitofp i64 %336 to double
  %347 = fmul double %346, 5.000000e-01
  %348 = getelementptr inbounds double, ptr %46, i64 4
  store double %347, ptr %348, align 8, !tbaa !25
  %349 = uitofp i64 %345 to double
  %350 = fmul double %349, 5.000000e-01
  %351 = getelementptr inbounds double, ptr %46, i64 5
  store double %350, ptr %351, align 8, !tbaa !25
  br label %391

352:                                              ; preds = %111
  %353 = load double, ptr %46, align 8, !tbaa !25
  %354 = getelementptr inbounds double, ptr %46, i64 1
  %355 = load double, ptr %354, align 8, !tbaa !25
  %356 = fmul double %353, %355
  %357 = tail call double @llvm.ceil.f64(double %356)
  %358 = fptoui double %357 to i64
  store i64 %358, ptr %16, align 8, !tbaa !30
  %359 = getelementptr inbounds double, ptr %46, i64 3
  %360 = load double, ptr %359, align 8, !tbaa !25
  %361 = fmul double %360, 2.000000e+00
  %362 = fptoui double %361 to i64
  store i64 %362, ptr %53, align 8, !tbaa !32
  %363 = uitofp i64 %358 to double
  %364 = fmul double %363, 5.000000e-01
  %365 = getelementptr inbounds double, ptr %46, i64 4
  store double %364, ptr %365, align 8, !tbaa !25
  %366 = uitofp i64 %362 to double
  %367 = fmul double %366, 5.000000e-01
  %368 = getelementptr inbounds double, ptr %46, i64 5
  store double %367, ptr %368, align 8, !tbaa !25
  br label %391

369:                                              ; preds = %111
  store i32 0, ptr %11, align 4, !tbaa !27
  br label %391

370:                                              ; preds = %112, %166, %269, %291
  %371 = phi double [ %295, %291 ], [ %271, %269 ], [ %242, %166 ], [ %162, %112 ]
  %372 = phi double [ %298, %291 ], [ %272, %269 ], [ %245, %166 ], [ %165, %112 ]
  %373 = phi double [ %296, %291 ], [ %273, %269 ], [ %243, %166 ], [ %163, %112 ]
  %374 = phi double [ %297, %291 ], [ %274, %269 ], [ %244, %166 ], [ %164, %112 ]
  %375 = fadd double %371, -5.000000e-01
  %376 = tail call double @llvm.floor.f64(double %375)
  %377 = fptosi double %376 to i64
  store i64 %377, ptr %54, align 8, !tbaa !37
  %378 = fadd double %374, -5.000000e-01
  %379 = tail call double @llvm.floor.f64(double %378)
  %380 = fptosi double %379 to i64
  store i64 %380, ptr %55, align 8, !tbaa !38
  %381 = sitofp i64 %377 to double
  %382 = fsub double %373, %381
  %383 = fadd double %382, 5.000000e-01
  %384 = tail call double @llvm.ceil.f64(double %383)
  %385 = fptoui double %384 to i64
  store i64 %385, ptr %16, align 8, !tbaa !30
  %386 = sitofp i64 %380 to double
  %387 = fsub double %372, %386
  %388 = fadd double %387, 5.000000e-01
  %389 = tail call double @llvm.ceil.f64(double %388)
  %390 = fptoui double %389 to i64
  store i64 %390, ptr %53, align 8, !tbaa !32
  br label %391

391:                                              ; preds = %305, %327, %352, %369, %370, %109
  %392 = phi i32 [ 1, %305 ], [ 1, %327 ], [ 1, %352 ], [ 0, %369 ], [ 1, %370 ], [ 0, %109 ]
  %393 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #20
  %394 = icmp eq ptr %393, null
  br i1 %394, label %400, label %395

395:                                              ; preds = %391
  %396 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %393, ptr noundef nonnull %16) #20
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1968, i32 noundef 310, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %393) #20
  br label %400

400:                                              ; preds = %398, %395, %391
  %401 = phi i32 [ 0, %391 ], [ 0, %398 ], [ 1, %395 ]
  %402 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #20
  %403 = icmp eq ptr %402, null
  br i1 %403, label %966, label %404

404:                                              ; preds = %400
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %19) #10
  %405 = or i32 %392, %401
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %404
  %408 = load i64, ptr %16, align 8, !tbaa !30
  %409 = uitofp i64 %408 to double
  %410 = load i64, ptr %53, align 8, !tbaa !32
  %411 = uitofp i64 %410 to double
  %412 = load i64, ptr %54, align 8, !tbaa !37
  %413 = sitofp i64 %412 to double
  %414 = load i64, ptr %55, align 8, !tbaa !38
  %415 = sitofp i64 %414 to double
  %416 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.11, double noundef %409, double noundef %411, double noundef %413, double noundef %415) #20
  br label %418

417:                                              ; preds = %404
  store i8 0, ptr %19, align 16, !tbaa !39
  br label %418

418:                                              ; preds = %417, %407
  %419 = phi ptr [ @.str.12, %407 ], [ @.str.13, %417 ]
  switch i32 %56, label %964 [
    i32 1, label %420
    i32 4, label %468
    i32 6, label %537
    i32 7, label %609
    i32 8, label %637
    i32 9, label %699
    i32 10, label %738
    i32 11, label %786
    i32 12, label %825
    i32 13, label %858
    i32 14, label %891
    i32 15, label %891
  ]

420:                                              ; preds = %418
  %421 = call dereferenceable_or_null(48) ptr @AcquireQuantumMemory(i64 noundef 6, i64 noundef 8) #22
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #20
  %425 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2003, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #20
  br label %965

426:                                              ; preds = %420
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %46, ptr noundef nonnull %421) #21
  call fastcc void @CoefficientsToAffineArgs(ptr noundef nonnull %421) #21
  %427 = load ptr, ptr @stderr, align 8, !tbaa !26
  %428 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %427, ptr noundef nonnull @.str.16) #20
  %429 = load ptr, ptr @stderr, align 8, !tbaa !26
  %430 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %429, ptr noundef nonnull @.str.17) #20
  br label %431

431:                                              ; preds = %426, %431
  %432 = phi i64 [ 0, %426 ], [ %437, %431 ]
  %433 = load ptr, ptr @stderr, align 8, !tbaa !26
  %434 = getelementptr inbounds double, ptr %421, i64 %432
  %435 = load double, ptr %434, align 8, !tbaa !25
  %436 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %433, ptr noundef nonnull @.str.18, double noundef %435) #20
  %437 = add nuw nsw i64 %432, 1
  %438 = icmp eq i64 %437, 5
  br i1 %438, label %439, label %431, !llvm.loop !40

439:                                              ; preds = %431
  %440 = load ptr, ptr @stderr, align 8, !tbaa !26
  %441 = getelementptr inbounds double, ptr %421, i64 5
  %442 = load double, ptr %441, align 8, !tbaa !25
  %443 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %440, ptr noundef nonnull @.str.19, double noundef %442) #20
  %444 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %421) #20
  %445 = load ptr, ptr @stderr, align 8, !tbaa !26
  %446 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %445, ptr noundef nonnull @.str.20) #20
  %447 = load ptr, ptr @stderr, align 8, !tbaa !26
  %448 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %447, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %449 = load ptr, ptr @stderr, align 8, !tbaa !26
  %450 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %449, ptr noundef nonnull @.str.21) #20
  %451 = load ptr, ptr @stderr, align 8, !tbaa !26
  %452 = load double, ptr %46, align 8, !tbaa !25
  %453 = getelementptr inbounds double, ptr %46, i64 1
  %454 = load double, ptr %453, align 8, !tbaa !25
  %455 = getelementptr inbounds double, ptr %46, i64 2
  %456 = load double, ptr %455, align 8, !tbaa !25
  %457 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %451, ptr noundef nonnull @.str.22, double noundef %452, double noundef %454, double noundef %456) #20
  %458 = load ptr, ptr @stderr, align 8, !tbaa !26
  %459 = getelementptr inbounds double, ptr %46, i64 3
  %460 = load double, ptr %459, align 8, !tbaa !25
  %461 = getelementptr inbounds double, ptr %46, i64 4
  %462 = load double, ptr %461, align 8, !tbaa !25
  %463 = getelementptr inbounds double, ptr %46, i64 5
  %464 = load double, ptr %463, align 8, !tbaa !25
  %465 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %458, ptr noundef nonnull @.str.23, double noundef %460, double noundef %462, double noundef %464) #20
  %466 = load ptr, ptr @stderr, align 8, !tbaa !26
  %467 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %466, ptr noundef nonnull @.str.24, ptr noundef nonnull %419) #20
  br label %964

468:                                              ; preds = %418
  %469 = call dereferenceable_or_null(64) ptr @AcquireQuantumMemory(i64 noundef 8, i64 noundef 8) #22
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %474

471:                                              ; preds = %468
  %472 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #20
  %473 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2036, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #20
  br label %965

474:                                              ; preds = %468
  call fastcc void @InvertPerspectiveCoefficients(ptr noundef nonnull %46, ptr noundef nonnull %469) #21
  %475 = load ptr, ptr @stderr, align 8, !tbaa !26
  %476 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %475, ptr noundef nonnull @.str.26) #20
  %477 = load ptr, ptr @stderr, align 8, !tbaa !26
  %478 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %477, ptr noundef nonnull @.str.27) #20
  br label %479

479:                                              ; preds = %474, %479
  %480 = phi i64 [ 0, %474 ], [ %485, %479 ]
  %481 = load ptr, ptr @stderr, align 8, !tbaa !26
  %482 = getelementptr inbounds double, ptr %469, i64 %480
  %483 = load double, ptr %482, align 8, !tbaa !25
  %484 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %481, ptr noundef nonnull @.str.28, double noundef %483) #20
  %485 = add nuw nsw i64 %480, 1
  %486 = icmp eq i64 %485, 4
  br i1 %486, label %487, label %479, !llvm.loop !41

487:                                              ; preds = %479
  %488 = load ptr, ptr @stderr, align 8, !tbaa !26
  %489 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %488, ptr noundef nonnull @.str.29) #20
  br label %490

490:                                              ; preds = %487, %490
  %491 = phi i64 [ %496, %490 ], [ 4, %487 ]
  %492 = load ptr, ptr @stderr, align 8, !tbaa !26
  %493 = getelementptr inbounds double, ptr %469, i64 %491
  %494 = load double, ptr %493, align 8, !tbaa !25
  %495 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %492, ptr noundef nonnull @.str.28, double noundef %494) #20
  %496 = add nuw nsw i64 %491, 1
  %497 = icmp eq i64 %496, 7
  br i1 %497, label %498, label %490, !llvm.loop !42

498:                                              ; preds = %490
  %499 = load ptr, ptr @stderr, align 8, !tbaa !26
  %500 = getelementptr inbounds double, ptr %469, i64 7
  %501 = load double, ptr %500, align 8, !tbaa !25
  %502 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %499, ptr noundef nonnull @.str.19, double noundef %501) #20
  %503 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %469) #20
  %504 = load ptr, ptr @stderr, align 8, !tbaa !26
  %505 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %504, ptr noundef nonnull @.str.30) #20
  %506 = load ptr, ptr @stderr, align 8, !tbaa !26
  %507 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %506, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %508 = load ptr, ptr @stderr, align 8, !tbaa !26
  %509 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %508, ptr noundef nonnull @.str.21) #20
  %510 = load ptr, ptr @stderr, align 8, !tbaa !26
  %511 = getelementptr inbounds double, ptr %46, i64 6
  %512 = load double, ptr %511, align 8, !tbaa !25
  %513 = getelementptr inbounds double, ptr %46, i64 7
  %514 = load double, ptr %513, align 8, !tbaa !25
  %515 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %510, ptr noundef nonnull @.str.31, double noundef %512, double noundef %514) #20
  %516 = load ptr, ptr @stderr, align 8, !tbaa !26
  %517 = load double, ptr %46, align 8, !tbaa !25
  %518 = getelementptr inbounds double, ptr %46, i64 1
  %519 = load double, ptr %518, align 8, !tbaa !25
  %520 = getelementptr inbounds double, ptr %46, i64 2
  %521 = load double, ptr %520, align 8, !tbaa !25
  %522 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %516, ptr noundef nonnull @.str.32, double noundef %517, double noundef %519, double noundef %521) #20
  %523 = load ptr, ptr @stderr, align 8, !tbaa !26
  %524 = getelementptr inbounds double, ptr %46, i64 3
  %525 = load double, ptr %524, align 8, !tbaa !25
  %526 = getelementptr inbounds double, ptr %46, i64 4
  %527 = load double, ptr %526, align 8, !tbaa !25
  %528 = getelementptr inbounds double, ptr %46, i64 5
  %529 = load double, ptr %528, align 8, !tbaa !25
  %530 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %523, ptr noundef nonnull @.str.33, double noundef %525, double noundef %527, double noundef %529) #20
  %531 = load ptr, ptr @stderr, align 8, !tbaa !26
  %532 = getelementptr inbounds double, ptr %46, i64 8
  %533 = load double, ptr %532, align 8, !tbaa !25
  %534 = fcmp olt double %533, 0.000000e+00
  %535 = select i1 %534, ptr @.str.35, ptr @.str.36
  %536 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %531, ptr noundef nonnull @.str.34, ptr noundef nonnull %535, ptr noundef nonnull %419) #20
  br label %964

537:                                              ; preds = %418
  %538 = load ptr, ptr @stderr, align 8, !tbaa !26
  %539 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %538, ptr noundef nonnull @.str.37) #20
  %540 = load ptr, ptr @stderr, align 8, !tbaa !26
  %541 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %540, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %542 = load ptr, ptr @stderr, align 8, !tbaa !26
  %543 = load double, ptr %46, align 8, !tbaa !25
  %544 = getelementptr inbounds double, ptr %46, i64 1
  %545 = load double, ptr %544, align 8, !tbaa !25
  %546 = getelementptr inbounds double, ptr %46, i64 2
  %547 = load double, ptr %546, align 8, !tbaa !25
  %548 = getelementptr inbounds double, ptr %46, i64 3
  %549 = load double, ptr %548, align 8, !tbaa !25
  %550 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %542, ptr noundef nonnull @.str.38, double noundef %543, double noundef %545, double noundef %547, double noundef %549) #20
  %551 = load ptr, ptr @stderr, align 8, !tbaa !26
  %552 = getelementptr inbounds double, ptr %46, i64 4
  %553 = load double, ptr %552, align 8, !tbaa !25
  %554 = getelementptr inbounds double, ptr %46, i64 5
  %555 = load double, ptr %554, align 8, !tbaa !25
  %556 = getelementptr inbounds double, ptr %46, i64 6
  %557 = load double, ptr %556, align 8, !tbaa !25
  %558 = getelementptr inbounds double, ptr %46, i64 7
  %559 = load double, ptr %558, align 8, !tbaa !25
  %560 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %551, ptr noundef nonnull @.str.39, double noundef %553, double noundef %555, double noundef %557, double noundef %559) #20
  %561 = load ptr, ptr @stderr, align 8, !tbaa !26
  %562 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %561, ptr noundef nonnull @.str.40) #20
  %563 = load ptr, ptr @stderr, align 8, !tbaa !26
  %564 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %563, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %565 = load ptr, ptr @stderr, align 8, !tbaa !26
  %566 = load double, ptr %548, align 8, !tbaa !25
  %567 = fsub double 5.000000e-01, %566
  %568 = load double, ptr %558, align 8, !tbaa !25
  %569 = fsub double 5.000000e-01, %568
  %570 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %565, ptr noundef nonnull @.str.41, double noundef %567, double noundef %569) #20
  %571 = load ptr, ptr @stderr, align 8, !tbaa !26
  %572 = load double, ptr %556, align 8, !tbaa !25
  %573 = load double, ptr %546, align 8, !tbaa !25
  %574 = fneg double %573
  %575 = getelementptr inbounds double, ptr %46, i64 8
  %576 = load double, ptr %575, align 8, !tbaa !25
  %577 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %571, ptr noundef nonnull @.str.42, double noundef %572, double noundef %574, double noundef %576) #20
  %578 = getelementptr inbounds double, ptr %46, i64 9
  %579 = load double, ptr %578, align 8, !tbaa !25
  %580 = fcmp une double %579, 0.000000e+00
  %581 = load ptr, ptr @stderr, align 8, !tbaa !26
  %582 = load double, ptr %46, align 8, !tbaa !25
  br i1 %580, label %583, label %591

583:                                              ; preds = %537
  %584 = fmul double %579, -2.000000e+00
  %585 = load double, ptr %552, align 8, !tbaa !25
  %586 = fneg double %582
  %587 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %581, ptr noundef nonnull @.str.43, double noundef %584, double noundef %585, double noundef %586) #20
  %588 = load ptr, ptr @stderr, align 8, !tbaa !26
  %589 = load double, ptr %578, align 8, !tbaa !25
  %590 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %588, ptr noundef nonnull @.str.44, double noundef %589) #20
  br label %595

591:                                              ; preds = %537
  %592 = load double, ptr %552, align 8, !tbaa !25
  %593 = fneg double %592
  %594 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %581, ptr noundef nonnull @.str.45, double noundef %593, double noundef %582) #20
  br label %595

595:                                              ; preds = %591, %583
  %596 = load ptr, ptr @stderr, align 8, !tbaa !26
  %597 = load double, ptr %544, align 8, !tbaa !25
  %598 = fneg double %597
  %599 = load double, ptr %46, align 8, !tbaa !25
  %600 = load double, ptr %546, align 8, !tbaa !25
  %601 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %596, ptr noundef nonnull @.str.46, double noundef %598, double noundef %599, double noundef %600) #20
  %602 = load double, ptr %578, align 8, !tbaa !25
  %603 = fcmp une double %602, 0.000000e+00
  %604 = load ptr, ptr @stderr, align 8, !tbaa !26
  br i1 %603, label %605, label %607

605:                                              ; preds = %595
  %606 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %604, ptr noundef nonnull @.str.47, ptr noundef nonnull %419) #20
  br label %964

607:                                              ; preds = %595
  %608 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %604, ptr noundef nonnull @.str.24, ptr noundef nonnull %419) #20
  br label %964

609:                                              ; preds = %418
  %610 = load ptr, ptr @stderr, align 8, !tbaa !26
  %611 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %610, ptr noundef nonnull @.str.48) #20
  %612 = load ptr, ptr @stderr, align 8, !tbaa !26
  %613 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %612, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %614 = load ptr, ptr @stderr, align 8, !tbaa !26
  %615 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %614, ptr noundef nonnull @.str.21) #20
  %616 = load ptr, ptr @stderr, align 8, !tbaa !26
  %617 = load double, ptr %46, align 8, !tbaa !25
  %618 = getelementptr inbounds double, ptr %46, i64 1
  %619 = load double, ptr %618, align 8, !tbaa !25
  %620 = getelementptr inbounds double, ptr %46, i64 2
  %621 = load double, ptr %620, align 8, !tbaa !25
  %622 = getelementptr inbounds double, ptr %46, i64 3
  %623 = load double, ptr %622, align 8, !tbaa !25
  %624 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %616, ptr noundef nonnull @.str.49, double noundef %617, double noundef %619, double noundef %621, double noundef %623) #20
  %625 = load ptr, ptr @stderr, align 8, !tbaa !26
  %626 = getelementptr inbounds double, ptr %46, i64 4
  %627 = load double, ptr %626, align 8, !tbaa !25
  %628 = getelementptr inbounds double, ptr %46, i64 5
  %629 = load double, ptr %628, align 8, !tbaa !25
  %630 = getelementptr inbounds double, ptr %46, i64 6
  %631 = load double, ptr %630, align 8, !tbaa !25
  %632 = getelementptr inbounds double, ptr %46, i64 7
  %633 = load double, ptr %632, align 8, !tbaa !25
  %634 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %625, ptr noundef nonnull @.str.50, double noundef %627, double noundef %629, double noundef %631, double noundef %633) #20
  %635 = load ptr, ptr @stderr, align 8, !tbaa !26
  %636 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %635, ptr noundef nonnull @.str.24, ptr noundef nonnull %419) #20
  br label %964

637:                                              ; preds = %418
  %638 = getelementptr inbounds double, ptr %46, i64 1
  %639 = load double, ptr %638, align 8, !tbaa !25
  %640 = fptoui double %639 to i64
  %641 = load ptr, ptr @stderr, align 8, !tbaa !26
  %642 = load double, ptr %46, align 8, !tbaa !25
  %643 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %641, ptr noundef nonnull @.str.51, double noundef %642, i64 noundef %640) #20
  %644 = load ptr, ptr @stderr, align 8, !tbaa !26
  %645 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %644, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %646 = load ptr, ptr @stderr, align 8, !tbaa !26
  %647 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %646, ptr noundef nonnull @.str.21) #20
  %648 = load ptr, ptr @stderr, align 8, !tbaa !26
  %649 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %648, ptr noundef nonnull @.str.52) #20
  %650 = icmp sgt i64 %640, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %637
  %652 = load ptr, ptr @stderr, align 8, !tbaa !26
  %653 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %652, ptr noundef nonnull @.str.55) #20
  br label %696

654:                                              ; preds = %637
  %655 = getelementptr double, ptr %46, i64 2
  br label %656

656:                                              ; preds = %654, %665
  %657 = phi i64 [ %671, %665 ], [ 0, %654 ]
  %658 = icmp ne i64 %657, 0
  %659 = and i64 %657, 3
  %660 = icmp eq i64 %659, 0
  %661 = and i1 %658, %660
  br i1 %661, label %662, label %665

662:                                              ; preds = %656
  %663 = load ptr, ptr @stderr, align 8, !tbaa !26
  %664 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %663, ptr noundef nonnull @.str.53) #20
  br label %665

665:                                              ; preds = %662, %656
  %666 = load ptr, ptr @stderr, align 8, !tbaa !26
  %667 = getelementptr double, ptr %655, i64 %657
  %668 = load double, ptr %667, align 8, !tbaa !25
  %669 = call fastcc ptr @poly_basis_str(i64 noundef %657) #21
  %670 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %666, ptr noundef nonnull @.str.54, double noundef %668, ptr noundef nonnull %669) #20
  %671 = add nuw nsw i64 %657, 1
  %672 = icmp eq i64 %671, %640
  br i1 %672, label %673, label %656, !llvm.loop !43

673:                                              ; preds = %665
  %674 = load ptr, ptr @stderr, align 8, !tbaa !26
  %675 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %674, ptr noundef nonnull @.str.55) #20
  br i1 %650, label %676, label %696

676:                                              ; preds = %673
  %677 = getelementptr double, ptr %46, i64 2
  %678 = getelementptr double, ptr %677, i64 %640
  br label %679

679:                                              ; preds = %676, %688
  %680 = phi i64 [ %694, %688 ], [ 0, %676 ]
  %681 = icmp ne i64 %680, 0
  %682 = and i64 %680, 3
  %683 = icmp eq i64 %682, 0
  %684 = and i1 %681, %683
  br i1 %684, label %685, label %688

685:                                              ; preds = %679
  %686 = load ptr, ptr @stderr, align 8, !tbaa !26
  %687 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %686, ptr noundef nonnull @.str.53) #20
  br label %688

688:                                              ; preds = %685, %679
  %689 = load ptr, ptr @stderr, align 8, !tbaa !26
  %690 = getelementptr double, ptr %678, i64 %680
  %691 = load double, ptr %690, align 8, !tbaa !25
  %692 = call fastcc ptr @poly_basis_str(i64 noundef %680) #21
  %693 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %689, ptr noundef nonnull @.str.54, double noundef %691, ptr noundef nonnull %692) #20
  %694 = add nuw nsw i64 %680, 1
  %695 = icmp eq i64 %694, %640
  br i1 %695, label %696, label %679, !llvm.loop !44

696:                                              ; preds = %688, %651, %673
  %697 = load ptr, ptr @stderr, align 8, !tbaa !26
  %698 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %697, ptr noundef nonnull @.str.56, ptr noundef nonnull %419) #20
  br label %964

699:                                              ; preds = %418
  %700 = load ptr, ptr @stderr, align 8, !tbaa !26
  %701 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %700, ptr noundef nonnull @.str.57) #20
  br label %702

702:                                              ; preds = %699, %702
  %703 = phi i64 [ 0, %699 ], [ %709, %702 ]
  %704 = load ptr, ptr @stderr, align 8, !tbaa !26
  %705 = sitofp i64 %703 to double
  %706 = getelementptr inbounds double, ptr %46, i64 %703
  %707 = load double, ptr %706, align 8, !tbaa !25
  %708 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %704, ptr noundef nonnull @.str.58, double noundef %705, double noundef %707) #20
  %709 = add nuw nsw i64 %703, 1
  %710 = icmp eq i64 %709, 5
  br i1 %710, label %711, label %702, !llvm.loop !45

711:                                              ; preds = %702
  %712 = load ptr, ptr @stderr, align 8, !tbaa !26
  %713 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %712, ptr noundef nonnull @.str.59) #20
  %714 = load ptr, ptr @stderr, align 8, !tbaa !26
  %715 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %714, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %716 = load ptr, ptr @stderr, align 8, !tbaa !26
  %717 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %716, ptr noundef nonnull @.str.60) #20
  %718 = load ptr, ptr @stderr, align 8, !tbaa !26
  %719 = load double, ptr %46, align 8, !tbaa !25
  %720 = fneg double %719
  %721 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %718, ptr noundef nonnull @.str.61, double noundef %720) #20
  %722 = load ptr, ptr @stderr, align 8, !tbaa !26
  %723 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %722, ptr noundef nonnull @.str.62) #20
  %724 = load ptr, ptr @stderr, align 8, !tbaa !26
  %725 = getelementptr inbounds double, ptr %46, i64 1
  %726 = load double, ptr %725, align 8, !tbaa !25
  %727 = getelementptr inbounds double, ptr %46, i64 4
  %728 = load double, ptr %727, align 8, !tbaa !25
  %729 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %724, ptr noundef nonnull @.str.63, double noundef %726, double noundef %728) #20
  %730 = load ptr, ptr @stderr, align 8, !tbaa !26
  %731 = getelementptr inbounds double, ptr %46, i64 2
  %732 = load double, ptr %731, align 8, !tbaa !25
  %733 = getelementptr inbounds double, ptr %46, i64 3
  %734 = load double, ptr %733, align 8, !tbaa !25
  %735 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %730, ptr noundef nonnull @.str.64, double noundef %732, double noundef %734) #20
  %736 = load ptr, ptr @stderr, align 8, !tbaa !26
  %737 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %736, ptr noundef nonnull @.str.65) #20
  br label %964

738:                                              ; preds = %418
  %739 = load ptr, ptr @stderr, align 8, !tbaa !26
  %740 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %739, ptr noundef nonnull @.str.66) #20
  br label %741

741:                                              ; preds = %738, %741
  %742 = phi i64 [ 0, %738 ], [ %748, %741 ]
  %743 = load ptr, ptr @stderr, align 8, !tbaa !26
  %744 = sitofp i64 %742 to double
  %745 = getelementptr inbounds double, ptr %46, i64 %742
  %746 = load double, ptr %745, align 8, !tbaa !25
  %747 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %743, ptr noundef nonnull @.str.58, double noundef %744, double noundef %746) #20
  %748 = add nuw nsw i64 %742, 1
  %749 = icmp eq i64 %748, 8
  br i1 %749, label %750, label %741, !llvm.loop !46

750:                                              ; preds = %741
  %751 = load ptr, ptr @stderr, align 8, !tbaa !26
  %752 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %751, ptr noundef nonnull @.str.67) #20
  %753 = load ptr, ptr @stderr, align 8, !tbaa !26
  %754 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %753, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %755 = load ptr, ptr @stderr, align 8, !tbaa !26
  %756 = getelementptr inbounds double, ptr %46, i64 2
  %757 = load double, ptr %756, align 8, !tbaa !25
  %758 = fneg double %757
  %759 = getelementptr inbounds double, ptr %46, i64 3
  %760 = load double, ptr %759, align 8, !tbaa !25
  %761 = fneg double %760
  %762 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %755, ptr noundef nonnull @.str.41, double noundef %758, double noundef %761) #20
  %763 = load ptr, ptr @stderr, align 8, !tbaa !26
  %764 = getelementptr inbounds double, ptr %46, i64 4
  %765 = load double, ptr %764, align 8, !tbaa !25
  %766 = getelementptr inbounds double, ptr %46, i64 5
  %767 = load double, ptr %766, align 8, !tbaa !25
  %768 = fadd double %765, %767
  %769 = fmul double %768, -5.000000e-01
  %770 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %763, ptr noundef nonnull @.str.68, double noundef %769) #20
  %771 = load ptr, ptr @stderr, align 8, !tbaa !26
  %772 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %771, ptr noundef nonnull @.str.62) #20
  %773 = load ptr, ptr @stderr, align 8, !tbaa !26
  %774 = getelementptr inbounds double, ptr %46, i64 6
  %775 = load double, ptr %774, align 8, !tbaa !25
  %776 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %773, ptr noundef nonnull @.str.69, double noundef %775) #20
  %777 = load ptr, ptr @stderr, align 8, !tbaa !26
  %778 = getelementptr inbounds double, ptr %46, i64 1
  %779 = load double, ptr %778, align 8, !tbaa !25
  %780 = fneg double %779
  %781 = getelementptr inbounds double, ptr %46, i64 7
  %782 = load double, ptr %781, align 8, !tbaa !25
  %783 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %777, ptr noundef nonnull @.str.70, double noundef %780, double noundef %782) #20
  %784 = load ptr, ptr @stderr, align 8, !tbaa !26
  %785 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %784, ptr noundef nonnull @.str.65) #20
  br label %964

786:                                              ; preds = %418
  %787 = load ptr, ptr @stderr, align 8, !tbaa !26
  %788 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %787, ptr noundef nonnull @.str.71) #20
  br label %789

789:                                              ; preds = %786, %789
  %790 = phi i64 [ 0, %786 ], [ %796, %789 ]
  %791 = load ptr, ptr @stderr, align 8, !tbaa !26
  %792 = sitofp i64 %790 to double
  %793 = getelementptr inbounds double, ptr %46, i64 %790
  %794 = load double, ptr %793, align 8, !tbaa !25
  %795 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %791, ptr noundef nonnull @.str.58, double noundef %792, double noundef %794) #20
  %796 = add nuw nsw i64 %790, 1
  %797 = icmp eq i64 %796, 8
  br i1 %797, label %798, label %789, !llvm.loop !47

798:                                              ; preds = %789
  %799 = load ptr, ptr @stderr, align 8, !tbaa !26
  %800 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %799, ptr noundef nonnull @.str.72) #20
  %801 = load ptr, ptr @stderr, align 8, !tbaa !26
  %802 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %801, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %803 = load ptr, ptr @stderr, align 8, !tbaa !26
  %804 = getelementptr inbounds double, ptr %46, i64 6
  %805 = load double, ptr %804, align 8, !tbaa !25
  %806 = getelementptr inbounds double, ptr %46, i64 4
  %807 = load double, ptr %806, align 8, !tbaa !25
  %808 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %803, ptr noundef nonnull @.str.73, double noundef %805, double noundef %807) #20
  %809 = load ptr, ptr @stderr, align 8, !tbaa !26
  %810 = getelementptr inbounds double, ptr %46, i64 7
  %811 = load double, ptr %810, align 8, !tbaa !25
  %812 = getelementptr inbounds double, ptr %46, i64 1
  %813 = load double, ptr %812, align 8, !tbaa !25
  %814 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %809, ptr noundef nonnull @.str.74, double noundef %811, double noundef %813) #20
  %815 = load ptr, ptr @stderr, align 8, !tbaa !26
  %816 = getelementptr inbounds double, ptr %46, i64 2
  %817 = load double, ptr %816, align 8, !tbaa !25
  %818 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %815, ptr noundef nonnull @.str.75, double noundef %817) #20
  %819 = load ptr, ptr @stderr, align 8, !tbaa !26
  %820 = getelementptr inbounds double, ptr %46, i64 3
  %821 = load double, ptr %820, align 8, !tbaa !25
  %822 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %819, ptr noundef nonnull @.str.76, double noundef %821) #20
  %823 = load ptr, ptr @stderr, align 8, !tbaa !26
  %824 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %823, ptr noundef nonnull @.str.65) #20
  br label %964

825:                                              ; preds = %418
  %826 = load ptr, ptr @stderr, align 8, !tbaa !26
  %827 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %826, ptr noundef nonnull @.str.77) #20
  %828 = load ptr, ptr @stderr, align 8, !tbaa !26
  %829 = getelementptr inbounds double, ptr %46, i64 1
  %830 = load double, ptr %829, align 8, !tbaa !25
  %831 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %828, ptr noundef nonnull @.str.78, double noundef %830) #20
  %832 = load ptr, ptr @stderr, align 8, !tbaa !26
  %833 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %832, ptr noundef nonnull @.str.79) #20
  %834 = load ptr, ptr @stderr, align 8, !tbaa !26
  %835 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %834, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %836 = load ptr, ptr @stderr, align 8, !tbaa !26
  %837 = getelementptr inbounds double, ptr %46, i64 4
  %838 = load double, ptr %837, align 8, !tbaa !25
  %839 = fneg double %838
  %840 = getelementptr inbounds double, ptr %46, i64 5
  %841 = load double, ptr %840, align 8, !tbaa !25
  %842 = fneg double %841
  %843 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %836, ptr noundef nonnull @.str.80, double noundef %839, double noundef %842) #20
  %844 = load ptr, ptr @stderr, align 8, !tbaa !26
  %845 = load double, ptr %829, align 8, !tbaa !25
  %846 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %844, ptr noundef nonnull @.str.81, double noundef %845) #20
  %847 = load ptr, ptr @stderr, align 8, !tbaa !26
  %848 = load double, ptr %829, align 8, !tbaa !25
  %849 = getelementptr inbounds double, ptr %46, i64 2
  %850 = load double, ptr %849, align 8, !tbaa !25
  %851 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %847, ptr noundef nonnull @.str.82, double noundef %848, double noundef %850) #20
  %852 = load ptr, ptr @stderr, align 8, !tbaa !26
  %853 = getelementptr inbounds double, ptr %46, i64 3
  %854 = load double, ptr %853, align 8, !tbaa !25
  %855 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %852, ptr noundef nonnull @.str.83, double noundef %854) #20
  %856 = load ptr, ptr @stderr, align 8, !tbaa !26
  %857 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %856, ptr noundef nonnull @.str.24, ptr noundef nonnull %419) #20
  br label %964

858:                                              ; preds = %418
  %859 = load ptr, ptr @stderr, align 8, !tbaa !26
  %860 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %859, ptr noundef nonnull @.str.84) #20
  %861 = load ptr, ptr @stderr, align 8, !tbaa !26
  %862 = getelementptr inbounds double, ptr %46, i64 1
  %863 = load double, ptr %862, align 8, !tbaa !25
  %864 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %861, ptr noundef nonnull @.str.78, double noundef %863) #20
  %865 = load ptr, ptr @stderr, align 8, !tbaa !26
  %866 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %865, ptr noundef nonnull @.str.85) #20
  %867 = load ptr, ptr @stderr, align 8, !tbaa !26
  %868 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %867, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %869 = load ptr, ptr @stderr, align 8, !tbaa !26
  %870 = getelementptr inbounds double, ptr %46, i64 4
  %871 = load double, ptr %870, align 8, !tbaa !25
  %872 = fneg double %871
  %873 = getelementptr inbounds double, ptr %46, i64 5
  %874 = load double, ptr %873, align 8, !tbaa !25
  %875 = fneg double %874
  %876 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %869, ptr noundef nonnull @.str.80, double noundef %872, double noundef %875) #20
  %877 = load ptr, ptr @stderr, align 8, !tbaa !26
  %878 = load double, ptr %862, align 8, !tbaa !25
  %879 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %877, ptr noundef nonnull @.str.86, double noundef %878) #20
  %880 = load ptr, ptr @stderr, align 8, !tbaa !26
  %881 = load double, ptr %862, align 8, !tbaa !25
  %882 = getelementptr inbounds double, ptr %46, i64 2
  %883 = load double, ptr %882, align 8, !tbaa !25
  %884 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %880, ptr noundef nonnull @.str.87, double noundef %881, double noundef %883) #20
  %885 = load ptr, ptr @stderr, align 8, !tbaa !26
  %886 = getelementptr inbounds double, ptr %46, i64 3
  %887 = load double, ptr %886, align 8, !tbaa !25
  %888 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %885, ptr noundef nonnull @.str.88, double noundef %887) #20
  %889 = load ptr, ptr @stderr, align 8, !tbaa !26
  %890 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %889, ptr noundef nonnull @.str.24, ptr noundef nonnull %419) #20
  br label %964

891:                                              ; preds = %418, %418
  %892 = load i64, ptr %49, align 8, !tbaa !29
  %893 = uitofp i64 %892 to double
  %894 = fadd double %893, -1.000000e+00
  %895 = fmul double %894, 5.000000e-01
  %896 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %897 = load i64, ptr %896, align 8, !tbaa !33
  %898 = sitofp i64 %897 to double
  %899 = fadd double %895, %898
  %900 = load i64, ptr %51, align 8, !tbaa !31
  %901 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %902 = load i64, ptr %901, align 8, !tbaa !34
  %903 = load ptr, ptr @stderr, align 8, !tbaa !26
  %904 = icmp eq i32 %56, 14
  %905 = select i1 %904, ptr @.str.1, ptr @.str.90
  %906 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %903, ptr noundef nonnull @.str.89, ptr noundef nonnull %905) #20
  %907 = load ptr, ptr @stderr, align 8, !tbaa !26
  %908 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %907, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #20
  %909 = getelementptr inbounds double, ptr %46, i64 8
  %910 = load double, ptr %909, align 8, !tbaa !25
  %911 = fsub double %910, %899
  %912 = fadd double %911, -5.000000e-01
  %913 = call double @llvm.fabs.f64(double %912)
  %914 = fcmp olt double %913, 1.000000e-01
  br i1 %914, label %918, label %915

915:                                              ; preds = %891
  %916 = getelementptr inbounds double, ptr %46, i64 9
  %917 = load double, ptr %916, align 8, !tbaa !25
  br label %933

918:                                              ; preds = %891
  %919 = uitofp i64 %900 to double
  %920 = fadd double %919, -1.000000e+00
  %921 = fmul double %920, 5.000000e-01
  %922 = sitofp i64 %902 to double
  %923 = fadd double %921, %922
  %924 = getelementptr inbounds double, ptr %46, i64 9
  %925 = load double, ptr %924, align 8, !tbaa !25
  %926 = fsub double %925, %923
  %927 = fadd double %926, -5.000000e-01
  %928 = call double @llvm.fabs.f64(double %927)
  %929 = fcmp olt double %928, 1.000000e-01
  br i1 %929, label %930, label %933

930:                                              ; preds = %918
  %931 = load ptr, ptr @stderr, align 8, !tbaa !26
  %932 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %931, ptr noundef nonnull @.str.91) #20
  br label %939

933:                                              ; preds = %915, %918
  %934 = phi double [ %917, %915 ], [ %925, %918 ]
  %935 = load ptr, ptr @stderr, align 8, !tbaa !26
  %936 = fadd double %910, -5.000000e-01
  %937 = fadd double %934, -5.000000e-01
  %938 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %935, ptr noundef nonnull @.str.92, double noundef %936, double noundef %937) #20
  br label %939

939:                                              ; preds = %933, %930
  %940 = load ptr, ptr @stderr, align 8, !tbaa !26
  %941 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %940, ptr noundef nonnull @.str.93) #20
  %942 = load ptr, ptr @stderr, align 8, !tbaa !26
  %943 = select i1 %904, ptr @.str.95, ptr @.str.96
  %944 = load double, ptr %46, align 8, !tbaa !25
  %945 = getelementptr inbounds double, ptr %46, i64 1
  %946 = load double, ptr %945, align 8, !tbaa !25
  %947 = getelementptr inbounds double, ptr %46, i64 2
  %948 = load double, ptr %947, align 8, !tbaa !25
  %949 = getelementptr inbounds double, ptr %46, i64 3
  %950 = load double, ptr %949, align 8, !tbaa !25
  %951 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %942, ptr noundef nonnull @.str.94, ptr noundef nonnull %943, double noundef %944, double noundef %946, double noundef %948, double noundef %950) #20
  %952 = load ptr, ptr @stderr, align 8, !tbaa !26
  %953 = getelementptr inbounds double, ptr %46, i64 4
  %954 = load double, ptr %953, align 8, !tbaa !25
  %955 = getelementptr inbounds double, ptr %46, i64 5
  %956 = load double, ptr %955, align 8, !tbaa !25
  %957 = getelementptr inbounds double, ptr %46, i64 6
  %958 = load double, ptr %957, align 8, !tbaa !25
  %959 = getelementptr inbounds double, ptr %46, i64 7
  %960 = load double, ptr %959, align 8, !tbaa !25
  %961 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %952, ptr noundef nonnull @.str.97, ptr noundef nonnull %943, double noundef %954, double noundef %956, double noundef %958, double noundef %960) #20
  %962 = load ptr, ptr @stderr, align 8, !tbaa !26
  %963 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %962, ptr noundef nonnull @.str.98) #20
  br label %964

964:                                              ; preds = %498, %439, %939, %418, %605, %607, %858, %825, %798, %750, %711, %696, %609
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %19) #10
  br label %966

965:                                              ; preds = %471, %423
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %19) #10
  br label %1073

966:                                              ; preds = %964, %400
  %967 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.99) #20
  store double 1.000000e+00, ptr %14, align 8, !tbaa !25
  %968 = icmp eq ptr %967, null
  br i1 %968, label %969, label %972

969:                                              ; preds = %966
  %970 = load i64, ptr %16, align 8, !tbaa !30
  %971 = load i64, ptr %53, align 8, !tbaa !32
  br label %997

972:                                              ; preds = %966
  %973 = call fastcc double @StringToDouble(ptr noundef nonnull %967) #21
  %974 = call double @llvm.fabs.f64(double %973)
  %975 = load i64, ptr %16, align 8, !tbaa !30
  %976 = uitofp i64 %975 to double
  %977 = call double @llvm.fmuladd.f64(double %974, double %976, double 5.000000e-01)
  %978 = fptoui double %977 to i64
  store i64 %978, ptr %16, align 8, !tbaa !30
  %979 = load i64, ptr %53, align 8, !tbaa !32
  %980 = uitofp i64 %979 to double
  %981 = call double @llvm.fmuladd.f64(double %974, double %980, double 5.000000e-01)
  %982 = fptoui double %981 to i64
  store i64 %982, ptr %53, align 8, !tbaa !32
  %983 = load i64, ptr %54, align 8, !tbaa !37
  %984 = sitofp i64 %983 to double
  %985 = call double @llvm.fmuladd.f64(double %974, double %984, double 5.000000e-01)
  %986 = fptosi double %985 to i64
  store i64 %986, ptr %54, align 8, !tbaa !37
  %987 = load i64, ptr %55, align 8, !tbaa !38
  %988 = sitofp i64 %987 to double
  %989 = call double @llvm.fmuladd.f64(double %974, double %988, double 5.000000e-01)
  %990 = fptosi double %989 to i64
  store i64 %990, ptr %55, align 8, !tbaa !38
  %991 = fcmp olt double %974, 1.000000e-01
  br i1 %991, label %992, label %995

992:                                              ; preds = %972
  %993 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #20
  %994 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2273, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.100) #20
  br label %1073

995:                                              ; preds = %972
  %996 = fdiv double 1.000000e+00, %974
  store double %996, ptr %14, align 8, !tbaa !25
  br label %997

997:                                              ; preds = %969, %995
  %998 = phi i64 [ %971, %969 ], [ %982, %995 ]
  %999 = phi i64 [ %970, %969 ], [ %978, %995 ]
  %1000 = call ptr @CloneImage(ptr noundef %0, i64 noundef %999, i64 noundef %998, i32 noundef 1, ptr noundef %5) #20
  store ptr %1000, ptr %15, align 8, !tbaa !26
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1073, label %1002

1002:                                             ; preds = %997
  %1003 = call i32 @SetImageStorageClass(ptr noundef nonnull %1000, i32 noundef 1) #20
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %1006) #20
  %1007 = call ptr @DestroyImage(ptr noundef nonnull %1000) #20
  br label %1073

1008:                                             ; preds = %1002
  %1009 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 12
  %1010 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %1009) #21, !range !48
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1019

1012:                                             ; preds = %1008
  %1013 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 1
  %1014 = load i32, ptr %1013, align 4, !tbaa !49
  %1015 = call fastcc i32 @IsGrayColorspace(i32 noundef %1014) #21, !range !48
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1012
  %1018 = call i32 @SetImageColorspace(ptr noundef nonnull %1000, i32 noundef 13) #20
  br label %1019

1019:                                             ; preds = %1017, %1012, %1008
  %1020 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 12, i32 3
  %1021 = load i16, ptr %1020, align 2, !tbaa !50
  %1022 = icmp eq i16 %1021, 0
  br i1 %1022, label %1025, label %1023

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 6
  store i32 1, ptr %1024, align 8, !tbaa !51
  br label %1025

1025:                                             ; preds = %1023, %1019
  %1026 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 26, i32 2
  %1027 = load <2 x i64>, ptr %54, align 8, !tbaa !28
  store <2 x i64> %1027, ptr %1026, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #10
  store i32 1, ptr %21, align 4, !tbaa !27
  store i64 0, ptr %22, align 8, !tbaa !52
  call void @GetMagickPixelPacket(ptr noundef nonnull %1000, ptr noundef nonnull %23) #20
  %1028 = call fastcc ptr @AcquireResampleFilterThreadSet(ptr noundef %0, ptr noundef %5) #21
  store ptr %1028, ptr %24, align 8, !tbaa !26
  %1029 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %1000, ptr noundef %5) #20
  store ptr %1029, ptr %20, align 8, !tbaa !26
  %1030 = getelementptr inbounds %struct._Image, ptr %1000, i64 0, i32 8
  %1031 = load i64, ptr %1030, align 8, !tbaa !31
  %1032 = call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %1033 = shl i64 %1032, 5
  %1034 = icmp ugt i64 %1031, %1033
  br i1 %1034, label %1035, label %1043

1035:                                             ; preds = %1025
  %1036 = call i32 @GetImagePixelCacheType(ptr noundef %0) #20
  %1037 = icmp eq i32 %1036, 3
  br i1 %1037, label %1043, label %1038

1038:                                             ; preds = %1035
  %1039 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %1000) #20
  %1040 = icmp eq i32 %1039, 3
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1038
  %1042 = call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  br label %1047

1043:                                             ; preds = %1038, %1035, %1025
  %1044 = call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %1045 = icmp ult i64 %1044, 2
  %1046 = select i1 %1045, i64 1, i64 2
  br label %1047

1047:                                             ; preds = %1043, %1041
  %1048 = phi i64 [ %1042, %1041 ], [ %1046, %1043 ]
  %1049 = trunc i64 %1048 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %25, i32 %1049)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 15, ptr nonnull @DistortImage.omp_outlined, ptr nonnull %15, ptr nonnull %20, ptr nonnull %12, ptr nonnull %21, ptr nonnull %23, ptr nonnull %8, ptr nonnull %24, ptr nonnull %14, ptr nonnull %13, ptr nonnull %16, ptr nonnull %7, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, ptr nonnull %22)
  %1050 = load ptr, ptr %20, align 8, !tbaa !26
  %1051 = call ptr @DestroyCacheView(ptr noundef %1050) #20
  store ptr %1051, ptr %20, align 8, !tbaa !26
  %1052 = load ptr, ptr %24, align 8, !tbaa !26
  %1053 = call fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef %1052) #21
  store ptr %1053, ptr %24, align 8, !tbaa !26
  %1054 = load i32, ptr %21, align 4, !tbaa !27
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1059

1056:                                             ; preds = %1047
  %1057 = load ptr, ptr %15, align 8, !tbaa !26
  %1058 = call ptr @DestroyImage(ptr noundef %1057) #20
  store ptr %1058, ptr %15, align 8, !tbaa !26
  br label %1059

1059:                                             ; preds = %1056, %1047
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #10
  %1060 = load i32, ptr %8, align 4, !tbaa !27
  %1061 = icmp ne i32 %1060, 9
  %1062 = load i32, ptr %11, align 4
  %1063 = or i32 %1062, %401
  %1064 = icmp ne i32 %1063, 0
  %1065 = select i1 %1061, i1 true, i1 %1064
  br i1 %1065, label %1069, label %1066

1066:                                             ; preds = %1059
  %1067 = load ptr, ptr %15, align 8, !tbaa !26
  %1068 = getelementptr inbounds %struct._Image, ptr %1067, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1068, i8 0, i64 16, i1 false)
  br label %1069

1069:                                             ; preds = %1066, %1059
  %1070 = load ptr, ptr %13, align 8, !tbaa !26
  %1071 = call ptr @RelinquishMagickMemory(ptr noundef %1070) #20
  %1072 = load ptr, ptr %15, align 8, !tbaa !26
  br label %1073

1073:                                             ; preds = %997, %992, %965, %45, %1069, %1005, %38, %36
  %1074 = phi ptr [ null, %36 ], [ %44, %38 ], [ null, %1005 ], [ %1072, %1069 ], [ null, %965 ], [ null, %45 ], [ null, %992 ], [ null, %997 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  ret ptr %1074
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DistortResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [12 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1501, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #20
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 96) #20
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = uitofp i64 %20 to double
  %22 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 4
  store double %21, ptr %22, align 16, !tbaa !25
  %23 = uitofp i64 %1 to double
  %24 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 6
  store double %23, ptr %24, align 16, !tbaa !25
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !31
  %27 = uitofp i64 %26 to double
  %28 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 9
  store double %27, ptr %28, align 8, !tbaa !25
  %29 = uitofp i64 %2 to double
  %30 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 11
  store double %29, ptr %30, align 8, !tbaa !25
  %31 = call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %0) #20
  %32 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %17
  %35 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %32, i32 noundef 8) #20
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !51
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 8) #20
  %41 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #21
  %42 = call ptr @DestroyImage(ptr noundef nonnull %32) #20
  %43 = icmp eq ptr %41, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %39
  %45 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %41, i32 noundef 4) #20
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %46) #20
  br label %68

47:                                               ; preds = %34
  %48 = call i32 @SeparateImageChannel(ptr noundef nonnull %32, i32 noundef 64) #20
  %49 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 6) #20
  %50 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #21
  %51 = call ptr @DestroyImage(ptr noundef nonnull %32) #20
  %52 = icmp eq ptr %50, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  %57 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #20
  %58 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #20
  %59 = call ptr @DistortImage(ptr noundef nonnull %54, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #21
  %60 = call ptr @DestroyImage(ptr noundef nonnull %54) #20
  %61 = icmp eq ptr %59, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %59, i32 noundef 4) #20
  %64 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %50, i32 noundef 4) #20
  %65 = call i32 @CompositeImage(ptr noundef nonnull %59, i32 noundef 17, ptr noundef nonnull %50, i64 noundef 0, i64 noundef 0) #20
  %66 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %66) #20
  %67 = call ptr @DestroyImage(ptr noundef nonnull %50) #20
  br label %68

68:                                               ; preds = %62, %44
  %69 = phi ptr [ %41, %44 ], [ %59, %62 ]
  %70 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %69, i32 noundef %31) #20
  store i64 %1, ptr %5, align 8, !tbaa !30
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %2, ptr %71, align 8, !tbaa !32
  %72 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  %73 = call ptr @CropImage(ptr noundef nonnull %69, ptr noundef nonnull %5, ptr noundef %3) #20
  br label %74

74:                                               ; preds = %56, %68
  %75 = phi ptr [ %69, %68 ], [ %50, %56 ]
  %76 = phi ptr [ %73, %68 ], [ null, %56 ]
  %77 = call ptr @DestroyImage(ptr noundef nonnull %75) #20
  br label %78

78:                                               ; preds = %74, %53, %47, %39, %17, %13
  %79 = phi ptr [ null, %13 ], [ null, %17 ], [ null, %39 ], [ null, %47 ], [ null, %53 ], [ %76, %74 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret ptr %79
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SeparateImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @GenerateCoefficients(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x double], align 16
  %8 = alloca [2 x double], align 16
  %9 = alloca [8 x double], align 16
  %10 = alloca [1 x ptr], align 8
  %11 = alloca [8 x double], align 16
  %12 = alloca [4 x double], align 16
  %13 = icmp eq i64 %4, 0
  %14 = select i1 %13, i64 0, i64 2
  %15 = select i1 %13, i64 3, i64 1
  %16 = select i1 %13, i64 2, i64 0
  %17 = select i1 %13, i64 2, i64 %4
  %18 = add i64 %17, 2
  %19 = shl i64 %18, 2
  %20 = icmp ugt i64 %19, %2
  %21 = load i32, ptr %1, align 4, !tbaa !27
  br i1 %20, label %22, label %24

22:                                               ; preds = %6
  switch i32 %21, label %65 [
    i32 6, label %23
    i32 7, label %23
    i32 4, label %23
    i32 1, label %25
    i32 8, label %27
    i32 16, label %52
    i32 9, label %53
    i32 3, label %54
    i32 2, label %54
    i32 13, label %54
    i32 12, label %54
    i32 10, label %55
    i32 11, label %55
    i32 5, label %56
    i32 14, label %57
    i32 15, label %57
  ]

23:                                               ; preds = %22, %22, %22
  store i32 1, ptr %1, align 4, !tbaa !27
  br label %25

24:                                               ; preds = %6
  switch i32 %21, label %65 [
    i32 1, label %25
    i32 8, label %27
    i32 7, label %50
    i32 6, label %58
    i32 16, label %52
    i32 9, label %53
    i32 3, label %54
    i32 2, label %54
    i32 13, label %54
    i32 12, label %54
    i32 10, label %55
    i32 11, label %55
    i32 4, label %56
    i32 5, label %56
    i32 14, label %57
    i32 15, label %57
  ]

25:                                               ; preds = %22, %23, %24
  %26 = mul i64 %17, 3
  br label %58

27:                                               ; preds = %22, %24
  %28 = icmp ult i64 %2, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = add nsw i64 %2, -1
  %31 = urem i64 %30, %18
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #20
  br label %994

35:                                               ; preds = %29, %27
  %36 = load double, ptr %3, align 8, !tbaa !25
  %37 = tail call fastcc i64 @poly_number_terms(double noundef %36) #21
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 446, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.107) #20
  br label %994

41:                                               ; preds = %35
  %42 = mul i64 %37, %17
  %43 = add i64 %42, 2
  %44 = mul i64 %37, %18
  %45 = add i64 %44, 1
  %46 = icmp ugt i64 %45, %2
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = uitofp i64 %37 to double
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 452, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105, double noundef %48) #20
  br label %994

50:                                               ; preds = %24
  %51 = shl i64 %17, 2
  br label %58

52:                                               ; preds = %22, %24
  br label %58

53:                                               ; preds = %22, %24
  br label %58

54:                                               ; preds = %22, %22, %22, %22, %24, %24, %24, %24
  br label %58

55:                                               ; preds = %22, %22, %24, %24
  br label %58

56:                                               ; preds = %22, %24, %24
  br label %58

57:                                               ; preds = %22, %22, %24, %24
  br label %58

58:                                               ; preds = %24, %41, %57, %56, %55, %54, %53, %52, %50, %25
  %59 = phi i64 [ %14, %57 ], [ %14, %56 ], [ %14, %55 ], [ %14, %54 ], [ %14, %53 ], [ %14, %52 ], [ %14, %50 ], [ %14, %41 ], [ %14, %25 ], [ 2, %24 ]
  %60 = phi i64 [ %15, %57 ], [ %15, %56 ], [ %15, %55 ], [ %15, %54 ], [ %15, %53 ], [ %15, %52 ], [ %15, %50 ], [ %15, %41 ], [ %15, %25 ], [ 1, %24 ]
  %61 = phi i64 [ %16, %57 ], [ %16, %56 ], [ %16, %55 ], [ %16, %54 ], [ %16, %53 ], [ %16, %52 ], [ %16, %50 ], [ %16, %41 ], [ %16, %25 ], [ 0, %24 ]
  %62 = phi i64 [ 10, %57 ], [ 9, %56 ], [ 8, %55 ], [ 6, %54 ], [ 5, %53 ], [ 1, %52 ], [ %51, %50 ], [ %43, %41 ], [ %26, %25 ], [ 10, %24 ]
  %63 = tail call ptr @AcquireQuantumMemory(i64 noundef %62, i64 noundef 8) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %68

65:                                               ; preds = %22, %24
  tail call void @perror(ptr noundef nonnull @.str.109) #23
  %66 = tail call ptr @AcquireQuantumMemory(i64 noundef 0, i64 noundef 8) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %74

68:                                               ; preds = %58
  %69 = icmp eq i64 %62, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = shl nuw i64 %62, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %63, i8 0, i64 %71, i1 false), !tbaa !25
  br label %74

72:                                               ; preds = %65, %58
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.110) #20
  br label %994

74:                                               ; preds = %65, %70, %68
  %75 = phi i64 [ %59, %70 ], [ %59, %68 ], [ %14, %65 ]
  %76 = phi i64 [ %60, %70 ], [ %60, %68 ], [ %15, %65 ]
  %77 = phi i64 [ %61, %70 ], [ %61, %68 ], [ %16, %65 ]
  %78 = phi ptr [ %63, %70 ], [ %63, %68 ], [ %66, %65 ]
  %79 = load i32, ptr %1, align 4, !tbaa !27
  switch i32 %79, label %993 [
    i32 1, label %80
    i32 2, label %197
    i32 3, label %208
    i32 4, label %310
    i32 5, label %386
    i32 6, label %406
    i32 7, label %406
    i32 8, label %506
    i32 9, label %570
    i32 10, label %644
    i32 11, label %644
    i32 12, label %841
    i32 13, label %841
    i32 14, label %875
    i32 15, label %875
    i32 16, label %973
  ]

80:                                               ; preds = %74
  %81 = urem i64 %2, %18
  %82 = icmp ne i64 %81, 0
  %83 = icmp ugt i64 %18, %2
  %84 = or i1 %83, %82
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 530, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.111, double noundef 1.000000e+00) #20
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

88:                                               ; preds = %80
  %89 = icmp eq i64 %18, %2
  br i1 %89, label %90, label %116

90:                                               ; preds = %88
  %91 = icmp eq i64 %75, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = getelementptr double, ptr %3, i64 %75
  %94 = getelementptr double, ptr %78, i64 2
  br label %108

95:                                               ; preds = %90
  store double 1.000000e+00, ptr %78, align 8, !tbaa !25
  %96 = load double, ptr %3, align 8, !tbaa !25
  %97 = getelementptr inbounds double, ptr %3, i64 2
  %98 = load double, ptr %97, align 8, !tbaa !25
  %99 = fsub double %96, %98
  %100 = getelementptr inbounds double, ptr %78, i64 2
  store double %99, ptr %100, align 8, !tbaa !25
  %101 = getelementptr inbounds double, ptr %78, i64 4
  store double 1.000000e+00, ptr %101, align 8, !tbaa !25
  %102 = getelementptr inbounds double, ptr %3, i64 1
  %103 = load double, ptr %102, align 8, !tbaa !25
  %104 = getelementptr inbounds double, ptr %3, i64 3
  %105 = load double, ptr %104, align 8, !tbaa !25
  %106 = fsub double %103, %105
  %107 = getelementptr inbounds double, ptr %78, i64 5
  store double %106, ptr %107, align 8, !tbaa !25
  br label %994

108:                                              ; preds = %92, %108
  %109 = phi i64 [ 0, %92 ], [ %114, %108 ]
  %110 = getelementptr double, ptr %93, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !25
  %112 = mul i64 %109, 3
  %113 = getelementptr double, ptr %94, i64 %112
  store double %111, ptr %113, align 8, !tbaa !25
  %114 = add nuw i64 %109, 1
  %115 = icmp eq i64 %114, %17
  br i1 %115, label %994, label %108, !llvm.loop !53

116:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %117 = tail call ptr @AcquireMagickMatrix(i64 noundef 3, i64 noundef 3) #20
  %118 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #22
  %119 = icmp eq ptr %117, null
  %120 = icmp eq ptr %118, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = tail call ptr @RelinquishMagickMatrix(ptr noundef %117, i64 noundef 3) #20
  %124 = tail call ptr @RelinquishMagickMemory(ptr noundef %118) #20
  %125 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %126 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #20
  br label %195

127:                                              ; preds = %132
  %128 = icmp eq i64 %2, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %131 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %139

132:                                              ; preds = %116, %132
  %133 = phi i64 [ %137, %132 ], [ 0, %116 ]
  %134 = mul i64 %133, 3
  %135 = getelementptr inbounds double, ptr %78, i64 %134
  %136 = getelementptr inbounds ptr, ptr %118, i64 %133
  store ptr %135, ptr %136, align 8, !tbaa !26
  %137 = add nuw i64 %133, 1
  %138 = icmp eq i64 %137, %17
  br i1 %138, label %127, label %132, !llvm.loop !54

139:                                              ; preds = %129, %139
  %140 = phi i64 [ 0, %129 ], [ %147, %139 ]
  %141 = getelementptr double, ptr %3, i64 %140
  %142 = getelementptr double, ptr %141, i64 %77
  %143 = load double, ptr %142, align 8, !tbaa !25
  store double %143, ptr %7, align 16, !tbaa !25
  %144 = getelementptr double, ptr %141, i64 %76
  %145 = load double, ptr %144, align 8, !tbaa !25
  store double %145, ptr %130, align 8, !tbaa !25
  store double 1.000000e+00, ptr %131, align 16, !tbaa !25
  %146 = getelementptr double, ptr %141, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef %146, i64 noundef 3, i64 noundef %17) #20
  %147 = add i64 %140, %18
  %148 = icmp ult i64 %147, %2
  br i1 %148, label %139, label %149, !llvm.loop !55

149:                                              ; preds = %139, %127
  %150 = shl i64 %18, 1
  %151 = icmp eq i64 %150, %2
  br i1 %151, label %152, label %184

152:                                              ; preds = %149
  %153 = getelementptr inbounds double, ptr %3, i64 %77
  %154 = load double, ptr %153, align 8, !tbaa !25
  %155 = getelementptr double, ptr %3, i64 %18
  %156 = getelementptr double, ptr %155, i64 %76
  %157 = load double, ptr %156, align 8, !tbaa !25
  %158 = getelementptr inbounds double, ptr %3, i64 %76
  %159 = load double, ptr %158, align 8, !tbaa !25
  %160 = fsub double %157, %159
  %161 = fsub double %154, %160
  store double %161, ptr %7, align 16, !tbaa !25
  %162 = getelementptr double, ptr %155, i64 %77
  %163 = load double, ptr %162, align 8, !tbaa !25
  %164 = fsub double %163, %154
  %165 = fadd double %159, %164
  %166 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  store double %165, ptr %166, align 8, !tbaa !25
  %167 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  store double 1.000000e+00, ptr %167, align 16, !tbaa !25
  %168 = icmp eq i64 %75, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %170 = load double, ptr %3, align 8, !tbaa !25
  %171 = getelementptr inbounds double, ptr %3, i64 5
  %172 = load double, ptr %171, align 8, !tbaa !25
  %173 = fsub double %170, %172
  %174 = getelementptr inbounds double, ptr %3, i64 1
  %175 = load double, ptr %174, align 8, !tbaa !25
  %176 = fadd double %173, %175
  store double %176, ptr %8, align 16, !tbaa !25
  %177 = getelementptr inbounds double, ptr %3, i64 4
  %178 = load double, ptr %177, align 8, !tbaa !25
  %179 = fadd double %175, %178
  %180 = fsub double %179, %170
  %181 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 1
  store double %180, ptr %181, align 8, !tbaa !25
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 3, i64 noundef 2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %184

182:                                              ; preds = %152
  %183 = getelementptr inbounds double, ptr %3, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef nonnull %183, i64 noundef 3, i64 noundef %17) #20
  br label %184

184:                                              ; preds = %169, %182, %149
  %185 = call i32 @GaussJordanElimination(ptr noundef %117, ptr noundef %118, i64 noundef 3, i64 noundef %17) #20
  %186 = call ptr @RelinquishMagickMatrix(ptr noundef %117, i64 noundef 3) #20
  %187 = call ptr @RelinquishMagickMemory(ptr noundef %118) #20
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %191 = load i32, ptr %1, align 4, !tbaa !27
  %192 = zext i32 %191 to i64
  %193 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %192) #20
  %194 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 618, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112, ptr noundef %193) #20
  br label %195

195:                                              ; preds = %122, %189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %994

196:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %994

197:                                              ; preds = %74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %198 = icmp eq i64 %2, 6
  br i1 %198, label %199, label %200

199:                                              ; preds = %197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa !25
  call fastcc void @AffineArgsToCoefficients(ptr noundef nonnull %9) #21
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %9, ptr noundef nonnull %78) #21
  store i32 1, ptr %1, align 4, !tbaa !27
  br label %206

200:                                              ; preds = %197
  %201 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %202 = load i32, ptr %1, align 4, !tbaa !27
  %203 = zext i32 %202 to i64
  %204 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %203) #20
  %205 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.113, ptr noundef %204) #20
  br label %206

206:                                              ; preds = %199, %200
  %207 = phi ptr [ null, %200 ], [ %78, %199 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %994

208:                                              ; preds = %74
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %211 = load <2 x i64>, ptr %209, align 8, !tbaa !28
  %212 = uitofp <2 x i64> %211 to <2 x double>
  %213 = fmul <2 x double> %212, <double 5.000000e-01, double 5.000000e-01>
  %214 = load <2 x i64>, ptr %210, align 8, !tbaa !28
  %215 = sitofp <2 x i64> %214 to <2 x double>
  %216 = fadd <2 x double> %213, %215
  switch i64 %2, label %226 [
    i64 0, label %217
    i64 1, label %260
    i64 2, label %223
  ]

217:                                              ; preds = %208
  %218 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %219 = load i32, ptr %1, align 4, !tbaa !27
  %220 = zext i32 %219 to i64
  %221 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %220) #20
  %222 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 693, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.114, ptr noundef %221) #20
  br label %994

223:                                              ; preds = %208
  %224 = load double, ptr %3, align 8, !tbaa !25
  %225 = getelementptr inbounds double, ptr %3, i64 1
  br label %260

226:                                              ; preds = %208
  %227 = load <2 x double>, ptr %3, align 8, !tbaa !25
  switch i64 %2, label %254 [
    i64 3, label %228
    i64 4, label %230
    i64 5, label %234
    i64 6, label %240
    i64 7, label %246
  ]

228:                                              ; preds = %226
  %229 = getelementptr inbounds double, ptr %3, i64 2
  br label %260

230:                                              ; preds = %226
  %231 = getelementptr inbounds double, ptr %3, i64 2
  %232 = load double, ptr %231, align 8, !tbaa !25
  %233 = getelementptr inbounds double, ptr %3, i64 3
  br label %260

234:                                              ; preds = %226
  %235 = getelementptr inbounds double, ptr %3, i64 2
  %236 = load double, ptr %235, align 8, !tbaa !25
  %237 = getelementptr inbounds double, ptr %3, i64 3
  %238 = load double, ptr %237, align 8, !tbaa !25
  %239 = getelementptr inbounds double, ptr %3, i64 4
  br label %260

240:                                              ; preds = %226
  %241 = getelementptr inbounds double, ptr %3, i64 2
  %242 = load double, ptr %241, align 8, !tbaa !25
  %243 = getelementptr inbounds double, ptr %3, i64 3
  %244 = getelementptr inbounds double, ptr %3, i64 4
  %245 = load <2 x double>, ptr %244, align 8, !tbaa !25
  br label %260

246:                                              ; preds = %226
  %247 = getelementptr inbounds double, ptr %3, i64 2
  %248 = load double, ptr %247, align 8, !tbaa !25
  %249 = getelementptr inbounds double, ptr %3, i64 3
  %250 = load double, ptr %249, align 8, !tbaa !25
  %251 = getelementptr inbounds double, ptr %3, i64 4
  %252 = getelementptr inbounds double, ptr %3, i64 5
  %253 = load <2 x double>, ptr %252, align 8, !tbaa !25
  br label %260

254:                                              ; preds = %226
  %255 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %256 = load i32, ptr %1, align 4, !tbaa !27
  %257 = zext i32 %256 to i64
  %258 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %257) #20
  %259 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 735, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.115, ptr noundef %258) #20
  br label %994

260:                                              ; preds = %208, %228, %230, %234, %240, %246, %223
  %261 = phi double [ %248, %246 ], [ %242, %240 ], [ %236, %234 ], [ %232, %230 ], [ 1.000000e+00, %228 ], [ %224, %223 ], [ 1.000000e+00, %208 ]
  %262 = phi double [ %250, %246 ], [ %242, %240 ], [ %238, %234 ], [ %232, %230 ], [ 1.000000e+00, %228 ], [ %224, %223 ], [ 1.000000e+00, %208 ]
  %263 = phi ptr [ %251, %246 ], [ %243, %240 ], [ %239, %234 ], [ %233, %230 ], [ %229, %228 ], [ %225, %223 ], [ %3, %208 ]
  %264 = phi <2 x double> [ %227, %246 ], [ %227, %240 ], [ %227, %234 ], [ %227, %230 ], [ %227, %228 ], [ %216, %223 ], [ %216, %208 ]
  %265 = phi <2 x double> [ %253, %246 ], [ %245, %240 ], [ %227, %234 ], [ %227, %230 ], [ %227, %228 ], [ %216, %223 ], [ %216, %208 ]
  %266 = tail call double @llvm.fabs.f64(double %261)
  %267 = fcmp olt double %266, 1.000000e-15
  %268 = tail call double @llvm.fabs.f64(double %262)
  %269 = fcmp olt double %268, 1.000000e-15
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %260
  %272 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %273 = load i32, ptr %1, align 4, !tbaa !27
  %274 = zext i32 %273 to i64
  %275 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %274) #20
  %276 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 745, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.116, ptr noundef %275) #20
  br label %994

277:                                              ; preds = %260
  %278 = load double, ptr %263, align 8, !tbaa !25
  %279 = tail call fastcc double @DegreesToRadians(double noundef %278) #21
  %280 = tail call double @cos(double noundef %279) #20
  %281 = tail call double @sin(double noundef %279) #20
  store i32 1, ptr %1, align 4, !tbaa !27
  %282 = insertelement <2 x double> poison, double %280, i64 0
  %283 = insertelement <2 x double> %282, double %281, i64 1
  %284 = insertelement <2 x double> poison, double %261, i64 0
  %285 = shufflevector <2 x double> %284, <2 x double> poison, <2 x i32> zeroinitializer
  %286 = fdiv <2 x double> %283, %285
  store <2 x double> %286, ptr %78, align 8, !tbaa !25
  %287 = extractelement <2 x double> %265, i64 0
  %288 = fneg double %287
  %289 = extractelement <2 x double> %286, i64 0
  %290 = extractelement <2 x double> %264, i64 0
  %291 = tail call double @llvm.fmuladd.f64(double %288, double %289, double %290)
  %292 = extractelement <2 x double> %265, i64 1
  %293 = fneg double %292
  %294 = extractelement <2 x double> %286, i64 1
  %295 = tail call double @llvm.fmuladd.f64(double %293, double %294, double %291)
  %296 = getelementptr inbounds double, ptr %78, i64 2
  store double %295, ptr %296, align 8, !tbaa !25
  %297 = fneg double %281
  %298 = getelementptr inbounds double, ptr %78, i64 3
  %299 = insertelement <2 x double> poison, double %297, i64 0
  %300 = insertelement <2 x double> %299, double %280, i64 1
  %301 = insertelement <2 x double> poison, double %262, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = fdiv <2 x double> %300, %302
  store <2 x double> %303, ptr %298, align 8, !tbaa !25
  %304 = extractelement <2 x double> %303, i64 0
  %305 = extractelement <2 x double> %264, i64 1
  %306 = tail call double @llvm.fmuladd.f64(double %288, double %304, double %305)
  %307 = extractelement <2 x double> %303, i64 1
  %308 = tail call double @llvm.fmuladd.f64(double %293, double %307, double %306)
  %309 = getelementptr inbounds double, ptr %78, i64 5
  store double %308, ptr %309, align 8, !tbaa !25
  br label %994

310:                                              ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  %311 = urem i64 %2, %18
  %312 = icmp ne i64 %311, 0
  %313 = or i1 %20, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 4) #20
  %316 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108, ptr noundef %315, double noundef 4.000000e+00) #20
  %317 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %384

318:                                              ; preds = %310
  store ptr %78, ptr %10, align 8, !tbaa !26
  %319 = tail call ptr @AcquireMagickMatrix(i64 noundef 8, i64 noundef 8) #20
  %320 = icmp eq ptr %319, null
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = icmp eq i64 %2, 0
  br i1 %322, label %359, label %323

323:                                              ; preds = %321
  %324 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 1
  %325 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 2
  %326 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 3
  %327 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 4
  %328 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 5
  %329 = getelementptr inbounds [8 x double], ptr %11, i64 0, i64 6
  br label %332

330:                                              ; preds = %318
  %331 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 818, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #20
  br label %384

332:                                              ; preds = %323, %332
  %333 = phi i64 [ 0, %323 ], [ %357, %332 ]
  %334 = getelementptr double, ptr %3, i64 %333
  %335 = getelementptr double, ptr %334, i64 %77
  %336 = load double, ptr %335, align 8, !tbaa !25
  store double %336, ptr %11, align 16, !tbaa !25
  %337 = getelementptr double, ptr %334, i64 %76
  %338 = load double, ptr %337, align 8, !tbaa !25
  store double %338, ptr %324, align 8, !tbaa !25
  store double 1.000000e+00, ptr %325, align 16, !tbaa !25
  %339 = getelementptr double, ptr %334, i64 %75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %326, i8 0, i64 24, i1 false)
  %340 = load double, ptr %339, align 8, !tbaa !25
  %341 = insertelement <2 x double> poison, double %336, i64 0
  %342 = insertelement <2 x double> %341, double %338, i64 1
  %343 = fneg <2 x double> %342
  %344 = insertelement <2 x double> poison, double %340, i64 0
  %345 = shufflevector <2 x double> %344, <2 x double> poison, <2 x i32> zeroinitializer
  %346 = fmul <2 x double> %345, %343
  store <2 x double> %346, ptr %329, align 16, !tbaa !25
  call void @LeastSquaresAddTerms(ptr noundef nonnull %319, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %339, i64 noundef 8, i64 noundef 1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %347 = load double, ptr %335, align 8, !tbaa !25
  store double %347, ptr %326, align 8, !tbaa !25
  %348 = load double, ptr %337, align 8, !tbaa !25
  store double %348, ptr %327, align 16, !tbaa !25
  store double 1.000000e+00, ptr %328, align 8, !tbaa !25
  %349 = getelementptr double, ptr %339, i64 1
  %350 = load double, ptr %349, align 8, !tbaa !25
  %351 = insertelement <2 x double> poison, double %347, i64 0
  %352 = insertelement <2 x double> %351, double %348, i64 1
  %353 = fneg <2 x double> %352
  %354 = insertelement <2 x double> poison, double %350, i64 0
  %355 = shufflevector <2 x double> %354, <2 x double> poison, <2 x i32> zeroinitializer
  %356 = fmul <2 x double> %355, %353
  store <2 x double> %356, ptr %329, align 16, !tbaa !25
  call void @LeastSquaresAddTerms(ptr noundef nonnull %319, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %349, i64 noundef 8, i64 noundef 1) #20
  %357 = add i64 %333, 4
  %358 = icmp ult i64 %357, %2
  br i1 %358, label %332, label %359, !llvm.loop !56

359:                                              ; preds = %332, %321
  %360 = call i32 @GaussJordanElimination(ptr noundef nonnull %319, ptr noundef nonnull %10, i64 noundef 8, i64 noundef 1) #20
  %361 = call ptr @RelinquishMagickMatrix(ptr noundef nonnull %319, i64 noundef 8) #20
  %362 = icmp eq i32 %360, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %365 = load i32, ptr %1, align 4, !tbaa !27
  %366 = zext i32 %365 to i64
  %367 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %366) #20
  %368 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112, ptr noundef %367) #20
  br label %384

369:                                              ; preds = %359
  %370 = getelementptr inbounds double, ptr %78, i64 6
  %371 = load double, ptr %370, align 8, !tbaa !25
  %372 = getelementptr inbounds double, ptr %3, i64 %77
  %373 = load double, ptr %372, align 8, !tbaa !25
  %374 = getelementptr inbounds double, ptr %78, i64 7
  %375 = load double, ptr %374, align 8, !tbaa !25
  %376 = getelementptr inbounds double, ptr %3, i64 %76
  %377 = load double, ptr %376, align 8, !tbaa !25
  %378 = fmul double %375, %377
  %379 = call double @llvm.fmuladd.f64(double %371, double %373, double %378)
  %380 = fadd double %379, 1.000000e+00
  %381 = getelementptr inbounds double, ptr %78, i64 8
  %382 = fcmp olt double %380, 0.000000e+00
  %383 = select i1 %382, double -1.000000e+00, double 1.000000e+00
  store double %383, ptr %381, align 8, !tbaa !25
  br label %384

384:                                              ; preds = %369, %363, %330, %314
  %385 = phi ptr [ null, %314 ], [ null, %330 ], [ null, %363 ], [ %78, %369 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  br label %994

386:                                              ; preds = %74
  %387 = icmp eq i64 %2, 8
  br i1 %387, label %391, label %388

388:                                              ; preds = %386
  %389 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 5) #20
  %390 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 875, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117, ptr noundef %389) #20
  br label %994

391:                                              ; preds = %386
  tail call fastcc void @InvertPerspectiveCoefficients(ptr noundef %3, ptr noundef nonnull %78) #21
  %392 = getelementptr inbounds double, ptr %78, i64 6
  %393 = load double, ptr %392, align 8, !tbaa !25
  %394 = getelementptr inbounds double, ptr %3, i64 2
  %395 = load double, ptr %394, align 8, !tbaa !25
  %396 = getelementptr inbounds double, ptr %78, i64 7
  %397 = load double, ptr %396, align 8, !tbaa !25
  %398 = getelementptr inbounds double, ptr %3, i64 5
  %399 = load double, ptr %398, align 8, !tbaa !25
  %400 = fmul double %397, %399
  %401 = tail call double @llvm.fmuladd.f64(double %393, double %395, double %400)
  %402 = fadd double %401, 1.000000e+00
  %403 = getelementptr inbounds double, ptr %78, i64 8
  %404 = fcmp olt double %402, 0.000000e+00
  %405 = select i1 %404, double -1.000000e+00, double 1.000000e+00
  store double %405, ptr %403, align 8, !tbaa !25
  store i32 4, ptr %1, align 4, !tbaa !27
  br label %994

406:                                              ; preds = %74, %74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #10
  %407 = urem i64 %2, %18
  %408 = icmp ne i64 %407, 0
  %409 = or i1 %20, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %406
  %411 = zext nneg i32 %79 to i64
  %412 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %411) #20
  %413 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 923, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108, ptr noundef %412, double noundef 4.000000e+00) #20
  %414 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %504

415:                                              ; preds = %406
  %416 = tail call ptr @AcquireMagickMatrix(i64 noundef 4, i64 noundef 4) #20
  %417 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #22
  %418 = icmp eq ptr %416, null
  %419 = icmp eq ptr %417, null
  %420 = select i1 %418, i1 true, i1 %419
  br i1 %420, label %448, label %421

421:                                              ; preds = %415
  %422 = add i64 %17, 1
  %423 = and i64 %422, -2
  %424 = add i64 %17, -1
  %425 = insertelement <2 x i64> poison, i64 %424, i64 0
  %426 = shufflevector <2 x i64> %425, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %427

427:                                              ; preds = %444, %421
  %428 = phi i64 [ 0, %421 ], [ %445, %444 ]
  %429 = phi <2 x i64> [ <i64 0, i64 1>, %421 ], [ %446, %444 ]
  %430 = icmp ule <2 x i64> %429, %426
  %431 = shl <2 x i64> %429, <i64 2, i64 2>
  %432 = extractelement <2 x i1> %430, i64 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = getelementptr inbounds ptr, ptr %417, i64 %428
  %435 = extractelement <2 x i64> %431, i64 0
  %436 = getelementptr inbounds double, ptr %78, i64 %435
  store ptr %436, ptr %434, align 8, !tbaa !26
  br label %437

437:                                              ; preds = %433, %427
  %438 = extractelement <2 x i1> %430, i64 1
  br i1 %438, label %439, label %444

439:                                              ; preds = %437
  %440 = or disjoint i64 %428, 1
  %441 = getelementptr inbounds ptr, ptr %417, i64 %440
  %442 = extractelement <2 x i64> %431, i64 1
  %443 = getelementptr inbounds double, ptr %78, i64 %442
  store ptr %443, ptr %441, align 8, !tbaa !26
  br label %444

444:                                              ; preds = %439, %437
  %445 = add i64 %428, 2
  %446 = add <2 x i64> %429, <i64 2, i64 2>
  %447 = icmp eq i64 %445, %423
  br i1 %447, label %453, label %427, !llvm.loop !57

448:                                              ; preds = %415
  %449 = tail call ptr @RelinquishMagickMatrix(ptr noundef %416, i64 noundef 4) #20
  %450 = tail call ptr @RelinquishMagickMemory(ptr noundef %417) #20
  %451 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %452 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 937, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #20
  br label %504

453:                                              ; preds = %444
  %454 = icmp eq i64 %2, 0
  br i1 %454, label %470, label %455

455:                                              ; preds = %453
  %456 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 1
  %457 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 2
  %458 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 3
  br label %459

459:                                              ; preds = %455, %459
  %460 = phi i64 [ 0, %455 ], [ %468, %459 ]
  %461 = getelementptr double, ptr %3, i64 %460
  %462 = getelementptr double, ptr %461, i64 %77
  %463 = load double, ptr %462, align 8, !tbaa !25
  store double %463, ptr %12, align 16, !tbaa !25
  %464 = getelementptr double, ptr %461, i64 %76
  %465 = load double, ptr %464, align 8, !tbaa !25
  store double %465, ptr %456, align 8, !tbaa !25
  %466 = fmul double %463, %465
  store double %466, ptr %457, align 16, !tbaa !25
  store double 1.000000e+00, ptr %458, align 8, !tbaa !25
  %467 = getelementptr double, ptr %461, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %416, ptr noundef %417, ptr noundef nonnull %12, ptr noundef %467, i64 noundef 4, i64 noundef %17) #20
  %468 = add i64 %460, %18
  %469 = icmp ult i64 %468, %2
  br i1 %469, label %459, label %470, !llvm.loop !60

470:                                              ; preds = %459, %453
  %471 = call i32 @GaussJordanElimination(ptr noundef %416, ptr noundef %417, i64 noundef 4, i64 noundef %17) #20
  %472 = call ptr @RelinquishMagickMatrix(ptr noundef %416, i64 noundef 4) #20
  %473 = call ptr @RelinquishMagickMemory(ptr noundef %417) #20
  %474 = icmp eq i32 %471, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %470
  %476 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %477 = load i32, ptr %1, align 4, !tbaa !27
  %478 = zext i32 %477 to i64
  %479 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %478) #20
  %480 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112, ptr noundef %479) #20
  br label %504

481:                                              ; preds = %470
  %482 = load i32, ptr %1, align 4, !tbaa !27
  %483 = icmp eq i32 %482, 6
  br i1 %483, label %484, label %504

484:                                              ; preds = %481
  %485 = load double, ptr %78, align 8, !tbaa !25
  %486 = getelementptr inbounds double, ptr %78, i64 5
  %487 = load double, ptr %486, align 8, !tbaa !25
  %488 = getelementptr inbounds double, ptr %78, i64 1
  %489 = load double, ptr %488, align 8, !tbaa !25
  %490 = getelementptr inbounds double, ptr %78, i64 4
  %491 = load double, ptr %490, align 8, !tbaa !25
  %492 = fneg double %489
  %493 = fmul double %491, %492
  %494 = call double @llvm.fmuladd.f64(double %485, double %487, double %493)
  %495 = getelementptr inbounds double, ptr %78, i64 8
  store double %494, ptr %495, align 8, !tbaa !25
  %496 = getelementptr inbounds double, ptr %78, i64 2
  %497 = load double, ptr %496, align 8, !tbaa !25
  %498 = getelementptr inbounds double, ptr %78, i64 6
  %499 = load double, ptr %498, align 8, !tbaa !25
  %500 = fmul double %499, %492
  %501 = call double @llvm.fmuladd.f64(double %497, double %487, double %500)
  %502 = fmul double %501, 2.000000e+00
  %503 = getelementptr inbounds double, ptr %78, i64 9
  store double %502, ptr %503, align 8, !tbaa !25
  br label %504

504:                                              ; preds = %481, %484, %475, %448, %410
  %505 = phi ptr [ null, %410 ], [ null, %448 ], [ null, %475 ], [ %78, %484 ], [ %78, %481 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #10
  br label %994

506:                                              ; preds = %74
  %507 = load double, ptr %3, align 8, !tbaa !25
  store double %507, ptr %78, align 8, !tbaa !25
  %508 = tail call fastcc i64 @poly_number_terms(double noundef %507) #21
  %509 = uitofp i64 %508 to double
  %510 = getelementptr inbounds double, ptr %78, i64 1
  store double %509, ptr %510, align 8, !tbaa !25
  %511 = fptoui double %509 to i64
  %512 = tail call ptr @AcquireMagickMatrix(i64 noundef %511, i64 noundef %511) #20
  %513 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #22
  %514 = tail call ptr @AcquireQuantumMemory(i64 noundef %511, i64 noundef 8) #22
  %515 = icmp eq ptr %512, null
  %516 = icmp eq ptr %513, null
  %517 = select i1 %515, i1 true, i1 %516
  %518 = icmp eq ptr %514, null
  %519 = select i1 %517, i1 true, i1 %518
  br i1 %519, label %522, label %520

520:                                              ; preds = %506
  %521 = getelementptr double, ptr %78, i64 2
  br label %533

522:                                              ; preds = %506
  %523 = tail call ptr @RelinquishMagickMatrix(ptr noundef %512, i64 noundef %511) #20
  %524 = tail call ptr @RelinquishMagickMemory(ptr noundef %513) #20
  %525 = tail call ptr @RelinquishMagickMemory(ptr noundef %514) #20
  %526 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %527 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1081, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #20
  br label %994

528:                                              ; preds = %533
  %529 = getelementptr double, ptr %3, i64 %75
  %530 = icmp ugt i64 %2, 1
  br i1 %530, label %531, label %558

531:                                              ; preds = %528
  %532 = icmp sgt i64 %511, 0
  br label %540

533:                                              ; preds = %520, %533
  %534 = phi i64 [ 0, %520 ], [ %538, %533 ]
  %535 = mul i64 %534, %511
  %536 = getelementptr double, ptr %521, i64 %535
  %537 = getelementptr inbounds ptr, ptr %513, i64 %534
  store ptr %536, ptr %537, align 8, !tbaa !26
  %538 = add nuw i64 %534, 1
  %539 = icmp eq i64 %538, %17
  br i1 %539, label %528, label %533, !llvm.loop !61

540:                                              ; preds = %531, %554
  %541 = phi i64 [ 1, %531 ], [ %556, %554 ]
  br i1 %532, label %542, label %554

542:                                              ; preds = %540
  %543 = getelementptr double, ptr %3, i64 %541
  %544 = getelementptr double, ptr %543, i64 %77
  %545 = getelementptr double, ptr %543, i64 %76
  br label %546

546:                                              ; preds = %542, %546
  %547 = phi i64 [ 0, %542 ], [ %552, %546 ]
  %548 = load double, ptr %544, align 8, !tbaa !25
  %549 = load double, ptr %545, align 8, !tbaa !25
  %550 = tail call fastcc double @poly_basis_fn(i64 noundef %547, double noundef %548, double noundef %549) #21
  %551 = getelementptr inbounds double, ptr %514, i64 %547
  store double %550, ptr %551, align 8, !tbaa !25
  %552 = add nuw nsw i64 %547, 1
  %553 = icmp eq i64 %552, %511
  br i1 %553, label %554, label %546, !llvm.loop !62

554:                                              ; preds = %546, %540
  %555 = getelementptr double, ptr %529, i64 %541
  tail call void @LeastSquaresAddTerms(ptr noundef %512, ptr noundef %513, ptr noundef %514, ptr noundef %555, i64 noundef %511, i64 noundef %17) #20
  %556 = add i64 %541, %18
  %557 = icmp ult i64 %556, %2
  br i1 %557, label %540, label %558, !llvm.loop !63

558:                                              ; preds = %554, %528
  %559 = tail call ptr @RelinquishMagickMemory(ptr noundef %514) #20
  %560 = tail call i32 @GaussJordanElimination(ptr noundef %512, ptr noundef %513, i64 noundef %511, i64 noundef %17) #20
  %561 = tail call ptr @RelinquishMagickMatrix(ptr noundef %512, i64 noundef %511) #20
  %562 = tail call ptr @RelinquishMagickMemory(ptr noundef %513) #20
  %563 = icmp eq i32 %560, 0
  br i1 %563, label %564, label %994

564:                                              ; preds = %558
  %565 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %566 = load i32, ptr %1, align 4, !tbaa !27
  %567 = zext i32 %566 to i64
  %568 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %567) #20
  %569 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1103, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112, ptr noundef %568) #20
  br label %994

570:                                              ; preds = %74
  %571 = icmp eq i64 %2, 0
  br i1 %571, label %593, label %572

572:                                              ; preds = %570
  %573 = load double, ptr %3, align 8, !tbaa !25
  %574 = fcmp olt double %573, 1.000000e-15
  br i1 %574, label %575, label %581

575:                                              ; preds = %572
  %576 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %577 = load i32, ptr %1, align 4, !tbaa !27
  %578 = zext i32 %577 to i64
  %579 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %578) #20
  %580 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1148, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118, ptr noundef %579) #20
  br label %994

581:                                              ; preds = %572
  %582 = icmp ugt i64 %2, 2
  br i1 %582, label %583, label %595

583:                                              ; preds = %581
  %584 = getelementptr inbounds double, ptr %3, i64 2
  %585 = load double, ptr %584, align 8, !tbaa !25
  %586 = fcmp olt double %585, 1.000000e-15
  br i1 %586, label %587, label %595

587:                                              ; preds = %583
  %588 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %589 = load i32, ptr %1, align 4, !tbaa !27
  %590 = zext i32 %589 to i64
  %591 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %590) #20
  %592 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1155, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.119, ptr noundef %591) #20
  br label %994

593:                                              ; preds = %570
  %594 = getelementptr inbounds double, ptr %78, i64 1
  store double 0x3FF921FB54442D18, ptr %594, align 8, !tbaa !25
  br label %605

595:                                              ; preds = %581, %583
  store double 0xBFF921FB54442D18, ptr %78, align 8, !tbaa !25
  %596 = load double, ptr %3, align 8, !tbaa !25
  %597 = tail call fastcc double @DegreesToRadians(double noundef %596) #21
  %598 = getelementptr inbounds double, ptr %78, i64 1
  store double %597, ptr %598, align 8, !tbaa !25
  %599 = icmp eq i64 %2, 1
  br i1 %599, label %605, label %600

600:                                              ; preds = %595
  %601 = getelementptr inbounds double, ptr %3, i64 1
  %602 = load double, ptr %601, align 8, !tbaa !25
  %603 = tail call fastcc double @DegreesToRadians(double noundef %602) #21
  %604 = fadd double %603, 0xBFF921FB54442D18
  br label %605

605:                                              ; preds = %593, %600, %595
  %606 = phi double [ 0x3FF921FB54442D18, %593 ], [ %597, %600 ], [ %597, %595 ]
  %607 = phi double [ 0xBFF921FB54442D18, %593 ], [ %604, %600 ], [ 0xBFF921FB54442D18, %595 ]
  %608 = phi i1 [ false, %593 ], [ %582, %600 ], [ %582, %595 ]
  %609 = fdiv double %607, 0x401921FB54442D18
  %610 = tail call fastcc double @MagickRound(double noundef %609) #21
  %611 = fsub double %609, %610
  %612 = fmul double %611, 0x401921FB54442D18
  store double %612, ptr %78, align 8, !tbaa !25
  %613 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %614 = load i64, ptr %613, align 8, !tbaa !31
  %615 = uitofp i64 %614 to double
  %616 = fadd double %615, -1.000000e+00
  %617 = getelementptr inbounds double, ptr %78, i64 3
  store double %616, ptr %617, align 8, !tbaa !25
  %618 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %619 = load i64, ptr %618, align 8, !tbaa !29
  %620 = uitofp i64 %619 to double
  %621 = fdiv double %620, %606
  %622 = fmul double %616, 5.000000e-01
  %623 = fadd double %622, %621
  %624 = getelementptr inbounds double, ptr %78, i64 2
  store double %623, ptr %624, align 8, !tbaa !25
  br i1 %608, label %625, label %640

625:                                              ; preds = %605
  %626 = icmp eq i64 %2, 3
  %627 = getelementptr inbounds double, ptr %3, i64 2
  %628 = load double, ptr %627, align 8, !tbaa !25
  br i1 %626, label %633, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds double, ptr %3, i64 3
  %631 = load double, ptr %630, align 8, !tbaa !25
  %632 = fsub double %628, %631
  br label %636

633:                                              ; preds = %625
  %634 = fdiv double %628, %623
  %635 = fmul double %616, %634
  br label %636

636:                                              ; preds = %633, %629
  %637 = phi double [ %635, %633 ], [ %632, %629 ]
  store double %637, ptr %617, align 8, !tbaa !25
  %638 = getelementptr inbounds double, ptr %3, i64 2
  %639 = load double, ptr %638, align 8, !tbaa !25
  store double %639, ptr %624, align 8, !tbaa !25
  br label %640

640:                                              ; preds = %636, %605
  %641 = fadd double %620, -1.000000e+00
  %642 = fmul double %641, 5.000000e-01
  %643 = getelementptr inbounds double, ptr %78, i64 4
  store double %642, ptr %643, align 8, !tbaa !25
  br label %994

644:                                              ; preds = %74, %74
  %645 = icmp eq i64 %2, 3
  br i1 %645, label %664, label %646

646:                                              ; preds = %644
  %647 = icmp ugt i64 %2, 6
  br i1 %647, label %648, label %669

648:                                              ; preds = %646
  %649 = icmp eq i32 %79, 10
  %650 = icmp ugt i64 %2, 8
  %651 = or i1 %650, %649
  br i1 %651, label %664, label %652

652:                                              ; preds = %648
  %653 = load double, ptr %3, align 8, !tbaa !25
  store double %653, ptr %78, align 8, !tbaa !25
  %654 = getelementptr inbounds double, ptr %3, i64 1
  %655 = load double, ptr %654, align 8, !tbaa !25
  %656 = getelementptr inbounds double, ptr %78, i64 1
  store double %655, ptr %656, align 8, !tbaa !25
  %657 = getelementptr inbounds double, ptr %3, i64 2
  %658 = load double, ptr %657, align 8, !tbaa !25
  %659 = getelementptr inbounds double, ptr %78, i64 2
  store double %658, ptr %659, align 8, !tbaa !25
  %660 = getelementptr inbounds double, ptr %3, i64 3
  %661 = load double, ptr %660, align 8, !tbaa !25
  %662 = getelementptr inbounds double, ptr %78, i64 3
  store double %661, ptr %662, align 8, !tbaa !25
  %663 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %663, align 8, !tbaa !25
  br label %707

664:                                              ; preds = %648, %644
  %665 = zext nneg i32 %79 to i64
  %666 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %665) #20
  %667 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1199, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120, ptr noundef %666) #20
  %668 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

669:                                              ; preds = %646
  %670 = icmp eq i64 %2, 0
  br i1 %670, label %671, label %672

671:                                              ; preds = %669
  store double 0.000000e+00, ptr %78, align 8, !tbaa !25
  br label %675

672:                                              ; preds = %669
  %673 = load double, ptr %3, align 8, !tbaa !25
  store double %673, ptr %78, align 8, !tbaa !25
  %674 = icmp eq i64 %2, 1
  br i1 %674, label %675, label %677

675:                                              ; preds = %671, %672
  %676 = getelementptr inbounds double, ptr %78, i64 1
  store double 0.000000e+00, ptr %676, align 8, !tbaa !25
  br label %682

677:                                              ; preds = %672
  %678 = getelementptr inbounds double, ptr %3, i64 1
  %679 = load double, ptr %678, align 8, !tbaa !25
  %680 = getelementptr inbounds double, ptr %78, i64 1
  store double %679, ptr %680, align 8, !tbaa !25
  %681 = icmp ugt i64 %2, 3
  br i1 %681, label %694, label %682

682:                                              ; preds = %677, %675
  %683 = phi ptr [ %676, %675 ], [ %680, %677 ]
  %684 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %685 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %686 = getelementptr inbounds double, ptr %78, i64 2
  %687 = load <2 x i64>, ptr %684, align 8, !tbaa !28
  %688 = uitofp <2 x i64> %687 to <2 x double>
  %689 = fmul <2 x double> %688, <double 5.000000e-01, double 5.000000e-01>
  %690 = load <2 x i64>, ptr %685, align 8, !tbaa !28
  %691 = sitofp <2 x i64> %690 to <2 x double>
  %692 = fadd <2 x double> %689, %691
  store <2 x double> %692, ptr %686, align 8, !tbaa !25
  %693 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %693, align 8, !tbaa !25
  br label %703

694:                                              ; preds = %677
  %695 = getelementptr inbounds double, ptr %3, i64 2
  %696 = load double, ptr %695, align 8, !tbaa !25
  %697 = getelementptr inbounds double, ptr %78, i64 2
  store double %696, ptr %697, align 8, !tbaa !25
  %698 = getelementptr inbounds double, ptr %3, i64 3
  %699 = load double, ptr %698, align 8, !tbaa !25
  %700 = getelementptr inbounds double, ptr %78, i64 3
  store double %699, ptr %700, align 8, !tbaa !25
  %701 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %701, align 8, !tbaa !25
  %702 = icmp eq i64 %2, 4
  br i1 %702, label %703, label %707

703:                                              ; preds = %682, %694
  %704 = phi ptr [ %701, %694 ], [ %693, %682 ]
  %705 = phi ptr [ %680, %694 ], [ %683, %682 ]
  %706 = getelementptr inbounds double, ptr %78, i64 5
  store double 0xC00921FB54442D18, ptr %706, align 8, !tbaa !25
  br label %719

707:                                              ; preds = %694, %652
  %708 = phi ptr [ %663, %652 ], [ %701, %694 ]
  %709 = phi ptr [ %656, %652 ], [ %680, %694 ]
  %710 = getelementptr inbounds double, ptr %3, i64 4
  %711 = load double, ptr %710, align 8, !tbaa !25
  %712 = tail call fastcc double @DegreesToRadians(double noundef %711) #21
  store double %712, ptr %708, align 8, !tbaa !25
  %713 = getelementptr inbounds double, ptr %78, i64 5
  store double %712, ptr %713, align 8, !tbaa !25
  %714 = icmp ugt i64 %2, 5
  br i1 %714, label %715, label %719

715:                                              ; preds = %707
  %716 = getelementptr inbounds double, ptr %3, i64 5
  %717 = load double, ptr %716, align 8, !tbaa !25
  %718 = tail call fastcc double @DegreesToRadians(double noundef %717) #21
  store double %718, ptr %713, align 8, !tbaa !25
  br label %719

719:                                              ; preds = %703, %715, %707
  %720 = phi double [ 0xC00921FB54442D18, %703 ], [ %718, %715 ], [ %712, %707 ]
  %721 = phi ptr [ %706, %703 ], [ %713, %715 ], [ %713, %707 ]
  %722 = phi ptr [ %705, %703 ], [ %709, %715 ], [ %709, %707 ]
  %723 = phi ptr [ %704, %703 ], [ %708, %715 ], [ %708, %707 ]
  %724 = load double, ptr %723, align 8, !tbaa !25
  %725 = fsub double %724, %720
  %726 = tail call double @llvm.fabs.f64(double %725)
  %727 = fcmp olt double %726, 1.000000e-15
  br i1 %727, label %728, label %730

728:                                              ; preds = %719
  %729 = fadd double %720, 0x401921FB54442D18
  store double %729, ptr %721, align 8, !tbaa !25
  br label %730

730:                                              ; preds = %728, %719
  %731 = load double, ptr %78, align 8, !tbaa !25
  %732 = fcmp olt double %731, 1.000000e-15
  br i1 %732, label %733, label %800

733:                                              ; preds = %730
  %734 = tail call double @llvm.fabs.f64(double %731)
  %735 = fcmp olt double %734, 1.000000e-15
  br i1 %735, label %736, label %764

736:                                              ; preds = %733
  %737 = getelementptr inbounds double, ptr %78, i64 2
  %738 = load double, ptr %737, align 8, !tbaa !25
  %739 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %740 = load i64, ptr %739, align 8, !tbaa !33
  %741 = sitofp i64 %740 to double
  %742 = fsub double %738, %741
  %743 = tail call double @llvm.fabs.f64(double %742)
  %744 = getelementptr inbounds double, ptr %78, i64 3
  %745 = load double, ptr %744, align 8, !tbaa !25
  %746 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %747 = load i64, ptr %746, align 8, !tbaa !34
  %748 = sitofp i64 %747 to double
  %749 = fsub double %745, %748
  %750 = tail call double @llvm.fabs.f64(double %749)
  %751 = tail call fastcc double @MagickMin(double noundef %743, double noundef %750) #21
  %752 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %753 = load i64, ptr %752, align 8, !tbaa !29
  %754 = uitofp i64 %753 to double
  %755 = fsub double %742, %754
  %756 = tail call double @llvm.fabs.f64(double %755)
  %757 = tail call fastcc double @MagickMin(double noundef %751, double noundef %756) #21
  %758 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %759 = load i64, ptr %758, align 8, !tbaa !31
  %760 = uitofp i64 %759 to double
  %761 = fsub double %749, %760
  %762 = tail call double @llvm.fabs.f64(double %761)
  %763 = tail call fastcc double @MagickMin(double noundef %757, double noundef %762) #21
  store double %763, ptr %78, align 8, !tbaa !25
  br label %764

764:                                              ; preds = %736, %733
  %765 = phi double [ %763, %736 ], [ %731, %733 ]
  %766 = fsub double -1.000000e+00, %765
  %767 = tail call double @llvm.fabs.f64(double %766)
  %768 = fcmp olt double %767, 1.000000e-15
  br i1 %768, label %769, label %800

769:                                              ; preds = %764
  %770 = getelementptr inbounds double, ptr %78, i64 2
  %771 = load double, ptr %770, align 8, !tbaa !25
  %772 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %773 = load i64, ptr %772, align 8, !tbaa !33
  %774 = sitofp i64 %773 to double
  %775 = fsub double %771, %774
  %776 = getelementptr inbounds double, ptr %78, i64 3
  %777 = load double, ptr %776, align 8, !tbaa !25
  %778 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %779 = load i64, ptr %778, align 8, !tbaa !34
  %780 = sitofp i64 %779 to double
  %781 = fsub double %777, %780
  %782 = fmul double %781, %781
  %783 = tail call double @llvm.fmuladd.f64(double %775, double %775, double %782)
  %784 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %785 = load i64, ptr %784, align 8, !tbaa !31
  %786 = uitofp i64 %785 to double
  %787 = fsub double %781, %786
  %788 = fmul double %787, %787
  %789 = tail call double @llvm.fmuladd.f64(double %775, double %775, double %788)
  %790 = tail call fastcc double @MagickMax(double noundef %783, double noundef %789) #21
  %791 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %792 = load i64, ptr %791, align 8, !tbaa !29
  %793 = uitofp i64 %792 to double
  %794 = fsub double %775, %793
  %795 = tail call double @llvm.fmuladd.f64(double %794, double %794, double %788)
  %796 = tail call fastcc double @MagickMax(double noundef %790, double noundef %795) #21
  %797 = tail call double @llvm.fmuladd.f64(double %794, double %794, double %782)
  %798 = tail call fastcc double @MagickMax(double noundef %796, double noundef %797) #21
  %799 = tail call double @sqrt(double noundef %798) #20
  store double %799, ptr %78, align 8, !tbaa !25
  br label %800

800:                                              ; preds = %764, %769, %730
  %801 = phi double [ %765, %764 ], [ %799, %769 ], [ %731, %730 ]
  %802 = fcmp olt double %801, 1.000000e-15
  br i1 %802, label %803, label %805

803:                                              ; preds = %800
  %804 = load i32, ptr %1, align 4, !tbaa !27
  br label %812

805:                                              ; preds = %800
  %806 = load double, ptr %722, align 8, !tbaa !25
  %807 = fcmp olt double %806, -1.000000e-15
  %808 = fsub double %801, %806
  %809 = fcmp olt double %808, 1.000000e-15
  %810 = or i1 %807, %809
  %811 = load i32, ptr %1, align 4, !tbaa !27
  br i1 %810, label %812, label %818

812:                                              ; preds = %803, %805
  %813 = phi i32 [ %804, %803 ], [ %811, %805 ]
  %814 = zext i32 %813 to i64
  %815 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %814) #20
  %816 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1259, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef %815) #20
  %817 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

818:                                              ; preds = %805
  %819 = icmp eq i32 %811, 10
  %820 = getelementptr inbounds double, ptr %78, i64 6
  br i1 %819, label %821, label %831

821:                                              ; preds = %818
  %822 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %823 = load double, ptr %721, align 8, !tbaa !25
  %824 = load double, ptr %723, align 8, !tbaa !25
  %825 = fsub double %823, %824
  %826 = load <2 x i64>, ptr %822, align 8, !tbaa !28
  %827 = uitofp <2 x i64> %826 to <2 x double>
  %828 = insertelement <2 x double> poison, double %825, i64 0
  %829 = insertelement <2 x double> %828, double %808, i64 1
  %830 = fdiv <2 x double> %827, %829
  store <2 x double> %830, ptr %820, align 8, !tbaa !25
  br label %994

831:                                              ; preds = %818
  %832 = load double, ptr %721, align 8, !tbaa !25
  %833 = load double, ptr %723, align 8, !tbaa !25
  %834 = fsub double %832, %833
  %835 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %836 = load <2 x i64>, ptr %835, align 8, !tbaa !28
  %837 = uitofp <2 x i64> %836 to <2 x double>
  %838 = insertelement <2 x double> poison, double %834, i64 0
  %839 = insertelement <2 x double> %838, double %808, i64 1
  %840 = fdiv <2 x double> %839, %837
  store <2 x double> %840, ptr %820, align 8, !tbaa !25
  br label %994

841:                                              ; preds = %74, %74
  %842 = load double, ptr %3, align 8, !tbaa !25
  %843 = fcmp olt double %842, 1.000000e-15
  %844 = fcmp ogt double %842, 1.600000e+02
  %845 = or i1 %843, %844
  br i1 %845, label %846, label %851

846:                                              ; preds = %841
  %847 = zext nneg i32 %79 to i64
  %848 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %847) #20
  %849 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1302, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.122, ptr noundef %848) #20
  %850 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

851:                                              ; preds = %841
  %852 = tail call fastcc double @DegreesToRadians(double noundef %842) #21
  store double %852, ptr %78, align 8, !tbaa !25
  %853 = icmp eq i32 %79, 12
  %854 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %855 = load i64, ptr %854, align 8, !tbaa !29
  %856 = uitofp i64 %855 to double
  br i1 %853, label %861, label %857

857:                                              ; preds = %851
  %858 = fmul double %852, 5.000000e-01
  %859 = tail call double @tan(double noundef %858) #20
  %860 = fmul double %859, 2.000000e+00
  br label %861

861:                                              ; preds = %851, %857
  %862 = phi double [ %860, %857 ], [ %852, %851 ]
  %863 = fdiv double %856, %862
  %864 = getelementptr inbounds double, ptr %78, i64 1
  store double %863, ptr %864, align 8
  %865 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %866 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %867 = getelementptr inbounds double, ptr %78, i64 2
  %868 = load <2 x i64>, ptr %865, align 8, !tbaa !28
  %869 = uitofp <2 x i64> %868 to <2 x double>
  %870 = fmul <2 x double> %869, <double 5.000000e-01, double 5.000000e-01>
  %871 = load <2 x i64>, ptr %866, align 8, !tbaa !28
  %872 = sitofp <2 x i64> %871 to <2 x double>
  %873 = fadd <2 x double> %870, %872
  store <2 x double> %873, ptr %867, align 8, !tbaa !25
  %874 = getelementptr inbounds double, ptr %78, i64 4
  store <2 x double> %873, ptr %874, align 8, !tbaa !25
  br label %994

875:                                              ; preds = %74, %74
  %876 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %877 = load i64, ptr %876, align 8, !tbaa !29
  %878 = uitofp i64 %877 to double
  %879 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %880 = load i64, ptr %879, align 8, !tbaa !31
  %881 = uitofp i64 %880 to double
  %882 = tail call fastcc double @MagickMin(double noundef %878, double noundef %881) #21
  %883 = fdiv double 2.000000e+00, %882
  %884 = icmp ugt i64 %2, 10
  br i1 %884, label %886, label %885

885:                                              ; preds = %875
  switch i64 %2, label %892 [
    i64 9, label %886
    i64 7, label %886
    i64 2, label %886
    i64 1, label %886
    i64 0, label %886
  ]

886:                                              ; preds = %885, %885, %885, %885, %885, %875
  %887 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  %888 = load i32, ptr %1, align 4, !tbaa !27
  %889 = zext i32 %888 to i64
  %890 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %889) #20
  %891 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120, ptr noundef %890) #20
  br label %994

892:                                              ; preds = %885
  %893 = load double, ptr %3, align 8, !tbaa !25
  store double %893, ptr %78, align 8, !tbaa !25
  %894 = getelementptr inbounds double, ptr %3, i64 1
  %895 = load double, ptr %894, align 8, !tbaa !25
  %896 = getelementptr inbounds double, ptr %78, i64 1
  store double %895, ptr %896, align 8, !tbaa !25
  %897 = getelementptr inbounds double, ptr %3, i64 2
  %898 = load double, ptr %897, align 8, !tbaa !25
  %899 = getelementptr inbounds double, ptr %78, i64 2
  store double %898, ptr %899, align 8, !tbaa !25
  switch i64 %2, label %904 [
    i64 5, label %900
    i64 3, label %900
  ]

900:                                              ; preds = %892, %892
  %901 = fsub double 1.000000e+00, %893
  %902 = fsub double %901, %895
  %903 = fsub double %902, %898
  br label %907

904:                                              ; preds = %892
  %905 = getelementptr inbounds double, ptr %3, i64 3
  %906 = load double, ptr %905, align 8, !tbaa !25
  br label %907

907:                                              ; preds = %904, %900
  %908 = phi double [ %906, %904 ], [ %903, %900 ]
  %909 = getelementptr inbounds double, ptr %78, i64 3
  store double %908, ptr %909, align 8, !tbaa !25
  %910 = tail call double @pow(double noundef %883, double noundef 3.000000e+00) #20
  %911 = fmul double %883, %883
  %912 = load <2 x double>, ptr %78, align 8, !tbaa !25
  %913 = insertelement <2 x double> poison, double %910, i64 0
  %914 = insertelement <2 x double> %913, double %911, i64 1
  %915 = fmul <2 x double> %914, %912
  store <2 x double> %915, ptr %78, align 8, !tbaa !25
  %916 = load double, ptr %899, align 8, !tbaa !25
  %917 = fmul double %883, %916
  store double %917, ptr %899, align 8, !tbaa !25
  %918 = icmp ugt i64 %2, 7
  br i1 %918, label %919, label %935

919:                                              ; preds = %907
  %920 = getelementptr inbounds double, ptr %3, i64 4
  %921 = load double, ptr %920, align 8, !tbaa !25
  %922 = tail call double @pow(double noundef %883, double noundef 3.000000e+00) #20
  %923 = fmul double %921, %922
  %924 = getelementptr inbounds double, ptr %78, i64 4
  store double %923, ptr %924, align 8, !tbaa !25
  %925 = getelementptr inbounds double, ptr %3, i64 5
  %926 = load double, ptr %925, align 8, !tbaa !25
  %927 = fmul double %883, %926
  %928 = fmul double %883, %927
  %929 = getelementptr inbounds double, ptr %78, i64 5
  store double %928, ptr %929, align 8, !tbaa !25
  %930 = getelementptr inbounds double, ptr %3, i64 6
  %931 = load double, ptr %930, align 8, !tbaa !25
  %932 = fmul double %883, %931
  %933 = getelementptr inbounds double, ptr %78, i64 6
  store double %932, ptr %933, align 8, !tbaa !25
  %934 = getelementptr inbounds double, ptr %3, i64 7
  br label %939

935:                                              ; preds = %907
  %936 = getelementptr inbounds double, ptr %78, i64 4
  store <2 x double> %915, ptr %936, align 8, !tbaa !25
  %937 = getelementptr inbounds double, ptr %78, i64 6
  store double %917, ptr %937, align 8, !tbaa !25
  %938 = getelementptr inbounds double, ptr %78, i64 3
  br label %939

939:                                              ; preds = %935, %919
  %940 = phi ptr [ %934, %919 ], [ %938, %935 ]
  %941 = load double, ptr %940, align 8, !tbaa !25
  %942 = getelementptr inbounds double, ptr %78, i64 7
  store double %941, ptr %942, align 8
  switch i64 %2, label %964 [
    i64 5, label %943
    i64 6, label %950
    i64 10, label %957
  ]

943:                                              ; preds = %939
  %944 = getelementptr inbounds double, ptr %3, i64 3
  %945 = load double, ptr %944, align 8, !tbaa !25
  %946 = getelementptr inbounds double, ptr %78, i64 8
  store double %945, ptr %946, align 8, !tbaa !25
  %947 = getelementptr inbounds double, ptr %3, i64 4
  %948 = load double, ptr %947, align 8, !tbaa !25
  %949 = getelementptr inbounds double, ptr %78, i64 9
  store double %948, ptr %949, align 8, !tbaa !25
  br label %994

950:                                              ; preds = %939
  %951 = getelementptr inbounds double, ptr %3, i64 4
  %952 = load double, ptr %951, align 8, !tbaa !25
  %953 = getelementptr inbounds double, ptr %78, i64 8
  store double %952, ptr %953, align 8, !tbaa !25
  %954 = getelementptr inbounds double, ptr %3, i64 5
  %955 = load double, ptr %954, align 8, !tbaa !25
  %956 = getelementptr inbounds double, ptr %78, i64 9
  store double %955, ptr %956, align 8, !tbaa !25
  br label %994

957:                                              ; preds = %939
  %958 = getelementptr inbounds double, ptr %3, i64 8
  %959 = load double, ptr %958, align 8, !tbaa !25
  %960 = getelementptr inbounds double, ptr %78, i64 8
  store double %959, ptr %960, align 8, !tbaa !25
  %961 = getelementptr inbounds double, ptr %3, i64 9
  %962 = load double, ptr %961, align 8, !tbaa !25
  %963 = getelementptr inbounds double, ptr %78, i64 9
  store double %962, ptr %963, align 8, !tbaa !25
  br label %994

964:                                              ; preds = %939
  %965 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %966 = getelementptr inbounds double, ptr %78, i64 8
  %967 = load <2 x i64>, ptr %876, align 8, !tbaa !28
  %968 = uitofp <2 x i64> %967 to <2 x double>
  %969 = fmul <2 x double> %968, <double 5.000000e-01, double 5.000000e-01>
  %970 = load <2 x i64>, ptr %965, align 8, !tbaa !28
  %971 = sitofp <2 x i64> %970 to <2 x double>
  %972 = fadd <2 x double> %969, %971
  store <2 x double> %972, ptr %966, align 8, !tbaa !25
  br label %994

973:                                              ; preds = %74
  %974 = urem i64 %2, %18
  %975 = icmp ne i64 %974, 0
  %976 = icmp ugt i64 %18, %2
  %977 = or i1 %976, %975
  br i1 %977, label %978, label %982

978:                                              ; preds = %973
  %979 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 16) #20
  %980 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1412, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.123, ptr noundef %979) #20
  %981 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

982:                                              ; preds = %973
  %983 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.124) #20
  %984 = icmp eq ptr %983, null
  br i1 %984, label %989, label %985

985:                                              ; preds = %982
  %986 = tail call fastcc double @StringToDouble(ptr noundef nonnull %983) #21
  %987 = fmul double %986, 5.000000e-01
  store double %987, ptr %78, align 8, !tbaa !25
  %988 = fcmp olt double %987, 1.000000e-15
  br i1 %988, label %990, label %994

989:                                              ; preds = %982
  store double 1.000000e+00, ptr %78, align 8, !tbaa !25
  br label %994

990:                                              ; preds = %985
  %991 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.125) #20
  %992 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #20
  br label %994

993:                                              ; preds = %74
  tail call void @perror(ptr noundef nonnull @.str.126) #23
  br label %994

994:                                              ; preds = %108, %990, %985, %989, %196, %195, %886, %950, %964, %957, %943, %821, %831, %522, %564, %558, %217, %254, %271, %277, %95, %993, %978, %861, %846, %812, %664, %640, %587, %575, %504, %391, %388, %384, %206, %85, %72, %47, %39, %33
  %995 = phi ptr [ null, %72 ], [ null, %993 ], [ null, %978 ], [ null, %846 ], [ %78, %861 ], [ null, %664 ], [ null, %812 ], [ null, %575 ], [ null, %587 ], [ %78, %640 ], [ %505, %504 ], [ null, %388 ], [ %78, %391 ], [ %385, %384 ], [ %207, %206 ], [ null, %85 ], [ null, %33 ], [ null, %39 ], [ null, %47 ], [ %78, %95 ], [ null, %254 ], [ null, %271 ], [ %78, %277 ], [ null, %217 ], [ null, %522 ], [ null, %564 ], [ %78, %558 ], [ %78, %831 ], [ %78, %821 ], [ null, %886 ], [ %78, %950 ], [ %78, %964 ], [ %78, %957 ], [ %78, %943 ], [ %78, %196 ], [ null, %195 ], [ null, %990 ], [ %78, %985 ], [ %78, %989 ], [ %78, %108 ]
  ret ptr %995
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InvertAffineCoefficients(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = load double, ptr %0, align 8, !tbaa !25
  %4 = getelementptr inbounds double, ptr %0, i64 4
  %5 = load double, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds double, ptr %0, i64 3
  %9 = load double, ptr %8, align 8, !tbaa !25
  %10 = fneg double %7
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %11)
  %13 = tail call fastcc double @PerceptibleReciprocal(double noundef %12) #21
  %14 = fmul double %5, %13
  store double %14, ptr %1, align 8, !tbaa !25
  %15 = load double, ptr %6, align 8, !tbaa !25
  %16 = fneg double %15
  %17 = fmul double %13, %16
  %18 = getelementptr inbounds double, ptr %1, i64 1
  store double %17, ptr %18, align 8, !tbaa !25
  %19 = load double, ptr %6, align 8, !tbaa !25
  %20 = getelementptr inbounds double, ptr %0, i64 5
  %21 = load double, ptr %20, align 8, !tbaa !25
  %22 = getelementptr inbounds double, ptr %0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !25
  %24 = load double, ptr %4, align 8, !tbaa !25
  %25 = fneg double %23
  %26 = fmul double %24, %25
  %27 = tail call double @llvm.fmuladd.f64(double %19, double %21, double %26)
  %28 = fmul double %13, %27
  %29 = getelementptr inbounds double, ptr %1, i64 2
  store double %28, ptr %29, align 8, !tbaa !25
  %30 = load double, ptr %8, align 8, !tbaa !25
  %31 = fneg double %30
  %32 = fmul double %13, %31
  %33 = getelementptr inbounds double, ptr %1, i64 3
  store double %32, ptr %33, align 8, !tbaa !25
  %34 = load double, ptr %0, align 8, !tbaa !25
  %35 = fmul double %13, %34
  %36 = getelementptr inbounds double, ptr %1, i64 4
  store double %35, ptr %36, align 8, !tbaa !25
  %37 = load double, ptr %22, align 8, !tbaa !25
  %38 = load double, ptr %8, align 8, !tbaa !25
  %39 = load double, ptr %0, align 8, !tbaa !25
  %40 = load double, ptr %20, align 8, !tbaa !25
  %41 = fneg double %39
  %42 = fmul double %40, %41
  %43 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %42)
  %44 = fmul double %13, %43
  %45 = getelementptr inbounds double, ptr %1, i64 5
  store double %44, ptr %45, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #5 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #5 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InvertPerspectiveCoefficients(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = load double, ptr %0, align 8, !tbaa !25
  %4 = getelementptr inbounds double, ptr %0, i64 4
  %5 = load double, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !25
  %10 = fneg double %7
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %11)
  %13 = tail call fastcc double @PerceptibleReciprocal(double noundef %12) #21
  %14 = getelementptr inbounds double, ptr %0, i64 7
  %15 = load double, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds double, ptr %0, i64 5
  %17 = load double, ptr %16, align 8, !tbaa !25
  %18 = fneg double %15
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double %5)
  %20 = fmul double %13, %19
  store double %20, ptr %1, align 8, !tbaa !25
  %21 = load double, ptr %14, align 8, !tbaa !25
  %22 = getelementptr inbounds double, ptr %0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !25
  %24 = load double, ptr %8, align 8, !tbaa !25
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %21, double %23, double %25)
  %27 = fmul double %13, %26
  %28 = getelementptr inbounds double, ptr %1, i64 1
  store double %27, ptr %28, align 8, !tbaa !25
  %29 = load double, ptr %8, align 8, !tbaa !25
  %30 = load double, ptr %16, align 8, !tbaa !25
  %31 = load double, ptr %4, align 8, !tbaa !25
  %32 = load double, ptr %22, align 8, !tbaa !25
  %33 = fneg double %31
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %34)
  %36 = fmul double %13, %35
  %37 = getelementptr inbounds double, ptr %1, i64 2
  store double %36, ptr %37, align 8, !tbaa !25
  %38 = getelementptr inbounds double, ptr %0, i64 6
  %39 = load double, ptr %38, align 8, !tbaa !25
  %40 = load double, ptr %16, align 8, !tbaa !25
  %41 = load double, ptr %6, align 8, !tbaa !25
  %42 = fneg double %41
  %43 = tail call double @llvm.fmuladd.f64(double %39, double %40, double %42)
  %44 = fmul double %13, %43
  %45 = getelementptr inbounds double, ptr %1, i64 3
  store double %44, ptr %45, align 8, !tbaa !25
  %46 = load double, ptr %0, align 8, !tbaa !25
  %47 = load double, ptr %38, align 8, !tbaa !25
  %48 = load double, ptr %22, align 8, !tbaa !25
  %49 = fneg double %47
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %48, double %46)
  %51 = fmul double %13, %50
  %52 = getelementptr inbounds double, ptr %1, i64 4
  store double %51, ptr %52, align 8, !tbaa !25
  %53 = load double, ptr %6, align 8, !tbaa !25
  %54 = load double, ptr %22, align 8, !tbaa !25
  %55 = load double, ptr %0, align 8, !tbaa !25
  %56 = load double, ptr %16, align 8, !tbaa !25
  %57 = fneg double %55
  %58 = fmul double %56, %57
  %59 = tail call double @llvm.fmuladd.f64(double %53, double %54, double %58)
  %60 = fmul double %13, %59
  %61 = getelementptr inbounds double, ptr %1, i64 5
  store double %60, ptr %61, align 8, !tbaa !25
  %62 = load double, ptr %6, align 8, !tbaa !25
  %63 = load double, ptr %14, align 8, !tbaa !25
  %64 = load double, ptr %38, align 8, !tbaa !25
  %65 = load double, ptr %4, align 8, !tbaa !25
  %66 = fneg double %64
  %67 = fmul double %65, %66
  %68 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %67)
  %69 = fmul double %13, %68
  %70 = getelementptr inbounds double, ptr %1, i64 6
  store double %69, ptr %70, align 8, !tbaa !25
  %71 = load double, ptr %38, align 8, !tbaa !25
  %72 = load double, ptr %8, align 8, !tbaa !25
  %73 = load double, ptr %0, align 8, !tbaa !25
  %74 = load double, ptr %14, align 8, !tbaa !25
  %75 = fneg double %73
  %76 = fmul double %74, %75
  %77 = tail call double @llvm.fmuladd.f64(double %71, double %72, double %76)
  %78 = fmul double %13, %77
  %79 = getelementptr inbounds double, ptr %1, i64 7
  store double %78, ptr %79, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #5 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CoefficientsToAffineArgs(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds double, ptr %0, i64 3
  %3 = load double, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !25
  store double %3, ptr %4, align 8, !tbaa !25
  store double %5, ptr %8, align 8, !tbaa !25
  store double %7, ptr %2, align 8, !tbaa !25
  store double %9, ptr %6, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @poly_basis_str(i64 noundef %0) unnamed_addr #5 {
  %2 = icmp ult i64 %0, 21
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = shl i64 %0, 2
  %5 = call ptr @llvm.load.relative.i64(ptr @reltable.poly_basis_str, i64 %4)
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ @.str.147, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #20
  ret double %2
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !64
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #21
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !65
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #21
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-15
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #5 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireResampleFilterThreadSet(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %3, i64 noundef 8) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #20
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %3
  br i1 %12, label %20, label %13, !llvm.loop !66

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = tail call ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef %1) #20
  %16 = getelementptr inbounds ptr, ptr %4, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !26
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef nonnull %4) #21
  br label %20

20:                                               ; preds = %10, %6, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %4, %6 ], [ %4, %10 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @DistortImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %14, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %15, ptr nocapture noundef nonnull align 8 dereferenceable(8) %16) #9 {
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct._MagickPixelPacket, align 8
  %23 = alloca %struct._MagickPixelPacket, align 8
  %24 = load ptr, ptr %2, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !31
  %27 = add nsw i64 %26, -1
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %876

29:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #10
  store i64 0, ptr %18, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  store i64 %27, ptr %19, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #10
  store i64 1, ptr %20, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  store i32 0, ptr %21, align 4, !tbaa !27
  %30 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %30, i32 33, ptr nonnull %21, ptr nonnull %18, ptr nonnull %19, ptr nonnull %20, i64 1, i64 4)
  %31 = load i64, ptr %19, align 8
  %32 = call i64 @llvm.smin.i64(i64 %31, i64 %27)
  store i64 %32, ptr %19, align 8, !tbaa !28
  %33 = load i64, ptr %18, align 8, !tbaa !28
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %875, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  br label %37

37:                                               ; preds = %35, %867
  %38 = phi i64 [ %32, %35 ], [ %873, %867 ]
  %39 = phi i64 [ %33, %35 ], [ %871, %867 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %867, label %41

41:                                               ; preds = %37, %861
  %42 = phi i64 [ %862, %861 ], [ %39, %37 ]
  %43 = call fastcc i32 @GetOpenMPThreadId() #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #10
  %44 = load ptr, ptr %3, align 8, !tbaa !26
  %45 = load ptr, ptr %2, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !29
  %48 = load ptr, ptr %4, align 8, !tbaa !26
  %49 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %42, i64 noundef %47, i64 noundef 1, ptr noundef %48) #24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %860, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %3, align 8, !tbaa !26
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !67
  %54 = load i32, ptr %7, align 4, !tbaa !27
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load ptr, ptr %8, align 8, !tbaa !26
  %58 = sext i32 %43 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !26
  %61 = load double, ptr %9, align 8, !tbaa !25
  %62 = load ptr, ptr %10, align 8, !tbaa !26
  %63 = load double, ptr %62, align 8, !tbaa !25
  %64 = fmul double %61, %63
  %65 = getelementptr inbounds double, ptr %62, i64 1
  %66 = load double, ptr %65, align 8, !tbaa !25
  %67 = fmul double %61, %66
  %68 = getelementptr inbounds double, ptr %62, i64 3
  %69 = load double, ptr %68, align 8, !tbaa !25
  %70 = fmul double %61, %69
  %71 = getelementptr inbounds double, ptr %62, i64 4
  %72 = load double, ptr %71, align 8, !tbaa !25
  %73 = fmul double %61, %72
  call void @ScaleResampleFilter(ptr noundef %60, double noundef %64, double noundef %67, double noundef %70, double noundef %73) #20
  br label %74

74:                                               ; preds = %51, %56
  %75 = load ptr, ptr %2, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef %75, ptr noundef nonnull %23) #20
  %76 = load ptr, ptr %2, align 8, !tbaa !26
  %77 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 14
  call fastcc void @SetMagickPixelPacket(ptr noundef %76, ptr noundef nonnull %77, ptr noundef null, ptr noundef nonnull %23) #21
  %78 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !49
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %23) #21
  %82 = load ptr, ptr %2, align 8, !tbaa !26
  br label %83

83:                                               ; preds = %81, %74
  %84 = phi ptr [ %82, %81 ], [ %76, %74 ]
  %85 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 7
  %86 = load i64, ptr %85, align 8, !tbaa !29
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %841

88:                                               ; preds = %83
  %89 = sext i32 %43 to i64
  %90 = sitofp i64 %42 to double
  %91 = fadd double %90, 5.000000e-01
  br label %92

92:                                               ; preds = %88, %831
  %93 = phi double [ 1.000000e+00, %88 ], [ %801, %831 ]
  %94 = phi ptr [ %53, %88 ], [ %835, %831 ]
  %95 = phi i64 [ 0, %88 ], [ %836, %831 ]
  %96 = phi ptr [ %49, %88 ], [ %834, %831 ]
  %97 = load double, ptr %9, align 8, !tbaa !25
  %98 = load <2 x i64>, ptr %36, align 8, !tbaa !28
  %99 = insertelement <2 x i64> poison, i64 %95, i64 0
  %100 = insertelement <2 x i64> %99, i64 %42, i64 1
  %101 = add nsw <2 x i64> %98, %100
  %102 = sitofp <2 x i64> %101 to <2 x double>
  %103 = fadd <2 x double> %102, <double 5.000000e-01, double 5.000000e-01>
  %104 = insertelement <2 x double> poison, double %97, i64 0
  %105 = shufflevector <2 x double> %104, <2 x double> poison, <2 x i32> zeroinitializer
  %106 = fmul <2 x double> %105, %103
  %107 = load i32, ptr %7, align 4, !tbaa !27
  switch i32 %107, label %800 [
    i32 1, label %115
    i32 4, label %139
    i32 7, label %229
    i32 6, label %274
    i32 8, label %335
    i32 9, label %384
    i32 10, label %444
    i32 11, label %518
    i32 12, label %549
    i32 13, label %593
    i32 14, label %667
    i32 15, label %667
    i32 16, label %108
  ]

108:                                              ; preds = %92
  %109 = load i64, ptr %13, align 8, !tbaa !28
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %793, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %14, align 8, !tbaa !26
  %113 = extractelement <2 x double> %106, i64 0
  %114 = extractelement <2 x double> %106, i64 1
  br label %759

115:                                              ; preds = %92
  %116 = load ptr, ptr %10, align 8, !tbaa !26
  %117 = load double, ptr %116, align 8, !tbaa !25
  %118 = getelementptr inbounds double, ptr %116, i64 1
  %119 = load double, ptr %118, align 8, !tbaa !25
  %120 = getelementptr inbounds double, ptr %116, i64 2
  %121 = load double, ptr %120, align 8, !tbaa !25
  %122 = getelementptr inbounds double, ptr %116, i64 3
  %123 = load double, ptr %122, align 8, !tbaa !25
  %124 = getelementptr inbounds double, ptr %116, i64 4
  %125 = load double, ptr %124, align 8, !tbaa !25
  %126 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %127 = insertelement <2 x double> poison, double %119, i64 0
  %128 = insertelement <2 x double> %127, double %125, i64 1
  %129 = fmul <2 x double> %126, %128
  %130 = insertelement <2 x double> poison, double %117, i64 0
  %131 = insertelement <2 x double> %130, double %123, i64 1
  %132 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  %133 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %131, <2 x double> %132, <2 x double> %129)
  %134 = getelementptr inbounds double, ptr %116, i64 5
  %135 = load double, ptr %134, align 8, !tbaa !25
  %136 = insertelement <2 x double> poison, double %121, i64 0
  %137 = insertelement <2 x double> %136, double %135, i64 1
  %138 = fadd <2 x double> %137, %133
  br label %800

139:                                              ; preds = %92
  %140 = load ptr, ptr %10, align 8, !tbaa !26
  %141 = load double, ptr %140, align 8, !tbaa !25
  %142 = getelementptr inbounds double, ptr %140, i64 1
  %143 = load double, ptr %142, align 8, !tbaa !25
  %144 = getelementptr inbounds double, ptr %140, i64 2
  %145 = load double, ptr %144, align 8, !tbaa !25
  %146 = getelementptr inbounds double, ptr %140, i64 3
  %147 = load double, ptr %146, align 8, !tbaa !25
  %148 = getelementptr inbounds double, ptr %140, i64 4
  %149 = load double, ptr %148, align 8, !tbaa !25
  %150 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %151 = insertelement <2 x double> poison, double %143, i64 0
  %152 = insertelement <2 x double> %151, double %149, i64 1
  %153 = fmul <2 x double> %150, %152
  %154 = insertelement <2 x double> poison, double %141, i64 0
  %155 = insertelement <2 x double> %154, double %147, i64 1
  %156 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  %157 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %155, <2 x double> %156, <2 x double> %153)
  %158 = getelementptr inbounds double, ptr %140, i64 5
  %159 = load double, ptr %158, align 8, !tbaa !25
  %160 = insertelement <2 x double> poison, double %145, i64 0
  %161 = insertelement <2 x double> %160, double %159, i64 1
  %162 = fadd <2 x double> %161, %157
  %163 = getelementptr inbounds double, ptr %140, i64 6
  %164 = extractelement <2 x double> %106, i64 0
  %165 = getelementptr inbounds double, ptr %140, i64 8
  %166 = load double, ptr %165, align 8, !tbaa !25
  %167 = load <2 x double>, ptr %163, align 8, !tbaa !25
  %168 = extractelement <2 x double> %167, i64 1
  %169 = fmul <2 x double> %106, %167
  %170 = extractelement <2 x double> %169, i64 1
  %171 = extractelement <2 x double> %167, i64 0
  %172 = call double @llvm.fmuladd.f64(double %171, double %164, double %170)
  %173 = fadd double %172, 1.000000e+00
  %174 = fmul double %166, %173
  %175 = fcmp olt double %174, 0.000000e+00
  %176 = select i1 %175, double 0.000000e+00, double 1.000000e+00
  %177 = call double @llvm.fabs.f64(double %173)
  %178 = fmul double %177, 2.000000e+00
  %179 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %167)
  %180 = extractelement <2 x double> %179, i64 0
  %181 = extractelement <2 x double> %179, i64 1
  %182 = fcmp ogt double %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %139
  %184 = fmul double %97, %180
  %185 = fcmp olt double %178, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = fmul double %97, %171
  %188 = fdiv double %174, %187
  %189 = fsub double 5.000000e-01, %188
  br label %197

190:                                              ; preds = %139
  %191 = fmul double %97, %181
  %192 = fcmp olt double %178, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = fmul double %97, %168
  %195 = fdiv double %174, %194
  %196 = fsub double 5.000000e-01, %195
  br label %197

197:                                              ; preds = %190, %193, %183, %186
  %198 = phi double [ %189, %186 ], [ %176, %183 ], [ %196, %193 ], [ %176, %190 ]
  %199 = fcmp ogt double %198, 0.000000e+00
  br i1 %199, label %200, label %800

200:                                              ; preds = %197
  %201 = fdiv double 1.000000e+00, %173
  %202 = insertelement <2 x double> poison, double %201, i64 0
  %203 = shufflevector <2 x double> %202, <2 x double> poison, <2 x i32> zeroinitializer
  %204 = fmul <2 x double> %162, %203
  %205 = fmul double %201, %201
  %206 = load ptr, ptr %8, align 8, !tbaa !26
  %207 = getelementptr inbounds ptr, ptr %206, i64 %89
  %208 = load ptr, ptr %207, align 8, !tbaa !26
  %209 = extractelement <2 x double> %162, i64 0
  %210 = fneg double %209
  %211 = fmul double %171, %210
  %212 = call double @llvm.fmuladd.f64(double %173, double %141, double %211)
  %213 = fmul double %212, %205
  %214 = fmul double %97, %213
  %215 = fmul double %168, %210
  %216 = call double @llvm.fmuladd.f64(double %173, double %143, double %215)
  %217 = fmul double %216, %205
  %218 = fmul double %97, %217
  %219 = extractelement <2 x double> %162, i64 1
  %220 = fneg double %219
  %221 = fmul double %171, %220
  %222 = call double @llvm.fmuladd.f64(double %173, double %147, double %221)
  %223 = fmul double %222, %205
  %224 = fmul double %97, %223
  %225 = fmul double %168, %220
  %226 = call double @llvm.fmuladd.f64(double %173, double %149, double %225)
  %227 = fmul double %226, %205
  %228 = fmul double %97, %227
  call void @ScaleResampleFilter(ptr noundef %208, double noundef %214, double noundef %218, double noundef %224, double noundef %228) #20
  br label %800

229:                                              ; preds = %92
  %230 = load ptr, ptr %10, align 8, !tbaa !26
  %231 = load double, ptr %230, align 8, !tbaa !25
  %232 = getelementptr inbounds double, ptr %230, i64 1
  %233 = load double, ptr %232, align 8, !tbaa !25
  %234 = getelementptr inbounds double, ptr %230, i64 2
  %235 = load double, ptr %234, align 8, !tbaa !25
  %236 = getelementptr inbounds double, ptr %230, i64 3
  %237 = load double, ptr %236, align 8, !tbaa !25
  %238 = getelementptr inbounds double, ptr %230, i64 4
  %239 = load double, ptr %238, align 8, !tbaa !25
  %240 = getelementptr inbounds double, ptr %230, i64 5
  %241 = load double, ptr %240, align 8, !tbaa !25
  %242 = getelementptr inbounds double, ptr %230, i64 6
  %243 = load double, ptr %242, align 8, !tbaa !25
  %244 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %245 = insertelement <2 x double> poison, double %233, i64 0
  %246 = insertelement <2 x double> %245, double %241, i64 1
  %247 = fmul <2 x double> %244, %246
  %248 = insertelement <2 x double> poison, double %231, i64 0
  %249 = insertelement <2 x double> %248, double %239, i64 1
  %250 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  %251 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %249, <2 x double> %250, <2 x double> %247)
  %252 = insertelement <2 x double> poison, double %235, i64 0
  %253 = insertelement <2 x double> %252, double %243, i64 1
  %254 = fmul <2 x double> %250, %253
  %255 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %254, <2 x double> %244, <2 x double> %251)
  %256 = getelementptr inbounds double, ptr %230, i64 7
  %257 = load double, ptr %256, align 8, !tbaa !25
  %258 = insertelement <2 x double> poison, double %237, i64 0
  %259 = insertelement <2 x double> %258, double %257, i64 1
  %260 = fadd <2 x double> %259, %255
  %261 = load ptr, ptr %8, align 8, !tbaa !26
  %262 = getelementptr inbounds ptr, ptr %261, i64 %89
  %263 = load ptr, ptr %262, align 8, !tbaa !26
  %264 = extractelement <2 x double> %106, i64 1
  %265 = call double @llvm.fmuladd.f64(double %235, double %264, double %231)
  %266 = fmul double %97, %265
  %267 = extractelement <2 x double> %106, i64 0
  %268 = call double @llvm.fmuladd.f64(double %235, double %267, double %233)
  %269 = fmul double %97, %268
  %270 = call double @llvm.fmuladd.f64(double %243, double %264, double %239)
  %271 = fmul double %97, %270
  %272 = call double @llvm.fmuladd.f64(double %243, double %267, double %241)
  %273 = fmul double %97, %272
  call void @ScaleResampleFilter(ptr noundef %263, double noundef %266, double noundef %269, double noundef %271, double noundef %273) #20
  br label %800

274:                                              ; preds = %92
  %275 = load ptr, ptr %10, align 8, !tbaa !26
  %276 = getelementptr inbounds double, ptr %275, i64 3
  %277 = load double, ptr %276, align 8, !tbaa !25
  %278 = extractelement <2 x double> %106, i64 0
  %279 = fsub double %278, %277
  %280 = getelementptr inbounds double, ptr %275, i64 7
  %281 = load double, ptr %280, align 8, !tbaa !25
  %282 = extractelement <2 x double> %106, i64 1
  %283 = fsub double %282, %281
  %284 = getelementptr inbounds double, ptr %275, i64 6
  %285 = load double, ptr %284, align 8, !tbaa !25
  %286 = getelementptr inbounds double, ptr %275, i64 2
  %287 = load double, ptr %286, align 8, !tbaa !25
  %288 = fneg double %287
  %289 = fmul double %283, %288
  %290 = call double @llvm.fmuladd.f64(double %285, double %279, double %289)
  %291 = getelementptr inbounds double, ptr %275, i64 8
  %292 = load double, ptr %291, align 8, !tbaa !25
  %293 = fadd double %292, %290
  %294 = getelementptr inbounds double, ptr %275, i64 4
  %295 = load double, ptr %294, align 8, !tbaa !25
  %296 = load double, ptr %275, align 8, !tbaa !25
  %297 = fneg double %296
  %298 = fmul double %283, %297
  %299 = call double @llvm.fmuladd.f64(double %295, double %279, double %298)
  %300 = getelementptr inbounds double, ptr %275, i64 9
  %301 = load double, ptr %300, align 8, !tbaa !25
  %302 = call double @llvm.fabs.f64(double %301)
  %303 = fcmp olt double %302, 1.000000e-15
  br i1 %303, label %304, label %307

304:                                              ; preds = %274
  %305 = fneg double %299
  %306 = fdiv double %305, %293
  br label %322

307:                                              ; preds = %274
  %308 = fmul double %301, -2.000000e+00
  %309 = fmul double %308, %299
  %310 = call double @llvm.fmuladd.f64(double %293, double %293, double %309)
  %311 = fcmp olt double %310, 0.000000e+00
  br i1 %311, label %800, label %312

312:                                              ; preds = %307
  %313 = call double @sqrt(double noundef %310) #20
  %314 = fsub double %313, %293
  %315 = load ptr, ptr %10, align 8, !tbaa !26
  %316 = getelementptr inbounds double, ptr %315, i64 9
  %317 = load double, ptr %316, align 8, !tbaa !25
  %318 = fdiv double %314, %317
  %319 = load double, ptr %315, align 8, !tbaa !25
  %320 = getelementptr inbounds double, ptr %315, i64 2
  %321 = load double, ptr %320, align 8, !tbaa !25
  br label %322

322:                                              ; preds = %304, %312
  %323 = phi double [ %321, %312 ], [ %287, %304 ]
  %324 = phi double [ %319, %312 ], [ %296, %304 ]
  %325 = phi ptr [ %315, %312 ], [ %275, %304 ]
  %326 = phi double [ %318, %312 ], [ %306, %304 ]
  %327 = getelementptr inbounds double, ptr %325, i64 1
  %328 = load double, ptr %327, align 8, !tbaa !25
  %329 = fneg double %328
  %330 = call double @llvm.fmuladd.f64(double %329, double %326, double %279)
  %331 = call double @llvm.fmuladd.f64(double %323, double %326, double %324)
  %332 = fdiv double %330, %331
  %333 = insertelement <2 x double> poison, double %332, i64 0
  %334 = insertelement <2 x double> %333, double %326, i64 1
  br label %800

335:                                              ; preds = %92
  %336 = load ptr, ptr %10, align 8, !tbaa !26
  %337 = getelementptr inbounds double, ptr %336, i64 1
  %338 = load double, ptr %337, align 8, !tbaa !25
  %339 = fptosi double %338 to i64
  %340 = getelementptr double, ptr %336, i64 %339
  %341 = icmp sgt i64 %339, 0
  br i1 %341, label %342, label %371

342:                                              ; preds = %335
  %343 = extractelement <2 x double> %106, i64 0
  %344 = extractelement <2 x double> %106, i64 1
  br label %345

345:                                              ; preds = %342, %345
  %346 = phi double [ %367, %345 ], [ 0.000000e+00, %342 ]
  %347 = phi double [ %368, %345 ], [ 0.000000e+00, %342 ]
  %348 = phi double [ %357, %345 ], [ 0.000000e+00, %342 ]
  %349 = phi double [ %359, %345 ], [ 0.000000e+00, %342 ]
  %350 = phi i64 [ %369, %345 ], [ 0, %342 ]
  %351 = phi <2 x double> [ %366, %345 ], [ zeroinitializer, %342 ]
  %352 = call fastcc double @poly_basis_fn(i64 noundef %350, double noundef %343, double noundef %344) #21
  %353 = add nuw nsw i64 %350, 2
  %354 = getelementptr inbounds double, ptr %336, i64 %353
  %355 = load double, ptr %354, align 8, !tbaa !25
  %356 = call fastcc double @poly_basis_dx(i64 noundef %350, double noundef %343, double noundef %344) #21
  %357 = call double @llvm.fmuladd.f64(double %356, double %355, double %348)
  %358 = call fastcc double @poly_basis_dy(i64 noundef %350, double noundef %343, double noundef %344) #21
  %359 = call double @llvm.fmuladd.f64(double %358, double %355, double %349)
  %360 = getelementptr double, ptr %340, i64 %353
  %361 = load double, ptr %360, align 8, !tbaa !25
  %362 = insertelement <2 x double> poison, double %352, i64 0
  %363 = shufflevector <2 x double> %362, <2 x double> poison, <2 x i32> zeroinitializer
  %364 = insertelement <2 x double> poison, double %355, i64 0
  %365 = insertelement <2 x double> %364, double %361, i64 1
  %366 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %363, <2 x double> %365, <2 x double> %351)
  %367 = call double @llvm.fmuladd.f64(double %356, double %361, double %346)
  %368 = call double @llvm.fmuladd.f64(double %358, double %361, double %347)
  %369 = add nuw nsw i64 %350, 1
  %370 = icmp eq i64 %369, %339
  br i1 %370, label %371, label %345, !llvm.loop !70

371:                                              ; preds = %345, %335
  %372 = phi double [ 0.000000e+00, %335 ], [ %359, %345 ]
  %373 = phi double [ 0.000000e+00, %335 ], [ %357, %345 ]
  %374 = phi double [ 0.000000e+00, %335 ], [ %368, %345 ]
  %375 = phi double [ 0.000000e+00, %335 ], [ %367, %345 ]
  %376 = phi <2 x double> [ zeroinitializer, %335 ], [ %366, %345 ]
  %377 = load ptr, ptr %8, align 8, !tbaa !26
  %378 = getelementptr inbounds ptr, ptr %377, i64 %89
  %379 = load ptr, ptr %378, align 8, !tbaa !26
  %380 = fmul double %97, %373
  %381 = fmul double %97, %372
  %382 = fmul double %97, %375
  %383 = fmul double %97, %374
  call void @ScaleResampleFilter(ptr noundef %379, double noundef %380, double noundef %381, double noundef %382, double noundef %383) #20
  br label %800

384:                                              ; preds = %92
  %385 = extractelement <2 x double> %106, i64 0
  %386 = extractelement <2 x double> %106, i64 1
  %387 = call double @atan2(double noundef %386, double noundef %385) #20
  %388 = load ptr, ptr %10, align 8, !tbaa !26
  %389 = load double, ptr %388, align 8, !tbaa !25
  %390 = fsub double %387, %389
  %391 = fdiv double %390, 0x401921FB54442D18
  %392 = call fastcc double @MagickRound(double noundef %391) #21
  %393 = fsub double %391, %392
  %394 = call double @hypot(double noundef %385, double noundef %386) #20
  %395 = fcmp ogt double %394, 1.000000e-15
  %396 = load ptr, ptr %8, align 8, !tbaa !26
  %397 = getelementptr inbounds ptr, ptr %396, i64 %89
  %398 = load ptr, ptr %397, align 8, !tbaa !26
  %399 = load double, ptr %9, align 8, !tbaa !25
  %400 = fmul double %399, 0.000000e+00
  br i1 %395, label %401, label %407

401:                                              ; preds = %384
  %402 = load ptr, ptr %10, align 8, !tbaa !26
  %403 = getelementptr inbounds double, ptr %402, i64 1
  %404 = load double, ptr %403, align 8, !tbaa !25
  %405 = fmul double %394, 0x401921FB54442D18
  %406 = fdiv double %404, %405
  br label %414

407:                                              ; preds = %384
  %408 = load ptr, ptr %2, align 8, !tbaa !26
  %409 = getelementptr inbounds %struct._Image, ptr %408, i64 0, i32 7
  %410 = load i64, ptr %409, align 8, !tbaa !29
  %411 = shl i64 %410, 1
  %412 = uitofp i64 %411 to double
  %413 = load ptr, ptr %10, align 8, !tbaa !26
  br label %414

414:                                              ; preds = %407, %401
  %415 = phi ptr [ %413, %407 ], [ %402, %401 ]
  %416 = phi double [ %412, %407 ], [ %406, %401 ]
  %417 = fmul double %399, %416
  %418 = getelementptr inbounds double, ptr %415, i64 3
  %419 = load double, ptr %418, align 8, !tbaa !25
  %420 = fmul double %399, %419
  call void @ScaleResampleFilter(ptr noundef %398, double noundef %417, double noundef %400, double noundef %400, double noundef %420) #20
  %421 = load ptr, ptr %10, align 8, !tbaa !26
  %422 = getelementptr inbounds double, ptr %421, i64 1
  %423 = load double, ptr %422, align 8, !tbaa !25
  %424 = getelementptr inbounds double, ptr %421, i64 4
  %425 = load double, ptr %424, align 8, !tbaa !25
  %426 = call double @llvm.fmuladd.f64(double %393, double %423, double %425)
  %427 = load ptr, ptr %12, align 8, !tbaa !26
  %428 = getelementptr inbounds %struct._Image, ptr %427, i64 0, i32 26, i32 2
  %429 = load i64, ptr %428, align 8, !tbaa !33
  %430 = sitofp i64 %429 to double
  %431 = fadd double %426, %430
  %432 = fadd double %431, 5.000000e-01
  %433 = getelementptr inbounds double, ptr %421, i64 2
  %434 = load double, ptr %433, align 8, !tbaa !25
  %435 = fsub double %434, %394
  %436 = getelementptr inbounds double, ptr %421, i64 3
  %437 = load double, ptr %436, align 8, !tbaa !25
  %438 = getelementptr inbounds %struct._Image, ptr %427, i64 0, i32 26, i32 3
  %439 = load i64, ptr %438, align 8, !tbaa !34
  %440 = sitofp i64 %439 to double
  %441 = call double @llvm.fmuladd.f64(double %435, double %437, double %440)
  %442 = insertelement <2 x double> poison, double %432, i64 0
  %443 = insertelement <2 x double> %442, double %441, i64 1
  br label %800

444:                                              ; preds = %92
  %445 = load ptr, ptr %10, align 8, !tbaa !26
  %446 = getelementptr inbounds double, ptr %445, i64 2
  %447 = load double, ptr %446, align 8, !tbaa !25
  %448 = extractelement <2 x double> %106, i64 0
  %449 = fsub double %448, %447
  %450 = getelementptr inbounds double, ptr %445, i64 3
  %451 = load double, ptr %450, align 8, !tbaa !25
  %452 = extractelement <2 x double> %106, i64 1
  %453 = fsub double %452, %451
  %454 = call double @atan2(double noundef %449, double noundef %453) #20
  %455 = load ptr, ptr %10, align 8, !tbaa !26
  %456 = getelementptr inbounds double, ptr %455, i64 4
  %457 = load double, ptr %456, align 8, !tbaa !25
  %458 = getelementptr inbounds double, ptr %455, i64 5
  %459 = load double, ptr %458, align 8, !tbaa !25
  %460 = fadd double %457, %459
  %461 = fmul double %460, 5.000000e-01
  %462 = fsub double %454, %461
  %463 = fdiv double %462, 0x401921FB54442D18
  %464 = call fastcc double @MagickRound(double noundef %463) #21
  %465 = fsub double %463, %464
  %466 = fmul double %465, 0x401921FB54442D18
  %467 = call double @hypot(double noundef %449, double noundef %453) #20
  %468 = fcmp ogt double %467, 1.000000e-15
  %469 = load ptr, ptr %8, align 8, !tbaa !26
  %470 = getelementptr inbounds ptr, ptr %469, i64 %89
  %471 = load ptr, ptr %470, align 8, !tbaa !26
  %472 = load double, ptr %9, align 8, !tbaa !25
  %473 = fmul double %472, 0.000000e+00
  br i1 %468, label %474, label %480

474:                                              ; preds = %444
  %475 = load ptr, ptr %10, align 8, !tbaa !26
  %476 = getelementptr inbounds double, ptr %475, i64 6
  %477 = load double, ptr %476, align 8, !tbaa !25
  %478 = fmul double %467, 0x401921FB54442D18
  %479 = fdiv double %477, %478
  br label %487

480:                                              ; preds = %444
  %481 = load ptr, ptr %2, align 8, !tbaa !26
  %482 = getelementptr inbounds %struct._Image, ptr %481, i64 0, i32 7
  %483 = load i64, ptr %482, align 8, !tbaa !29
  %484 = shl i64 %483, 1
  %485 = uitofp i64 %484 to double
  %486 = load ptr, ptr %10, align 8, !tbaa !26
  br label %487

487:                                              ; preds = %480, %474
  %488 = phi ptr [ %486, %480 ], [ %475, %474 ]
  %489 = phi double [ %485, %480 ], [ %479, %474 ]
  %490 = fmul double %472, %489
  %491 = getelementptr inbounds double, ptr %488, i64 7
  %492 = load double, ptr %491, align 8, !tbaa !25
  %493 = fmul double %472, %492
  call void @ScaleResampleFilter(ptr noundef %471, double noundef %490, double noundef %473, double noundef %473, double noundef %493) #20
  %494 = load ptr, ptr %10, align 8, !tbaa !26
  %495 = getelementptr inbounds double, ptr %494, i64 6
  %496 = load double, ptr %495, align 8, !tbaa !25
  %497 = load ptr, ptr %12, align 8, !tbaa !26
  %498 = getelementptr inbounds %struct._Image, ptr %497, i64 0, i32 7
  %499 = load i64, ptr %498, align 8, !tbaa !29
  %500 = uitofp i64 %499 to double
  %501 = fmul double %500, 5.000000e-01
  %502 = call double @llvm.fmuladd.f64(double %466, double %496, double %501)
  %503 = getelementptr inbounds %struct._Image, ptr %497, i64 0, i32 26, i32 2
  %504 = load i64, ptr %503, align 8, !tbaa !33
  %505 = sitofp i64 %504 to double
  %506 = fadd double %502, %505
  %507 = getelementptr inbounds double, ptr %494, i64 1
  %508 = load double, ptr %507, align 8, !tbaa !25
  %509 = fsub double %467, %508
  %510 = getelementptr inbounds double, ptr %494, i64 7
  %511 = load double, ptr %510, align 8, !tbaa !25
  %512 = getelementptr inbounds %struct._Image, ptr %497, i64 0, i32 26, i32 3
  %513 = load i64, ptr %512, align 8, !tbaa !34
  %514 = sitofp i64 %513 to double
  %515 = call double @llvm.fmuladd.f64(double %509, double %511, double %514)
  %516 = insertelement <2 x double> poison, double %506, i64 0
  %517 = insertelement <2 x double> %516, double %515, i64 1
  br label %800

518:                                              ; preds = %92
  %519 = sitofp i64 %95 to double
  %520 = fadd double %519, 5.000000e-01
  %521 = fmul double %520, %97
  %522 = load ptr, ptr %10, align 8, !tbaa !26
  %523 = getelementptr inbounds double, ptr %522, i64 6
  %524 = load double, ptr %523, align 8, !tbaa !25
  %525 = getelementptr inbounds double, ptr %522, i64 4
  %526 = load double, ptr %525, align 8, !tbaa !25
  %527 = call double @llvm.fmuladd.f64(double %521, double %524, double %526)
  %528 = fmul double %91, %97
  %529 = getelementptr inbounds double, ptr %522, i64 7
  %530 = load double, ptr %529, align 8, !tbaa !25
  %531 = getelementptr inbounds double, ptr %522, i64 1
  %532 = load double, ptr %531, align 8, !tbaa !25
  %533 = call double @llvm.fmuladd.f64(double %528, double %530, double %532)
  %534 = call double @sin(double noundef %527) #20
  %535 = load ptr, ptr %10, align 8, !tbaa !26
  %536 = getelementptr inbounds double, ptr %535, i64 2
  %537 = load double, ptr %536, align 8, !tbaa !25
  %538 = call double @cos(double noundef %527) #20
  %539 = load ptr, ptr %10, align 8, !tbaa !26
  %540 = getelementptr inbounds double, ptr %539, i64 3
  %541 = load double, ptr %540, align 8, !tbaa !25
  %542 = insertelement <2 x double> poison, double %533, i64 0
  %543 = shufflevector <2 x double> %542, <2 x double> poison, <2 x i32> zeroinitializer
  %544 = insertelement <2 x double> poison, double %534, i64 0
  %545 = insertelement <2 x double> %544, double %538, i64 1
  %546 = insertelement <2 x double> poison, double %537, i64 0
  %547 = insertelement <2 x double> %546, double %541, i64 1
  %548 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %543, <2 x double> %545, <2 x double> %547)
  br label %800

549:                                              ; preds = %92
  %550 = load ptr, ptr %10, align 8, !tbaa !26
  %551 = getelementptr inbounds double, ptr %550, i64 4
  %552 = load double, ptr %551, align 8, !tbaa !25
  %553 = extractelement <2 x double> %106, i64 0
  %554 = fsub double %553, %552
  %555 = getelementptr inbounds double, ptr %550, i64 5
  %556 = load double, ptr %555, align 8, !tbaa !25
  %557 = extractelement <2 x double> %106, i64 1
  %558 = fsub double %557, %556
  %559 = getelementptr inbounds double, ptr %550, i64 1
  %560 = load double, ptr %559, align 8, !tbaa !25
  %561 = fdiv double %554, %560
  %562 = call double @atan(double noundef %561) #20
  %563 = call double @cos(double noundef %562) #20
  %564 = load ptr, ptr %10, align 8, !tbaa !26
  %565 = getelementptr inbounds double, ptr %564, i64 1
  %566 = load double, ptr %565, align 8, !tbaa !25
  %567 = load ptr, ptr %8, align 8, !tbaa !26
  %568 = getelementptr inbounds ptr, ptr %567, i64 %89
  %569 = load ptr, ptr %568, align 8, !tbaa !26
  %570 = load double, ptr %9, align 8, !tbaa !25
  %571 = call double @llvm.fmuladd.f64(double %561, double %561, double 1.000000e+00)
  %572 = fdiv double 1.000000e+00, %571
  %573 = fmul double %572, %570
  %574 = fmul double %570, 0.000000e+00
  %575 = fneg double %561
  %576 = insertelement <2 x double> poison, double %562, i64 0
  %577 = insertelement <2 x double> %576, double %558, i64 1
  %578 = insertelement <2 x double> poison, double %566, i64 0
  %579 = insertelement <2 x double> %578, double %563, i64 1
  %580 = fmul <2 x double> %577, %579
  %581 = extractelement <2 x double> %580, i64 1
  %582 = fmul double %581, %575
  %583 = fmul double %563, %582
  %584 = fmul double %563, %583
  %585 = fdiv double %584, %566
  %586 = fmul double %570, %585
  %587 = fdiv double %581, %558
  %588 = fmul double %587, %570
  call void @ScaleResampleFilter(ptr noundef %569, double noundef %573, double noundef %574, double noundef %586, double noundef %588) #20
  %589 = load ptr, ptr %10, align 8, !tbaa !26
  %590 = getelementptr inbounds double, ptr %589, i64 2
  %591 = load <2 x double>, ptr %590, align 8, !tbaa !25
  %592 = fadd <2 x double> %580, %591
  br label %800

593:                                              ; preds = %92
  %594 = load ptr, ptr %10, align 8, !tbaa !26
  %595 = getelementptr inbounds double, ptr %594, i64 4
  %596 = load double, ptr %595, align 8, !tbaa !25
  %597 = extractelement <2 x double> %106, i64 0
  %598 = fsub double %597, %596
  %599 = getelementptr inbounds double, ptr %594, i64 1
  %600 = load double, ptr %599, align 8, !tbaa !25
  %601 = call double @llvm.fabs.f64(double %598)
  %602 = fneg double %601
  %603 = call double @llvm.fmuladd.f64(double %600, double 0x3FF921FB54442D18, double %602)
  %604 = fdiv double %603, %97
  %605 = fadd double %604, 5.000000e-01
  %606 = fcmp ogt double %605, 0.000000e+00
  br i1 %606, label %607, label %661

607:                                              ; preds = %593
  %608 = getelementptr inbounds double, ptr %594, i64 5
  %609 = load double, ptr %608, align 8, !tbaa !25
  %610 = extractelement <2 x double> %106, i64 1
  %611 = fsub double %610, %609
  %612 = fdiv double %598, %600
  %613 = call double @cos(double noundef %612) #20
  %614 = fdiv double 1.000000e+00, %613
  %615 = call double @tan(double noundef %612) #20
  %616 = load ptr, ptr %10, align 8, !tbaa !26
  %617 = getelementptr inbounds double, ptr %616, i64 1
  %618 = load double, ptr %617, align 8, !tbaa !25
  %619 = insertelement <2 x double> poison, double %615, i64 0
  %620 = insertelement <2 x double> %619, double %611, i64 1
  %621 = insertelement <2 x double> poison, double %618, i64 0
  %622 = insertelement <2 x double> %621, double %614, i64 1
  %623 = fmul <2 x double> %620, %622
  %624 = load ptr, ptr %8, align 8, !tbaa !26
  %625 = getelementptr inbounds ptr, ptr %624, i64 %89
  %626 = load ptr, ptr %625, align 8, !tbaa !26
  %627 = load double, ptr %9, align 8, !tbaa !25
  %628 = fmul double %614, %614
  %629 = fmul double %628, %627
  %630 = fmul double %627, 0.000000e+00
  %631 = extractelement <2 x double> %623, i64 1
  %632 = fmul double %614, %631
  %633 = fdiv double %632, %618
  %634 = fmul double %633, %627
  %635 = fmul double %614, %627
  call void @ScaleResampleFilter(ptr noundef %626, double noundef %629, double noundef %630, double noundef %634, double noundef %635) #20
  %636 = fcmp oeq double %612, 5.000000e-01
  %637 = fcmp oeq double %611, 5.000000e-01
  %638 = and i1 %636, %637
  %639 = load ptr, ptr %10, align 8, !tbaa !26
  br i1 %638, label %640, label %661

640:                                              ; preds = %607
  %641 = load ptr, ptr @stderr, align 8, !tbaa !26
  %642 = getelementptr inbounds double, ptr %639, i64 1
  %643 = load double, ptr %642, align 8, !tbaa !25
  %644 = fmul double %643, 5.000000e-01
  %645 = extractelement <2 x double> %623, i64 0
  %646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %641, ptr noundef nonnull @.str.101, double noundef %644, double noundef 5.000000e-01, double noundef %645, double noundef %631) #23
  %647 = load ptr, ptr @stderr, align 8, !tbaa !26
  %648 = load ptr, ptr %10, align 8, !tbaa !26
  %649 = getelementptr inbounds double, ptr %648, i64 1
  %650 = load double, ptr %649, align 8, !tbaa !25
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %647, ptr noundef nonnull @.str.102, double noundef %650, double noundef 0x403CA5DC1A63C1F8, double noundef %605) #23
  %652 = load ptr, ptr @stderr, align 8, !tbaa !26
  %653 = load ptr, ptr %10, align 8, !tbaa !26
  %654 = getelementptr inbounds double, ptr %653, i64 1
  %655 = load double, ptr %654, align 8, !tbaa !25
  %656 = fdiv double %632, %655
  %657 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %652, ptr noundef nonnull @.str.103, double noundef %628, double noundef 0.000000e+00, double noundef %656, double noundef %614) #23
  %658 = load ptr, ptr @stderr, align 8, !tbaa !26
  %659 = call i32 @fflush(ptr noundef %658) #21
  %660 = load ptr, ptr %10, align 8, !tbaa !26
  br label %661

661:                                              ; preds = %607, %640, %593
  %662 = phi ptr [ %594, %593 ], [ %660, %640 ], [ %639, %607 ]
  %663 = phi <2 x double> [ %106, %593 ], [ %623, %640 ], [ %623, %607 ]
  %664 = getelementptr inbounds double, ptr %662, i64 2
  %665 = load <2 x double>, ptr %664, align 8, !tbaa !25
  %666 = fadd <2 x double> %663, %665
  br label %800

667:                                              ; preds = %92, %92
  %668 = load ptr, ptr %10, align 8, !tbaa !26
  %669 = getelementptr inbounds double, ptr %668, i64 8
  %670 = load <2 x double>, ptr %669, align 8, !tbaa !25
  %671 = fsub <2 x double> %106, %670
  %672 = extractelement <2 x double> %671, i64 1
  %673 = fmul double %672, %672
  %674 = extractelement <2 x double> %671, i64 0
  %675 = call double @llvm.fmuladd.f64(double %674, double %674, double %673)
  %676 = call double @llvm.sqrt.f64(double %675)
  %677 = fcmp ogt double %676, 1.000000e-15
  br i1 %677, label %678, label %738

678:                                              ; preds = %667
  %679 = load double, ptr %668, align 8, !tbaa !25
  %680 = getelementptr inbounds double, ptr %668, i64 1
  %681 = load double, ptr %680, align 8, !tbaa !25
  %682 = getelementptr inbounds double, ptr %668, i64 2
  %683 = load double, ptr %682, align 8, !tbaa !25
  %684 = getelementptr inbounds double, ptr %668, i64 3
  %685 = load double, ptr %684, align 8, !tbaa !25
  %686 = getelementptr inbounds double, ptr %668, i64 4
  %687 = load double, ptr %686, align 8, !tbaa !25
  %688 = getelementptr inbounds double, ptr %668, i64 5
  %689 = load double, ptr %688, align 8, !tbaa !25
  %690 = getelementptr inbounds double, ptr %668, i64 6
  %691 = load double, ptr %690, align 8, !tbaa !25
  %692 = insertelement <2 x double> poison, double %679, i64 0
  %693 = insertelement <2 x double> %692, double %687, i64 1
  %694 = insertelement <2 x double> poison, double %676, i64 0
  %695 = shufflevector <2 x double> %694, <2 x double> poison, <2 x i32> zeroinitializer
  %696 = insertelement <2 x double> poison, double %681, i64 0
  %697 = insertelement <2 x double> %696, double %689, i64 1
  %698 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %693, <2 x double> %695, <2 x double> %697)
  %699 = insertelement <2 x double> poison, double %683, i64 0
  %700 = insertelement <2 x double> %699, double %691, i64 1
  %701 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %698, <2 x double> %695, <2 x double> %700)
  %702 = getelementptr inbounds double, ptr %668, i64 7
  %703 = load double, ptr %702, align 8, !tbaa !25
  %704 = insertelement <2 x double> poison, double %685, i64 0
  %705 = insertelement <2 x double> %704, double %703, i64 1
  %706 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %701, <2 x double> %695, <2 x double> %705)
  %707 = fmul <2 x double> %693, <double 3.000000e+00, double 3.000000e+00>
  %708 = fmul <2 x double> %697, <double 2.000000e+00, double 2.000000e+00>
  %709 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %707, <2 x double> %695, <2 x double> %708)
  %710 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %709, <2 x double> %695, <2 x double> %700)
  %711 = fdiv <2 x double> %710, %695
  %712 = icmp eq i32 %107, 15
  %713 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %706
  %714 = fneg <2 x double> %713
  %715 = fmul <2 x double> %713, %714
  %716 = fmul <2 x double> %711, %715
  %717 = select i1 %712, <2 x double> %713, <2 x double> %706
  %718 = select i1 %712, <2 x double> %716, <2 x double> %711
  %719 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %671, <2 x double> %717, <2 x double> %670)
  %720 = load ptr, ptr %8, align 8, !tbaa !26
  %721 = getelementptr inbounds ptr, ptr %720, i64 %89
  %722 = load ptr, ptr %721, align 8, !tbaa !26
  %723 = fmul <2 x double> %671, %718
  %724 = extractelement <2 x double> %723, i64 0
  %725 = extractelement <2 x double> %717, i64 0
  %726 = call double @llvm.fmuladd.f64(double %724, double %674, double %725)
  %727 = fmul double %726, %97
  %728 = fmul double %672, %724
  %729 = fmul double %728, %97
  %730 = extractelement <2 x double> %718, i64 1
  %731 = fmul double %674, %730
  %732 = fmul double %672, %731
  %733 = fmul double %732, %97
  %734 = fmul double %672, %730
  %735 = extractelement <2 x double> %717, i64 1
  %736 = call double @llvm.fmuladd.f64(double %734, double %672, double %735)
  %737 = fmul double %736, %97
  call void @ScaleResampleFilter(ptr noundef %722, double noundef %727, double noundef %729, double noundef %733, double noundef %737) #20
  br label %800

738:                                              ; preds = %667
  %739 = icmp eq i32 %107, 14
  %740 = load ptr, ptr %8, align 8, !tbaa !26
  %741 = getelementptr inbounds ptr, ptr %740, i64 %89
  %742 = load ptr, ptr %741, align 8, !tbaa !26
  %743 = getelementptr inbounds double, ptr %668, i64 3
  %744 = load double, ptr %743, align 8, !tbaa !25
  br i1 %739, label %745, label %751

745:                                              ; preds = %738
  %746 = fmul double %97, %744
  %747 = fmul double %97, 0.000000e+00
  %748 = getelementptr inbounds double, ptr %668, i64 7
  %749 = load double, ptr %748, align 8, !tbaa !25
  %750 = fmul double %97, %749
  call void @ScaleResampleFilter(ptr noundef %742, double noundef %746, double noundef %747, double noundef %747, double noundef %750) #20
  br label %800

751:                                              ; preds = %738
  %752 = fdiv double 1.000000e+00, %744
  %753 = fmul double %97, %752
  %754 = fmul double %97, 0.000000e+00
  %755 = getelementptr inbounds double, ptr %668, i64 7
  %756 = load double, ptr %755, align 8, !tbaa !25
  %757 = fdiv double 1.000000e+00, %756
  %758 = fmul double %97, %757
  call void @ScaleResampleFilter(ptr noundef %742, double noundef %753, double noundef %754, double noundef %754, double noundef %758) #20
  br label %800

759:                                              ; preds = %111, %759
  %760 = phi ptr [ %780, %759 ], [ %112, %111 ]
  %761 = phi double [ %789, %759 ], [ 0.000000e+00, %111 ]
  %762 = phi i64 [ %790, %759 ], [ 0, %111 ]
  %763 = phi <2 x double> [ %788, %759 ], [ zeroinitializer, %111 ]
  %764 = or disjoint i64 %762, 2
  %765 = getelementptr inbounds double, ptr %760, i64 %764
  %766 = load double, ptr %765, align 8, !tbaa !25
  %767 = fsub double %113, %766
  %768 = or disjoint i64 %762, 3
  %769 = getelementptr inbounds double, ptr %760, i64 %768
  %770 = load double, ptr %769, align 8, !tbaa !25
  %771 = fsub double %114, %770
  %772 = fmul double %771, %771
  %773 = call double @llvm.fmuladd.f64(double %767, double %767, double %772)
  %774 = load ptr, ptr %10, align 8, !tbaa !26
  %775 = load double, ptr %774, align 8, !tbaa !25
  %776 = call double @pow(double noundef %773, double noundef %775) #20
  %777 = fcmp olt double %776, 1.000000e+00
  %778 = fdiv double 1.000000e+00, %776
  %779 = select i1 %777, double 1.000000e+00, double %778
  %780 = load ptr, ptr %14, align 8, !tbaa !26
  %781 = getelementptr inbounds double, ptr %780, i64 %762
  %782 = getelementptr inbounds double, ptr %780, i64 %764
  %783 = load <2 x double>, ptr %781, align 8, !tbaa !25
  %784 = load <2 x double>, ptr %782, align 8, !tbaa !25
  %785 = fsub <2 x double> %783, %784
  %786 = insertelement <2 x double> poison, double %779, i64 0
  %787 = shufflevector <2 x double> %786, <2 x double> poison, <2 x i32> zeroinitializer
  %788 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %785, <2 x double> %787, <2 x double> %763)
  %789 = fadd double %761, %779
  %790 = add i64 %762, 4
  %791 = load i64, ptr %13, align 8, !tbaa !28
  %792 = icmp ult i64 %790, %791
  br i1 %792, label %759, label %793, !llvm.loop !71

793:                                              ; preds = %759, %108
  %794 = phi double [ 0.000000e+00, %108 ], [ %789, %759 ]
  %795 = phi <2 x double> [ zeroinitializer, %108 ], [ %788, %759 ]
  %796 = insertelement <2 x double> poison, double %794, i64 0
  %797 = shufflevector <2 x double> %796, <2 x double> poison, <2 x i32> zeroinitializer
  %798 = fdiv <2 x double> %795, %797
  %799 = fadd <2 x double> %106, %798
  br label %800

800:                                              ; preds = %307, %678, %751, %745, %322, %197, %200, %92, %793, %661, %549, %518, %487, %414, %371, %229, %115
  %801 = phi double [ %93, %92 ], [ %93, %793 ], [ %605, %661 ], [ %93, %549 ], [ %93, %518 ], [ %93, %487 ], [ %93, %414 ], [ %93, %371 ], [ %93, %229 ], [ %93, %115 ], [ %198, %200 ], [ %198, %197 ], [ 1.000000e+00, %322 ], [ %93, %678 ], [ %93, %745 ], [ %93, %751 ], [ 0.000000e+00, %307 ]
  %802 = phi <2 x double> [ %106, %92 ], [ %799, %793 ], [ %666, %661 ], [ %592, %549 ], [ %548, %518 ], [ %517, %487 ], [ %443, %414 ], [ %376, %371 ], [ %260, %229 ], [ %138, %115 ], [ %204, %200 ], [ %106, %197 ], [ %334, %322 ], [ %719, %678 ], [ %106, %745 ], [ %106, %751 ], [ %106, %307 ]
  %803 = load i32, ptr %15, align 4, !tbaa !27
  %804 = icmp eq i32 %803, 0
  %805 = load i32, ptr %7, align 4
  %806 = icmp eq i32 %805, 9
  %807 = select i1 %804, i1 true, i1 %806
  br i1 %807, label %814, label %808

808:                                              ; preds = %800
  %809 = load ptr, ptr %12, align 8, !tbaa !26
  %810 = getelementptr inbounds %struct._Image, ptr %809, i64 0, i32 26, i32 2
  %811 = load <2 x i64>, ptr %810, align 8, !tbaa !28
  %812 = sitofp <2 x i64> %811 to <2 x double>
  %813 = fsub <2 x double> %802, %812
  br label %814

814:                                              ; preds = %808, %800
  %815 = phi <2 x double> [ %813, %808 ], [ %802, %800 ]
  %816 = fcmp ugt double %801, 0.000000e+00
  br i1 %816, label %817, label %831

817:                                              ; preds = %814
  %818 = extractelement <2 x double> %815, i64 1
  %819 = fadd double %818, -5.000000e-01
  %820 = extractelement <2 x double> %815, i64 0
  %821 = fadd double %820, -5.000000e-01
  %822 = load ptr, ptr %8, align 8, !tbaa !26
  %823 = getelementptr inbounds ptr, ptr %822, i64 %89
  %824 = load ptr, ptr %823, align 8, !tbaa !26
  %825 = call i32 @ResamplePixelColor(ptr noundef %824, double noundef %821, double noundef %819, ptr noundef nonnull %22) #20
  %826 = fcmp olt double %801, 1.000000e+00
  br i1 %826, label %827, label %831

827:                                              ; preds = %817
  %828 = fptrunc double %801 to float
  %829 = fsub double 1.000000e+00, %801
  %830 = fptrunc double %829 to float
  call fastcc void @MagickPixelCompositeBlend(ptr noundef nonnull %22, float noundef %828, ptr noundef nonnull %23, float noundef %830, ptr noundef nonnull %22) #21
  br label %831

831:                                              ; preds = %817, %827, %814
  %832 = phi ptr [ %23, %814 ], [ %22, %827 ], [ %22, %817 ]
  %833 = load ptr, ptr %2, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %833, ptr noundef nonnull %832, ptr noundef nonnull %96, ptr noundef %94) #21
  %834 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %835 = getelementptr inbounds i16, ptr %94, i64 1
  %836 = add nuw nsw i64 %95, 1
  %837 = load ptr, ptr %2, align 8, !tbaa !26
  %838 = getelementptr inbounds %struct._Image, ptr %837, i64 0, i32 7
  %839 = load i64, ptr %838, align 8, !tbaa !29
  %840 = icmp slt i64 %836, %839
  br i1 %840, label %92, label %841, !llvm.loop !72

841:                                              ; preds = %831, %83
  %842 = load ptr, ptr %3, align 8, !tbaa !26
  %843 = load ptr, ptr %4, align 8, !tbaa !26
  %844 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %842, ptr noundef %843) #24
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %847

846:                                              ; preds = %841
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %847

847:                                              ; preds = %846, %841
  %848 = load ptr, ptr %12, align 8, !tbaa !26
  %849 = getelementptr inbounds %struct._Image, ptr %848, i64 0, i32 47
  %850 = load ptr, ptr %849, align 8, !tbaa !73
  %851 = icmp eq ptr %850, null
  br i1 %851, label %861, label %852

852:                                              ; preds = %847
  call void @__kmpc_critical(ptr nonnull @2, i32 %30, ptr nonnull @.gomp_critical_user_MagickCore_DistortImage.var)
  %853 = load ptr, ptr %12, align 8, !tbaa !26
  %854 = load i64, ptr %16, align 8, !tbaa !52
  %855 = add nsw i64 %854, 1
  store i64 %855, ptr %16, align 8, !tbaa !52
  %856 = getelementptr inbounds %struct._Image, ptr %853, i64 0, i32 8
  %857 = load i64, ptr %856, align 8, !tbaa !31
  %858 = call fastcc i32 @SetImageProgress(ptr noundef %853, ptr noundef nonnull @.str.104, i64 noundef %854, i64 noundef %857) #21
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %30, ptr nonnull @.gomp_critical_user_MagickCore_DistortImage.var)
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %861

860:                                              ; preds = %852, %41
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %861

861:                                              ; preds = %860, %847, %852
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #10
  %862 = add nsw i64 %42, 1
  %863 = load i64, ptr %19, align 8, !tbaa !28
  %864 = icmp slt i64 %42, %863
  br i1 %864, label %41, label %865

865:                                              ; preds = %861
  %866 = load i64, ptr %18, align 8, !tbaa !28
  br label %867

867:                                              ; preds = %865, %37
  %868 = phi i64 [ %39, %37 ], [ %866, %865 ]
  %869 = phi i64 [ %38, %37 ], [ %863, %865 ]
  %870 = load i64, ptr %20, align 8, !tbaa !28
  %871 = add nsw i64 %870, %868
  store i64 %871, ptr %18, align 8, !tbaa !28
  %872 = add nsw i64 %870, %869
  %873 = call i64 @llvm.smin.i64(i64 %872, i64 %27)
  store i64 %873, ptr %19, align 8, !tbaa !28
  %874 = icmp sgt i64 %871, %873
  br i1 %874, label %875, label %37

875:                                              ; preds = %867, %29
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #10
  br label %876

876:                                              ; preds = %875, %17
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #10

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #11 {
  %1 = tail call i32 @omp_get_thread_num() #21
  ret i32 %1
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !64
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !64
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !77
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !78
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !79
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #24
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !78
  %24 = tail call float @DecodePixelGamma(float noundef %23) #24
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !79
  %27 = tail call float @DecodePixelGamma(float noundef %26) #24
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !76
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !68
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !79
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @poly_basis_fn(i64 noundef %0, double noundef %1, double noundef %2) unnamed_addr #5 {
  switch i64 %0, label %74 [
    i64 0, label %75
    i64 1, label %4
    i64 2, label %5
    i64 3, label %6
    i64 4, label %8
    i64 5, label %10
    i64 6, label %12
    i64 7, label %15
    i64 8, label %18
    i64 9, label %21
    i64 10, label %24
    i64 11, label %28
    i64 12, label %32
    i64 13, label %36
    i64 14, label %40
    i64 15, label %44
    i64 16, label %49
    i64 17, label %54
    i64 18, label %59
    i64 19, label %64
    i64 20, label %69
  ]

4:                                                ; preds = %3
  br label %75

5:                                                ; preds = %3
  br label %75

6:                                                ; preds = %3
  %7 = fmul double %1, %2
  br label %75

8:                                                ; preds = %3
  %9 = fmul double %1, %1
  br label %75

10:                                               ; preds = %3
  %11 = fmul double %2, %2
  br label %75

12:                                               ; preds = %3
  %13 = fmul double %1, %1
  %14 = fmul double %13, %1
  br label %75

15:                                               ; preds = %3
  %16 = fmul double %1, %1
  %17 = fmul double %16, %2
  br label %75

18:                                               ; preds = %3
  %19 = fmul double %1, %2
  %20 = fmul double %19, %2
  br label %75

21:                                               ; preds = %3
  %22 = fmul double %2, %2
  %23 = fmul double %22, %2
  br label %75

24:                                               ; preds = %3
  %25 = fmul double %1, %1
  %26 = fmul double %25, %1
  %27 = fmul double %26, %1
  br label %75

28:                                               ; preds = %3
  %29 = fmul double %1, %1
  %30 = fmul double %29, %1
  %31 = fmul double %30, %2
  br label %75

32:                                               ; preds = %3
  %33 = fmul double %1, %1
  %34 = fmul double %33, %2
  %35 = fmul double %34, %2
  br label %75

36:                                               ; preds = %3
  %37 = fmul double %1, %2
  %38 = fmul double %37, %2
  %39 = fmul double %38, %2
  br label %75

40:                                               ; preds = %3
  %41 = fmul double %2, %2
  %42 = fmul double %41, %2
  %43 = fmul double %42, %2
  br label %75

44:                                               ; preds = %3
  %45 = fmul double %1, %1
  %46 = fmul double %45, %1
  %47 = fmul double %46, %1
  %48 = fmul double %47, %1
  br label %75

49:                                               ; preds = %3
  %50 = fmul double %1, %1
  %51 = fmul double %50, %1
  %52 = fmul double %51, %1
  %53 = fmul double %52, %2
  br label %75

54:                                               ; preds = %3
  %55 = fmul double %1, %1
  %56 = fmul double %55, %1
  %57 = fmul double %56, %2
  %58 = fmul double %57, %2
  br label %75

59:                                               ; preds = %3
  %60 = fmul double %1, %1
  %61 = fmul double %60, %2
  %62 = fmul double %61, %2
  %63 = fmul double %62, %2
  br label %75

64:                                               ; preds = %3
  %65 = fmul double %1, %2
  %66 = fmul double %65, %2
  %67 = fmul double %66, %2
  %68 = fmul double %67, %2
  br label %75

69:                                               ; preds = %3
  %70 = fmul double %2, %2
  %71 = fmul double %70, %2
  %72 = fmul double %71, %2
  %73 = fmul double %72, %2
  br label %75

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %3, %74, %69, %64, %59, %54, %49, %44, %40, %36, %32, %28, %24, %21, %18, %15, %12, %10, %8, %6, %5, %4
  %76 = phi double [ 0.000000e+00, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %36 ], [ %35, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %2, %5 ], [ %1, %4 ], [ 1.000000e+00, %3 ]
  ret double %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @poly_basis_dx(i64 noundef %0, double noundef %1, double noundef %2) unnamed_addr #5 {
  switch i64 %0, label %45 [
    i64 19, label %41
    i64 1, label %4
    i64 18, label %37
    i64 3, label %5
    i64 4, label %6
    i64 17, label %33
    i64 6, label %7
    i64 7, label %9
    i64 8, label %11
    i64 16, label %29
    i64 10, label %13
    i64 11, label %16
    i64 12, label %19
    i64 13, label %22
    i64 15, label %25
  ]

4:                                                ; preds = %3
  br label %45

5:                                                ; preds = %3
  br label %45

6:                                                ; preds = %3
  br label %45

7:                                                ; preds = %3
  %8 = fmul double %1, %1
  br label %45

9:                                                ; preds = %3
  %10 = fmul double %1, %2
  br label %45

11:                                               ; preds = %3
  %12 = fmul double %2, %2
  br label %45

13:                                               ; preds = %3
  %14 = fmul double %1, %1
  %15 = fmul double %14, %1
  br label %45

16:                                               ; preds = %3
  %17 = fmul double %1, %1
  %18 = fmul double %17, %2
  br label %45

19:                                               ; preds = %3
  %20 = fmul double %1, %2
  %21 = fmul double %20, %2
  br label %45

22:                                               ; preds = %3
  %23 = fmul double %2, %2
  %24 = fmul double %23, %2
  br label %45

25:                                               ; preds = %3
  %26 = fmul double %1, %1
  %27 = fmul double %26, %1
  %28 = fmul double %27, %1
  br label %45

29:                                               ; preds = %3
  %30 = fmul double %1, %1
  %31 = fmul double %30, %1
  %32 = fmul double %31, %2
  br label %45

33:                                               ; preds = %3
  %34 = fmul double %1, %1
  %35 = fmul double %34, %2
  %36 = fmul double %35, %2
  br label %45

37:                                               ; preds = %3
  %38 = fmul double %1, %2
  %39 = fmul double %38, %2
  %40 = fmul double %39, %2
  br label %45

41:                                               ; preds = %3
  %42 = fmul double %2, %2
  %43 = fmul double %42, %2
  %44 = fmul double %43, %2
  br label %45

45:                                               ; preds = %3, %41, %37, %33, %29, %25, %22, %19, %16, %13, %11, %9, %7, %6, %5, %4
  %46 = phi double [ %44, %41 ], [ %40, %37 ], [ %36, %33 ], [ %32, %29 ], [ %28, %25 ], [ %24, %22 ], [ %21, %19 ], [ %18, %16 ], [ %15, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %1, %6 ], [ %2, %5 ], [ 1.000000e+00, %4 ], [ 0.000000e+00, %3 ]
  ret double %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @poly_basis_dy(i64 noundef %0, double noundef %1, double noundef %2) unnamed_addr #5 {
  switch i64 %0, label %7 [
    i64 0, label %10
    i64 1, label %10
    i64 2, label %4
    i64 3, label %5
    i64 4, label %10
    i64 5, label %6
  ]

4:                                                ; preds = %3
  br label %10

5:                                                ; preds = %3
  br label %10

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  %8 = add nsw i64 %0, -1
  %9 = tail call fastcc double @poly_basis_dx(i64 noundef %8, double noundef %1, double noundef %2) #21
  br label %10

10:                                               ; preds = %3, %3, %3, %7, %6, %5, %4
  %11 = phi double [ %9, %7 ], [ %2, %6 ], [ %1, %5 ], [ 1.000000e+00, %4 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %3 ]
  ret double %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #5 {
  %2 = tail call double @llvm.floor.f64(double %0)
  %3 = fsub double %0, %2
  %4 = tail call double @llvm.ceil.f64(double %0)
  %5 = fsub double %4, %0
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %2, double %4
  ret double %7
}

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !77
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #21
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !80
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !78
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #21
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !81
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !79
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #21
  store i16 %15, ptr %2, align 2, !tbaa !65
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #21
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !83
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !84
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !74
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #21
  store i16 %33, ptr %3, align 2, !tbaa !64
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: optsize
declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = fsub float 6.553500e+04, %7
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 6.553500e+04)
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = fsub float 6.553500e+04, %12
  %14 = fneg float %3
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %10, ptr noundef %2, float noundef %15, ptr noundef %4) #21
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #16

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #16

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #11 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.148, ptr noundef %1, ptr noundef nonnull %10) #20
  %12 = load ptr, ptr %6, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #20
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !86 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyResampleFilter(ptr noundef nonnull %7) #20
  store ptr %10, ptr %6, align 8, !tbaa !26
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !88

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #20
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @poly_number_terms(double noundef %0) unnamed_addr #5 {
  %2 = fcmp olt double %0, 1.000000e+00
  %3 = fcmp ogt double %0, 5.000000e+00
  %4 = or i1 %2, %3
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call double @llvm.floor.f64(double %0)
  %7 = fcmp une double %6, %0
  %8 = fadd double %0, -1.500000e+00
  %9 = fcmp ogt double %8, 1.000000e-15
  %10 = and i1 %7, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = fadd double %0, 1.000000e+00
  %13 = fadd double %0, 2.000000e+00
  %14 = fmul double %12, %13
  %15 = fmul double %14, 5.000000e-01
  %16 = tail call double @llvm.floor.f64(double %15)
  %17 = fptoui double %16 to i64
  br label %18

18:                                               ; preds = %1, %5, %11
  %19 = phi i64 [ %17, %11 ], [ 0, %5 ], [ 0, %1 ]
  ret i64 %19
}

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @AcquireMagickMatrix(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMatrix(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @LeastSquaresAddTerms(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GaussJordanElimination(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AffineArgsToCoefficients(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds double, ptr %0, i64 1
  %3 = load double, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds double, ptr %0, i64 4
  %9 = load double, ptr %8, align 8, !tbaa !25
  store double %3, ptr %6, align 8, !tbaa !25
  store double %5, ptr %2, align 8, !tbaa !25
  store double %7, ptr %8, align 8, !tbaa !25
  store double %9, ptr %4, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #5 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #5 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #14

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #5 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #3 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #21
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #21
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !68
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !68
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !79
  %32 = fmul float %31, %12
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %32)
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %17, i64 0
  %36 = insertelement <4 x double> %35, double %16, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %20, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !76
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !74
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !74
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !74
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #5 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: optsize
declare ptr @DestroyResampleFilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  store double %1, ptr %4, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #20
  br label %11

11:                                               ; preds = %8, %3
  %12 = fptrunc double %1 to float
  %13 = fcmp olt float %12, -4.500000e+01
  br i1 %13, label %17, label %14

14:                                               ; preds = %17, %11
  %15 = phi float [ %12, %11 ], [ %19, %17 ]
  %16 = fcmp ogt float %15, 4.500000e+01
  br i1 %16, label %21, label %29

17:                                               ; preds = %11, %17
  %18 = phi float [ %19, %17 ], [ %12, %11 ]
  %19 = fadd float %18, 3.600000e+02
  %20 = fcmp olt float %19, -4.500000e+01
  br i1 %20, label %17, label %14, !llvm.loop !89

21:                                               ; preds = %14, %21
  %22 = phi i64 [ %25, %21 ], [ 0, %14 ]
  %23 = phi float [ %24, %21 ], [ %15, %14 ]
  %24 = fadd float %23, -9.000000e+01
  %25 = add i64 %22, 1
  %26 = fcmp ogt float %24, 4.500000e+01
  br i1 %26, label %21, label %27, !llvm.loop !90

27:                                               ; preds = %21
  %28 = and i64 %25, 3
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi float [ %15, %14 ], [ %24, %27 ]
  %31 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %32 = fpext float %30 to double
  %33 = tail call fastcc double @DegreesToRadians(double noundef %32) #21
  %34 = fmul double %33, 5.000000e-01
  %35 = tail call double @tan(double noundef %34) #20
  %36 = fneg double %35
  %37 = tail call double @sin(double noundef %33) #20
  %38 = tail call double @llvm.fabs.f64(double %36)
  %39 = fcmp olt double %38, 1.000000e-15
  %40 = tail call double @llvm.fabs.f64(double %37)
  %41 = fcmp olt double %40, 1.000000e-15
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %31, ptr noundef %2) #20
  br label %52

45:                                               ; preds = %29
  %46 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %46, i32 noundef 1) #20
  %50 = call ptr @DistortImage(ptr noundef nonnull %46, i32 noundef 3, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2) #21
  %51 = call ptr @DestroyImage(ptr noundef nonnull %46) #20
  br label %52

52:                                               ; preds = %45, %48, %43
  %53 = phi ptr [ %44, %43 ], [ %50, %48 ], [ null, %45 ]
  ret ptr %53
}

; Function Attrs: optsize
declare ptr @IntegralRotateImage(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SparseColorImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !26
  store i32 %1, ptr %8, align 4, !tbaa !27
  store i64 %3, ptr %9, align 8, !tbaa !28
  store ptr %4, ptr %10, align 8, !tbaa !26
  store ptr %5, ptr %11, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2930, ptr noundef nonnull @.str.2, ptr noundef nonnull %25) #20
  br label %27

27:                                               ; preds = %24, %6
  %28 = and i32 %1, 1
  %29 = lshr i32 %1, 1
  %30 = and i32 %29, 1
  %31 = add nuw nsw i32 %28, %30
  %32 = and i32 %1, 4
  %33 = icmp eq i32 %32, 0
  %34 = lshr exact i32 %32, 2
  %35 = add nuw nsw i32 %31, %34
  %36 = and i32 %1, 32
  %37 = icmp eq i32 %36, 0
  %38 = lshr exact i32 %36, 5
  %39 = add nuw nsw i32 %35, %38
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  %42 = lshr exact i32 %40, 3
  %43 = add nuw nsw i32 %39, %42
  %44 = zext nneg i32 %43 to i64
  store i64 %44, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  %45 = icmp ugt i32 %2, 17
  %46 = select i1 %45, i32 16, i32 %2
  store i32 %46, ptr %16, align 4
  %47 = call fastcc ptr @GenerateCoefficients(ptr noundef nonnull %0, ptr noundef nonnull %16, i64 noundef %3, ptr noundef %4, i64 noundef %44, ptr noundef %5) #21
  store ptr %47, ptr %13, align 8, !tbaa !26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %236, label %49

49:                                               ; preds = %27
  %50 = load i32, ptr %16, align 4, !tbaa !27
  %51 = icmp eq i32 %50, 16
  %52 = select i1 %51, i32 %2, i32 %50
  store i32 %52, ptr %12, align 4, !tbaa !27
  %53 = icmp eq i32 %52, 19
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store double 5.000000e-01, ptr %47, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  %56 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %194, label %58

58:                                               ; preds = %55
  switch i32 %52, label %194 [
    i32 1, label %59
    i32 7, label %120
  ]

59:                                               ; preds = %58
  %60 = load ptr, ptr @stderr, align 8, !tbaa !26
  %61 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %60, ptr noundef nonnull @.str.149) #20
  %62 = icmp eq i32 %28, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @stderr, align 8, !tbaa !26
  %65 = load double, ptr %47, align 8, !tbaa !25
  %66 = getelementptr inbounds double, ptr %47, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !25
  %68 = getelementptr inbounds double, ptr %47, i64 2
  %69 = load double, ptr %68, align 8, !tbaa !25
  %70 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %64, ptr noundef nonnull @.str.150, double noundef %65, double noundef %67, double noundef %69) #20
  br label %71

71:                                               ; preds = %63, %59
  %72 = phi i64 [ 3, %63 ], [ 0, %59 ]
  %73 = and i32 %1, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @stderr, align 8, !tbaa !26
  %77 = getelementptr inbounds double, ptr %47, i64 %72
  %78 = load double, ptr %77, align 8, !tbaa !25
  %79 = getelementptr double, ptr %77, i64 1
  %80 = load double, ptr %79, align 8, !tbaa !25
  %81 = getelementptr double, ptr %77, i64 2
  %82 = load double, ptr %81, align 8, !tbaa !25
  %83 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %76, ptr noundef nonnull @.str.151, double noundef %78, double noundef %80, double noundef %82) #20
  %84 = add nuw nsw i64 %72, 3
  br label %85

85:                                               ; preds = %75, %71
  %86 = phi i64 [ %84, %75 ], [ %72, %71 ]
  br i1 %33, label %97, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr @stderr, align 8, !tbaa !26
  %89 = getelementptr inbounds double, ptr %47, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !25
  %91 = getelementptr double, ptr %89, i64 1
  %92 = load double, ptr %91, align 8, !tbaa !25
  %93 = getelementptr double, ptr %89, i64 2
  %94 = load double, ptr %93, align 8, !tbaa !25
  %95 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %88, ptr noundef nonnull @.str.152, double noundef %90, double noundef %92, double noundef %94) #20
  %96 = add nuw nsw i64 %86, 3
  br label %97

97:                                               ; preds = %87, %85
  %98 = phi i64 [ %96, %87 ], [ %86, %85 ]
  br i1 %37, label %109, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr @stderr, align 8, !tbaa !26
  %101 = getelementptr inbounds double, ptr %47, i64 %98
  %102 = load double, ptr %101, align 8, !tbaa !25
  %103 = getelementptr double, ptr %101, i64 1
  %104 = load double, ptr %103, align 8, !tbaa !25
  %105 = getelementptr double, ptr %101, i64 2
  %106 = load double, ptr %105, align 8, !tbaa !25
  %107 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %100, ptr noundef nonnull @.str.153, double noundef %102, double noundef %104, double noundef %106) #20
  %108 = add nuw nsw i64 %98, 3
  br label %109

109:                                              ; preds = %99, %97
  %110 = phi i64 [ %108, %99 ], [ %98, %97 ]
  br i1 %41, label %194, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @stderr, align 8, !tbaa !26
  %113 = getelementptr inbounds double, ptr %47, i64 %110
  %114 = load double, ptr %113, align 8, !tbaa !25
  %115 = getelementptr double, ptr %113, i64 1
  %116 = load double, ptr %115, align 8, !tbaa !25
  %117 = getelementptr double, ptr %113, i64 2
  %118 = load double, ptr %117, align 8, !tbaa !25
  %119 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %112, ptr noundef nonnull @.str.154, double noundef %114, double noundef %116, double noundef %118) #20
  br label %194

120:                                              ; preds = %58
  %121 = load ptr, ptr @stderr, align 8, !tbaa !26
  %122 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %121, ptr noundef nonnull @.str.155) #20
  %123 = icmp eq i32 %28, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr @stderr, align 8, !tbaa !26
  %126 = load double, ptr %47, align 8, !tbaa !25
  %127 = getelementptr inbounds double, ptr %47, i64 1
  %128 = load double, ptr %127, align 8, !tbaa !25
  %129 = getelementptr inbounds double, ptr %47, i64 2
  %130 = load double, ptr %129, align 8, !tbaa !25
  %131 = getelementptr inbounds double, ptr %47, i64 3
  %132 = load double, ptr %131, align 8, !tbaa !25
  %133 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %125, ptr noundef nonnull @.str.156, double noundef %126, double noundef %128, double noundef %130, double noundef %132) #20
  br label %134

134:                                              ; preds = %124, %120
  %135 = phi i64 [ 4, %124 ], [ 0, %120 ]
  %136 = and i32 %1, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr @stderr, align 8, !tbaa !26
  %140 = getelementptr inbounds double, ptr %47, i64 %135
  %141 = load double, ptr %140, align 8, !tbaa !25
  %142 = or disjoint i64 %135, 1
  %143 = getelementptr inbounds double, ptr %47, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !25
  %145 = or disjoint i64 %135, 2
  %146 = getelementptr inbounds double, ptr %47, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !25
  %148 = or disjoint i64 %135, 3
  %149 = getelementptr inbounds double, ptr %47, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !25
  %151 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %139, ptr noundef nonnull @.str.157, double noundef %141, double noundef %144, double noundef %147, double noundef %150) #20
  %152 = add nuw nsw i64 %135, 4
  br label %153

153:                                              ; preds = %138, %134
  %154 = phi i64 [ %152, %138 ], [ %135, %134 ]
  br i1 %33, label %167, label %155

155:                                              ; preds = %153
  %156 = load ptr, ptr @stderr, align 8, !tbaa !26
  %157 = getelementptr inbounds double, ptr %47, i64 %154
  %158 = load double, ptr %157, align 8, !tbaa !25
  %159 = getelementptr double, ptr %157, i64 1
  %160 = load double, ptr %159, align 8, !tbaa !25
  %161 = getelementptr double, ptr %157, i64 2
  %162 = load double, ptr %161, align 8, !tbaa !25
  %163 = getelementptr double, ptr %157, i64 3
  %164 = load double, ptr %163, align 8, !tbaa !25
  %165 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %156, ptr noundef nonnull @.str.158, double noundef %158, double noundef %160, double noundef %162, double noundef %164) #20
  %166 = add nuw nsw i64 %154, 4
  br label %167

167:                                              ; preds = %155, %153
  %168 = phi i64 [ %166, %155 ], [ %154, %153 ]
  br i1 %37, label %181, label %169

169:                                              ; preds = %167
  %170 = load ptr, ptr @stderr, align 8, !tbaa !26
  %171 = getelementptr inbounds double, ptr %47, i64 %168
  %172 = load double, ptr %171, align 8, !tbaa !25
  %173 = getelementptr double, ptr %171, i64 1
  %174 = load double, ptr %173, align 8, !tbaa !25
  %175 = getelementptr double, ptr %171, i64 2
  %176 = load double, ptr %175, align 8, !tbaa !25
  %177 = getelementptr double, ptr %171, i64 3
  %178 = load double, ptr %177, align 8, !tbaa !25
  %179 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %170, ptr noundef nonnull @.str.159, double noundef %172, double noundef %174, double noundef %176, double noundef %178) #20
  %180 = add nuw nsw i64 %168, 4
  br label %181

181:                                              ; preds = %169, %167
  %182 = phi i64 [ %180, %169 ], [ %168, %167 ]
  br i1 %41, label %194, label %183

183:                                              ; preds = %181
  %184 = load ptr, ptr @stderr, align 8, !tbaa !26
  %185 = getelementptr inbounds double, ptr %47, i64 %182
  %186 = load double, ptr %185, align 8, !tbaa !25
  %187 = getelementptr double, ptr %185, i64 1
  %188 = load double, ptr %187, align 8, !tbaa !25
  %189 = getelementptr double, ptr %185, i64 2
  %190 = load double, ptr %189, align 8, !tbaa !25
  %191 = getelementptr double, ptr %185, i64 3
  %192 = load double, ptr %191, align 8, !tbaa !25
  %193 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %184, ptr noundef nonnull @.str.160, double noundef %186, double noundef %188, double noundef %190, double noundef %192) #20
  br label %194

194:                                              ; preds = %181, %183, %109, %111, %58, %55
  %195 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #20
  store ptr %195, ptr %14, align 8, !tbaa !26
  %196 = icmp eq ptr %195, null
  br i1 %196, label %237, label %197

197:                                              ; preds = %194
  %198 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %195, i32 noundef 1) #20
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %201) #20
  %202 = tail call ptr @DestroyImage(ptr noundef nonnull %195) #20
  br label %237

203:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  store i32 1, ptr %18, align 4, !tbaa !27
  store i64 0, ptr %19, align 8, !tbaa !52
  %204 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %195, ptr noundef %5) #20
  store ptr %204, ptr %17, align 8, !tbaa !26
  %205 = getelementptr inbounds %struct._Image, ptr %195, i64 0, i32 8
  %206 = load i64, ptr %205, align 8, !tbaa !31
  %207 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %208 = shl i64 %207, 5
  %209 = icmp ugt i64 %206, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #20
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %218, label %213

213:                                              ; preds = %210
  %214 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %195) #20
  %215 = icmp eq i32 %214, 3
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  br label %222

218:                                              ; preds = %213, %210, %203
  %219 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #20
  %220 = icmp ult i64 %219, 2
  %221 = select i1 %220, i64 1, i64 2
  br label %222

222:                                              ; preds = %218, %216
  %223 = phi i64 [ %217, %216 ], [ %221, %218 ]
  %224 = trunc i64 %223 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %20, i32 %224)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @SparseColorImage.omp_outlined, ptr nonnull %14, ptr nonnull %17, ptr nonnull %11, ptr nonnull %18, ptr nonnull %7, ptr nonnull %12, ptr nonnull %8, ptr nonnull %13, ptr nonnull %9, ptr nonnull %15, ptr nonnull %10, ptr nonnull %19)
  %225 = load ptr, ptr %17, align 8, !tbaa !26
  %226 = call ptr @DestroyCacheView(ptr noundef %225) #20
  store ptr %226, ptr %17, align 8, !tbaa !26
  %227 = load i32, ptr %18, align 4, !tbaa !27
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = load ptr, ptr %14, align 8, !tbaa !26
  %231 = call ptr @DestroyImage(ptr noundef %230) #20
  store ptr %231, ptr %14, align 8, !tbaa !26
  br label %232

232:                                              ; preds = %229, %222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  %233 = load ptr, ptr %13, align 8, !tbaa !26
  %234 = call ptr @RelinquishMagickMemory(ptr noundef %233) #20
  %235 = load ptr, ptr %14, align 8, !tbaa !26
  br label %237

236:                                              ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br label %237

237:                                              ; preds = %194, %236, %232, %200
  %238 = phi ptr [ null, %200 ], [ %235, %232 ], [ null, %236 ], [ null, %194 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  ret ptr %238
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SparseColorImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #9 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = load ptr, ptr %2, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !31
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %564

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #10
  store i64 0, ptr %15, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #10
  store i64 %23, ptr %16, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  store i64 1, ptr %17, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i32 0, ptr %18, align 4, !tbaa !27
  %26 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %27 = load i64, ptr %16, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %16, align 8, !tbaa !28
  %29 = load i64, ptr %15, align 8, !tbaa !28
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %563, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 6
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 7
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 9
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 8
  br label %37

37:                                               ; preds = %31, %555
  %38 = phi i64 [ %28, %31 ], [ %561, %555 ]
  %39 = phi i64 [ %29, %31 ], [ %559, %555 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %555, label %41

41:                                               ; preds = %37, %549
  %42 = phi i64 [ %550, %549 ], [ %39, %37 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #10
  %43 = load ptr, ptr %3, align 8, !tbaa !26
  %44 = load ptr, ptr %2, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !29
  %47 = load ptr, ptr %4, align 8, !tbaa !26
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %43, i64 noundef 0, i64 noundef %42, i64 noundef %46, i64 noundef 1, ptr noundef %47) #24
  %49 = icmp eq ptr %48, null
  br i1 %49, label %548, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %3, align 8, !tbaa !26
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #20
  %53 = load ptr, ptr %2, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %19) #20
  %54 = load ptr, ptr %6, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !29
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %529

58:                                               ; preds = %50
  %59 = sitofp i64 %42 to double
  br label %60

60:                                               ; preds = %58, %520
  %61 = phi ptr [ %54, %58 ], [ %525, %520 ]
  %62 = phi ptr [ %52, %58 ], [ %523, %520 ]
  %63 = phi ptr [ %48, %58 ], [ %522, %520 ]
  %64 = phi i64 [ 0, %58 ], [ %524, %520 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %61, ptr noundef nonnull %63, ptr noundef %62, ptr noundef nonnull %19) #21
  %65 = load i32, ptr %7, align 4, !tbaa !27
  switch i32 %65, label %66 [
    i32 1, label %86
    i32 7, label %173
    i32 19, label %283
    i32 16, label %283
  ]

66:                                               ; preds = %60
  %67 = load i64, ptr %10, align 8, !tbaa !28
  %68 = icmp eq i64 %67, 0
  %69 = load i32, ptr %8, align 4
  br i1 %68, label %70, label %72

70:                                               ; preds = %66
  %71 = and i32 %69, 1
  br label %489

72:                                               ; preds = %66
  %73 = sitofp i64 %64 to double
  %74 = load ptr, ptr %12, align 8, !tbaa !26
  %75 = and i32 %69, 1
  %76 = icmp eq i32 %75, 0
  %77 = insertelement <4 x i32> poison, i32 %69, i64 0
  %78 = shufflevector <4 x i32> %77, <4 x i32> poison, <4 x i32> zeroinitializer
  %79 = and <4 x i32> %78, <i32 8, i32 32, i32 4, i32 2>
  %80 = icmp eq <4 x i32> %79, zeroinitializer
  %81 = load i64, ptr %11, align 8, !tbaa !28
  %82 = extractelement <4 x i1> %80, i64 0
  %83 = extractelement <4 x i1> %80, i64 1
  %84 = extractelement <4 x i1> %80, i64 2
  %85 = extractelement <4 x i1> %80, i64 3
  br label %439

86:                                               ; preds = %60
  %87 = load i32, ptr %8, align 4, !tbaa !27
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %9, align 8, !tbaa !26
  %92 = load double, ptr %91, align 8, !tbaa !25
  %93 = sitofp i64 %64 to double
  %94 = getelementptr inbounds double, ptr %91, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !25
  %96 = fmul double %95, %59
  %97 = call double @llvm.fmuladd.f64(double %92, double %93, double %96)
  %98 = getelementptr inbounds double, ptr %91, i64 2
  %99 = load double, ptr %98, align 8, !tbaa !25
  %100 = fadd double %99, %97
  %101 = fptrunc double %100 to float
  store float %101, ptr %32, align 8, !tbaa !77
  br label %102

102:                                              ; preds = %90, %86
  %103 = phi i64 [ 3, %90 ], [ 0, %86 ]
  %104 = and i32 %87, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %9, align 8, !tbaa !26
  %108 = getelementptr inbounds double, ptr %107, i64 %103
  %109 = load double, ptr %108, align 8, !tbaa !25
  %110 = sitofp i64 %64 to double
  %111 = getelementptr double, ptr %108, i64 1
  %112 = load double, ptr %111, align 8, !tbaa !25
  %113 = fmul double %112, %59
  %114 = call double @llvm.fmuladd.f64(double %109, double %110, double %113)
  %115 = getelementptr double, ptr %108, i64 2
  %116 = load double, ptr %115, align 8, !tbaa !25
  %117 = fadd double %116, %114
  %118 = fptrunc double %117 to float
  store float %118, ptr %33, align 4, !tbaa !78
  %119 = add nuw nsw i64 %103, 3
  br label %120

120:                                              ; preds = %106, %102
  %121 = phi i64 [ %119, %106 ], [ %103, %102 ]
  %122 = and i32 %87, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %9, align 8, !tbaa !26
  %126 = getelementptr inbounds double, ptr %125, i64 %121
  %127 = load double, ptr %126, align 8, !tbaa !25
  %128 = sitofp i64 %64 to double
  %129 = getelementptr double, ptr %126, i64 1
  %130 = load double, ptr %129, align 8, !tbaa !25
  %131 = fmul double %130, %59
  %132 = call double @llvm.fmuladd.f64(double %127, double %128, double %131)
  %133 = getelementptr double, ptr %126, i64 2
  %134 = load double, ptr %133, align 8, !tbaa !25
  %135 = fadd double %134, %132
  %136 = fptrunc double %135 to float
  store float %136, ptr %34, align 8, !tbaa !79
  %137 = add nuw nsw i64 %121, 3
  br label %138

138:                                              ; preds = %124, %120
  %139 = phi i64 [ %137, %124 ], [ %121, %120 ]
  %140 = and i32 %87, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %9, align 8, !tbaa !26
  %144 = getelementptr inbounds double, ptr %143, i64 %139
  %145 = load double, ptr %144, align 8, !tbaa !25
  %146 = sitofp i64 %64 to double
  %147 = getelementptr double, ptr %144, i64 1
  %148 = load double, ptr %147, align 8, !tbaa !25
  %149 = fmul double %148, %59
  %150 = call double @llvm.fmuladd.f64(double %145, double %146, double %149)
  %151 = getelementptr double, ptr %144, i64 2
  %152 = load double, ptr %151, align 8, !tbaa !25
  %153 = fadd double %152, %150
  %154 = fptrunc double %153 to float
  store float %154, ptr %35, align 8, !tbaa !74
  %155 = add nuw nsw i64 %139, 3
  br label %156

156:                                              ; preds = %142, %138
  %157 = phi i64 [ %155, %142 ], [ %139, %138 ]
  %158 = and i32 %87, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %489, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %9, align 8, !tbaa !26
  %162 = getelementptr inbounds double, ptr %161, i64 %157
  %163 = load double, ptr %162, align 8, !tbaa !25
  %164 = sitofp i64 %64 to double
  %165 = getelementptr double, ptr %162, i64 1
  %166 = load double, ptr %165, align 8, !tbaa !25
  %167 = fmul double %166, %59
  %168 = call double @llvm.fmuladd.f64(double %163, double %164, double %167)
  %169 = getelementptr double, ptr %162, i64 2
  %170 = load double, ptr %169, align 8, !tbaa !25
  %171 = fadd double %170, %168
  %172 = fptrunc double %171 to float
  store float %172, ptr %36, align 4, !tbaa !82
  br label %489

173:                                              ; preds = %60
  %174 = load i32, ptr %8, align 4, !tbaa !27
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %9, align 8, !tbaa !26
  %179 = load double, ptr %178, align 8, !tbaa !25
  %180 = sitofp i64 %64 to double
  %181 = getelementptr inbounds double, ptr %178, i64 1
  %182 = load double, ptr %181, align 8, !tbaa !25
  %183 = fmul double %182, %59
  %184 = call double @llvm.fmuladd.f64(double %179, double %180, double %183)
  %185 = getelementptr inbounds double, ptr %178, i64 2
  %186 = load double, ptr %185, align 8, !tbaa !25
  %187 = fmul double %186, %180
  %188 = call double @llvm.fmuladd.f64(double %187, double %59, double %184)
  %189 = getelementptr inbounds double, ptr %178, i64 3
  %190 = load double, ptr %189, align 8, !tbaa !25
  %191 = fadd double %190, %188
  %192 = fptrunc double %191 to float
  store float %192, ptr %32, align 8, !tbaa !77
  br label %193

193:                                              ; preds = %177, %173
  %194 = phi i64 [ 4, %177 ], [ 0, %173 ]
  %195 = and i32 %174, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %218, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %9, align 8, !tbaa !26
  %199 = getelementptr inbounds double, ptr %198, i64 %194
  %200 = load double, ptr %199, align 8, !tbaa !25
  %201 = sitofp i64 %64 to double
  %202 = or disjoint i64 %194, 1
  %203 = getelementptr inbounds double, ptr %198, i64 %202
  %204 = load double, ptr %203, align 8, !tbaa !25
  %205 = fmul double %204, %59
  %206 = call double @llvm.fmuladd.f64(double %200, double %201, double %205)
  %207 = or disjoint i64 %194, 2
  %208 = getelementptr inbounds double, ptr %198, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !25
  %210 = fmul double %209, %201
  %211 = call double @llvm.fmuladd.f64(double %210, double %59, double %206)
  %212 = or disjoint i64 %194, 3
  %213 = getelementptr inbounds double, ptr %198, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !25
  %215 = fadd double %214, %211
  %216 = fptrunc double %215 to float
  store float %216, ptr %33, align 4, !tbaa !78
  %217 = add nuw nsw i64 %194, 4
  br label %218

218:                                              ; preds = %197, %193
  %219 = phi i64 [ %217, %197 ], [ %194, %193 ]
  %220 = and i32 %174, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %240, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %9, align 8, !tbaa !26
  %224 = getelementptr inbounds double, ptr %223, i64 %219
  %225 = load double, ptr %224, align 8, !tbaa !25
  %226 = sitofp i64 %64 to double
  %227 = getelementptr double, ptr %224, i64 1
  %228 = load double, ptr %227, align 8, !tbaa !25
  %229 = fmul double %228, %59
  %230 = call double @llvm.fmuladd.f64(double %225, double %226, double %229)
  %231 = getelementptr double, ptr %224, i64 2
  %232 = load double, ptr %231, align 8, !tbaa !25
  %233 = fmul double %232, %226
  %234 = call double @llvm.fmuladd.f64(double %233, double %59, double %230)
  %235 = getelementptr double, ptr %224, i64 3
  %236 = load double, ptr %235, align 8, !tbaa !25
  %237 = fadd double %236, %234
  %238 = fptrunc double %237 to float
  store float %238, ptr %34, align 8, !tbaa !79
  %239 = add nuw nsw i64 %219, 4
  br label %240

240:                                              ; preds = %222, %218
  %241 = phi i64 [ %239, %222 ], [ %219, %218 ]
  %242 = and i32 %174, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %9, align 8, !tbaa !26
  %246 = getelementptr inbounds double, ptr %245, i64 %241
  %247 = load double, ptr %246, align 8, !tbaa !25
  %248 = sitofp i64 %64 to double
  %249 = getelementptr double, ptr %246, i64 1
  %250 = load double, ptr %249, align 8, !tbaa !25
  %251 = fmul double %250, %59
  %252 = call double @llvm.fmuladd.f64(double %247, double %248, double %251)
  %253 = getelementptr double, ptr %246, i64 2
  %254 = load double, ptr %253, align 8, !tbaa !25
  %255 = fmul double %254, %248
  %256 = call double @llvm.fmuladd.f64(double %255, double %59, double %252)
  %257 = getelementptr double, ptr %246, i64 3
  %258 = load double, ptr %257, align 8, !tbaa !25
  %259 = fadd double %258, %256
  %260 = fptrunc double %259 to float
  store float %260, ptr %35, align 8, !tbaa !74
  %261 = add nuw nsw i64 %241, 4
  br label %262

262:                                              ; preds = %244, %240
  %263 = phi i64 [ %261, %244 ], [ %241, %240 ]
  %264 = and i32 %174, 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %489, label %266

266:                                              ; preds = %262
  %267 = load ptr, ptr %9, align 8, !tbaa !26
  %268 = getelementptr inbounds double, ptr %267, i64 %263
  %269 = load double, ptr %268, align 8, !tbaa !25
  %270 = sitofp i64 %64 to double
  %271 = getelementptr double, ptr %268, i64 1
  %272 = load double, ptr %271, align 8, !tbaa !25
  %273 = fmul double %272, %59
  %274 = call double @llvm.fmuladd.f64(double %269, double %270, double %273)
  %275 = getelementptr double, ptr %268, i64 2
  %276 = load double, ptr %275, align 8, !tbaa !25
  %277 = fmul double %276, %270
  %278 = call double @llvm.fmuladd.f64(double %277, double %59, double %274)
  %279 = getelementptr double, ptr %268, i64 3
  %280 = load double, ptr %279, align 8, !tbaa !25
  %281 = fadd double %280, %278
  %282 = fptrunc double %281 to float
  store float %282, ptr %36, align 4, !tbaa !82
  br label %489

283:                                              ; preds = %60, %60
  %284 = load i32, ptr %8, align 4, !tbaa !27
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  store float 0.000000e+00, ptr %32, align 8, !tbaa !77
  br label %288

288:                                              ; preds = %287, %283
  %289 = and i32 %284, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  store float 0.000000e+00, ptr %33, align 4, !tbaa !78
  br label %292

292:                                              ; preds = %291, %288
  %293 = and i32 %284, 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  store float 0.000000e+00, ptr %34, align 8, !tbaa !79
  br label %296

296:                                              ; preds = %295, %292
  %297 = and i32 %284, 32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  store float 0.000000e+00, ptr %35, align 8, !tbaa !74
  br label %300

300:                                              ; preds = %299, %296
  %301 = and i32 %284, 8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300
  store float 0.000000e+00, ptr %36, align 4, !tbaa !82
  br label %304

304:                                              ; preds = %303, %300
  %305 = load i64, ptr %10, align 8, !tbaa !28
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %397, label %307

307:                                              ; preds = %304
  %308 = sitofp i64 %64 to double
  br label %309

309:                                              ; preds = %307, %391
  %310 = phi double [ 0.000000e+00, %307 ], [ %392, %391 ]
  %311 = phi i64 [ 0, %307 ], [ %394, %391 ]
  %312 = add i64 %311, 2
  %313 = load ptr, ptr %12, align 8, !tbaa !26
  %314 = getelementptr inbounds double, ptr %313, i64 %311
  %315 = load double, ptr %314, align 8, !tbaa !25
  %316 = fsub double %308, %315
  %317 = getelementptr double, ptr %314, i64 1
  %318 = load double, ptr %317, align 8, !tbaa !25
  %319 = fsub double %59, %318
  %320 = fmul double %319, %319
  %321 = call double @llvm.fmuladd.f64(double %316, double %316, double %320)
  %322 = load ptr, ptr %9, align 8, !tbaa !26
  %323 = load double, ptr %322, align 8, !tbaa !25
  %324 = call double @pow(double noundef %321, double noundef %323) #20
  %325 = fcmp olt double %324, 1.000000e+00
  %326 = fdiv double 1.000000e+00, %324
  %327 = select i1 %325, double 1.000000e+00, double %326
  %328 = load i32, ptr %8, align 4, !tbaa !27
  %329 = and i32 %328, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %340, label %331

331:                                              ; preds = %309
  %332 = load ptr, ptr %12, align 8, !tbaa !26
  %333 = add nsw i64 %311, 3
  %334 = getelementptr inbounds double, ptr %332, i64 %312
  %335 = load double, ptr %334, align 8, !tbaa !25
  %336 = load float, ptr %32, align 8, !tbaa !77
  %337 = fpext float %336 to double
  %338 = call double @llvm.fmuladd.f64(double %335, double %327, double %337)
  %339 = fptrunc double %338 to float
  store float %339, ptr %32, align 8, !tbaa !77
  br label %340

340:                                              ; preds = %331, %309
  %341 = phi i64 [ %333, %331 ], [ %312, %309 ]
  %342 = and i32 %328, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr %12, align 8, !tbaa !26
  %346 = add nsw i64 %341, 1
  %347 = getelementptr inbounds double, ptr %345, i64 %341
  %348 = load double, ptr %347, align 8, !tbaa !25
  %349 = load float, ptr %33, align 4, !tbaa !78
  %350 = fpext float %349 to double
  %351 = call double @llvm.fmuladd.f64(double %348, double %327, double %350)
  %352 = fptrunc double %351 to float
  store float %352, ptr %33, align 4, !tbaa !78
  br label %353

353:                                              ; preds = %344, %340
  %354 = phi i64 [ %346, %344 ], [ %341, %340 ]
  %355 = and i32 %328, 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %366, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr %12, align 8, !tbaa !26
  %359 = add nsw i64 %354, 1
  %360 = getelementptr inbounds double, ptr %358, i64 %354
  %361 = load double, ptr %360, align 8, !tbaa !25
  %362 = load float, ptr %34, align 8, !tbaa !79
  %363 = fpext float %362 to double
  %364 = call double @llvm.fmuladd.f64(double %361, double %327, double %363)
  %365 = fptrunc double %364 to float
  store float %365, ptr %34, align 8, !tbaa !79
  br label %366

366:                                              ; preds = %357, %353
  %367 = phi i64 [ %359, %357 ], [ %354, %353 ]
  %368 = and i32 %328, 32
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %379, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %12, align 8, !tbaa !26
  %372 = add nsw i64 %367, 1
  %373 = getelementptr inbounds double, ptr %371, i64 %367
  %374 = load double, ptr %373, align 8, !tbaa !25
  %375 = load float, ptr %35, align 8, !tbaa !74
  %376 = fpext float %375 to double
  %377 = call double @llvm.fmuladd.f64(double %374, double %327, double %376)
  %378 = fptrunc double %377 to float
  store float %378, ptr %35, align 8, !tbaa !74
  br label %379

379:                                              ; preds = %370, %366
  %380 = phi i64 [ %372, %370 ], [ %367, %366 ]
  %381 = and i32 %328, 8
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %12, align 8, !tbaa !26
  %385 = getelementptr inbounds double, ptr %384, i64 %380
  %386 = load double, ptr %385, align 8, !tbaa !25
  %387 = load float, ptr %36, align 4, !tbaa !82
  %388 = fpext float %387 to double
  %389 = call double @llvm.fmuladd.f64(double %386, double %327, double %388)
  %390 = fptrunc double %389 to float
  store float %390, ptr %36, align 4, !tbaa !82
  br label %391

391:                                              ; preds = %383, %379
  %392 = fadd double %310, %327
  %393 = load i64, ptr %11, align 8, !tbaa !28
  %394 = add i64 %312, %393
  %395 = load i64, ptr %10, align 8, !tbaa !28
  %396 = icmp ult i64 %394, %395
  br i1 %396, label %309, label %397, !llvm.loop !91

397:                                              ; preds = %391, %304
  %398 = phi i32 [ %285, %304 ], [ %329, %391 ]
  %399 = phi i32 [ %284, %304 ], [ %328, %391 ]
  %400 = phi double [ 0.000000e+00, %304 ], [ %392, %391 ]
  %401 = icmp eq i32 %398, 0
  br i1 %401, label %407, label %402

402:                                              ; preds = %397
  %403 = load float, ptr %32, align 8, !tbaa !77
  %404 = fpext float %403 to double
  %405 = fdiv double %404, %400
  %406 = fptrunc double %405 to float
  store float %406, ptr %32, align 8, !tbaa !77
  br label %407

407:                                              ; preds = %402, %397
  %408 = and i32 %399, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %415, label %410

410:                                              ; preds = %407
  %411 = load float, ptr %33, align 4, !tbaa !78
  %412 = fpext float %411 to double
  %413 = fdiv double %412, %400
  %414 = fptrunc double %413 to float
  store float %414, ptr %33, align 4, !tbaa !78
  br label %415

415:                                              ; preds = %410, %407
  %416 = and i32 %399, 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %415
  %419 = load float, ptr %34, align 8, !tbaa !79
  %420 = fpext float %419 to double
  %421 = fdiv double %420, %400
  %422 = fptrunc double %421 to float
  store float %422, ptr %34, align 8, !tbaa !79
  br label %423

423:                                              ; preds = %418, %415
  %424 = and i32 %399, 32
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %423
  %427 = load float, ptr %35, align 8, !tbaa !74
  %428 = fpext float %427 to double
  %429 = fdiv double %428, %400
  %430 = fptrunc double %429 to float
  store float %430, ptr %35, align 8, !tbaa !74
  br label %431

431:                                              ; preds = %426, %423
  %432 = and i32 %399, 8
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %489, label %434

434:                                              ; preds = %431
  %435 = load float, ptr %36, align 4, !tbaa !82
  %436 = fpext float %435 to double
  %437 = fdiv double %436, %400
  %438 = fptrunc double %437 to float
  store float %438, ptr %36, align 4, !tbaa !82
  br label %489

439:                                              ; preds = %72, %485
  %440 = phi double [ 0x7FEFFFFFFFFFFFFF, %72 ], [ %486, %485 ]
  %441 = phi i64 [ 0, %72 ], [ %487, %485 ]
  %442 = getelementptr inbounds double, ptr %74, i64 %441
  %443 = load double, ptr %442, align 8, !tbaa !25
  %444 = fsub double %73, %443
  %445 = getelementptr double, ptr %442, i64 1
  %446 = load double, ptr %445, align 8, !tbaa !25
  %447 = fsub double %59, %446
  %448 = fmul double %447, %447
  %449 = call double @llvm.fmuladd.f64(double %444, double %444, double %448)
  %450 = fcmp olt double %449, %440
  %451 = add i64 %441, 2
  br i1 %450, label %452, label %485

452:                                              ; preds = %439
  br i1 %76, label %458, label %453

453:                                              ; preds = %452
  %454 = add nsw i64 %441, 3
  %455 = getelementptr inbounds double, ptr %74, i64 %451
  %456 = load double, ptr %455, align 8, !tbaa !25
  %457 = fptrunc double %456 to float
  store float %457, ptr %32, align 8, !tbaa !77
  br label %458

458:                                              ; preds = %453, %452
  %459 = phi i64 [ %454, %453 ], [ %451, %452 ]
  br i1 %85, label %465, label %460

460:                                              ; preds = %458
  %461 = add nsw i64 %459, 1
  %462 = getelementptr inbounds double, ptr %74, i64 %459
  %463 = load double, ptr %462, align 8, !tbaa !25
  %464 = fptrunc double %463 to float
  store float %464, ptr %33, align 4, !tbaa !78
  br label %465

465:                                              ; preds = %460, %458
  %466 = phi i64 [ %461, %460 ], [ %459, %458 ]
  br i1 %84, label %472, label %467

467:                                              ; preds = %465
  %468 = add nsw i64 %466, 1
  %469 = getelementptr inbounds double, ptr %74, i64 %466
  %470 = load double, ptr %469, align 8, !tbaa !25
  %471 = fptrunc double %470 to float
  store float %471, ptr %34, align 8, !tbaa !79
  br label %472

472:                                              ; preds = %467, %465
  %473 = phi i64 [ %468, %467 ], [ %466, %465 ]
  br i1 %83, label %479, label %474

474:                                              ; preds = %472
  %475 = add nsw i64 %473, 1
  %476 = getelementptr inbounds double, ptr %74, i64 %473
  %477 = load double, ptr %476, align 8, !tbaa !25
  %478 = fptrunc double %477 to float
  store float %478, ptr %35, align 8, !tbaa !74
  br label %479

479:                                              ; preds = %474, %472
  %480 = phi i64 [ %475, %474 ], [ %473, %472 ]
  br i1 %82, label %485, label %481

481:                                              ; preds = %479
  %482 = getelementptr inbounds double, ptr %74, i64 %480
  %483 = load double, ptr %482, align 8, !tbaa !25
  %484 = fptrunc double %483 to float
  store float %484, ptr %36, align 4, !tbaa !82
  br label %485

485:                                              ; preds = %439, %479, %481
  %486 = phi double [ %449, %479 ], [ %449, %481 ], [ %440, %439 ]
  %487 = add i64 %451, %81
  %488 = icmp ult i64 %487, %67
  br i1 %488, label %439, label %489, !llvm.loop !92

489:                                              ; preds = %485, %70, %431, %434, %262, %266, %156, %160
  %490 = phi i32 [ %71, %70 ], [ %398, %431 ], [ %398, %434 ], [ %175, %262 ], [ %175, %266 ], [ %88, %156 ], [ %88, %160 ], [ %75, %485 ]
  %491 = phi i32 [ %69, %70 ], [ %399, %431 ], [ %399, %434 ], [ %174, %262 ], [ %174, %266 ], [ %87, %156 ], [ %87, %160 ], [ %69, %485 ]
  %492 = icmp eq i32 %490, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %489
  %494 = load float, ptr %32, align 8, !tbaa !77
  %495 = fmul float %494, 6.553500e+04
  store float %495, ptr %32, align 8, !tbaa !77
  br label %496

496:                                              ; preds = %493, %489
  %497 = and i32 %491, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %502, label %499

499:                                              ; preds = %496
  %500 = load float, ptr %33, align 4, !tbaa !78
  %501 = fmul float %500, 6.553500e+04
  store float %501, ptr %33, align 4, !tbaa !78
  br label %502

502:                                              ; preds = %499, %496
  %503 = and i32 %491, 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = load float, ptr %34, align 8, !tbaa !79
  %507 = fmul float %506, 6.553500e+04
  store float %507, ptr %34, align 8, !tbaa !79
  br label %508

508:                                              ; preds = %505, %502
  %509 = and i32 %491, 32
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %508
  %512 = load float, ptr %35, align 8, !tbaa !74
  %513 = fmul float %512, 6.553500e+04
  store float %513, ptr %35, align 8, !tbaa !74
  br label %514

514:                                              ; preds = %511, %508
  %515 = and i32 %491, 8
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load float, ptr %36, align 4, !tbaa !82
  %519 = fmul float %518, 6.553500e+04
  store float %519, ptr %36, align 4, !tbaa !82
  br label %520

520:                                              ; preds = %517, %514
  %521 = load ptr, ptr %2, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %521, ptr noundef nonnull %19, ptr noundef nonnull %63, ptr noundef %62) #21
  %522 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %523 = getelementptr inbounds i16, ptr %62, i64 1
  %524 = add nuw nsw i64 %64, 1
  %525 = load ptr, ptr %6, align 8, !tbaa !26
  %526 = getelementptr inbounds %struct._Image, ptr %525, i64 0, i32 7
  %527 = load i64, ptr %526, align 8, !tbaa !29
  %528 = icmp slt i64 %524, %527
  br i1 %528, label %60, label %529, !llvm.loop !93

529:                                              ; preds = %520, %50
  %530 = load ptr, ptr %3, align 8, !tbaa !26
  %531 = load ptr, ptr %4, align 8, !tbaa !26
  %532 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %530, ptr noundef %531) #24
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %529
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %535

535:                                              ; preds = %534, %529
  %536 = load ptr, ptr %6, align 8, !tbaa !26
  %537 = getelementptr inbounds %struct._Image, ptr %536, i64 0, i32 47
  %538 = load ptr, ptr %537, align 8, !tbaa !73
  %539 = icmp eq ptr %538, null
  br i1 %539, label %549, label %540

540:                                              ; preds = %535
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_SparseColorImage.var)
  %541 = load ptr, ptr %6, align 8, !tbaa !26
  %542 = load i64, ptr %13, align 8, !tbaa !52
  %543 = add nsw i64 %542, 1
  store i64 %543, ptr %13, align 8, !tbaa !52
  %544 = getelementptr inbounds %struct._Image, ptr %541, i64 0, i32 8
  %545 = load i64, ptr %544, align 8, !tbaa !31
  %546 = call fastcc i32 @SetImageProgress(ptr noundef %541, ptr noundef nonnull @.str.161, i64 noundef %542, i64 noundef %545) #21
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_SparseColorImage.var)
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %540, %41
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %549

549:                                              ; preds = %548, %535, %540
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #10
  %550 = add nsw i64 %42, 1
  %551 = load i64, ptr %16, align 8, !tbaa !28
  %552 = icmp slt i64 %42, %551
  br i1 %552, label %41, label %553

553:                                              ; preds = %549
  %554 = load i64, ptr %15, align 8, !tbaa !28
  br label %555

555:                                              ; preds = %553, %37
  %556 = phi i64 [ %39, %37 ], [ %554, %553 ]
  %557 = phi i64 [ %38, %37 ], [ %551, %553 ]
  %558 = load i64, ptr %17, align 8, !tbaa !28
  %559 = add nsw i64 %558, %556
  store i64 %559, ptr %15, align 8, !tbaa !28
  %560 = add nsw i64 %558, %557
  %561 = call i64 @llvm.smin.i64(i64 %560, i64 %23)
  store i64 %561, ptr %16, align 8, !tbaa !28
  %562 = icmp sgt i64 %559, %561
  br i1 %562, label %563, label %37

563:                                              ; preds = %555, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #10
  br label %564

564:                                              ; preds = %563, %14
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { convergent nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { cold optsize }
attributes #24 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!15, !15, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!7, !11, i64 40}
!30 = !{!18, !11, i64 0}
!31 = !{!7, !11, i64 48}
!32 = !{!18, !11, i64 8}
!33 = !{!7, !11, i64 296}
!34 = !{!7, !11, i64 304}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!18, !11, i64 16}
!38 = !{!18, !11, i64 24}
!39 = !{!9, !9, i64 0}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = !{i32 0, i32 2}
!49 = !{!7, !8, i64 4}
!50 = !{!7, !14, i64 86}
!51 = !{!7, !8, i64 32}
!52 = !{!24, !24, i64 0}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = !{!14, !14, i64 0}
!65 = !{!13, !14, i64 0}
!66 = distinct !{!66, !36}
!67 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 16, i64 8, !25, i64 24, i64 8, !28, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 4, !68, i64 44, i64 4, !68, i64 48, i64 4, !68}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !9, i64 0}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = !{!7, !12, i64 568}
!74 = !{!75, !69, i64 48}
!75 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !69, i64 32, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48}
!76 = !{!75, !8, i64 4}
!77 = !{!75, !69, i64 32}
!78 = !{!75, !69, i64 36}
!79 = !{!75, !69, i64 40}
!80 = !{!13, !14, i64 4}
!81 = !{!13, !14, i64 2}
!82 = !{!75, !69, i64 44}
!83 = !{!13, !14, i64 6}
!84 = !{!7, !8, i64 0}
!85 = !{!7, !12, i64 576}
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
