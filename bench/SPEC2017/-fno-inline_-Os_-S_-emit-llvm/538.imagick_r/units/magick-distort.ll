; ModuleID = 'magick/distort.c'
source_filename = "magick/distort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@.str.101 = private unnamed_addr constant [28 x i8] c"x=%lf  y=%lf  u=%lf  v=%lf\0A\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"radius = %lf  phi = %lf  validity = %lf\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"du/dx=%lf  du/dx=%lf  dv/dx=%lf  dv/dy=%lf\0A\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Distort/Image\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"Barycentric Sparse Color:\0A\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"  -channel R -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"  -channel G -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"  -channel B -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"  -channel K -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"  -channel A -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"Bilinear Sparse Color\0A\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"   -channel R -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"   -channel G -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"   -channel B -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"   -channel K -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"   -channel A -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"Distort/SparseColor\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Polynomial\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"Invalid number of args: order [CPs]...\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"Invalid order, should be interger 1 to 5, or 1.5\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"%s : 'require at least %.20g CPs'\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"unknown method given\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"GenerateCoefficients\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"Affine\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"%s : 'Unsolvable Matrix'\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"%s : 'Needs 6 coeff values'\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"%s : 'Needs at least 1 argument'\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"%s : 'Too Many Arguments (7 or less)'\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"%s : 'Zero Scale Given'\00", align 1
@.str.130 = private unnamed_addr constant [34 x i8] c"%s : 'Needs 8 coefficient values'\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"%s : 'Arc Angle Too Small'\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"%s : 'Outer Radius Too Small'\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"%s : number of arguments\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"%s : Invalid Radius\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"%s : Invalid FOV Angle\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"%s : 'requires CP's (4 numbers each)'\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"shepards:power\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"-define shepards:power\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"no method handler\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"*ii\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"*jj\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"*ii*jj\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"*ii*ii\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"*jj*jj\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"*ii*ii*ii\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"*ii*ii*jj\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"*ii*jj*jj\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"*jj*jj*jj\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*ii\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*jj\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"*ii*ii*jj*jj\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"*ii*jj*jj*jj\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"*jj*jj*jj*jj\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*ii\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*jj\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*jj*jj\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"*ii*ii*jj*jj*jj\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"*ii*jj*jj*jj*jj\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"*jj*jj*jj*jj*jj\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@reltable.poly_basis_str = private unnamed_addr constant [21 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.141 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.142 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.143 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.144 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.145 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.146 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.147 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.148 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.149 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.150 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.151 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.152 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.153 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.154 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.155 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.156 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.157 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.158 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.159 to i64), i64 ptrtoint (ptr @reltable.poly_basis_str to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AffineTransformImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x double], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 308, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #17
  br label %11

11:                                               ; preds = %8, %3
  %12 = load <2 x double>, ptr %1, align 8, !tbaa !24
  store <2 x double> %12, ptr %4, align 16, !tbaa !24
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 2
  %15 = load <2 x double>, ptr %13, align 8, !tbaa !24
  store <2 x double> %15, ptr %14, align 16, !tbaa !24
  %16 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 4
  %18 = load <2 x double>, ptr %16, align 8, !tbaa !24
  store <2 x double> %18, ptr %17, align 16, !tbaa !24
  %19 = call ptr @DistortImage(ptr noundef nonnull %0, i32 noundef 2, i64 noundef 6, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DistortImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca [6 x double], align 16
  %10 = alloca [8 x double], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  store i32 %1, ptr %7, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1708, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #17
  br label %21

21:                                               ; preds = %18, %6
  %22 = icmp eq i32 %1, 17
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = icmp eq i64 %2, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1719, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #17
  br label %1692

27:                                               ; preds = %23
  %28 = load double, ptr %3, align 8, !tbaa !24
  %29 = fptoui double %28 to i64
  %30 = getelementptr inbounds double, ptr %3, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !24
  %32 = fptoui double %31 to i64
  %33 = tail call ptr @DistortResizeImage(ptr noundef nonnull %0, i64 noundef %29, i64 noundef %32, ptr noundef %5) #18
  br label %1692

34:                                               ; preds = %21
  %35 = call fastcc ptr @GenerateCoefficients(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %2, ptr noundef %3, i64 noundef 0, ptr noundef %5) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %1692, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !26
  store i64 %39, ptr %8, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  %45 = load i32, ptr %7, align 4
  %46 = icmp eq i32 %45, 9
  %47 = select i1 %46, i32 1, i32 %4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %379, label %49

49:                                               ; preds = %37
  switch i32 %45, label %379 [
    i32 1, label %50
    i32 4, label %104
    i32 9, label %184
    i32 10, label %272
    i32 11, label %294
    i32 12, label %316
    i32 13, label %341
  ]

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #16
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %35, ptr noundef nonnull %9) #18
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !30
  %53 = sitofp i64 %52 to double
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !31
  %56 = sitofp i64 %55 to double
  %57 = load double, ptr %9, align 16, !tbaa !24
  %58 = getelementptr inbounds [6 x double], ptr %9, i64 0, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !24
  %60 = fmul double %59, %56
  %61 = tail call double @llvm.fmuladd.f64(double %57, double %53, double %60)
  %62 = getelementptr inbounds [6 x double], ptr %9, i64 0, i64 2
  %63 = load double, ptr %62, align 16, !tbaa !24
  %64 = fadd double %63, %61
  %65 = getelementptr inbounds [6 x double], ptr %9, i64 0, i64 3
  %66 = load double, ptr %65, align 8, !tbaa !24
  %67 = getelementptr inbounds [6 x double], ptr %9, i64 0, i64 4
  %68 = load double, ptr %67, align 16, !tbaa !24
  %69 = fmul double %68, %56
  %70 = tail call double @llvm.fmuladd.f64(double %66, double %53, double %69)
  %71 = getelementptr inbounds [6 x double], ptr %9, i64 0, i64 5
  %72 = load double, ptr %71, align 8, !tbaa !24
  %73 = fadd double %72, %70
  %74 = uitofp i64 %39 to double
  %75 = fadd double %74, %53
  %76 = tail call double @llvm.fmuladd.f64(double %57, double %75, double %60)
  %77 = fadd double %63, %76
  %78 = tail call double @llvm.fmuladd.f64(double %66, double %75, double %69)
  %79 = fadd double %72, %78
  %80 = tail call fastcc double @MagickMin(double noundef %64, double noundef %77) #18
  %81 = tail call fastcc double @MagickMax(double noundef %64, double noundef %77) #18
  %82 = tail call fastcc double @MagickMin(double noundef %73, double noundef %79) #18
  %83 = tail call fastcc double @MagickMax(double noundef %73, double noundef %79) #18
  %84 = uitofp i64 %41 to double
  %85 = fadd double %84, %56
  %86 = fmul double %59, %85
  %87 = tail call double @llvm.fmuladd.f64(double %57, double %53, double %86)
  %88 = fadd double %63, %87
  %89 = fmul double %85, %68
  %90 = tail call double @llvm.fmuladd.f64(double %66, double %53, double %89)
  %91 = fadd double %72, %90
  %92 = tail call fastcc double @MagickMin(double noundef %80, double noundef %88) #18
  %93 = tail call fastcc double @MagickMax(double noundef %81, double noundef %88) #18
  %94 = tail call fastcc double @MagickMin(double noundef %82, double noundef %91) #18
  %95 = tail call fastcc double @MagickMax(double noundef %83, double noundef %91) #18
  %96 = tail call double @llvm.fmuladd.f64(double %57, double %75, double %86)
  %97 = fadd double %63, %96
  %98 = tail call double @llvm.fmuladd.f64(double %66, double %75, double %89)
  %99 = fadd double %72, %98
  %100 = tail call fastcc double @MagickMin(double noundef %92, double noundef %97) #18
  %101 = tail call fastcc double @MagickMax(double noundef %93, double noundef %97) #18
  %102 = tail call fastcc double @MagickMin(double noundef %94, double noundef %99) #18
  %103 = tail call fastcc double @MagickMax(double noundef %95, double noundef %99) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #16
  br label %358

104:                                              ; preds = %49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #16
  call fastcc void @InvertPerspectiveCoefficients(ptr noundef nonnull %35, ptr noundef nonnull %10) #18
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !30
  %107 = sitofp i64 %106 to double
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %109 = load i64, ptr %108, align 8, !tbaa !31
  %110 = sitofp i64 %109 to double
  %111 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 6
  %112 = load double, ptr %111, align 16, !tbaa !24
  %113 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 7
  %114 = load double, ptr %113, align 8, !tbaa !24
  %115 = fmul double %114, %110
  %116 = tail call double @llvm.fmuladd.f64(double %112, double %107, double %115)
  %117 = fadd double %116, 1.000000e+00
  %118 = tail call fastcc double @PerceptibleReciprocal(double noundef %117) #18
  %119 = load double, ptr %10, align 16, !tbaa !24
  %120 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 1
  %121 = load double, ptr %120, align 8, !tbaa !24
  %122 = fmul double %121, %110
  %123 = tail call double @llvm.fmuladd.f64(double %119, double %107, double %122)
  %124 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 2
  %125 = load double, ptr %124, align 16, !tbaa !24
  %126 = fadd double %125, %123
  %127 = fmul double %118, %126
  %128 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 3
  %129 = load double, ptr %128, align 8, !tbaa !24
  %130 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 4
  %131 = load double, ptr %130, align 16, !tbaa !24
  %132 = fmul double %131, %110
  %133 = tail call double @llvm.fmuladd.f64(double %129, double %107, double %132)
  %134 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 5
  %135 = load double, ptr %134, align 8, !tbaa !24
  %136 = fadd double %135, %133
  %137 = fmul double %118, %136
  %138 = uitofp i64 %39 to double
  %139 = fadd double %138, %107
  %140 = tail call double @llvm.fmuladd.f64(double %112, double %139, double %115)
  %141 = fadd double %140, 1.000000e+00
  %142 = tail call fastcc double @PerceptibleReciprocal(double noundef %141) #18
  %143 = tail call double @llvm.fmuladd.f64(double %119, double %139, double %122)
  %144 = fadd double %125, %143
  %145 = fmul double %144, %142
  %146 = tail call double @llvm.fmuladd.f64(double %129, double %139, double %132)
  %147 = fadd double %135, %146
  %148 = fmul double %142, %147
  %149 = tail call fastcc double @MagickMin(double noundef %127, double noundef %145) #18
  %150 = tail call fastcc double @MagickMax(double noundef %127, double noundef %145) #18
  %151 = tail call fastcc double @MagickMin(double noundef %137, double noundef %148) #18
  %152 = tail call fastcc double @MagickMax(double noundef %137, double noundef %148) #18
  %153 = uitofp i64 %41 to double
  %154 = fadd double %153, %110
  %155 = fmul double %114, %154
  %156 = tail call double @llvm.fmuladd.f64(double %112, double %107, double %155)
  %157 = fadd double %156, 1.000000e+00
  %158 = tail call fastcc double @PerceptibleReciprocal(double noundef %157) #18
  %159 = fmul double %154, %121
  %160 = tail call double @llvm.fmuladd.f64(double %119, double %107, double %159)
  %161 = fadd double %125, %160
  %162 = fmul double %161, %158
  %163 = fmul double %154, %131
  %164 = tail call double @llvm.fmuladd.f64(double %129, double %107, double %163)
  %165 = fadd double %135, %164
  %166 = fmul double %165, %158
  %167 = tail call fastcc double @MagickMin(double noundef %149, double noundef %162) #18
  %168 = tail call fastcc double @MagickMax(double noundef %150, double noundef %162) #18
  %169 = tail call fastcc double @MagickMin(double noundef %151, double noundef %166) #18
  %170 = tail call fastcc double @MagickMax(double noundef %152, double noundef %166) #18
  %171 = tail call double @llvm.fmuladd.f64(double %112, double %139, double %155)
  %172 = fadd double %171, 1.000000e+00
  %173 = tail call fastcc double @PerceptibleReciprocal(double noundef %172) #18
  %174 = tail call double @llvm.fmuladd.f64(double %119, double %139, double %159)
  %175 = fadd double %125, %174
  %176 = fmul double %175, %173
  %177 = tail call double @llvm.fmuladd.f64(double %129, double %139, double %163)
  %178 = fadd double %135, %177
  %179 = fmul double %178, %173
  %180 = tail call fastcc double @MagickMin(double noundef %167, double noundef %176) #18
  %181 = tail call fastcc double @MagickMax(double noundef %168, double noundef %176) #18
  %182 = tail call fastcc double @MagickMin(double noundef %169, double noundef %179) #18
  %183 = tail call fastcc double @MagickMax(double noundef %170, double noundef %179) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #16
  br label %358

184:                                              ; preds = %49
  %185 = load double, ptr %35, align 8, !tbaa !24
  %186 = getelementptr inbounds double, ptr %35, i64 1
  %187 = load double, ptr %186, align 8, !tbaa !24
  %188 = fmul double %187, 5.000000e-01
  %189 = fsub double %185, %188
  %190 = tail call double @cos(double noundef %189) #17
  %191 = tail call double @sin(double noundef %189) #17
  %192 = getelementptr inbounds double, ptr %35, i64 2
  %193 = load double, ptr %192, align 8, !tbaa !24
  %194 = fmul double %190, %193
  %195 = fmul double %191, %193
  %196 = getelementptr inbounds double, ptr %35, i64 3
  %197 = load double, ptr %196, align 8, !tbaa !24
  %198 = fsub double %193, %197
  %199 = fmul double %190, %198
  %200 = fmul double %191, %198
  %201 = tail call fastcc double @MagickMin(double noundef %194, double noundef %199) #18
  %202 = tail call fastcc double @MagickMax(double noundef %194, double noundef %199) #18
  %203 = tail call fastcc double @MagickMin(double noundef %195, double noundef %200) #18
  %204 = tail call fastcc double @MagickMax(double noundef %195, double noundef %200) #18
  %205 = load double, ptr %35, align 8, !tbaa !24
  %206 = load double, ptr %186, align 8, !tbaa !24
  %207 = fmul double %206, 5.000000e-01
  %208 = fadd double %205, %207
  %209 = tail call double @cos(double noundef %208) #17
  %210 = tail call double @sin(double noundef %208) #17
  %211 = load double, ptr %192, align 8, !tbaa !24
  %212 = fmul double %209, %211
  %213 = fmul double %210, %211
  %214 = tail call fastcc double @MagickMin(double noundef %201, double noundef %212) #18
  %215 = tail call fastcc double @MagickMax(double noundef %202, double noundef %212) #18
  %216 = tail call fastcc double @MagickMin(double noundef %203, double noundef %213) #18
  %217 = tail call fastcc double @MagickMax(double noundef %204, double noundef %213) #18
  %218 = load double, ptr %196, align 8, !tbaa !24
  %219 = fsub double %211, %218
  %220 = fmul double %209, %219
  %221 = fmul double %210, %219
  %222 = tail call fastcc double @MagickMin(double noundef %214, double noundef %220) #18
  %223 = tail call fastcc double @MagickMax(double noundef %215, double noundef %220) #18
  %224 = tail call fastcc double @MagickMin(double noundef %216, double noundef %221) #18
  %225 = tail call fastcc double @MagickMax(double noundef %217, double noundef %221) #18
  %226 = load double, ptr %35, align 8, !tbaa !24
  %227 = load double, ptr %186, align 8, !tbaa !24
  %228 = fmul double %227, 5.000000e-01
  %229 = fsub double %226, %228
  %230 = fdiv double %229, 0x3FF921FB54442D18
  %231 = tail call double @llvm.ceil.f64(double %230)
  %232 = fmul double %231, 0x3FF921FB54442D18
  %233 = fadd double %226, %228
  %234 = fcmp olt double %232, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %184, %235
  %236 = phi double [ %248, %235 ], [ %224, %184 ]
  %237 = phi double [ %246, %235 ], [ %222, %184 ]
  %238 = phi double [ %249, %235 ], [ %225, %184 ]
  %239 = phi double [ %247, %235 ], [ %223, %184 ]
  %240 = phi double [ %250, %235 ], [ %232, %184 ]
  %241 = tail call double @cos(double noundef %240) #17
  %242 = tail call double @sin(double noundef %240) #17
  %243 = load double, ptr %192, align 8, !tbaa !24
  %244 = fmul double %241, %243
  %245 = fmul double %242, %243
  %246 = tail call fastcc double @MagickMin(double noundef %237, double noundef %244) #18
  %247 = tail call fastcc double @MagickMax(double noundef %239, double noundef %244) #18
  %248 = tail call fastcc double @MagickMin(double noundef %236, double noundef %245) #18
  %249 = tail call fastcc double @MagickMax(double noundef %238, double noundef %245) #18
  %250 = fadd double %240, 0x3FF921FB54442D18
  %251 = load double, ptr %35, align 8, !tbaa !24
  %252 = load double, ptr %186, align 8, !tbaa !24
  %253 = fmul double %252, 5.000000e-01
  %254 = fadd double %251, %253
  %255 = fcmp olt double %250, %254
  br i1 %255, label %235, label %256, !llvm.loop !32

256:                                              ; preds = %235
  %257 = load double, ptr %196, align 8, !tbaa !24
  br label %258

258:                                              ; preds = %256, %184
  %259 = phi double [ %218, %184 ], [ %257, %256 ]
  %260 = phi double [ %223, %184 ], [ %247, %256 ]
  %261 = phi double [ %225, %184 ], [ %249, %256 ]
  %262 = phi double [ %222, %184 ], [ %246, %256 ]
  %263 = phi double [ %224, %184 ], [ %248, %256 ]
  %264 = phi double [ %227, %184 ], [ %252, %256 ]
  %265 = load i64, ptr %38, align 8, !tbaa !26
  %266 = uitofp i64 %265 to double
  %267 = fmul double %266, 0x401921FB54442D18
  %268 = fdiv double %267, %264
  store double %268, ptr %186, align 8, !tbaa !24
  %269 = load i64, ptr %40, align 8, !tbaa !28
  %270 = uitofp i64 %269 to double
  %271 = fdiv double %270, %259
  store double %271, ptr %196, align 8, !tbaa !24
  br label %358

272:                                              ; preds = %49
  %273 = icmp ult i64 %2, 2
  %274 = getelementptr inbounds double, ptr %35, i64 2
  br i1 %273, label %279, label %275

275:                                              ; preds = %272
  %276 = load double, ptr %274, align 8, !tbaa !24
  %277 = getelementptr inbounds double, ptr %35, i64 3
  %278 = load double, ptr %277, align 8, !tbaa !24
  br label %280

279:                                              ; preds = %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %274, i8 0, i64 16, i1 false)
  br label %280

280:                                              ; preds = %275, %279
  %281 = phi double [ %278, %275 ], [ 0.000000e+00, %279 ]
  %282 = phi double [ %276, %275 ], [ 0.000000e+00, %279 ]
  %283 = load double, ptr %35, align 8, !tbaa !24
  %284 = fsub double %282, %283
  %285 = fadd double %282, %283
  %286 = fsub double %281, %283
  %287 = fadd double %283, %281
  %288 = uitofp i64 %41 to double
  %289 = getelementptr inbounds double, ptr %35, i64 1
  %290 = load double, ptr %289, align 8, !tbaa !24
  %291 = fsub double %283, %290
  %292 = fdiv double %288, %291
  %293 = getelementptr inbounds double, ptr %35, i64 7
  store double %292, ptr %293, align 8, !tbaa !24
  br label %358

294:                                              ; preds = %49
  %295 = load double, ptr %35, align 8, !tbaa !24
  %296 = getelementptr inbounds double, ptr %35, i64 1
  %297 = load double, ptr %296, align 8, !tbaa !24
  %298 = fsub double %295, %297
  %299 = tail call double @llvm.ceil.f64(double %298)
  %300 = fptoui double %299 to i64
  store i64 %300, ptr %42, align 8, !tbaa !29
  %301 = getelementptr inbounds double, ptr %35, i64 5
  %302 = load double, ptr %301, align 8, !tbaa !24
  %303 = getelementptr inbounds double, ptr %35, i64 4
  %304 = load double, ptr %303, align 8, !tbaa !24
  %305 = fsub double %302, %304
  %306 = fmul double %298, %305
  %307 = fmul double %306, 5.000000e-01
  %308 = tail call double @llvm.ceil.f64(double %307)
  %309 = fptoui double %308 to i64
  store i64 %309, ptr %8, align 8, !tbaa !27
  %310 = uitofp i64 %309 to double
  %311 = fdiv double %305, %310
  %312 = getelementptr inbounds double, ptr %35, i64 6
  store double %311, ptr %312, align 8, !tbaa !24
  %313 = uitofp i64 %300 to double
  %314 = fdiv double %298, %313
  %315 = getelementptr inbounds double, ptr %35, i64 7
  store double %314, ptr %315, align 8, !tbaa !24
  br label %379

316:                                              ; preds = %49
  %317 = getelementptr inbounds double, ptr %35, i64 1
  %318 = load double, ptr %317, align 8, !tbaa !24
  %319 = fmul double %318, 2.000000e+00
  %320 = load double, ptr %35, align 8, !tbaa !24
  %321 = fmul double %320, 5.000000e-01
  %322 = tail call double @tan(double noundef %321) #17
  %323 = fmul double %319, %322
  %324 = tail call double @llvm.ceil.f64(double %323)
  %325 = fptoui double %324 to i64
  store i64 %325, ptr %8, align 8, !tbaa !27
  %326 = getelementptr inbounds double, ptr %35, i64 3
  %327 = load double, ptr %326, align 8, !tbaa !24
  %328 = fmul double %327, 2.000000e+00
  %329 = load double, ptr %35, align 8, !tbaa !24
  %330 = fmul double %329, 5.000000e-01
  %331 = tail call double @cos(double noundef %330) #17
  %332 = fdiv double %328, %331
  %333 = tail call double @llvm.ceil.f64(double %332)
  %334 = fptoui double %333 to i64
  store i64 %334, ptr %42, align 8, !tbaa !29
  %335 = uitofp i64 %325 to double
  %336 = fmul double %335, 5.000000e-01
  %337 = getelementptr inbounds double, ptr %35, i64 4
  store double %336, ptr %337, align 8, !tbaa !24
  %338 = uitofp i64 %334 to double
  %339 = fmul double %338, 5.000000e-01
  %340 = getelementptr inbounds double, ptr %35, i64 5
  store double %339, ptr %340, align 8, !tbaa !24
  br label %379

341:                                              ; preds = %49
  %342 = load double, ptr %35, align 8, !tbaa !24
  %343 = getelementptr inbounds double, ptr %35, i64 1
  %344 = load double, ptr %343, align 8, !tbaa !24
  %345 = fmul double %342, %344
  %346 = tail call double @llvm.ceil.f64(double %345)
  %347 = fptoui double %346 to i64
  store i64 %347, ptr %8, align 8, !tbaa !27
  %348 = getelementptr inbounds double, ptr %35, i64 3
  %349 = load double, ptr %348, align 8, !tbaa !24
  %350 = fmul double %349, 2.000000e+00
  %351 = fptoui double %350 to i64
  store i64 %351, ptr %42, align 8, !tbaa !29
  %352 = uitofp i64 %347 to double
  %353 = fmul double %352, 5.000000e-01
  %354 = getelementptr inbounds double, ptr %35, i64 4
  store double %353, ptr %354, align 8, !tbaa !24
  %355 = uitofp i64 %351 to double
  %356 = fmul double %355, 5.000000e-01
  %357 = getelementptr inbounds double, ptr %35, i64 5
  store double %356, ptr %357, align 8, !tbaa !24
  br label %379

358:                                              ; preds = %50, %104, %258, %280
  %359 = phi double [ %285, %280 ], [ %260, %258 ], [ %181, %104 ], [ %101, %50 ]
  %360 = phi double [ %287, %280 ], [ %261, %258 ], [ %183, %104 ], [ %103, %50 ]
  %361 = phi double [ %284, %280 ], [ %262, %258 ], [ %180, %104 ], [ %100, %50 ]
  %362 = phi double [ %286, %280 ], [ %263, %258 ], [ %182, %104 ], [ %102, %50 ]
  %363 = fadd double %361, -5.000000e-01
  %364 = tail call double @llvm.floor.f64(double %363)
  %365 = fptosi double %364 to i64
  store i64 %365, ptr %43, align 8, !tbaa !34
  %366 = fadd double %362, -5.000000e-01
  %367 = tail call double @llvm.floor.f64(double %366)
  %368 = fptosi double %367 to i64
  store i64 %368, ptr %44, align 8, !tbaa !35
  %369 = sitofp i64 %365 to double
  %370 = fsub double %359, %369
  %371 = fadd double %370, 5.000000e-01
  %372 = tail call double @llvm.ceil.f64(double %371)
  %373 = fptoui double %372 to i64
  store i64 %373, ptr %8, align 8, !tbaa !27
  %374 = sitofp i64 %368 to double
  %375 = fsub double %360, %374
  %376 = fadd double %375, 5.000000e-01
  %377 = tail call double @llvm.ceil.f64(double %376)
  %378 = fptoui double %377 to i64
  store i64 %378, ptr %42, align 8, !tbaa !29
  br label %379

379:                                              ; preds = %49, %294, %316, %341, %358, %37
  %380 = phi i32 [ 0, %37 ], [ %47, %358 ], [ 0, %49 ], [ %47, %294 ], [ %47, %316 ], [ %47, %341 ]
  %381 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #17
  %382 = icmp eq ptr %381, null
  br i1 %382, label %388, label %383

383:                                              ; preds = %379
  %384 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %381, ptr noundef nonnull %8) #17
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %383
  %387 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1968, i32 noundef 310, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %381) #17
  br label %388

388:                                              ; preds = %386, %383, %379
  %389 = phi i32 [ 0, %379 ], [ 0, %386 ], [ 1, %383 ]
  %390 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #17
  %391 = icmp eq ptr %390, null
  br i1 %391, label %951, label %392

392:                                              ; preds = %388
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #16
  %393 = or i32 %389, %380
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %405, label %395

395:                                              ; preds = %392
  %396 = load i64, ptr %8, align 8, !tbaa !27
  %397 = uitofp i64 %396 to double
  %398 = load i64, ptr %42, align 8, !tbaa !29
  %399 = uitofp i64 %398 to double
  %400 = load i64, ptr %43, align 8, !tbaa !34
  %401 = sitofp i64 %400 to double
  %402 = load i64, ptr %44, align 8, !tbaa !35
  %403 = sitofp i64 %402 to double
  %404 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %11, i64 noundef 4096, ptr noundef nonnull @.str.11, double noundef %397, double noundef %399, double noundef %401, double noundef %403) #17
  br label %406

405:                                              ; preds = %392
  store i8 0, ptr %11, align 16, !tbaa !36
  br label %406

406:                                              ; preds = %405, %395
  %407 = phi ptr [ @.str.12, %395 ], [ @.str.13, %405 ]
  switch i32 %45, label %949 [
    i32 1, label %408
    i32 4, label %456
    i32 6, label %525
    i32 7, label %597
    i32 8, label %625
    i32 9, label %684
    i32 10, label %723
    i32 11, label %771
    i32 12, label %810
    i32 13, label %843
    i32 14, label %876
    i32 15, label %876
  ]

408:                                              ; preds = %406
  %409 = call dereferenceable_or_null(48) ptr @AcquireQuantumMemory(i64 noundef 6, i64 noundef 8) #19
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %414

411:                                              ; preds = %408
  %412 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #17
  %413 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2003, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #17
  br label %950

414:                                              ; preds = %408
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %35, ptr noundef nonnull %409) #18
  call fastcc void @CoefficientsToAffineArgs(ptr noundef nonnull %409) #18
  %415 = load ptr, ptr @stderr, align 8, !tbaa !37
  %416 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %415, ptr noundef nonnull @.str.16) #17
  %417 = load ptr, ptr @stderr, align 8, !tbaa !37
  %418 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %417, ptr noundef nonnull @.str.17) #17
  br label %419

419:                                              ; preds = %414, %419
  %420 = phi i64 [ 0, %414 ], [ %425, %419 ]
  %421 = load ptr, ptr @stderr, align 8, !tbaa !37
  %422 = getelementptr inbounds double, ptr %409, i64 %420
  %423 = load double, ptr %422, align 8, !tbaa !24
  %424 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %421, ptr noundef nonnull @.str.18, double noundef %423) #17
  %425 = add nuw nsw i64 %420, 1
  %426 = icmp eq i64 %425, 5
  br i1 %426, label %427, label %419, !llvm.loop !38

427:                                              ; preds = %419
  %428 = load ptr, ptr @stderr, align 8, !tbaa !37
  %429 = getelementptr inbounds double, ptr %409, i64 5
  %430 = load double, ptr %429, align 8, !tbaa !24
  %431 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %428, ptr noundef nonnull @.str.19, double noundef %430) #17
  %432 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %409) #17
  %433 = load ptr, ptr @stderr, align 8, !tbaa !37
  %434 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %433, ptr noundef nonnull @.str.20) #17
  %435 = load ptr, ptr @stderr, align 8, !tbaa !37
  %436 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %435, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %437 = load ptr, ptr @stderr, align 8, !tbaa !37
  %438 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %437, ptr noundef nonnull @.str.21) #17
  %439 = load ptr, ptr @stderr, align 8, !tbaa !37
  %440 = load double, ptr %35, align 8, !tbaa !24
  %441 = getelementptr inbounds double, ptr %35, i64 1
  %442 = load double, ptr %441, align 8, !tbaa !24
  %443 = getelementptr inbounds double, ptr %35, i64 2
  %444 = load double, ptr %443, align 8, !tbaa !24
  %445 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %439, ptr noundef nonnull @.str.22, double noundef %440, double noundef %442, double noundef %444) #17
  %446 = load ptr, ptr @stderr, align 8, !tbaa !37
  %447 = getelementptr inbounds double, ptr %35, i64 3
  %448 = load double, ptr %447, align 8, !tbaa !24
  %449 = getelementptr inbounds double, ptr %35, i64 4
  %450 = load double, ptr %449, align 8, !tbaa !24
  %451 = getelementptr inbounds double, ptr %35, i64 5
  %452 = load double, ptr %451, align 8, !tbaa !24
  %453 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %446, ptr noundef nonnull @.str.23, double noundef %448, double noundef %450, double noundef %452) #17
  %454 = load ptr, ptr @stderr, align 8, !tbaa !37
  %455 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %454, ptr noundef nonnull @.str.24, ptr noundef nonnull %407) #17
  br label %949

456:                                              ; preds = %406
  %457 = call dereferenceable_or_null(64) ptr @AcquireQuantumMemory(i64 noundef 8, i64 noundef 8) #19
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #17
  %461 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2036, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #17
  br label %950

462:                                              ; preds = %456
  call fastcc void @InvertPerspectiveCoefficients(ptr noundef nonnull %35, ptr noundef nonnull %457) #18
  %463 = load ptr, ptr @stderr, align 8, !tbaa !37
  %464 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %463, ptr noundef nonnull @.str.26) #17
  %465 = load ptr, ptr @stderr, align 8, !tbaa !37
  %466 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %465, ptr noundef nonnull @.str.27) #17
  br label %467

467:                                              ; preds = %462, %467
  %468 = phi i64 [ 0, %462 ], [ %473, %467 ]
  %469 = load ptr, ptr @stderr, align 8, !tbaa !37
  %470 = getelementptr inbounds double, ptr %457, i64 %468
  %471 = load double, ptr %470, align 8, !tbaa !24
  %472 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %469, ptr noundef nonnull @.str.28, double noundef %471) #17
  %473 = add nuw nsw i64 %468, 1
  %474 = icmp eq i64 %473, 4
  br i1 %474, label %475, label %467, !llvm.loop !39

475:                                              ; preds = %467
  %476 = load ptr, ptr @stderr, align 8, !tbaa !37
  %477 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %476, ptr noundef nonnull @.str.29) #17
  br label %478

478:                                              ; preds = %475, %478
  %479 = phi i64 [ %484, %478 ], [ 4, %475 ]
  %480 = load ptr, ptr @stderr, align 8, !tbaa !37
  %481 = getelementptr inbounds double, ptr %457, i64 %479
  %482 = load double, ptr %481, align 8, !tbaa !24
  %483 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %480, ptr noundef nonnull @.str.28, double noundef %482) #17
  %484 = add nuw nsw i64 %479, 1
  %485 = icmp eq i64 %484, 7
  br i1 %485, label %486, label %478, !llvm.loop !40

486:                                              ; preds = %478
  %487 = load ptr, ptr @stderr, align 8, !tbaa !37
  %488 = getelementptr inbounds double, ptr %457, i64 7
  %489 = load double, ptr %488, align 8, !tbaa !24
  %490 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %487, ptr noundef nonnull @.str.19, double noundef %489) #17
  %491 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %457) #17
  %492 = load ptr, ptr @stderr, align 8, !tbaa !37
  %493 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %492, ptr noundef nonnull @.str.30) #17
  %494 = load ptr, ptr @stderr, align 8, !tbaa !37
  %495 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %494, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %496 = load ptr, ptr @stderr, align 8, !tbaa !37
  %497 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %496, ptr noundef nonnull @.str.21) #17
  %498 = load ptr, ptr @stderr, align 8, !tbaa !37
  %499 = getelementptr inbounds double, ptr %35, i64 6
  %500 = load double, ptr %499, align 8, !tbaa !24
  %501 = getelementptr inbounds double, ptr %35, i64 7
  %502 = load double, ptr %501, align 8, !tbaa !24
  %503 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %498, ptr noundef nonnull @.str.31, double noundef %500, double noundef %502) #17
  %504 = load ptr, ptr @stderr, align 8, !tbaa !37
  %505 = load double, ptr %35, align 8, !tbaa !24
  %506 = getelementptr inbounds double, ptr %35, i64 1
  %507 = load double, ptr %506, align 8, !tbaa !24
  %508 = getelementptr inbounds double, ptr %35, i64 2
  %509 = load double, ptr %508, align 8, !tbaa !24
  %510 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %504, ptr noundef nonnull @.str.32, double noundef %505, double noundef %507, double noundef %509) #17
  %511 = load ptr, ptr @stderr, align 8, !tbaa !37
  %512 = getelementptr inbounds double, ptr %35, i64 3
  %513 = load double, ptr %512, align 8, !tbaa !24
  %514 = getelementptr inbounds double, ptr %35, i64 4
  %515 = load double, ptr %514, align 8, !tbaa !24
  %516 = getelementptr inbounds double, ptr %35, i64 5
  %517 = load double, ptr %516, align 8, !tbaa !24
  %518 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %511, ptr noundef nonnull @.str.33, double noundef %513, double noundef %515, double noundef %517) #17
  %519 = load ptr, ptr @stderr, align 8, !tbaa !37
  %520 = getelementptr inbounds double, ptr %35, i64 8
  %521 = load double, ptr %520, align 8, !tbaa !24
  %522 = fcmp olt double %521, 0.000000e+00
  %523 = select i1 %522, ptr @.str.35, ptr @.str.36
  %524 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %519, ptr noundef nonnull @.str.34, ptr noundef nonnull %523, ptr noundef nonnull %407) #17
  br label %949

525:                                              ; preds = %406
  %526 = load ptr, ptr @stderr, align 8, !tbaa !37
  %527 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %526, ptr noundef nonnull @.str.37) #17
  %528 = load ptr, ptr @stderr, align 8, !tbaa !37
  %529 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %528, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %530 = load ptr, ptr @stderr, align 8, !tbaa !37
  %531 = load double, ptr %35, align 8, !tbaa !24
  %532 = getelementptr inbounds double, ptr %35, i64 1
  %533 = load double, ptr %532, align 8, !tbaa !24
  %534 = getelementptr inbounds double, ptr %35, i64 2
  %535 = load double, ptr %534, align 8, !tbaa !24
  %536 = getelementptr inbounds double, ptr %35, i64 3
  %537 = load double, ptr %536, align 8, !tbaa !24
  %538 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %530, ptr noundef nonnull @.str.38, double noundef %531, double noundef %533, double noundef %535, double noundef %537) #17
  %539 = load ptr, ptr @stderr, align 8, !tbaa !37
  %540 = getelementptr inbounds double, ptr %35, i64 4
  %541 = load double, ptr %540, align 8, !tbaa !24
  %542 = getelementptr inbounds double, ptr %35, i64 5
  %543 = load double, ptr %542, align 8, !tbaa !24
  %544 = getelementptr inbounds double, ptr %35, i64 6
  %545 = load double, ptr %544, align 8, !tbaa !24
  %546 = getelementptr inbounds double, ptr %35, i64 7
  %547 = load double, ptr %546, align 8, !tbaa !24
  %548 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %539, ptr noundef nonnull @.str.39, double noundef %541, double noundef %543, double noundef %545, double noundef %547) #17
  %549 = load ptr, ptr @stderr, align 8, !tbaa !37
  %550 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %549, ptr noundef nonnull @.str.40) #17
  %551 = load ptr, ptr @stderr, align 8, !tbaa !37
  %552 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %551, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %553 = load ptr, ptr @stderr, align 8, !tbaa !37
  %554 = load double, ptr %536, align 8, !tbaa !24
  %555 = fsub double 5.000000e-01, %554
  %556 = load double, ptr %546, align 8, !tbaa !24
  %557 = fsub double 5.000000e-01, %556
  %558 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %553, ptr noundef nonnull @.str.41, double noundef %555, double noundef %557) #17
  %559 = load ptr, ptr @stderr, align 8, !tbaa !37
  %560 = load double, ptr %544, align 8, !tbaa !24
  %561 = load double, ptr %534, align 8, !tbaa !24
  %562 = fneg double %561
  %563 = getelementptr inbounds double, ptr %35, i64 8
  %564 = load double, ptr %563, align 8, !tbaa !24
  %565 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %559, ptr noundef nonnull @.str.42, double noundef %560, double noundef %562, double noundef %564) #17
  %566 = getelementptr inbounds double, ptr %35, i64 9
  %567 = load double, ptr %566, align 8, !tbaa !24
  %568 = fcmp une double %567, 0.000000e+00
  %569 = load ptr, ptr @stderr, align 8, !tbaa !37
  %570 = load double, ptr %35, align 8, !tbaa !24
  br i1 %568, label %571, label %579

571:                                              ; preds = %525
  %572 = fmul double %567, -2.000000e+00
  %573 = load double, ptr %540, align 8, !tbaa !24
  %574 = fneg double %570
  %575 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %569, ptr noundef nonnull @.str.43, double noundef %572, double noundef %573, double noundef %574) #17
  %576 = load ptr, ptr @stderr, align 8, !tbaa !37
  %577 = load double, ptr %566, align 8, !tbaa !24
  %578 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %576, ptr noundef nonnull @.str.44, double noundef %577) #17
  br label %583

579:                                              ; preds = %525
  %580 = load double, ptr %540, align 8, !tbaa !24
  %581 = fneg double %580
  %582 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %569, ptr noundef nonnull @.str.45, double noundef %581, double noundef %570) #17
  br label %583

583:                                              ; preds = %579, %571
  %584 = load ptr, ptr @stderr, align 8, !tbaa !37
  %585 = load double, ptr %532, align 8, !tbaa !24
  %586 = fneg double %585
  %587 = load double, ptr %35, align 8, !tbaa !24
  %588 = load double, ptr %534, align 8, !tbaa !24
  %589 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %584, ptr noundef nonnull @.str.46, double noundef %586, double noundef %587, double noundef %588) #17
  %590 = load double, ptr %566, align 8, !tbaa !24
  %591 = fcmp une double %590, 0.000000e+00
  %592 = load ptr, ptr @stderr, align 8, !tbaa !37
  br i1 %591, label %593, label %595

593:                                              ; preds = %583
  %594 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %592, ptr noundef nonnull @.str.47, ptr noundef nonnull %407) #17
  br label %949

595:                                              ; preds = %583
  %596 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %592, ptr noundef nonnull @.str.24, ptr noundef nonnull %407) #17
  br label %949

597:                                              ; preds = %406
  %598 = load ptr, ptr @stderr, align 8, !tbaa !37
  %599 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %598, ptr noundef nonnull @.str.48) #17
  %600 = load ptr, ptr @stderr, align 8, !tbaa !37
  %601 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %600, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %602 = load ptr, ptr @stderr, align 8, !tbaa !37
  %603 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %602, ptr noundef nonnull @.str.21) #17
  %604 = load ptr, ptr @stderr, align 8, !tbaa !37
  %605 = load double, ptr %35, align 8, !tbaa !24
  %606 = getelementptr inbounds double, ptr %35, i64 1
  %607 = load double, ptr %606, align 8, !tbaa !24
  %608 = getelementptr inbounds double, ptr %35, i64 2
  %609 = load double, ptr %608, align 8, !tbaa !24
  %610 = getelementptr inbounds double, ptr %35, i64 3
  %611 = load double, ptr %610, align 8, !tbaa !24
  %612 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %604, ptr noundef nonnull @.str.49, double noundef %605, double noundef %607, double noundef %609, double noundef %611) #17
  %613 = load ptr, ptr @stderr, align 8, !tbaa !37
  %614 = getelementptr inbounds double, ptr %35, i64 4
  %615 = load double, ptr %614, align 8, !tbaa !24
  %616 = getelementptr inbounds double, ptr %35, i64 5
  %617 = load double, ptr %616, align 8, !tbaa !24
  %618 = getelementptr inbounds double, ptr %35, i64 6
  %619 = load double, ptr %618, align 8, !tbaa !24
  %620 = getelementptr inbounds double, ptr %35, i64 7
  %621 = load double, ptr %620, align 8, !tbaa !24
  %622 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %613, ptr noundef nonnull @.str.50, double noundef %615, double noundef %617, double noundef %619, double noundef %621) #17
  %623 = load ptr, ptr @stderr, align 8, !tbaa !37
  %624 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %623, ptr noundef nonnull @.str.24, ptr noundef nonnull %407) #17
  br label %949

625:                                              ; preds = %406
  %626 = getelementptr inbounds double, ptr %35, i64 1
  %627 = load double, ptr %626, align 8, !tbaa !24
  %628 = fptoui double %627 to i64
  %629 = load ptr, ptr @stderr, align 8, !tbaa !37
  %630 = load double, ptr %35, align 8, !tbaa !24
  %631 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %629, ptr noundef nonnull @.str.51, double noundef %630, i64 noundef %628) #17
  %632 = load ptr, ptr @stderr, align 8, !tbaa !37
  %633 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %632, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %634 = load ptr, ptr @stderr, align 8, !tbaa !37
  %635 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %634, ptr noundef nonnull @.str.21) #17
  %636 = load ptr, ptr @stderr, align 8, !tbaa !37
  %637 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %636, ptr noundef nonnull @.str.52) #17
  %638 = getelementptr double, ptr %35, i64 2
  %639 = icmp sgt i64 %628, 0
  br i1 %639, label %643, label %640

640:                                              ; preds = %625
  %641 = load ptr, ptr @stderr, align 8, !tbaa !37
  %642 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %641, ptr noundef nonnull @.str.55) #17
  br label %681

643:                                              ; preds = %625, %652
  %644 = phi i64 [ %658, %652 ], [ 0, %625 ]
  %645 = icmp ne i64 %644, 0
  %646 = and i64 %644, 3
  %647 = icmp eq i64 %646, 0
  %648 = and i1 %645, %647
  br i1 %648, label %649, label %652

649:                                              ; preds = %643
  %650 = load ptr, ptr @stderr, align 8, !tbaa !37
  %651 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %650, ptr noundef nonnull @.str.53) #17
  br label %652

652:                                              ; preds = %649, %643
  %653 = load ptr, ptr @stderr, align 8, !tbaa !37
  %654 = getelementptr double, ptr %638, i64 %644
  %655 = load double, ptr %654, align 8, !tbaa !24
  %656 = call fastcc ptr @poly_basis_str(i64 noundef %644) #18
  %657 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %653, ptr noundef nonnull @.str.54, double noundef %655, ptr noundef nonnull %656) #17
  %658 = add nuw nsw i64 %644, 1
  %659 = icmp eq i64 %658, %628
  br i1 %659, label %660, label %643, !llvm.loop !41

660:                                              ; preds = %652
  %661 = load ptr, ptr @stderr, align 8, !tbaa !37
  %662 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %661, ptr noundef nonnull @.str.55) #17
  %663 = getelementptr double, ptr %638, i64 %628
  br i1 %639, label %664, label %681

664:                                              ; preds = %660, %673
  %665 = phi i64 [ %679, %673 ], [ 0, %660 ]
  %666 = icmp ne i64 %665, 0
  %667 = and i64 %665, 3
  %668 = icmp eq i64 %667, 0
  %669 = and i1 %666, %668
  br i1 %669, label %670, label %673

670:                                              ; preds = %664
  %671 = load ptr, ptr @stderr, align 8, !tbaa !37
  %672 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %671, ptr noundef nonnull @.str.53) #17
  br label %673

673:                                              ; preds = %670, %664
  %674 = load ptr, ptr @stderr, align 8, !tbaa !37
  %675 = getelementptr double, ptr %663, i64 %665
  %676 = load double, ptr %675, align 8, !tbaa !24
  %677 = call fastcc ptr @poly_basis_str(i64 noundef %665) #18
  %678 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %674, ptr noundef nonnull @.str.54, double noundef %676, ptr noundef nonnull %677) #17
  %679 = add nuw nsw i64 %665, 1
  %680 = icmp eq i64 %679, %628
  br i1 %680, label %681, label %664, !llvm.loop !42

681:                                              ; preds = %673, %640, %660
  %682 = load ptr, ptr @stderr, align 8, !tbaa !37
  %683 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %682, ptr noundef nonnull @.str.56, ptr noundef nonnull %407) #17
  br label %949

684:                                              ; preds = %406
  %685 = load ptr, ptr @stderr, align 8, !tbaa !37
  %686 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %685, ptr noundef nonnull @.str.57) #17
  br label %687

687:                                              ; preds = %684, %687
  %688 = phi i64 [ 0, %684 ], [ %694, %687 ]
  %689 = load ptr, ptr @stderr, align 8, !tbaa !37
  %690 = sitofp i64 %688 to double
  %691 = getelementptr inbounds double, ptr %35, i64 %688
  %692 = load double, ptr %691, align 8, !tbaa !24
  %693 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %689, ptr noundef nonnull @.str.58, double noundef %690, double noundef %692) #17
  %694 = add nuw nsw i64 %688, 1
  %695 = icmp eq i64 %694, 5
  br i1 %695, label %696, label %687, !llvm.loop !43

696:                                              ; preds = %687
  %697 = load ptr, ptr @stderr, align 8, !tbaa !37
  %698 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %697, ptr noundef nonnull @.str.59) #17
  %699 = load ptr, ptr @stderr, align 8, !tbaa !37
  %700 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %699, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %701 = load ptr, ptr @stderr, align 8, !tbaa !37
  %702 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %701, ptr noundef nonnull @.str.60) #17
  %703 = load ptr, ptr @stderr, align 8, !tbaa !37
  %704 = load double, ptr %35, align 8, !tbaa !24
  %705 = fneg double %704
  %706 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %703, ptr noundef nonnull @.str.61, double noundef %705) #17
  %707 = load ptr, ptr @stderr, align 8, !tbaa !37
  %708 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %707, ptr noundef nonnull @.str.62) #17
  %709 = load ptr, ptr @stderr, align 8, !tbaa !37
  %710 = getelementptr inbounds double, ptr %35, i64 1
  %711 = load double, ptr %710, align 8, !tbaa !24
  %712 = getelementptr inbounds double, ptr %35, i64 4
  %713 = load double, ptr %712, align 8, !tbaa !24
  %714 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %709, ptr noundef nonnull @.str.63, double noundef %711, double noundef %713) #17
  %715 = load ptr, ptr @stderr, align 8, !tbaa !37
  %716 = getelementptr inbounds double, ptr %35, i64 2
  %717 = load double, ptr %716, align 8, !tbaa !24
  %718 = getelementptr inbounds double, ptr %35, i64 3
  %719 = load double, ptr %718, align 8, !tbaa !24
  %720 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %715, ptr noundef nonnull @.str.64, double noundef %717, double noundef %719) #17
  %721 = load ptr, ptr @stderr, align 8, !tbaa !37
  %722 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %721, ptr noundef nonnull @.str.65) #17
  br label %949

723:                                              ; preds = %406
  %724 = load ptr, ptr @stderr, align 8, !tbaa !37
  %725 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %724, ptr noundef nonnull @.str.66) #17
  br label %726

726:                                              ; preds = %723, %726
  %727 = phi i64 [ 0, %723 ], [ %733, %726 ]
  %728 = load ptr, ptr @stderr, align 8, !tbaa !37
  %729 = sitofp i64 %727 to double
  %730 = getelementptr inbounds double, ptr %35, i64 %727
  %731 = load double, ptr %730, align 8, !tbaa !24
  %732 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %728, ptr noundef nonnull @.str.58, double noundef %729, double noundef %731) #17
  %733 = add nuw nsw i64 %727, 1
  %734 = icmp eq i64 %733, 8
  br i1 %734, label %735, label %726, !llvm.loop !44

735:                                              ; preds = %726
  %736 = load ptr, ptr @stderr, align 8, !tbaa !37
  %737 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %736, ptr noundef nonnull @.str.67) #17
  %738 = load ptr, ptr @stderr, align 8, !tbaa !37
  %739 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %738, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %740 = load ptr, ptr @stderr, align 8, !tbaa !37
  %741 = getelementptr inbounds double, ptr %35, i64 2
  %742 = load double, ptr %741, align 8, !tbaa !24
  %743 = fneg double %742
  %744 = getelementptr inbounds double, ptr %35, i64 3
  %745 = load double, ptr %744, align 8, !tbaa !24
  %746 = fneg double %745
  %747 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %740, ptr noundef nonnull @.str.41, double noundef %743, double noundef %746) #17
  %748 = load ptr, ptr @stderr, align 8, !tbaa !37
  %749 = getelementptr inbounds double, ptr %35, i64 4
  %750 = load double, ptr %749, align 8, !tbaa !24
  %751 = getelementptr inbounds double, ptr %35, i64 5
  %752 = load double, ptr %751, align 8, !tbaa !24
  %753 = fadd double %750, %752
  %754 = fmul double %753, -5.000000e-01
  %755 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %748, ptr noundef nonnull @.str.68, double noundef %754) #17
  %756 = load ptr, ptr @stderr, align 8, !tbaa !37
  %757 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %756, ptr noundef nonnull @.str.62) #17
  %758 = load ptr, ptr @stderr, align 8, !tbaa !37
  %759 = getelementptr inbounds double, ptr %35, i64 6
  %760 = load double, ptr %759, align 8, !tbaa !24
  %761 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %758, ptr noundef nonnull @.str.69, double noundef %760) #17
  %762 = load ptr, ptr @stderr, align 8, !tbaa !37
  %763 = getelementptr inbounds double, ptr %35, i64 1
  %764 = load double, ptr %763, align 8, !tbaa !24
  %765 = fneg double %764
  %766 = getelementptr inbounds double, ptr %35, i64 7
  %767 = load double, ptr %766, align 8, !tbaa !24
  %768 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %762, ptr noundef nonnull @.str.70, double noundef %765, double noundef %767) #17
  %769 = load ptr, ptr @stderr, align 8, !tbaa !37
  %770 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %769, ptr noundef nonnull @.str.65) #17
  br label %949

771:                                              ; preds = %406
  %772 = load ptr, ptr @stderr, align 8, !tbaa !37
  %773 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %772, ptr noundef nonnull @.str.71) #17
  br label %774

774:                                              ; preds = %771, %774
  %775 = phi i64 [ 0, %771 ], [ %781, %774 ]
  %776 = load ptr, ptr @stderr, align 8, !tbaa !37
  %777 = sitofp i64 %775 to double
  %778 = getelementptr inbounds double, ptr %35, i64 %775
  %779 = load double, ptr %778, align 8, !tbaa !24
  %780 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %776, ptr noundef nonnull @.str.58, double noundef %777, double noundef %779) #17
  %781 = add nuw nsw i64 %775, 1
  %782 = icmp eq i64 %781, 8
  br i1 %782, label %783, label %774, !llvm.loop !45

783:                                              ; preds = %774
  %784 = load ptr, ptr @stderr, align 8, !tbaa !37
  %785 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %784, ptr noundef nonnull @.str.72) #17
  %786 = load ptr, ptr @stderr, align 8, !tbaa !37
  %787 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %786, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %788 = load ptr, ptr @stderr, align 8, !tbaa !37
  %789 = getelementptr inbounds double, ptr %35, i64 6
  %790 = load double, ptr %789, align 8, !tbaa !24
  %791 = getelementptr inbounds double, ptr %35, i64 4
  %792 = load double, ptr %791, align 8, !tbaa !24
  %793 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %788, ptr noundef nonnull @.str.73, double noundef %790, double noundef %792) #17
  %794 = load ptr, ptr @stderr, align 8, !tbaa !37
  %795 = getelementptr inbounds double, ptr %35, i64 7
  %796 = load double, ptr %795, align 8, !tbaa !24
  %797 = getelementptr inbounds double, ptr %35, i64 1
  %798 = load double, ptr %797, align 8, !tbaa !24
  %799 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %794, ptr noundef nonnull @.str.74, double noundef %796, double noundef %798) #17
  %800 = load ptr, ptr @stderr, align 8, !tbaa !37
  %801 = getelementptr inbounds double, ptr %35, i64 2
  %802 = load double, ptr %801, align 8, !tbaa !24
  %803 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %800, ptr noundef nonnull @.str.75, double noundef %802) #17
  %804 = load ptr, ptr @stderr, align 8, !tbaa !37
  %805 = getelementptr inbounds double, ptr %35, i64 3
  %806 = load double, ptr %805, align 8, !tbaa !24
  %807 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %804, ptr noundef nonnull @.str.76, double noundef %806) #17
  %808 = load ptr, ptr @stderr, align 8, !tbaa !37
  %809 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %808, ptr noundef nonnull @.str.65) #17
  br label %949

810:                                              ; preds = %406
  %811 = load ptr, ptr @stderr, align 8, !tbaa !37
  %812 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %811, ptr noundef nonnull @.str.77) #17
  %813 = load ptr, ptr @stderr, align 8, !tbaa !37
  %814 = getelementptr inbounds double, ptr %35, i64 1
  %815 = load double, ptr %814, align 8, !tbaa !24
  %816 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %813, ptr noundef nonnull @.str.78, double noundef %815) #17
  %817 = load ptr, ptr @stderr, align 8, !tbaa !37
  %818 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %817, ptr noundef nonnull @.str.79) #17
  %819 = load ptr, ptr @stderr, align 8, !tbaa !37
  %820 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %819, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %821 = load ptr, ptr @stderr, align 8, !tbaa !37
  %822 = getelementptr inbounds double, ptr %35, i64 4
  %823 = load double, ptr %822, align 8, !tbaa !24
  %824 = fneg double %823
  %825 = getelementptr inbounds double, ptr %35, i64 5
  %826 = load double, ptr %825, align 8, !tbaa !24
  %827 = fneg double %826
  %828 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %821, ptr noundef nonnull @.str.80, double noundef %824, double noundef %827) #17
  %829 = load ptr, ptr @stderr, align 8, !tbaa !37
  %830 = load double, ptr %814, align 8, !tbaa !24
  %831 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %829, ptr noundef nonnull @.str.81, double noundef %830) #17
  %832 = load ptr, ptr @stderr, align 8, !tbaa !37
  %833 = load double, ptr %814, align 8, !tbaa !24
  %834 = getelementptr inbounds double, ptr %35, i64 2
  %835 = load double, ptr %834, align 8, !tbaa !24
  %836 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %832, ptr noundef nonnull @.str.82, double noundef %833, double noundef %835) #17
  %837 = load ptr, ptr @stderr, align 8, !tbaa !37
  %838 = getelementptr inbounds double, ptr %35, i64 3
  %839 = load double, ptr %838, align 8, !tbaa !24
  %840 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %837, ptr noundef nonnull @.str.83, double noundef %839) #17
  %841 = load ptr, ptr @stderr, align 8, !tbaa !37
  %842 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %841, ptr noundef nonnull @.str.24, ptr noundef nonnull %407) #17
  br label %949

843:                                              ; preds = %406
  %844 = load ptr, ptr @stderr, align 8, !tbaa !37
  %845 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %844, ptr noundef nonnull @.str.84) #17
  %846 = load ptr, ptr @stderr, align 8, !tbaa !37
  %847 = getelementptr inbounds double, ptr %35, i64 1
  %848 = load double, ptr %847, align 8, !tbaa !24
  %849 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %846, ptr noundef nonnull @.str.78, double noundef %848) #17
  %850 = load ptr, ptr @stderr, align 8, !tbaa !37
  %851 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %850, ptr noundef nonnull @.str.85) #17
  %852 = load ptr, ptr @stderr, align 8, !tbaa !37
  %853 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %852, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %854 = load ptr, ptr @stderr, align 8, !tbaa !37
  %855 = getelementptr inbounds double, ptr %35, i64 4
  %856 = load double, ptr %855, align 8, !tbaa !24
  %857 = fneg double %856
  %858 = getelementptr inbounds double, ptr %35, i64 5
  %859 = load double, ptr %858, align 8, !tbaa !24
  %860 = fneg double %859
  %861 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %854, ptr noundef nonnull @.str.80, double noundef %857, double noundef %860) #17
  %862 = load ptr, ptr @stderr, align 8, !tbaa !37
  %863 = load double, ptr %847, align 8, !tbaa !24
  %864 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %862, ptr noundef nonnull @.str.86, double noundef %863) #17
  %865 = load ptr, ptr @stderr, align 8, !tbaa !37
  %866 = load double, ptr %847, align 8, !tbaa !24
  %867 = getelementptr inbounds double, ptr %35, i64 2
  %868 = load double, ptr %867, align 8, !tbaa !24
  %869 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %865, ptr noundef nonnull @.str.87, double noundef %866, double noundef %868) #17
  %870 = load ptr, ptr @stderr, align 8, !tbaa !37
  %871 = getelementptr inbounds double, ptr %35, i64 3
  %872 = load double, ptr %871, align 8, !tbaa !24
  %873 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %870, ptr noundef nonnull @.str.88, double noundef %872) #17
  %874 = load ptr, ptr @stderr, align 8, !tbaa !37
  %875 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %874, ptr noundef nonnull @.str.24, ptr noundef nonnull %407) #17
  br label %949

876:                                              ; preds = %406, %406
  %877 = load i64, ptr %38, align 8, !tbaa !26
  %878 = uitofp i64 %877 to double
  %879 = fadd double %878, -1.000000e+00
  %880 = fmul double %879, 5.000000e-01
  %881 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %882 = load i64, ptr %881, align 8, !tbaa !30
  %883 = sitofp i64 %882 to double
  %884 = fadd double %880, %883
  %885 = load i64, ptr %40, align 8, !tbaa !28
  %886 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %887 = load i64, ptr %886, align 8, !tbaa !31
  %888 = load ptr, ptr @stderr, align 8, !tbaa !37
  %889 = icmp eq i32 %45, 14
  %890 = select i1 %889, ptr @.str.1, ptr @.str.90
  %891 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %888, ptr noundef nonnull @.str.89, ptr noundef nonnull %890) #17
  %892 = load ptr, ptr @stderr, align 8, !tbaa !37
  %893 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %892, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  %894 = getelementptr inbounds double, ptr %35, i64 8
  %895 = load double, ptr %894, align 8, !tbaa !24
  %896 = fsub double %895, %884
  %897 = fadd double %896, -5.000000e-01
  %898 = call double @llvm.fabs.f64(double %897)
  %899 = fcmp olt double %898, 1.000000e-01
  br i1 %899, label %903, label %900

900:                                              ; preds = %876
  %901 = getelementptr inbounds double, ptr %35, i64 9
  %902 = load double, ptr %901, align 8, !tbaa !24
  br label %918

903:                                              ; preds = %876
  %904 = uitofp i64 %885 to double
  %905 = fadd double %904, -1.000000e+00
  %906 = fmul double %905, 5.000000e-01
  %907 = sitofp i64 %887 to double
  %908 = fadd double %906, %907
  %909 = getelementptr inbounds double, ptr %35, i64 9
  %910 = load double, ptr %909, align 8, !tbaa !24
  %911 = fsub double %910, %908
  %912 = fadd double %911, -5.000000e-01
  %913 = call double @llvm.fabs.f64(double %912)
  %914 = fcmp olt double %913, 1.000000e-01
  br i1 %914, label %915, label %918

915:                                              ; preds = %903
  %916 = load ptr, ptr @stderr, align 8, !tbaa !37
  %917 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %916, ptr noundef nonnull @.str.91) #17
  br label %924

918:                                              ; preds = %900, %903
  %919 = phi double [ %902, %900 ], [ %910, %903 ]
  %920 = load ptr, ptr @stderr, align 8, !tbaa !37
  %921 = fadd double %895, -5.000000e-01
  %922 = fadd double %919, -5.000000e-01
  %923 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %920, ptr noundef nonnull @.str.92, double noundef %921, double noundef %922) #17
  br label %924

924:                                              ; preds = %918, %915
  %925 = load ptr, ptr @stderr, align 8, !tbaa !37
  %926 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %925, ptr noundef nonnull @.str.93) #17
  %927 = load ptr, ptr @stderr, align 8, !tbaa !37
  %928 = select i1 %889, ptr @.str.95, ptr @.str.96
  %929 = load double, ptr %35, align 8, !tbaa !24
  %930 = getelementptr inbounds double, ptr %35, i64 1
  %931 = load double, ptr %930, align 8, !tbaa !24
  %932 = getelementptr inbounds double, ptr %35, i64 2
  %933 = load double, ptr %932, align 8, !tbaa !24
  %934 = getelementptr inbounds double, ptr %35, i64 3
  %935 = load double, ptr %934, align 8, !tbaa !24
  %936 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %927, ptr noundef nonnull @.str.94, ptr noundef nonnull %928, double noundef %929, double noundef %931, double noundef %933, double noundef %935) #17
  %937 = load ptr, ptr @stderr, align 8, !tbaa !37
  %938 = getelementptr inbounds double, ptr %35, i64 4
  %939 = load double, ptr %938, align 8, !tbaa !24
  %940 = getelementptr inbounds double, ptr %35, i64 5
  %941 = load double, ptr %940, align 8, !tbaa !24
  %942 = getelementptr inbounds double, ptr %35, i64 6
  %943 = load double, ptr %942, align 8, !tbaa !24
  %944 = getelementptr inbounds double, ptr %35, i64 7
  %945 = load double, ptr %944, align 8, !tbaa !24
  %946 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %937, ptr noundef nonnull @.str.97, ptr noundef nonnull %928, double noundef %939, double noundef %941, double noundef %943, double noundef %945) #17
  %947 = load ptr, ptr @stderr, align 8, !tbaa !37
  %948 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %947, ptr noundef nonnull @.str.98) #17
  br label %949

949:                                              ; preds = %486, %427, %924, %406, %593, %595, %843, %810, %783, %735, %696, %681, %597
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #16
  br label %951

950:                                              ; preds = %459, %411
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #16
  br label %1692

951:                                              ; preds = %949, %388
  %952 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.99) #17
  %953 = icmp eq ptr %952, null
  br i1 %953, label %954, label %957

954:                                              ; preds = %951
  %955 = load i64, ptr %8, align 8, !tbaa !27
  %956 = load i64, ptr %42, align 8, !tbaa !29
  br label %982

957:                                              ; preds = %951
  %958 = call fastcc double @StringToDouble(ptr noundef nonnull %952) #18
  %959 = call double @llvm.fabs.f64(double %958)
  %960 = load i64, ptr %8, align 8, !tbaa !27
  %961 = uitofp i64 %960 to double
  %962 = call double @llvm.fmuladd.f64(double %959, double %961, double 5.000000e-01)
  %963 = fptoui double %962 to i64
  store i64 %963, ptr %8, align 8, !tbaa !27
  %964 = load i64, ptr %42, align 8, !tbaa !29
  %965 = uitofp i64 %964 to double
  %966 = call double @llvm.fmuladd.f64(double %959, double %965, double 5.000000e-01)
  %967 = fptoui double %966 to i64
  store i64 %967, ptr %42, align 8, !tbaa !29
  %968 = load i64, ptr %43, align 8, !tbaa !34
  %969 = sitofp i64 %968 to double
  %970 = call double @llvm.fmuladd.f64(double %959, double %969, double 5.000000e-01)
  %971 = fptosi double %970 to i64
  store i64 %971, ptr %43, align 8, !tbaa !34
  %972 = load i64, ptr %44, align 8, !tbaa !35
  %973 = sitofp i64 %972 to double
  %974 = call double @llvm.fmuladd.f64(double %959, double %973, double 5.000000e-01)
  %975 = fptosi double %974 to i64
  store i64 %975, ptr %44, align 8, !tbaa !35
  %976 = fcmp olt double %959, 1.000000e-01
  br i1 %976, label %979, label %977

977:                                              ; preds = %957
  %978 = fdiv double 1.000000e+00, %959
  br label %982

979:                                              ; preds = %957
  %980 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #17
  %981 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2273, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.100) #17
  br label %1692

982:                                              ; preds = %954, %977
  %983 = phi i64 [ %956, %954 ], [ %967, %977 ]
  %984 = phi i64 [ %955, %954 ], [ %963, %977 ]
  %985 = phi double [ 1.000000e+00, %954 ], [ %978, %977 ]
  %986 = call ptr @CloneImage(ptr noundef %0, i64 noundef %984, i64 noundef %983, i32 noundef 1, ptr noundef %5) #17
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1692, label %988

988:                                              ; preds = %982
  %989 = call i32 @SetImageStorageClass(ptr noundef nonnull %986, i32 noundef 1) #17
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %994

991:                                              ; preds = %988
  %992 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %992) #17
  %993 = call ptr @DestroyImage(ptr noundef nonnull %986) #17
  br label %1692

994:                                              ; preds = %988
  %995 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 12
  %996 = call fastcc i32 @IsPixelGray(ptr noundef nonnull %995) #18, !range !46
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1005

998:                                              ; preds = %994
  %999 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 1
  %1000 = load i32, ptr %999, align 4, !tbaa !47
  %1001 = call fastcc i32 @IsGrayColorspace(i32 noundef %1000) #18, !range !46
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1005, label %1003

1003:                                             ; preds = %998
  %1004 = call i32 @SetImageColorspace(ptr noundef nonnull %986, i32 noundef 13) #17
  br label %1005

1005:                                             ; preds = %1003, %998, %994
  %1006 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 12, i32 3
  %1007 = load i16, ptr %1006, align 2, !tbaa !48
  %1008 = icmp eq i16 %1007, 0
  br i1 %1008, label %1011, label %1009

1009:                                             ; preds = %1005
  %1010 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 6
  store i32 1, ptr %1010, align 8, !tbaa !49
  br label %1011

1011:                                             ; preds = %1009, %1005
  %1012 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 26, i32 2
  %1013 = load <2 x i64>, ptr %43, align 8, !tbaa !50
  store <2 x i64> %1013, ptr %1012, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %986, ptr noundef nonnull %12) #17
  %1014 = call fastcc ptr @AcquireResampleFilterThreadSet(ptr noundef %0, ptr noundef %5) #18
  %1015 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %986, ptr noundef %5) #17
  %1016 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 8
  %1017 = load i64, ptr %1016, align 8, !tbaa !28
  %1018 = icmp sgt i64 %1017, 0
  br i1 %1018, label %1019, label %1679

1019:                                             ; preds = %1011
  %1020 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 7
  %1021 = icmp eq i32 %45, 1
  %1022 = getelementptr inbounds double, ptr %35, i64 1
  %1023 = getelementptr inbounds double, ptr %35, i64 3
  %1024 = getelementptr inbounds double, ptr %35, i64 4
  %1025 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 14
  %1026 = getelementptr inbounds %struct._Image, ptr %986, i64 0, i32 1
  %1027 = icmp eq i64 %2, 0
  %1028 = getelementptr inbounds double, ptr %35, i64 8
  %1029 = getelementptr inbounds double, ptr %35, i64 9
  %1030 = icmp eq i32 %45, 14
  %1031 = fmul double %985, 0.000000e+00
  %1032 = getelementptr inbounds double, ptr %35, i64 7
  %1033 = getelementptr inbounds double, ptr %35, i64 2
  %1034 = getelementptr inbounds double, ptr %35, i64 5
  %1035 = getelementptr inbounds double, ptr %35, i64 6
  %1036 = icmp eq i32 %45, 15
  %1037 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1038 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1039 = icmp ne i32 %380, 0
  %1040 = icmp ne i32 %45, 9
  %1041 = and i1 %1039, %1040
  %1042 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %1043 = insertelement <2 x double> poison, double %985, i64 0
  %1044 = shufflevector <2 x double> %1043, <2 x double> poison, <2 x i32> zeroinitializer
  %1045 = insertelement <4 x double> poison, double %985, i64 0
  %1046 = shufflevector <4 x double> %1045, <4 x double> poison, <4 x i32> zeroinitializer
  %1047 = insertelement <4 x double> poison, double %1031, i64 0
  %1048 = shufflevector <4 x double> %1047, <4 x double> poison, <4 x i32> zeroinitializer
  br label %1049

1049:                                             ; preds = %1019, %1667
  %1050 = phi i64 [ 0, %1019 ], [ %1670, %1667 ]
  %1051 = phi i64 [ 0, %1019 ], [ %1669, %1667 ]
  %1052 = phi i32 [ 1, %1019 ], [ %1668, %1667 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #16
  %1053 = load i64, ptr %1020, align 8, !tbaa !26
  %1054 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1015, i64 noundef 0, i64 noundef %1050, i64 noundef %1053, i64 noundef 1, ptr noundef %5) #20
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1667, label %1056

1056:                                             ; preds = %1049
  %1057 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1015) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false), !tbaa.struct !51
  br i1 %1021, label %1058, label %1068

1058:                                             ; preds = %1056
  %1059 = load ptr, ptr %1014, align 8, !tbaa !37
  %1060 = load double, ptr %35, align 8, !tbaa !24
  %1061 = fmul double %985, %1060
  %1062 = load double, ptr %1022, align 8, !tbaa !24
  %1063 = fmul double %985, %1062
  %1064 = load double, ptr %1023, align 8, !tbaa !24
  %1065 = fmul double %985, %1064
  %1066 = load double, ptr %1024, align 8, !tbaa !24
  %1067 = fmul double %985, %1066
  call void @ScaleResampleFilter(ptr noundef %1059, double noundef %1061, double noundef %1063, double noundef %1065, double noundef %1067) #17
  br label %1068

1068:                                             ; preds = %1056, %1058
  call void @GetMagickPixelPacket(ptr noundef nonnull %986, ptr noundef nonnull %14) #17
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %986, ptr noundef nonnull %1025, ptr noundef null, ptr noundef nonnull %14) #18
  %1069 = load i32, ptr %1026, align 4, !tbaa !47
  %1070 = icmp eq i32 %1069, 12
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1068
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %14) #18
  br label %1072

1072:                                             ; preds = %1071, %1068
  %1073 = load i64, ptr %1020, align 8, !tbaa !26
  %1074 = icmp sgt i64 %1073, 0
  br i1 %1074, label %1075, label %1655

1075:                                             ; preds = %1072
  %1076 = sitofp i64 %1050 to double
  %1077 = fadd double %1076, 5.000000e-01
  %1078 = fmul double %985, %1077
  br label %1079

1079:                                             ; preds = %1075, %1648
  %1080 = phi ptr [ %1054, %1075 ], [ %1650, %1648 ]
  %1081 = phi i64 [ 0, %1075 ], [ %1652, %1648 ]
  %1082 = phi ptr [ %1057, %1075 ], [ %1651, %1648 ]
  %1083 = phi double [ 1.000000e+00, %1075 ], [ %1633, %1648 ]
  %1084 = load <2 x i64>, ptr %43, align 8, !tbaa !50
  %1085 = insertelement <2 x i64> poison, i64 %1081, i64 0
  %1086 = insertelement <2 x i64> %1085, i64 %1050, i64 1
  %1087 = add nsw <2 x i64> %1084, %1086
  %1088 = sitofp <2 x i64> %1087 to <2 x double>
  %1089 = fadd <2 x double> %1088, <double 5.000000e-01, double 5.000000e-01>
  %1090 = fmul <2 x double> %1044, %1089
  switch i32 %45, label %1625 [
    i32 1, label %1095
    i32 4, label %1113
    i32 7, label %1193
    i32 6, label %1228
    i32 8, label %1276
    i32 9, label %1320
    i32 10, label %1360
    i32 11, label %1409
    i32 12, label %1430
    i32 13, label %1462
    i32 14, label %1517
    i32 15, label %1517
    i32 16, label %1091
  ]

1091:                                             ; preds = %1079
  br i1 %1027, label %1618, label %1092

1092:                                             ; preds = %1091
  %1093 = extractelement <2 x double> %1090, i64 0
  %1094 = extractelement <2 x double> %1090, i64 1
  br label %1589

1095:                                             ; preds = %1079
  %1096 = load double, ptr %35, align 8, !tbaa !24
  %1097 = load double, ptr %1022, align 8, !tbaa !24
  %1098 = load double, ptr %1033, align 8, !tbaa !24
  %1099 = load double, ptr %1023, align 8, !tbaa !24
  %1100 = load double, ptr %1024, align 8, !tbaa !24
  %1101 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %1102 = insertelement <2 x double> poison, double %1097, i64 0
  %1103 = insertelement <2 x double> %1102, double %1100, i64 1
  %1104 = fmul <2 x double> %1101, %1103
  %1105 = insertelement <2 x double> poison, double %1096, i64 0
  %1106 = insertelement <2 x double> %1105, double %1099, i64 1
  %1107 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> zeroinitializer
  %1108 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1106, <2 x double> %1107, <2 x double> %1104)
  %1109 = load double, ptr %1034, align 8, !tbaa !24
  %1110 = insertelement <2 x double> poison, double %1098, i64 0
  %1111 = insertelement <2 x double> %1110, double %1109, i64 1
  %1112 = fadd <2 x double> %1111, %1108
  br label %1625

1113:                                             ; preds = %1079
  %1114 = load double, ptr %35, align 8, !tbaa !24
  %1115 = load double, ptr %1022, align 8, !tbaa !24
  %1116 = load double, ptr %1033, align 8, !tbaa !24
  %1117 = load double, ptr %1023, align 8, !tbaa !24
  %1118 = load double, ptr %1024, align 8, !tbaa !24
  %1119 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %1120 = insertelement <2 x double> poison, double %1115, i64 0
  %1121 = insertelement <2 x double> %1120, double %1118, i64 1
  %1122 = fmul <2 x double> %1119, %1121
  %1123 = insertelement <2 x double> poison, double %1114, i64 0
  %1124 = insertelement <2 x double> %1123, double %1117, i64 1
  %1125 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> zeroinitializer
  %1126 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1124, <2 x double> %1125, <2 x double> %1122)
  %1127 = load double, ptr %1034, align 8, !tbaa !24
  %1128 = insertelement <2 x double> poison, double %1116, i64 0
  %1129 = insertelement <2 x double> %1128, double %1127, i64 1
  %1130 = fadd <2 x double> %1129, %1126
  %1131 = extractelement <2 x double> %1090, i64 0
  %1132 = load double, ptr %1028, align 8, !tbaa !24
  %1133 = load <2 x double>, ptr %1035, align 8, !tbaa !24
  %1134 = extractelement <2 x double> %1133, i64 1
  %1135 = fmul <2 x double> %1090, %1133
  %1136 = extractelement <2 x double> %1135, i64 1
  %1137 = extractelement <2 x double> %1133, i64 0
  %1138 = call double @llvm.fmuladd.f64(double %1137, double %1131, double %1136)
  %1139 = fadd double %1138, 1.000000e+00
  %1140 = fmul double %1132, %1139
  %1141 = fcmp olt double %1140, 0.000000e+00
  %1142 = select i1 %1141, double 0.000000e+00, double 1.000000e+00
  %1143 = call double @llvm.fabs.f64(double %1139)
  %1144 = fmul double %1143, 2.000000e+00
  %1145 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %1133)
  %1146 = extractelement <2 x double> %1145, i64 0
  %1147 = extractelement <2 x double> %1145, i64 1
  %1148 = fcmp ogt double %1146, %1147
  br i1 %1148, label %1149, label %1156

1149:                                             ; preds = %1113
  %1150 = fmul double %985, %1146
  %1151 = fcmp olt double %1144, %1150
  br i1 %1151, label %1152, label %1163

1152:                                             ; preds = %1149
  %1153 = fmul double %985, %1137
  %1154 = fdiv double %1140, %1153
  %1155 = fsub double 5.000000e-01, %1154
  br label %1163

1156:                                             ; preds = %1113
  %1157 = fmul double %985, %1147
  %1158 = fcmp olt double %1144, %1157
  br i1 %1158, label %1159, label %1163

1159:                                             ; preds = %1156
  %1160 = fmul double %985, %1134
  %1161 = fdiv double %1140, %1160
  %1162 = fsub double 5.000000e-01, %1161
  br label %1163

1163:                                             ; preds = %1156, %1159, %1149, %1152
  %1164 = phi double [ %1155, %1152 ], [ %1142, %1149 ], [ %1162, %1159 ], [ %1142, %1156 ]
  %1165 = fcmp ogt double %1164, 0.000000e+00
  br i1 %1165, label %1166, label %1625

1166:                                             ; preds = %1163
  %1167 = fdiv double 1.000000e+00, %1139
  %1168 = insertelement <2 x double> poison, double %1167, i64 0
  %1169 = shufflevector <2 x double> %1168, <2 x double> poison, <2 x i32> zeroinitializer
  %1170 = fmul <2 x double> %1130, %1169
  %1171 = fmul double %1167, %1167
  %1172 = load ptr, ptr %1014, align 8, !tbaa !37
  %1173 = extractelement <2 x double> %1130, i64 0
  %1174 = fneg double %1173
  %1175 = fmul double %1137, %1174
  %1176 = call double @llvm.fmuladd.f64(double %1139, double %1114, double %1175)
  %1177 = fmul double %1176, %1171
  %1178 = fmul double %985, %1177
  %1179 = fmul double %1134, %1174
  %1180 = call double @llvm.fmuladd.f64(double %1139, double %1115, double %1179)
  %1181 = fmul double %1180, %1171
  %1182 = fmul double %985, %1181
  %1183 = extractelement <2 x double> %1130, i64 1
  %1184 = fneg double %1183
  %1185 = fmul double %1137, %1184
  %1186 = call double @llvm.fmuladd.f64(double %1139, double %1117, double %1185)
  %1187 = fmul double %1186, %1171
  %1188 = fmul double %985, %1187
  %1189 = fmul double %1134, %1184
  %1190 = call double @llvm.fmuladd.f64(double %1139, double %1118, double %1189)
  %1191 = fmul double %1190, %1171
  %1192 = fmul double %985, %1191
  call void @ScaleResampleFilter(ptr noundef %1172, double noundef %1178, double noundef %1182, double noundef %1188, double noundef %1192) #17
  br label %1625

1193:                                             ; preds = %1079
  %1194 = load double, ptr %35, align 8, !tbaa !24
  %1195 = load double, ptr %1022, align 8, !tbaa !24
  %1196 = load double, ptr %1033, align 8, !tbaa !24
  %1197 = load double, ptr %1023, align 8, !tbaa !24
  %1198 = load double, ptr %1024, align 8, !tbaa !24
  %1199 = load double, ptr %1034, align 8, !tbaa !24
  %1200 = load double, ptr %1035, align 8, !tbaa !24
  %1201 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %1202 = insertelement <2 x double> poison, double %1195, i64 0
  %1203 = insertelement <2 x double> %1202, double %1199, i64 1
  %1204 = fmul <2 x double> %1201, %1203
  %1205 = insertelement <2 x double> poison, double %1194, i64 0
  %1206 = insertelement <2 x double> %1205, double %1198, i64 1
  %1207 = shufflevector <2 x double> %1090, <2 x double> poison, <2 x i32> zeroinitializer
  %1208 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1206, <2 x double> %1207, <2 x double> %1204)
  %1209 = insertelement <2 x double> poison, double %1196, i64 0
  %1210 = insertelement <2 x double> %1209, double %1200, i64 1
  %1211 = fmul <2 x double> %1207, %1210
  %1212 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1211, <2 x double> %1201, <2 x double> %1208)
  %1213 = load double, ptr %1032, align 8, !tbaa !24
  %1214 = insertelement <2 x double> poison, double %1197, i64 0
  %1215 = insertelement <2 x double> %1214, double %1213, i64 1
  %1216 = fadd <2 x double> %1215, %1212
  %1217 = load ptr, ptr %1014, align 8, !tbaa !37
  %1218 = extractelement <2 x double> %1090, i64 1
  %1219 = call double @llvm.fmuladd.f64(double %1196, double %1218, double %1194)
  %1220 = fmul double %985, %1219
  %1221 = extractelement <2 x double> %1090, i64 0
  %1222 = call double @llvm.fmuladd.f64(double %1196, double %1221, double %1195)
  %1223 = fmul double %985, %1222
  %1224 = call double @llvm.fmuladd.f64(double %1200, double %1218, double %1198)
  %1225 = fmul double %985, %1224
  %1226 = call double @llvm.fmuladd.f64(double %1200, double %1221, double %1199)
  %1227 = fmul double %985, %1226
  call void @ScaleResampleFilter(ptr noundef %1217, double noundef %1220, double noundef %1223, double noundef %1225, double noundef %1227) #17
  br label %1625

1228:                                             ; preds = %1079
  %1229 = load double, ptr %1023, align 8, !tbaa !24
  %1230 = extractelement <2 x double> %1090, i64 0
  %1231 = fsub double %1230, %1229
  %1232 = load double, ptr %1032, align 8, !tbaa !24
  %1233 = extractelement <2 x double> %1090, i64 1
  %1234 = fsub double %1233, %1232
  %1235 = load double, ptr %1035, align 8, !tbaa !24
  %1236 = load double, ptr %1033, align 8, !tbaa !24
  %1237 = fneg double %1236
  %1238 = fmul double %1234, %1237
  %1239 = call double @llvm.fmuladd.f64(double %1235, double %1231, double %1238)
  %1240 = load double, ptr %1028, align 8, !tbaa !24
  %1241 = fadd double %1240, %1239
  %1242 = load double, ptr %1024, align 8, !tbaa !24
  %1243 = load double, ptr %35, align 8, !tbaa !24
  %1244 = fneg double %1243
  %1245 = fmul double %1234, %1244
  %1246 = call double @llvm.fmuladd.f64(double %1242, double %1231, double %1245)
  %1247 = load double, ptr %1029, align 8, !tbaa !24
  %1248 = call double @llvm.fabs.f64(double %1247)
  %1249 = fcmp olt double %1248, 1.000000e-15
  br i1 %1249, label %1250, label %1253

1250:                                             ; preds = %1228
  %1251 = fneg double %1246
  %1252 = fdiv double %1251, %1241
  br label %1265

1253:                                             ; preds = %1228
  %1254 = fmul double %1247, -2.000000e+00
  %1255 = fmul double %1254, %1246
  %1256 = call double @llvm.fmuladd.f64(double %1241, double %1241, double %1255)
  %1257 = fcmp olt double %1256, 0.000000e+00
  br i1 %1257, label %1625, label %1258

1258:                                             ; preds = %1253
  %1259 = call double @sqrt(double noundef %1256) #17
  %1260 = fsub double %1259, %1241
  %1261 = load double, ptr %1029, align 8, !tbaa !24
  %1262 = fdiv double %1260, %1261
  %1263 = load double, ptr %35, align 8, !tbaa !24
  %1264 = load double, ptr %1033, align 8, !tbaa !24
  br label %1265

1265:                                             ; preds = %1250, %1258
  %1266 = phi double [ %1264, %1258 ], [ %1236, %1250 ]
  %1267 = phi double [ %1263, %1258 ], [ %1243, %1250 ]
  %1268 = phi double [ %1262, %1258 ], [ %1252, %1250 ]
  %1269 = load double, ptr %1022, align 8, !tbaa !24
  %1270 = fneg double %1269
  %1271 = call double @llvm.fmuladd.f64(double %1270, double %1268, double %1231)
  %1272 = call double @llvm.fmuladd.f64(double %1266, double %1268, double %1267)
  %1273 = fdiv double %1271, %1272
  %1274 = insertelement <2 x double> poison, double %1273, i64 0
  %1275 = insertelement <2 x double> %1274, double %1268, i64 1
  br label %1625

1276:                                             ; preds = %1079
  %1277 = load double, ptr %1022, align 8, !tbaa !24
  %1278 = fptosi double %1277 to i64
  %1279 = getelementptr double, ptr %35, i64 %1278
  %1280 = icmp sgt i64 %1278, 0
  br i1 %1280, label %1281, label %1312

1281:                                             ; preds = %1276
  %1282 = extractelement <2 x double> %1090, i64 0
  %1283 = extractelement <2 x double> %1090, i64 1
  br label %1284

1284:                                             ; preds = %1281, %1284
  %1285 = phi i64 [ %1308, %1284 ], [ 0, %1281 ]
  %1286 = phi <2 x double> [ %1300, %1284 ], [ zeroinitializer, %1281 ]
  %1287 = phi <4 x double> [ %1307, %1284 ], [ zeroinitializer, %1281 ]
  %1288 = call fastcc double @poly_basis_fn(i64 noundef %1285, double noundef %1282, double noundef %1283) #18
  %1289 = add nuw nsw i64 %1285, 2
  %1290 = getelementptr inbounds double, ptr %35, i64 %1289
  %1291 = load double, ptr %1290, align 8, !tbaa !24
  %1292 = call fastcc double @poly_basis_dx(i64 noundef %1285, double noundef %1282, double noundef %1283) #18
  %1293 = call fastcc double @poly_basis_dy(i64 noundef %1285, double noundef %1282, double noundef %1283) #18
  %1294 = getelementptr double, ptr %1279, i64 %1289
  %1295 = load double, ptr %1294, align 8, !tbaa !24
  %1296 = insertelement <2 x double> poison, double %1288, i64 0
  %1297 = shufflevector <2 x double> %1296, <2 x double> poison, <2 x i32> zeroinitializer
  %1298 = insertelement <2 x double> poison, double %1291, i64 0
  %1299 = insertelement <2 x double> %1298, double %1295, i64 1
  %1300 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1297, <2 x double> %1299, <2 x double> %1286)
  %1301 = insertelement <4 x double> poison, double %1293, i64 0
  %1302 = insertelement <4 x double> %1301, double %1292, i64 1
  %1303 = shufflevector <4 x double> %1302, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %1304 = insertelement <4 x double> poison, double %1295, i64 0
  %1305 = insertelement <4 x double> %1304, double %1291, i64 1
  %1306 = shufflevector <4 x double> %1305, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %1307 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1303, <4 x double> %1306, <4 x double> %1287)
  %1308 = add nuw nsw i64 %1285, 1
  %1309 = icmp eq i64 %1308, %1278
  br i1 %1309, label %1310, label %1284, !llvm.loop !54

1310:                                             ; preds = %1284
  %1311 = fmul <4 x double> %1046, %1307
  br label %1312

1312:                                             ; preds = %1310, %1276
  %1313 = phi <2 x double> [ %1300, %1310 ], [ zeroinitializer, %1276 ]
  %1314 = phi <4 x double> [ %1311, %1310 ], [ %1048, %1276 ]
  %1315 = load ptr, ptr %1014, align 8, !tbaa !37
  %1316 = extractelement <4 x double> %1314, i64 0
  %1317 = extractelement <4 x double> %1314, i64 1
  %1318 = extractelement <4 x double> %1314, i64 2
  %1319 = extractelement <4 x double> %1314, i64 3
  call void @ScaleResampleFilter(ptr noundef %1315, double noundef %1319, double noundef %1318, double noundef %1317, double noundef %1316) #17
  br label %1625

1320:                                             ; preds = %1079
  %1321 = extractelement <2 x double> %1090, i64 0
  %1322 = extractelement <2 x double> %1090, i64 1
  %1323 = call double @atan2(double noundef %1322, double noundef %1321) #17
  %1324 = load double, ptr %35, align 8, !tbaa !24
  %1325 = fsub double %1323, %1324
  %1326 = fdiv double %1325, 0x401921FB54442D18
  %1327 = call fastcc double @MagickRound(double noundef %1326) #18
  %1328 = fsub double %1326, %1327
  %1329 = call double @hypot(double noundef %1321, double noundef %1322) #17
  %1330 = fcmp ogt double %1329, 1.000000e-15
  %1331 = load ptr, ptr %1014, align 8, !tbaa !37
  %1332 = load double, ptr %1023, align 8, !tbaa !24
  %1333 = fmul double %985, %1332
  br i1 %1330, label %1334, label %1338

1334:                                             ; preds = %1320
  %1335 = load double, ptr %1022, align 8, !tbaa !24
  %1336 = fmul double %1329, 0x401921FB54442D18
  %1337 = fdiv double %1335, %1336
  br label %1342

1338:                                             ; preds = %1320
  %1339 = load i64, ptr %1020, align 8, !tbaa !26
  %1340 = shl i64 %1339, 1
  %1341 = uitofp i64 %1340 to double
  br label %1342

1342:                                             ; preds = %1334, %1338
  %1343 = phi double [ %1337, %1334 ], [ %1341, %1338 ]
  %1344 = fmul double %985, %1343
  call void @ScaleResampleFilter(ptr noundef %1331, double noundef %1344, double noundef %1031, double noundef %1031, double noundef %1333) #17
  %1345 = load double, ptr %1022, align 8, !tbaa !24
  %1346 = load double, ptr %1024, align 8, !tbaa !24
  %1347 = call double @llvm.fmuladd.f64(double %1328, double %1345, double %1346)
  %1348 = load i64, ptr %1037, align 8, !tbaa !30
  %1349 = sitofp i64 %1348 to double
  %1350 = fadd double %1347, %1349
  %1351 = fadd double %1350, 5.000000e-01
  %1352 = load double, ptr %1033, align 8, !tbaa !24
  %1353 = fsub double %1352, %1329
  %1354 = load double, ptr %1023, align 8, !tbaa !24
  %1355 = load i64, ptr %1038, align 8, !tbaa !31
  %1356 = sitofp i64 %1355 to double
  %1357 = call double @llvm.fmuladd.f64(double %1353, double %1354, double %1356)
  %1358 = insertelement <2 x double> poison, double %1351, i64 0
  %1359 = insertelement <2 x double> %1358, double %1357, i64 1
  br label %1632

1360:                                             ; preds = %1079
  %1361 = load double, ptr %1033, align 8, !tbaa !24
  %1362 = extractelement <2 x double> %1090, i64 0
  %1363 = fsub double %1362, %1361
  %1364 = load double, ptr %1023, align 8, !tbaa !24
  %1365 = extractelement <2 x double> %1090, i64 1
  %1366 = fsub double %1365, %1364
  %1367 = call double @atan2(double noundef %1363, double noundef %1366) #17
  %1368 = load double, ptr %1024, align 8, !tbaa !24
  %1369 = load double, ptr %1034, align 8, !tbaa !24
  %1370 = fadd double %1368, %1369
  %1371 = fmul double %1370, 5.000000e-01
  %1372 = fsub double %1367, %1371
  %1373 = fdiv double %1372, 0x401921FB54442D18
  %1374 = call fastcc double @MagickRound(double noundef %1373) #18
  %1375 = fsub double %1373, %1374
  %1376 = fmul double %1375, 0x401921FB54442D18
  %1377 = call double @hypot(double noundef %1363, double noundef %1366) #17
  %1378 = fcmp ogt double %1377, 1.000000e-15
  %1379 = load ptr, ptr %1014, align 8, !tbaa !37
  %1380 = load double, ptr %1032, align 8, !tbaa !24
  %1381 = fmul double %985, %1380
  br i1 %1378, label %1382, label %1386

1382:                                             ; preds = %1360
  %1383 = load double, ptr %1035, align 8, !tbaa !24
  %1384 = fmul double %1377, 0x401921FB54442D18
  %1385 = fdiv double %1383, %1384
  br label %1390

1386:                                             ; preds = %1360
  %1387 = load i64, ptr %1020, align 8, !tbaa !26
  %1388 = shl i64 %1387, 1
  %1389 = uitofp i64 %1388 to double
  br label %1390

1390:                                             ; preds = %1386, %1382
  %1391 = phi double [ %1389, %1386 ], [ %1385, %1382 ]
  %1392 = fmul double %985, %1391
  call void @ScaleResampleFilter(ptr noundef %1379, double noundef %1392, double noundef %1031, double noundef %1031, double noundef %1381) #17
  %1393 = load double, ptr %1035, align 8, !tbaa !24
  %1394 = load i64, ptr %38, align 8, !tbaa !26
  %1395 = uitofp i64 %1394 to double
  %1396 = fmul double %1395, 5.000000e-01
  %1397 = call double @llvm.fmuladd.f64(double %1376, double %1393, double %1396)
  %1398 = load i64, ptr %1037, align 8, !tbaa !30
  %1399 = sitofp i64 %1398 to double
  %1400 = fadd double %1397, %1399
  %1401 = load double, ptr %1022, align 8, !tbaa !24
  %1402 = fsub double %1377, %1401
  %1403 = load double, ptr %1032, align 8, !tbaa !24
  %1404 = load i64, ptr %1038, align 8, !tbaa !31
  %1405 = sitofp i64 %1404 to double
  %1406 = call double @llvm.fmuladd.f64(double %1402, double %1403, double %1405)
  %1407 = insertelement <2 x double> poison, double %1400, i64 0
  %1408 = insertelement <2 x double> %1407, double %1406, i64 1
  br label %1625

1409:                                             ; preds = %1079
  %1410 = sitofp i64 %1081 to double
  %1411 = fadd double %1410, 5.000000e-01
  %1412 = fmul double %985, %1411
  %1413 = load double, ptr %1035, align 8, !tbaa !24
  %1414 = load double, ptr %1024, align 8, !tbaa !24
  %1415 = call double @llvm.fmuladd.f64(double %1412, double %1413, double %1414)
  %1416 = load double, ptr %1032, align 8, !tbaa !24
  %1417 = load double, ptr %1022, align 8, !tbaa !24
  %1418 = call double @llvm.fmuladd.f64(double %1078, double %1416, double %1417)
  %1419 = call double @sin(double noundef %1415) #17
  %1420 = load double, ptr %1033, align 8, !tbaa !24
  %1421 = call double @cos(double noundef %1415) #17
  %1422 = load double, ptr %1023, align 8, !tbaa !24
  %1423 = insertelement <2 x double> poison, double %1418, i64 0
  %1424 = shufflevector <2 x double> %1423, <2 x double> poison, <2 x i32> zeroinitializer
  %1425 = insertelement <2 x double> poison, double %1419, i64 0
  %1426 = insertelement <2 x double> %1425, double %1421, i64 1
  %1427 = insertelement <2 x double> poison, double %1420, i64 0
  %1428 = insertelement <2 x double> %1427, double %1422, i64 1
  %1429 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1424, <2 x double> %1426, <2 x double> %1428)
  br label %1625

1430:                                             ; preds = %1079
  %1431 = load double, ptr %1024, align 8, !tbaa !24
  %1432 = extractelement <2 x double> %1090, i64 0
  %1433 = fsub double %1432, %1431
  %1434 = load double, ptr %1034, align 8, !tbaa !24
  %1435 = extractelement <2 x double> %1090, i64 1
  %1436 = fsub double %1435, %1434
  %1437 = load double, ptr %1022, align 8, !tbaa !24
  %1438 = fdiv double %1433, %1437
  %1439 = call double @atan(double noundef %1438) #17
  %1440 = call double @cos(double noundef %1439) #17
  %1441 = load double, ptr %1022, align 8, !tbaa !24
  %1442 = load ptr, ptr %1014, align 8, !tbaa !37
  %1443 = call double @llvm.fmuladd.f64(double %1438, double %1438, double 1.000000e+00)
  %1444 = fdiv double 1.000000e+00, %1443
  %1445 = fmul double %985, %1444
  %1446 = fneg double %1438
  %1447 = insertelement <2 x double> poison, double %1439, i64 0
  %1448 = insertelement <2 x double> %1447, double %1436, i64 1
  %1449 = insertelement <2 x double> poison, double %1441, i64 0
  %1450 = insertelement <2 x double> %1449, double %1440, i64 1
  %1451 = fmul <2 x double> %1448, %1450
  %1452 = extractelement <2 x double> %1451, i64 1
  %1453 = fmul double %1452, %1446
  %1454 = fmul double %1440, %1453
  %1455 = fmul double %1440, %1454
  %1456 = fdiv double %1455, %1441
  %1457 = fmul double %985, %1456
  %1458 = fdiv double %1452, %1436
  %1459 = fmul double %985, %1458
  call void @ScaleResampleFilter(ptr noundef %1442, double noundef %1445, double noundef %1031, double noundef %1457, double noundef %1459) #17
  %1460 = load <2 x double>, ptr %1033, align 8, !tbaa !24
  %1461 = fadd <2 x double> %1451, %1460
  br label %1625

1462:                                             ; preds = %1079
  %1463 = load double, ptr %1024, align 8, !tbaa !24
  %1464 = extractelement <2 x double> %1090, i64 0
  %1465 = fsub double %1464, %1463
  %1466 = load double, ptr %1022, align 8, !tbaa !24
  %1467 = call double @llvm.fabs.f64(double %1465)
  %1468 = fneg double %1467
  %1469 = call double @llvm.fmuladd.f64(double %1466, double 0x3FF921FB54442D18, double %1468)
  %1470 = fdiv double %1469, %985
  %1471 = fadd double %1470, 5.000000e-01
  %1472 = fcmp ogt double %1471, 0.000000e+00
  br i1 %1472, label %1473, label %1513

1473:                                             ; preds = %1462
  %1474 = load double, ptr %1034, align 8, !tbaa !24
  %1475 = extractelement <2 x double> %1090, i64 1
  %1476 = fsub double %1475, %1474
  %1477 = fdiv double %1465, %1466
  %1478 = call double @cos(double noundef %1477) #17
  %1479 = fdiv double 1.000000e+00, %1478
  %1480 = call double @tan(double noundef %1477) #17
  %1481 = load double, ptr %1022, align 8, !tbaa !24
  %1482 = insertelement <2 x double> poison, double %1480, i64 0
  %1483 = insertelement <2 x double> %1482, double %1476, i64 1
  %1484 = insertelement <2 x double> poison, double %1481, i64 0
  %1485 = insertelement <2 x double> %1484, double %1479, i64 1
  %1486 = fmul <2 x double> %1483, %1485
  %1487 = load ptr, ptr %1014, align 8, !tbaa !37
  %1488 = fmul double %1479, %1479
  %1489 = fmul double %985, %1488
  %1490 = extractelement <2 x double> %1486, i64 1
  %1491 = fmul double %1479, %1490
  %1492 = fdiv double %1491, %1481
  %1493 = fmul double %985, %1492
  %1494 = fmul double %985, %1479
  call void @ScaleResampleFilter(ptr noundef %1487, double noundef %1489, double noundef %1031, double noundef %1493, double noundef %1494) #17
  %1495 = fcmp oeq double %1477, 5.000000e-01
  %1496 = fcmp oeq double %1476, 5.000000e-01
  %1497 = and i1 %1495, %1496
  br i1 %1497, label %1498, label %1513

1498:                                             ; preds = %1473
  %1499 = load ptr, ptr @stderr, align 8, !tbaa !37
  %1500 = load double, ptr %1022, align 8, !tbaa !24
  %1501 = fmul double %1500, 5.000000e-01
  %1502 = extractelement <2 x double> %1486, i64 0
  %1503 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1499, ptr noundef nonnull @.str.101, double noundef %1501, double noundef 5.000000e-01, double noundef %1502, double noundef %1490) #21
  %1504 = load ptr, ptr @stderr, align 8, !tbaa !37
  %1505 = load double, ptr %1022, align 8, !tbaa !24
  %1506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1504, ptr noundef nonnull @.str.102, double noundef %1505, double noundef 0x403CA5DC1A63C1F8, double noundef %1471) #21
  %1507 = load ptr, ptr @stderr, align 8, !tbaa !37
  %1508 = load double, ptr %1022, align 8, !tbaa !24
  %1509 = fdiv double %1491, %1508
  %1510 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1507, ptr noundef nonnull @.str.103, double noundef %1488, double noundef 0.000000e+00, double noundef %1509, double noundef %1479) #21
  %1511 = load ptr, ptr @stderr, align 8, !tbaa !37
  %1512 = call i32 @fflush(ptr noundef %1511) #18
  br label %1513

1513:                                             ; preds = %1473, %1498, %1462
  %1514 = phi <2 x double> [ %1090, %1462 ], [ %1486, %1498 ], [ %1486, %1473 ]
  %1515 = load <2 x double>, ptr %1033, align 8, !tbaa !24
  %1516 = fadd <2 x double> %1514, %1515
  br label %1625

1517:                                             ; preds = %1079, %1079
  %1518 = load <2 x double>, ptr %1028, align 8, !tbaa !24
  %1519 = fsub <2 x double> %1090, %1518
  %1520 = extractelement <2 x double> %1519, i64 1
  %1521 = fmul double %1520, %1520
  %1522 = extractelement <2 x double> %1519, i64 0
  %1523 = call double @llvm.fmuladd.f64(double %1522, double %1522, double %1521)
  %1524 = call double @llvm.sqrt.f64(double %1523)
  %1525 = fcmp ogt double %1524, 1.000000e-15
  br i1 %1525, label %1526, label %1576

1526:                                             ; preds = %1517
  %1527 = load double, ptr %35, align 8, !tbaa !24
  %1528 = load double, ptr %1022, align 8, !tbaa !24
  %1529 = load double, ptr %1033, align 8, !tbaa !24
  %1530 = load double, ptr %1023, align 8, !tbaa !24
  %1531 = load double, ptr %1024, align 8, !tbaa !24
  %1532 = load double, ptr %1034, align 8, !tbaa !24
  %1533 = load double, ptr %1035, align 8, !tbaa !24
  %1534 = insertelement <2 x double> poison, double %1527, i64 0
  %1535 = insertelement <2 x double> %1534, double %1531, i64 1
  %1536 = insertelement <2 x double> poison, double %1524, i64 0
  %1537 = shufflevector <2 x double> %1536, <2 x double> poison, <2 x i32> zeroinitializer
  %1538 = insertelement <2 x double> poison, double %1528, i64 0
  %1539 = insertelement <2 x double> %1538, double %1532, i64 1
  %1540 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1535, <2 x double> %1537, <2 x double> %1539)
  %1541 = insertelement <2 x double> poison, double %1529, i64 0
  %1542 = insertelement <2 x double> %1541, double %1533, i64 1
  %1543 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1540, <2 x double> %1537, <2 x double> %1542)
  %1544 = load double, ptr %1032, align 8, !tbaa !24
  %1545 = insertelement <2 x double> poison, double %1530, i64 0
  %1546 = insertelement <2 x double> %1545, double %1544, i64 1
  %1547 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1543, <2 x double> %1537, <2 x double> %1546)
  %1548 = fmul <2 x double> %1535, <double 3.000000e+00, double 3.000000e+00>
  %1549 = fmul <2 x double> %1539, <double 2.000000e+00, double 2.000000e+00>
  %1550 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1548, <2 x double> %1537, <2 x double> %1549)
  %1551 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1550, <2 x double> %1537, <2 x double> %1542)
  %1552 = fdiv <2 x double> %1551, %1537
  %1553 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1547
  %1554 = fneg <2 x double> %1553
  %1555 = fmul <2 x double> %1553, %1554
  %1556 = fmul <2 x double> %1552, %1555
  %1557 = select i1 %1036, <2 x double> %1553, <2 x double> %1547
  %1558 = select i1 %1036, <2 x double> %1556, <2 x double> %1552
  %1559 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1519, <2 x double> %1557, <2 x double> %1518)
  %1560 = load ptr, ptr %1014, align 8, !tbaa !37
  %1561 = fmul <2 x double> %1519, %1558
  %1562 = extractelement <2 x double> %1561, i64 0
  %1563 = extractelement <2 x double> %1557, i64 0
  %1564 = call double @llvm.fmuladd.f64(double %1562, double %1522, double %1563)
  %1565 = fmul double %985, %1564
  %1566 = fmul double %1520, %1562
  %1567 = fmul double %985, %1566
  %1568 = extractelement <2 x double> %1558, i64 1
  %1569 = fmul double %1522, %1568
  %1570 = fmul double %1520, %1569
  %1571 = fmul double %985, %1570
  %1572 = fmul double %1520, %1568
  %1573 = extractelement <2 x double> %1557, i64 1
  %1574 = call double @llvm.fmuladd.f64(double %1572, double %1520, double %1573)
  %1575 = fmul double %985, %1574
  call void @ScaleResampleFilter(ptr noundef %1560, double noundef %1565, double noundef %1567, double noundef %1571, double noundef %1575) #17
  br label %1625

1576:                                             ; preds = %1517
  %1577 = load ptr, ptr %1014, align 8, !tbaa !37
  %1578 = load double, ptr %1023, align 8, !tbaa !24
  br i1 %1030, label %1579, label %1583

1579:                                             ; preds = %1576
  %1580 = fmul double %985, %1578
  %1581 = load double, ptr %1032, align 8, !tbaa !24
  %1582 = fmul double %985, %1581
  call void @ScaleResampleFilter(ptr noundef %1577, double noundef %1580, double noundef %1031, double noundef %1031, double noundef %1582) #17
  br label %1625

1583:                                             ; preds = %1576
  %1584 = fdiv double 1.000000e+00, %1578
  %1585 = fmul double %985, %1584
  %1586 = load double, ptr %1032, align 8, !tbaa !24
  %1587 = fdiv double 1.000000e+00, %1586
  %1588 = fmul double %985, %1587
  call void @ScaleResampleFilter(ptr noundef %1577, double noundef %1585, double noundef %1031, double noundef %1031, double noundef %1588) #17
  br label %1625

1589:                                             ; preds = %1092, %1589
  %1590 = phi double [ %1615, %1589 ], [ 0.000000e+00, %1092 ]
  %1591 = phi i64 [ %1616, %1589 ], [ 0, %1092 ]
  %1592 = phi <2 x double> [ %1614, %1589 ], [ zeroinitializer, %1092 ]
  %1593 = or disjoint i64 %1591, 2
  %1594 = getelementptr inbounds double, ptr %3, i64 %1593
  %1595 = load double, ptr %1594, align 8, !tbaa !24
  %1596 = fsub double %1093, %1595
  %1597 = or disjoint i64 %1591, 3
  %1598 = getelementptr inbounds double, ptr %3, i64 %1597
  %1599 = load double, ptr %1598, align 8, !tbaa !24
  %1600 = fsub double %1094, %1599
  %1601 = fmul double %1600, %1600
  %1602 = call double @llvm.fmuladd.f64(double %1596, double %1596, double %1601)
  %1603 = load double, ptr %35, align 8, !tbaa !24
  %1604 = call double @pow(double noundef %1602, double noundef %1603) #17
  %1605 = fcmp olt double %1604, 1.000000e+00
  %1606 = fdiv double 1.000000e+00, %1604
  %1607 = select i1 %1605, double 1.000000e+00, double %1606
  %1608 = getelementptr inbounds double, ptr %3, i64 %1591
  %1609 = load <2 x double>, ptr %1608, align 8, !tbaa !24
  %1610 = load <2 x double>, ptr %1594, align 8, !tbaa !24
  %1611 = fsub <2 x double> %1609, %1610
  %1612 = insertelement <2 x double> poison, double %1607, i64 0
  %1613 = shufflevector <2 x double> %1612, <2 x double> poison, <2 x i32> zeroinitializer
  %1614 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1611, <2 x double> %1613, <2 x double> %1592)
  %1615 = fadd double %1590, %1607
  %1616 = add i64 %1591, 4
  %1617 = icmp ult i64 %1616, %2
  br i1 %1617, label %1589, label %1618, !llvm.loop !55

1618:                                             ; preds = %1589, %1091
  %1619 = phi double [ 0.000000e+00, %1091 ], [ %1615, %1589 ]
  %1620 = phi <2 x double> [ zeroinitializer, %1091 ], [ %1614, %1589 ]
  %1621 = insertelement <2 x double> poison, double %1619, i64 0
  %1622 = shufflevector <2 x double> %1621, <2 x double> poison, <2 x i32> zeroinitializer
  %1623 = fdiv <2 x double> %1620, %1622
  %1624 = fadd <2 x double> %1090, %1623
  br label %1625

1625:                                             ; preds = %1253, %1526, %1583, %1579, %1265, %1163, %1166, %1079, %1618, %1513, %1430, %1409, %1390, %1312, %1193, %1095
  %1626 = phi double [ %1083, %1079 ], [ %1083, %1618 ], [ %1471, %1513 ], [ %1083, %1430 ], [ %1083, %1409 ], [ %1083, %1390 ], [ %1083, %1312 ], [ %1083, %1193 ], [ %1083, %1095 ], [ %1164, %1166 ], [ %1164, %1163 ], [ 1.000000e+00, %1265 ], [ %1083, %1579 ], [ %1083, %1583 ], [ %1083, %1526 ], [ 0.000000e+00, %1253 ]
  %1627 = phi <2 x double> [ %1090, %1079 ], [ %1624, %1618 ], [ %1516, %1513 ], [ %1461, %1430 ], [ %1429, %1409 ], [ %1408, %1390 ], [ %1313, %1312 ], [ %1216, %1193 ], [ %1112, %1095 ], [ %1170, %1166 ], [ %1090, %1163 ], [ %1275, %1265 ], [ %1090, %1579 ], [ %1090, %1583 ], [ %1559, %1526 ], [ %1090, %1253 ]
  br i1 %1041, label %1628, label %1632

1628:                                             ; preds = %1625
  %1629 = load <2 x i64>, ptr %1037, align 8, !tbaa !50
  %1630 = sitofp <2 x i64> %1629 to <2 x double>
  %1631 = fsub <2 x double> %1627, %1630
  br label %1632

1632:                                             ; preds = %1342, %1628, %1625
  %1633 = phi double [ %1626, %1628 ], [ %1626, %1625 ], [ %1083, %1342 ]
  %1634 = phi <2 x double> [ %1631, %1628 ], [ %1627, %1625 ], [ %1359, %1342 ]
  %1635 = fcmp ugt double %1633, 0.000000e+00
  br i1 %1635, label %1636, label %1648

1636:                                             ; preds = %1632
  %1637 = extractelement <2 x double> %1634, i64 1
  %1638 = fadd double %1637, -5.000000e-01
  %1639 = extractelement <2 x double> %1634, i64 0
  %1640 = fadd double %1639, -5.000000e-01
  %1641 = load ptr, ptr %1014, align 8, !tbaa !37
  %1642 = call i32 @ResamplePixelColor(ptr noundef %1641, double noundef %1640, double noundef %1638, ptr noundef nonnull %13) #17
  %1643 = fcmp olt double %1633, 1.000000e+00
  br i1 %1643, label %1644, label %1648

1644:                                             ; preds = %1636
  %1645 = fptrunc double %1633 to float
  %1646 = fsub double 1.000000e+00, %1633
  %1647 = fptrunc double %1646 to float
  call fastcc void @MagickPixelCompositeBlend(ptr noundef nonnull %13, float noundef %1645, ptr noundef nonnull %14, float noundef %1647, ptr noundef nonnull %13) #18
  br label %1648

1648:                                             ; preds = %1636, %1644, %1632
  %1649 = phi ptr [ %14, %1632 ], [ %13, %1644 ], [ %13, %1636 ]
  call fastcc void @SetPixelPacket(ptr noundef %986, ptr noundef nonnull %1649, ptr noundef nonnull %1080, ptr noundef %1082) #18
  %1650 = getelementptr inbounds %struct._PixelPacket, ptr %1080, i64 1
  %1651 = getelementptr inbounds i16, ptr %1082, i64 1
  %1652 = add nuw nsw i64 %1081, 1
  %1653 = load i64, ptr %1020, align 8, !tbaa !26
  %1654 = icmp slt i64 %1652, %1653
  br i1 %1654, label %1079, label %1655, !llvm.loop !56

1655:                                             ; preds = %1648, %1072
  %1656 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1015, ptr noundef %5) #20
  %1657 = icmp eq i32 %1656, 0
  %1658 = select i1 %1657, i32 0, i32 %1052
  %1659 = load ptr, ptr %1042, align 8, !tbaa !57
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1667, label %1661

1661:                                             ; preds = %1655
  %1662 = add nsw i64 %1051, 1
  %1663 = load i64, ptr %40, align 8, !tbaa !28
  %1664 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.104, i64 noundef %1051, i64 noundef %1663) #18
  %1665 = icmp eq i32 %1664, 0
  %1666 = select i1 %1665, i32 0, i32 %1658
  br label %1667

1667:                                             ; preds = %1655, %1661, %1049
  %1668 = phi i32 [ 0, %1049 ], [ %1666, %1661 ], [ %1658, %1655 ]
  %1669 = phi i64 [ %1051, %1049 ], [ %1662, %1661 ], [ %1051, %1655 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #16
  %1670 = add nuw nsw i64 %1050, 1
  %1671 = load i64, ptr %1016, align 8, !tbaa !28
  %1672 = icmp slt i64 %1670, %1671
  br i1 %1672, label %1049, label %1673, !llvm.loop !58

1673:                                             ; preds = %1667
  %1674 = icmp eq i32 %1668, 0
  %1675 = call ptr @DestroyCacheView(ptr noundef %1015) #17
  %1676 = call fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef %1014) #18
  br i1 %1674, label %1677, label %1682

1677:                                             ; preds = %1673
  %1678 = call ptr @DestroyImage(ptr noundef nonnull %986) #17
  br label %1682

1679:                                             ; preds = %1011
  %1680 = call ptr @DestroyCacheView(ptr noundef %1015) #17
  %1681 = call fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef %1014) #18
  br label %1682

1682:                                             ; preds = %1679, %1677, %1673
  %1683 = phi ptr [ %1678, %1677 ], [ %986, %1673 ], [ %986, %1679 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #16
  %1684 = icmp ne i32 %45, 9
  %1685 = or i32 %389, %380
  %1686 = icmp ne i32 %1685, 0
  %1687 = or i1 %1686, %1684
  br i1 %1687, label %1690, label %1688

1688:                                             ; preds = %1682
  %1689 = getelementptr inbounds %struct._Image, ptr %1683, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1689, i8 0, i64 16, i1 false)
  br label %1690

1690:                                             ; preds = %1688, %1682
  %1691 = call ptr @RelinquishMagickMemory(ptr noundef %35) #17
  br label %1692

1692:                                             ; preds = %979, %950, %982, %34, %1690, %991, %27, %25
  %1693 = phi ptr [ null, %25 ], [ %33, %27 ], [ null, %991 ], [ %1683, %1690 ], [ null, %979 ], [ null, %950 ], [ null, %34 ], [ null, %982 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret ptr %1693
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DistortResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [12 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1501, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 96) #17
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !26
  %21 = uitofp i64 %20 to double
  %22 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 4
  store double %21, ptr %22, align 16, !tbaa !24
  %23 = uitofp i64 %1 to double
  %24 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 6
  store double %23, ptr %24, align 16, !tbaa !24
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !28
  %27 = uitofp i64 %26 to double
  %28 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 9
  store double %27, ptr %28, align 8, !tbaa !24
  %29 = uitofp i64 %2 to double
  %30 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 11
  store double %29, ptr %30, align 8, !tbaa !24
  %31 = call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %0) #17
  %32 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %17
  %35 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %32, i32 noundef 8) #17
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 8) #17
  %41 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #18
  %42 = call ptr @DestroyImage(ptr noundef nonnull %32) #17
  %43 = icmp eq ptr %41, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %39
  %45 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %41, i32 noundef 4) #17
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %46) #17
  br label %68

47:                                               ; preds = %34
  %48 = call i32 @SeparateImageChannel(ptr noundef nonnull %32, i32 noundef 64) #17
  %49 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 6) #17
  %50 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #18
  %51 = call ptr @DestroyImage(ptr noundef nonnull %32) #17
  %52 = icmp eq ptr %50, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  %57 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #17
  %58 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #17
  %59 = call ptr @DistortImage(ptr noundef nonnull %54, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3) #18
  %60 = call ptr @DestroyImage(ptr noundef nonnull %54) #17
  %61 = icmp eq ptr %59, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %59, i32 noundef 4) #17
  %64 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %50, i32 noundef 4) #17
  %65 = call i32 @CompositeImage(ptr noundef nonnull %59, i32 noundef 17, ptr noundef nonnull %50, i64 noundef 0, i64 noundef 0) #17
  %66 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %66) #17
  %67 = call ptr @DestroyImage(ptr noundef nonnull %50) #17
  br label %68

68:                                               ; preds = %62, %44
  %69 = phi ptr [ %41, %44 ], [ %59, %62 ]
  %70 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %69, i32 noundef %31) #17
  store i64 %1, ptr %5, align 8, !tbaa !27
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %2, ptr %71, align 8, !tbaa !29
  %72 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  %73 = call ptr @CropImage(ptr noundef nonnull %69, ptr noundef nonnull %5, ptr noundef %3) #17
  br label %74

74:                                               ; preds = %56, %68
  %75 = phi ptr [ %69, %68 ], [ %50, %56 ]
  %76 = phi ptr [ %73, %68 ], [ null, %56 ]
  %77 = call ptr @DestroyImage(ptr noundef nonnull %75) #17
  br label %78

78:                                               ; preds = %74, %53, %47, %39, %17, %13
  %79 = phi ptr [ null, %13 ], [ null, %17 ], [ null, %39 ], [ null, %47 ], [ null, %53 ], [ %76, %74 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  %21 = load i32, ptr %1, align 4, !tbaa !25
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
  store i32 1, ptr %1, align 4, !tbaa !25
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
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #17
  br label %994

35:                                               ; preds = %29, %27
  %36 = load double, ptr %3, align 8, !tbaa !24
  %37 = tail call fastcc i64 @poly_number_terms(double noundef %36) #18
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 446, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.120) #17
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
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 452, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118, double noundef %48) #17
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
  %63 = tail call ptr @AcquireQuantumMemory(i64 noundef %62, i64 noundef 8) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %68

65:                                               ; preds = %22, %24
  tail call void @perror(ptr noundef nonnull @.str.122) #21
  %66 = tail call ptr @AcquireQuantumMemory(i64 noundef 0, i64 noundef 8) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %74

68:                                               ; preds = %58
  %69 = icmp eq i64 %62, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = shl nuw i64 %62, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %63, i8 0, i64 %71, i1 false), !tbaa !24
  br label %74

72:                                               ; preds = %65, %58
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.123) #17
  br label %994

74:                                               ; preds = %65, %70, %68
  %75 = phi i64 [ %59, %70 ], [ %59, %68 ], [ %14, %65 ]
  %76 = phi i64 [ %60, %70 ], [ %60, %68 ], [ %15, %65 ]
  %77 = phi i64 [ %61, %70 ], [ %61, %68 ], [ %16, %65 ]
  %78 = phi ptr [ %63, %70 ], [ %63, %68 ], [ %66, %65 ]
  %79 = load i32, ptr %1, align 4, !tbaa !25
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
  %86 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 530, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.124, double noundef 1.000000e+00) #17
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
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
  store double 1.000000e+00, ptr %78, align 8, !tbaa !24
  %96 = load double, ptr %3, align 8, !tbaa !24
  %97 = getelementptr inbounds double, ptr %3, i64 2
  %98 = load double, ptr %97, align 8, !tbaa !24
  %99 = fsub double %96, %98
  %100 = getelementptr inbounds double, ptr %78, i64 2
  store double %99, ptr %100, align 8, !tbaa !24
  %101 = getelementptr inbounds double, ptr %78, i64 4
  store double 1.000000e+00, ptr %101, align 8, !tbaa !24
  %102 = getelementptr inbounds double, ptr %3, i64 1
  %103 = load double, ptr %102, align 8, !tbaa !24
  %104 = getelementptr inbounds double, ptr %3, i64 3
  %105 = load double, ptr %104, align 8, !tbaa !24
  %106 = fsub double %103, %105
  %107 = getelementptr inbounds double, ptr %78, i64 5
  store double %106, ptr %107, align 8, !tbaa !24
  br label %994

108:                                              ; preds = %92, %108
  %109 = phi i64 [ 0, %92 ], [ %114, %108 ]
  %110 = getelementptr double, ptr %93, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !24
  %112 = mul i64 %109, 3
  %113 = getelementptr double, ptr %94, i64 %112
  store double %111, ptr %113, align 8, !tbaa !24
  %114 = add nuw i64 %109, 1
  %115 = icmp eq i64 %114, %17
  br i1 %115, label %994, label %108, !llvm.loop !59

116:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %117 = tail call ptr @AcquireMagickMatrix(i64 noundef 3, i64 noundef 3) #17
  %118 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #19
  %119 = icmp eq ptr %117, null
  %120 = icmp eq ptr %118, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = tail call ptr @RelinquishMagickMatrix(ptr noundef %117, i64 noundef 3) #17
  %124 = tail call ptr @RelinquishMagickMemory(ptr noundef %118) #17
  %125 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %126 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #17
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
  store ptr %135, ptr %136, align 8, !tbaa !37
  %137 = add nuw i64 %133, 1
  %138 = icmp eq i64 %137, %17
  br i1 %138, label %127, label %132, !llvm.loop !60

139:                                              ; preds = %129, %139
  %140 = phi i64 [ 0, %129 ], [ %147, %139 ]
  %141 = getelementptr double, ptr %3, i64 %140
  %142 = getelementptr double, ptr %141, i64 %77
  %143 = load double, ptr %142, align 8, !tbaa !24
  store double %143, ptr %7, align 16, !tbaa !24
  %144 = getelementptr double, ptr %141, i64 %76
  %145 = load double, ptr %144, align 8, !tbaa !24
  store double %145, ptr %130, align 8, !tbaa !24
  store double 1.000000e+00, ptr %131, align 16, !tbaa !24
  %146 = getelementptr double, ptr %141, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef %146, i64 noundef 3, i64 noundef %17) #17
  %147 = add i64 %140, %18
  %148 = icmp ult i64 %147, %2
  br i1 %148, label %139, label %149, !llvm.loop !61

149:                                              ; preds = %139, %127
  %150 = shl i64 %18, 1
  %151 = icmp eq i64 %150, %2
  br i1 %151, label %152, label %184

152:                                              ; preds = %149
  %153 = getelementptr inbounds double, ptr %3, i64 %77
  %154 = load double, ptr %153, align 8, !tbaa !24
  %155 = getelementptr double, ptr %3, i64 %18
  %156 = getelementptr double, ptr %155, i64 %76
  %157 = load double, ptr %156, align 8, !tbaa !24
  %158 = getelementptr inbounds double, ptr %3, i64 %76
  %159 = load double, ptr %158, align 8, !tbaa !24
  %160 = fsub double %157, %159
  %161 = fsub double %154, %160
  store double %161, ptr %7, align 16, !tbaa !24
  %162 = getelementptr double, ptr %155, i64 %77
  %163 = load double, ptr %162, align 8, !tbaa !24
  %164 = fsub double %163, %154
  %165 = fadd double %159, %164
  %166 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  store double %165, ptr %166, align 8, !tbaa !24
  %167 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  store double 1.000000e+00, ptr %167, align 16, !tbaa !24
  %168 = icmp eq i64 %75, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %170 = load double, ptr %3, align 8, !tbaa !24
  %171 = getelementptr inbounds double, ptr %3, i64 5
  %172 = load double, ptr %171, align 8, !tbaa !24
  %173 = fsub double %170, %172
  %174 = getelementptr inbounds double, ptr %3, i64 1
  %175 = load double, ptr %174, align 8, !tbaa !24
  %176 = fadd double %173, %175
  store double %176, ptr %8, align 16, !tbaa !24
  %177 = getelementptr inbounds double, ptr %3, i64 4
  %178 = load double, ptr %177, align 8, !tbaa !24
  %179 = fadd double %175, %178
  %180 = fsub double %179, %170
  %181 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 1
  store double %180, ptr %181, align 8, !tbaa !24
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 3, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %184

182:                                              ; preds = %152
  %183 = getelementptr inbounds double, ptr %3, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %117, ptr noundef %118, ptr noundef nonnull %7, ptr noundef nonnull %183, i64 noundef 3, i64 noundef %17) #17
  br label %184

184:                                              ; preds = %169, %182, %149
  %185 = call i32 @GaussJordanElimination(ptr noundef %117, ptr noundef %118, i64 noundef 3, i64 noundef %17) #17
  %186 = call ptr @RelinquishMagickMatrix(ptr noundef %117, i64 noundef 3) #17
  %187 = call ptr @RelinquishMagickMemory(ptr noundef %118) #17
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %191 = load i32, ptr %1, align 4, !tbaa !25
  %192 = zext i32 %191 to i64
  %193 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %192) #17
  %194 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 618, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %193) #17
  br label %195

195:                                              ; preds = %122, %189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %994

196:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %994

197:                                              ; preds = %74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %198 = icmp eq i64 %2, 6
  br i1 %198, label %199, label %200

199:                                              ; preds = %197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa !24
  call fastcc void @AffineArgsToCoefficients(ptr noundef nonnull %9) #18
  call fastcc void @InvertAffineCoefficients(ptr noundef nonnull %9, ptr noundef nonnull %78) #18
  store i32 1, ptr %1, align 4, !tbaa !25
  br label %206

200:                                              ; preds = %197
  %201 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %202 = load i32, ptr %1, align 4, !tbaa !25
  %203 = zext i32 %202 to i64
  %204 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %203) #17
  %205 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.126, ptr noundef %204) #17
  br label %206

206:                                              ; preds = %199, %200
  %207 = phi ptr [ null, %200 ], [ %78, %199 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %994

208:                                              ; preds = %74
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %211 = load <2 x i64>, ptr %209, align 8, !tbaa !50
  %212 = uitofp <2 x i64> %211 to <2 x double>
  %213 = fmul <2 x double> %212, <double 5.000000e-01, double 5.000000e-01>
  %214 = load <2 x i64>, ptr %210, align 8, !tbaa !50
  %215 = sitofp <2 x i64> %214 to <2 x double>
  %216 = fadd <2 x double> %213, %215
  switch i64 %2, label %226 [
    i64 0, label %217
    i64 1, label %260
    i64 2, label %223
  ]

217:                                              ; preds = %208
  %218 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %219 = load i32, ptr %1, align 4, !tbaa !25
  %220 = zext i32 %219 to i64
  %221 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %220) #17
  %222 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 693, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.127, ptr noundef %221) #17
  br label %994

223:                                              ; preds = %208
  %224 = load double, ptr %3, align 8, !tbaa !24
  %225 = getelementptr inbounds double, ptr %3, i64 1
  br label %260

226:                                              ; preds = %208
  %227 = load <2 x double>, ptr %3, align 8, !tbaa !24
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
  %232 = load double, ptr %231, align 8, !tbaa !24
  %233 = getelementptr inbounds double, ptr %3, i64 3
  br label %260

234:                                              ; preds = %226
  %235 = getelementptr inbounds double, ptr %3, i64 2
  %236 = load double, ptr %235, align 8, !tbaa !24
  %237 = getelementptr inbounds double, ptr %3, i64 3
  %238 = load double, ptr %237, align 8, !tbaa !24
  %239 = getelementptr inbounds double, ptr %3, i64 4
  br label %260

240:                                              ; preds = %226
  %241 = getelementptr inbounds double, ptr %3, i64 2
  %242 = load double, ptr %241, align 8, !tbaa !24
  %243 = getelementptr inbounds double, ptr %3, i64 3
  %244 = getelementptr inbounds double, ptr %3, i64 4
  %245 = load <2 x double>, ptr %244, align 8, !tbaa !24
  br label %260

246:                                              ; preds = %226
  %247 = getelementptr inbounds double, ptr %3, i64 2
  %248 = load double, ptr %247, align 8, !tbaa !24
  %249 = getelementptr inbounds double, ptr %3, i64 3
  %250 = load double, ptr %249, align 8, !tbaa !24
  %251 = getelementptr inbounds double, ptr %3, i64 4
  %252 = getelementptr inbounds double, ptr %3, i64 5
  %253 = load <2 x double>, ptr %252, align 8, !tbaa !24
  br label %260

254:                                              ; preds = %226
  %255 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %256 = load i32, ptr %1, align 4, !tbaa !25
  %257 = zext i32 %256 to i64
  %258 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %257) #17
  %259 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 735, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.128, ptr noundef %258) #17
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
  %272 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %273 = load i32, ptr %1, align 4, !tbaa !25
  %274 = zext i32 %273 to i64
  %275 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %274) #17
  %276 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 745, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.129, ptr noundef %275) #17
  br label %994

277:                                              ; preds = %260
  %278 = load double, ptr %263, align 8, !tbaa !24
  %279 = tail call fastcc double @DegreesToRadians(double noundef %278) #18
  %280 = tail call double @cos(double noundef %279) #17
  %281 = tail call double @sin(double noundef %279) #17
  store i32 1, ptr %1, align 4, !tbaa !25
  %282 = insertelement <2 x double> poison, double %280, i64 0
  %283 = insertelement <2 x double> %282, double %281, i64 1
  %284 = insertelement <2 x double> poison, double %261, i64 0
  %285 = shufflevector <2 x double> %284, <2 x double> poison, <2 x i32> zeroinitializer
  %286 = fdiv <2 x double> %283, %285
  store <2 x double> %286, ptr %78, align 8, !tbaa !24
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
  store double %295, ptr %296, align 8, !tbaa !24
  %297 = fneg double %281
  %298 = getelementptr inbounds double, ptr %78, i64 3
  %299 = insertelement <2 x double> poison, double %297, i64 0
  %300 = insertelement <2 x double> %299, double %280, i64 1
  %301 = insertelement <2 x double> poison, double %262, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = fdiv <2 x double> %300, %302
  store <2 x double> %303, ptr %298, align 8, !tbaa !24
  %304 = extractelement <2 x double> %303, i64 0
  %305 = extractelement <2 x double> %264, i64 1
  %306 = tail call double @llvm.fmuladd.f64(double %288, double %304, double %305)
  %307 = extractelement <2 x double> %303, i64 1
  %308 = tail call double @llvm.fmuladd.f64(double %293, double %307, double %306)
  %309 = getelementptr inbounds double, ptr %78, i64 5
  store double %308, ptr %309, align 8, !tbaa !24
  br label %994

310:                                              ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  %311 = urem i64 %2, %18
  %312 = icmp ne i64 %311, 0
  %313 = or i1 %20, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 4) #17
  %316 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef %315, double noundef 4.000000e+00) #17
  %317 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %384

318:                                              ; preds = %310
  store ptr %78, ptr %10, align 8, !tbaa !37
  %319 = tail call ptr @AcquireMagickMatrix(i64 noundef 8, i64 noundef 8) #17
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
  %331 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 818, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #17
  br label %384

332:                                              ; preds = %323, %332
  %333 = phi i64 [ 0, %323 ], [ %357, %332 ]
  %334 = getelementptr double, ptr %3, i64 %333
  %335 = getelementptr double, ptr %334, i64 %77
  %336 = load double, ptr %335, align 8, !tbaa !24
  store double %336, ptr %11, align 16, !tbaa !24
  %337 = getelementptr double, ptr %334, i64 %76
  %338 = load double, ptr %337, align 8, !tbaa !24
  store double %338, ptr %324, align 8, !tbaa !24
  store double 1.000000e+00, ptr %325, align 16, !tbaa !24
  %339 = getelementptr double, ptr %334, i64 %75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %326, i8 0, i64 24, i1 false)
  %340 = load double, ptr %339, align 8, !tbaa !24
  %341 = insertelement <2 x double> poison, double %336, i64 0
  %342 = insertelement <2 x double> %341, double %338, i64 1
  %343 = fneg <2 x double> %342
  %344 = insertelement <2 x double> poison, double %340, i64 0
  %345 = shufflevector <2 x double> %344, <2 x double> poison, <2 x i32> zeroinitializer
  %346 = fmul <2 x double> %345, %343
  store <2 x double> %346, ptr %329, align 16, !tbaa !24
  call void @LeastSquaresAddTerms(ptr noundef nonnull %319, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %339, i64 noundef 8, i64 noundef 1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %347 = load double, ptr %335, align 8, !tbaa !24
  store double %347, ptr %326, align 8, !tbaa !24
  %348 = load double, ptr %337, align 8, !tbaa !24
  store double %348, ptr %327, align 16, !tbaa !24
  store double 1.000000e+00, ptr %328, align 8, !tbaa !24
  %349 = getelementptr double, ptr %339, i64 1
  %350 = load double, ptr %349, align 8, !tbaa !24
  %351 = insertelement <2 x double> poison, double %347, i64 0
  %352 = insertelement <2 x double> %351, double %348, i64 1
  %353 = fneg <2 x double> %352
  %354 = insertelement <2 x double> poison, double %350, i64 0
  %355 = shufflevector <2 x double> %354, <2 x double> poison, <2 x i32> zeroinitializer
  %356 = fmul <2 x double> %355, %353
  store <2 x double> %356, ptr %329, align 16, !tbaa !24
  call void @LeastSquaresAddTerms(ptr noundef nonnull %319, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %349, i64 noundef 8, i64 noundef 1) #17
  %357 = add i64 %333, 4
  %358 = icmp ult i64 %357, %2
  br i1 %358, label %332, label %359, !llvm.loop !62

359:                                              ; preds = %332, %321
  %360 = call i32 @GaussJordanElimination(ptr noundef nonnull %319, ptr noundef nonnull %10, i64 noundef 8, i64 noundef 1) #17
  %361 = call ptr @RelinquishMagickMatrix(ptr noundef nonnull %319, i64 noundef 8) #17
  %362 = icmp eq i32 %360, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %365 = load i32, ptr %1, align 4, !tbaa !25
  %366 = zext i32 %365 to i64
  %367 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %366) #17
  %368 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %367) #17
  br label %384

369:                                              ; preds = %359
  %370 = getelementptr inbounds double, ptr %78, i64 6
  %371 = load double, ptr %370, align 8, !tbaa !24
  %372 = getelementptr inbounds double, ptr %3, i64 %77
  %373 = load double, ptr %372, align 8, !tbaa !24
  %374 = getelementptr inbounds double, ptr %78, i64 7
  %375 = load double, ptr %374, align 8, !tbaa !24
  %376 = getelementptr inbounds double, ptr %3, i64 %76
  %377 = load double, ptr %376, align 8, !tbaa !24
  %378 = fmul double %375, %377
  %379 = call double @llvm.fmuladd.f64(double %371, double %373, double %378)
  %380 = fadd double %379, 1.000000e+00
  %381 = getelementptr inbounds double, ptr %78, i64 8
  %382 = fcmp olt double %380, 0.000000e+00
  %383 = select i1 %382, double -1.000000e+00, double 1.000000e+00
  store double %383, ptr %381, align 8, !tbaa !24
  br label %384

384:                                              ; preds = %369, %363, %330, %314
  %385 = phi ptr [ null, %314 ], [ null, %330 ], [ null, %363 ], [ %78, %369 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %994

386:                                              ; preds = %74
  %387 = icmp eq i64 %2, 8
  br i1 %387, label %391, label %388

388:                                              ; preds = %386
  %389 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 5) #17
  %390 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 875, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.130, ptr noundef %389) #17
  br label %994

391:                                              ; preds = %386
  tail call fastcc void @InvertPerspectiveCoefficients(ptr noundef %3, ptr noundef nonnull %78) #18
  %392 = getelementptr inbounds double, ptr %78, i64 6
  %393 = load double, ptr %392, align 8, !tbaa !24
  %394 = getelementptr inbounds double, ptr %3, i64 2
  %395 = load double, ptr %394, align 8, !tbaa !24
  %396 = getelementptr inbounds double, ptr %78, i64 7
  %397 = load double, ptr %396, align 8, !tbaa !24
  %398 = getelementptr inbounds double, ptr %3, i64 5
  %399 = load double, ptr %398, align 8, !tbaa !24
  %400 = fmul double %397, %399
  %401 = tail call double @llvm.fmuladd.f64(double %393, double %395, double %400)
  %402 = fadd double %401, 1.000000e+00
  %403 = getelementptr inbounds double, ptr %78, i64 8
  %404 = fcmp olt double %402, 0.000000e+00
  %405 = select i1 %404, double -1.000000e+00, double 1.000000e+00
  store double %405, ptr %403, align 8, !tbaa !24
  store i32 4, ptr %1, align 4, !tbaa !25
  br label %994

406:                                              ; preds = %74, %74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %407 = urem i64 %2, %18
  %408 = icmp ne i64 %407, 0
  %409 = or i1 %20, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %406
  %411 = zext nneg i32 %79 to i64
  %412 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %411) #17
  %413 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 923, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef %412, double noundef 4.000000e+00) #17
  %414 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %504

415:                                              ; preds = %406
  %416 = tail call ptr @AcquireMagickMatrix(i64 noundef 4, i64 noundef 4) #17
  %417 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #19
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
  store ptr %436, ptr %434, align 8, !tbaa !37
  br label %437

437:                                              ; preds = %433, %427
  %438 = extractelement <2 x i1> %430, i64 1
  br i1 %438, label %439, label %444

439:                                              ; preds = %437
  %440 = or disjoint i64 %428, 1
  %441 = getelementptr inbounds ptr, ptr %417, i64 %440
  %442 = extractelement <2 x i64> %431, i64 1
  %443 = getelementptr inbounds double, ptr %78, i64 %442
  store ptr %443, ptr %441, align 8, !tbaa !37
  br label %444

444:                                              ; preds = %439, %437
  %445 = add i64 %428, 2
  %446 = add <2 x i64> %429, <i64 2, i64 2>
  %447 = icmp eq i64 %445, %423
  br i1 %447, label %453, label %427, !llvm.loop !63

448:                                              ; preds = %415
  %449 = tail call ptr @RelinquishMagickMatrix(ptr noundef %416, i64 noundef 4) #17
  %450 = tail call ptr @RelinquishMagickMemory(ptr noundef %417) #17
  %451 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %452 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 937, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #17
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
  %463 = load double, ptr %462, align 8, !tbaa !24
  store double %463, ptr %12, align 16, !tbaa !24
  %464 = getelementptr double, ptr %461, i64 %76
  %465 = load double, ptr %464, align 8, !tbaa !24
  store double %465, ptr %456, align 8, !tbaa !24
  %466 = fmul double %463, %465
  store double %466, ptr %457, align 16, !tbaa !24
  store double 1.000000e+00, ptr %458, align 8, !tbaa !24
  %467 = getelementptr double, ptr %461, i64 %75
  call void @LeastSquaresAddTerms(ptr noundef %416, ptr noundef %417, ptr noundef nonnull %12, ptr noundef %467, i64 noundef 4, i64 noundef %17) #17
  %468 = add i64 %460, %18
  %469 = icmp ult i64 %468, %2
  br i1 %469, label %459, label %470, !llvm.loop !66

470:                                              ; preds = %459, %453
  %471 = call i32 @GaussJordanElimination(ptr noundef %416, ptr noundef %417, i64 noundef 4, i64 noundef %17) #17
  %472 = call ptr @RelinquishMagickMatrix(ptr noundef %416, i64 noundef 4) #17
  %473 = call ptr @RelinquishMagickMemory(ptr noundef %417) #17
  %474 = icmp eq i32 %471, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %470
  %476 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %477 = load i32, ptr %1, align 4, !tbaa !25
  %478 = zext i32 %477 to i64
  %479 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %478) #17
  %480 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %479) #17
  br label %504

481:                                              ; preds = %470
  %482 = load i32, ptr %1, align 4, !tbaa !25
  %483 = icmp eq i32 %482, 6
  br i1 %483, label %484, label %504

484:                                              ; preds = %481
  %485 = load double, ptr %78, align 8, !tbaa !24
  %486 = getelementptr inbounds double, ptr %78, i64 5
  %487 = load double, ptr %486, align 8, !tbaa !24
  %488 = getelementptr inbounds double, ptr %78, i64 1
  %489 = load double, ptr %488, align 8, !tbaa !24
  %490 = getelementptr inbounds double, ptr %78, i64 4
  %491 = load double, ptr %490, align 8, !tbaa !24
  %492 = fneg double %489
  %493 = fmul double %491, %492
  %494 = call double @llvm.fmuladd.f64(double %485, double %487, double %493)
  %495 = getelementptr inbounds double, ptr %78, i64 8
  store double %494, ptr %495, align 8, !tbaa !24
  %496 = getelementptr inbounds double, ptr %78, i64 2
  %497 = load double, ptr %496, align 8, !tbaa !24
  %498 = getelementptr inbounds double, ptr %78, i64 6
  %499 = load double, ptr %498, align 8, !tbaa !24
  %500 = fmul double %499, %492
  %501 = call double @llvm.fmuladd.f64(double %497, double %487, double %500)
  %502 = fmul double %501, 2.000000e+00
  %503 = getelementptr inbounds double, ptr %78, i64 9
  store double %502, ptr %503, align 8, !tbaa !24
  br label %504

504:                                              ; preds = %481, %484, %475, %448, %410
  %505 = phi ptr [ null, %410 ], [ null, %448 ], [ null, %475 ], [ %78, %484 ], [ %78, %481 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %994

506:                                              ; preds = %74
  %507 = load double, ptr %3, align 8, !tbaa !24
  store double %507, ptr %78, align 8, !tbaa !24
  %508 = tail call fastcc i64 @poly_number_terms(double noundef %507) #18
  %509 = uitofp i64 %508 to double
  %510 = getelementptr inbounds double, ptr %78, i64 1
  store double %509, ptr %510, align 8, !tbaa !24
  %511 = fptoui double %509 to i64
  %512 = tail call ptr @AcquireMagickMatrix(i64 noundef %511, i64 noundef %511) #17
  %513 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #19
  %514 = tail call ptr @AcquireQuantumMemory(i64 noundef %511, i64 noundef 8) #19
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
  %523 = tail call ptr @RelinquishMagickMatrix(ptr noundef %512, i64 noundef %511) #17
  %524 = tail call ptr @RelinquishMagickMemory(ptr noundef %513) #17
  %525 = tail call ptr @RelinquishMagickMemory(ptr noundef %514) #17
  %526 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %527 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1081, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #17
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
  store ptr %536, ptr %537, align 8, !tbaa !37
  %538 = add nuw i64 %534, 1
  %539 = icmp eq i64 %538, %17
  br i1 %539, label %528, label %533, !llvm.loop !67

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
  %548 = load double, ptr %544, align 8, !tbaa !24
  %549 = load double, ptr %545, align 8, !tbaa !24
  %550 = tail call fastcc double @poly_basis_fn(i64 noundef %547, double noundef %548, double noundef %549) #18
  %551 = getelementptr inbounds double, ptr %514, i64 %547
  store double %550, ptr %551, align 8, !tbaa !24
  %552 = add nuw nsw i64 %547, 1
  %553 = icmp eq i64 %552, %511
  br i1 %553, label %554, label %546, !llvm.loop !68

554:                                              ; preds = %546, %540
  %555 = getelementptr double, ptr %529, i64 %541
  tail call void @LeastSquaresAddTerms(ptr noundef %512, ptr noundef %513, ptr noundef %514, ptr noundef %555, i64 noundef %511, i64 noundef %17) #17
  %556 = add i64 %541, %18
  %557 = icmp ult i64 %556, %2
  br i1 %557, label %540, label %558, !llvm.loop !69

558:                                              ; preds = %554, %528
  %559 = tail call ptr @RelinquishMagickMemory(ptr noundef %514) #17
  %560 = tail call i32 @GaussJordanElimination(ptr noundef %512, ptr noundef %513, i64 noundef %511, i64 noundef %17) #17
  %561 = tail call ptr @RelinquishMagickMatrix(ptr noundef %512, i64 noundef %511) #17
  %562 = tail call ptr @RelinquishMagickMemory(ptr noundef %513) #17
  %563 = icmp eq i32 %560, 0
  br i1 %563, label %564, label %994

564:                                              ; preds = %558
  %565 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %566 = load i32, ptr %1, align 4, !tbaa !25
  %567 = zext i32 %566 to i64
  %568 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %567) #17
  %569 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1103, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %568) #17
  br label %994

570:                                              ; preds = %74
  %571 = icmp eq i64 %2, 0
  br i1 %571, label %593, label %572

572:                                              ; preds = %570
  %573 = load double, ptr %3, align 8, !tbaa !24
  %574 = fcmp olt double %573, 1.000000e-15
  br i1 %574, label %575, label %581

575:                                              ; preds = %572
  %576 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %577 = load i32, ptr %1, align 4, !tbaa !25
  %578 = zext i32 %577 to i64
  %579 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %578) #17
  %580 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1148, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.131, ptr noundef %579) #17
  br label %994

581:                                              ; preds = %572
  %582 = icmp ugt i64 %2, 2
  br i1 %582, label %583, label %595

583:                                              ; preds = %581
  %584 = getelementptr inbounds double, ptr %3, i64 2
  %585 = load double, ptr %584, align 8, !tbaa !24
  %586 = fcmp olt double %585, 1.000000e-15
  br i1 %586, label %587, label %595

587:                                              ; preds = %583
  %588 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %589 = load i32, ptr %1, align 4, !tbaa !25
  %590 = zext i32 %589 to i64
  %591 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %590) #17
  %592 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1155, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132, ptr noundef %591) #17
  br label %994

593:                                              ; preds = %570
  %594 = getelementptr inbounds double, ptr %78, i64 1
  store double 0x3FF921FB54442D18, ptr %594, align 8, !tbaa !24
  br label %605

595:                                              ; preds = %581, %583
  store double 0xBFF921FB54442D18, ptr %78, align 8, !tbaa !24
  %596 = load double, ptr %3, align 8, !tbaa !24
  %597 = tail call fastcc double @DegreesToRadians(double noundef %596) #18
  %598 = getelementptr inbounds double, ptr %78, i64 1
  store double %597, ptr %598, align 8, !tbaa !24
  %599 = icmp eq i64 %2, 1
  br i1 %599, label %605, label %600

600:                                              ; preds = %595
  %601 = getelementptr inbounds double, ptr %3, i64 1
  %602 = load double, ptr %601, align 8, !tbaa !24
  %603 = tail call fastcc double @DegreesToRadians(double noundef %602) #18
  %604 = fadd double %603, 0xBFF921FB54442D18
  br label %605

605:                                              ; preds = %593, %600, %595
  %606 = phi double [ 0x3FF921FB54442D18, %593 ], [ %597, %600 ], [ %597, %595 ]
  %607 = phi double [ 0xBFF921FB54442D18, %593 ], [ %604, %600 ], [ 0xBFF921FB54442D18, %595 ]
  %608 = phi i1 [ false, %593 ], [ %582, %600 ], [ %582, %595 ]
  %609 = fdiv double %607, 0x401921FB54442D18
  %610 = tail call fastcc double @MagickRound(double noundef %609) #18
  %611 = fsub double %609, %610
  %612 = fmul double %611, 0x401921FB54442D18
  store double %612, ptr %78, align 8, !tbaa !24
  %613 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %614 = load i64, ptr %613, align 8, !tbaa !28
  %615 = uitofp i64 %614 to double
  %616 = fadd double %615, -1.000000e+00
  %617 = getelementptr inbounds double, ptr %78, i64 3
  store double %616, ptr %617, align 8, !tbaa !24
  %618 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %619 = load i64, ptr %618, align 8, !tbaa !26
  %620 = uitofp i64 %619 to double
  %621 = fdiv double %620, %606
  %622 = fmul double %616, 5.000000e-01
  %623 = fadd double %622, %621
  %624 = getelementptr inbounds double, ptr %78, i64 2
  store double %623, ptr %624, align 8, !tbaa !24
  br i1 %608, label %625, label %640

625:                                              ; preds = %605
  %626 = icmp eq i64 %2, 3
  %627 = getelementptr inbounds double, ptr %3, i64 2
  %628 = load double, ptr %627, align 8, !tbaa !24
  br i1 %626, label %633, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds double, ptr %3, i64 3
  %631 = load double, ptr %630, align 8, !tbaa !24
  %632 = fsub double %628, %631
  br label %636

633:                                              ; preds = %625
  %634 = fdiv double %628, %623
  %635 = fmul double %616, %634
  br label %636

636:                                              ; preds = %633, %629
  %637 = phi double [ %635, %633 ], [ %632, %629 ]
  store double %637, ptr %617, align 8, !tbaa !24
  %638 = getelementptr inbounds double, ptr %3, i64 2
  %639 = load double, ptr %638, align 8, !tbaa !24
  store double %639, ptr %624, align 8, !tbaa !24
  br label %640

640:                                              ; preds = %636, %605
  %641 = fadd double %620, -1.000000e+00
  %642 = fmul double %641, 5.000000e-01
  %643 = getelementptr inbounds double, ptr %78, i64 4
  store double %642, ptr %643, align 8, !tbaa !24
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
  %653 = load double, ptr %3, align 8, !tbaa !24
  store double %653, ptr %78, align 8, !tbaa !24
  %654 = getelementptr inbounds double, ptr %3, i64 1
  %655 = load double, ptr %654, align 8, !tbaa !24
  %656 = getelementptr inbounds double, ptr %78, i64 1
  store double %655, ptr %656, align 8, !tbaa !24
  %657 = getelementptr inbounds double, ptr %3, i64 2
  %658 = load double, ptr %657, align 8, !tbaa !24
  %659 = getelementptr inbounds double, ptr %78, i64 2
  store double %658, ptr %659, align 8, !tbaa !24
  %660 = getelementptr inbounds double, ptr %3, i64 3
  %661 = load double, ptr %660, align 8, !tbaa !24
  %662 = getelementptr inbounds double, ptr %78, i64 3
  store double %661, ptr %662, align 8, !tbaa !24
  %663 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %663, align 8, !tbaa !24
  br label %707

664:                                              ; preds = %648, %644
  %665 = zext nneg i32 %79 to i64
  %666 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %665) #17
  %667 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1199, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.133, ptr noundef %666) #17
  %668 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %994

669:                                              ; preds = %646
  %670 = icmp eq i64 %2, 0
  br i1 %670, label %671, label %672

671:                                              ; preds = %669
  store double 0.000000e+00, ptr %78, align 8, !tbaa !24
  br label %675

672:                                              ; preds = %669
  %673 = load double, ptr %3, align 8, !tbaa !24
  store double %673, ptr %78, align 8, !tbaa !24
  %674 = icmp eq i64 %2, 1
  br i1 %674, label %675, label %677

675:                                              ; preds = %671, %672
  %676 = getelementptr inbounds double, ptr %78, i64 1
  store double 0.000000e+00, ptr %676, align 8, !tbaa !24
  br label %682

677:                                              ; preds = %672
  %678 = getelementptr inbounds double, ptr %3, i64 1
  %679 = load double, ptr %678, align 8, !tbaa !24
  %680 = getelementptr inbounds double, ptr %78, i64 1
  store double %679, ptr %680, align 8, !tbaa !24
  %681 = icmp ugt i64 %2, 3
  br i1 %681, label %694, label %682

682:                                              ; preds = %677, %675
  %683 = phi ptr [ %676, %675 ], [ %680, %677 ]
  %684 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %685 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %686 = getelementptr inbounds double, ptr %78, i64 2
  %687 = load <2 x i64>, ptr %684, align 8, !tbaa !50
  %688 = uitofp <2 x i64> %687 to <2 x double>
  %689 = fmul <2 x double> %688, <double 5.000000e-01, double 5.000000e-01>
  %690 = load <2 x i64>, ptr %685, align 8, !tbaa !50
  %691 = sitofp <2 x i64> %690 to <2 x double>
  %692 = fadd <2 x double> %689, %691
  store <2 x double> %692, ptr %686, align 8, !tbaa !24
  %693 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %693, align 8, !tbaa !24
  br label %703

694:                                              ; preds = %677
  %695 = getelementptr inbounds double, ptr %3, i64 2
  %696 = load double, ptr %695, align 8, !tbaa !24
  %697 = getelementptr inbounds double, ptr %78, i64 2
  store double %696, ptr %697, align 8, !tbaa !24
  %698 = getelementptr inbounds double, ptr %3, i64 3
  %699 = load double, ptr %698, align 8, !tbaa !24
  %700 = getelementptr inbounds double, ptr %78, i64 3
  store double %699, ptr %700, align 8, !tbaa !24
  %701 = getelementptr inbounds double, ptr %78, i64 4
  store double 0xC00921FB54442D18, ptr %701, align 8, !tbaa !24
  %702 = icmp eq i64 %2, 4
  br i1 %702, label %703, label %707

703:                                              ; preds = %682, %694
  %704 = phi ptr [ %701, %694 ], [ %693, %682 ]
  %705 = phi ptr [ %680, %694 ], [ %683, %682 ]
  %706 = getelementptr inbounds double, ptr %78, i64 5
  store double 0xC00921FB54442D18, ptr %706, align 8, !tbaa !24
  br label %719

707:                                              ; preds = %694, %652
  %708 = phi ptr [ %663, %652 ], [ %701, %694 ]
  %709 = phi ptr [ %656, %652 ], [ %680, %694 ]
  %710 = getelementptr inbounds double, ptr %3, i64 4
  %711 = load double, ptr %710, align 8, !tbaa !24
  %712 = tail call fastcc double @DegreesToRadians(double noundef %711) #18
  store double %712, ptr %708, align 8, !tbaa !24
  %713 = getelementptr inbounds double, ptr %78, i64 5
  store double %712, ptr %713, align 8, !tbaa !24
  %714 = icmp ugt i64 %2, 5
  br i1 %714, label %715, label %719

715:                                              ; preds = %707
  %716 = getelementptr inbounds double, ptr %3, i64 5
  %717 = load double, ptr %716, align 8, !tbaa !24
  %718 = tail call fastcc double @DegreesToRadians(double noundef %717) #18
  store double %718, ptr %713, align 8, !tbaa !24
  br label %719

719:                                              ; preds = %703, %715, %707
  %720 = phi double [ 0xC00921FB54442D18, %703 ], [ %718, %715 ], [ %712, %707 ]
  %721 = phi ptr [ %706, %703 ], [ %713, %715 ], [ %713, %707 ]
  %722 = phi ptr [ %705, %703 ], [ %709, %715 ], [ %709, %707 ]
  %723 = phi ptr [ %704, %703 ], [ %708, %715 ], [ %708, %707 ]
  %724 = load double, ptr %723, align 8, !tbaa !24
  %725 = fsub double %724, %720
  %726 = tail call double @llvm.fabs.f64(double %725)
  %727 = fcmp olt double %726, 1.000000e-15
  br i1 %727, label %728, label %730

728:                                              ; preds = %719
  %729 = fadd double %720, 0x401921FB54442D18
  store double %729, ptr %721, align 8, !tbaa !24
  br label %730

730:                                              ; preds = %728, %719
  %731 = load double, ptr %78, align 8, !tbaa !24
  %732 = fcmp olt double %731, 1.000000e-15
  br i1 %732, label %733, label %800

733:                                              ; preds = %730
  %734 = tail call double @llvm.fabs.f64(double %731)
  %735 = fcmp olt double %734, 1.000000e-15
  br i1 %735, label %736, label %764

736:                                              ; preds = %733
  %737 = getelementptr inbounds double, ptr %78, i64 2
  %738 = load double, ptr %737, align 8, !tbaa !24
  %739 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %740 = load i64, ptr %739, align 8, !tbaa !30
  %741 = sitofp i64 %740 to double
  %742 = fsub double %738, %741
  %743 = tail call double @llvm.fabs.f64(double %742)
  %744 = getelementptr inbounds double, ptr %78, i64 3
  %745 = load double, ptr %744, align 8, !tbaa !24
  %746 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %747 = load i64, ptr %746, align 8, !tbaa !31
  %748 = sitofp i64 %747 to double
  %749 = fsub double %745, %748
  %750 = tail call double @llvm.fabs.f64(double %749)
  %751 = tail call fastcc double @MagickMin(double noundef %743, double noundef %750) #18
  %752 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %753 = load i64, ptr %752, align 8, !tbaa !26
  %754 = uitofp i64 %753 to double
  %755 = fsub double %742, %754
  %756 = tail call double @llvm.fabs.f64(double %755)
  %757 = tail call fastcc double @MagickMin(double noundef %751, double noundef %756) #18
  %758 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %759 = load i64, ptr %758, align 8, !tbaa !28
  %760 = uitofp i64 %759 to double
  %761 = fsub double %749, %760
  %762 = tail call double @llvm.fabs.f64(double %761)
  %763 = tail call fastcc double @MagickMin(double noundef %757, double noundef %762) #18
  store double %763, ptr %78, align 8, !tbaa !24
  br label %764

764:                                              ; preds = %736, %733
  %765 = phi double [ %763, %736 ], [ %731, %733 ]
  %766 = fsub double -1.000000e+00, %765
  %767 = tail call double @llvm.fabs.f64(double %766)
  %768 = fcmp olt double %767, 1.000000e-15
  br i1 %768, label %769, label %800

769:                                              ; preds = %764
  %770 = getelementptr inbounds double, ptr %78, i64 2
  %771 = load double, ptr %770, align 8, !tbaa !24
  %772 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %773 = load i64, ptr %772, align 8, !tbaa !30
  %774 = sitofp i64 %773 to double
  %775 = fsub double %771, %774
  %776 = getelementptr inbounds double, ptr %78, i64 3
  %777 = load double, ptr %776, align 8, !tbaa !24
  %778 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %779 = load i64, ptr %778, align 8, !tbaa !31
  %780 = sitofp i64 %779 to double
  %781 = fsub double %777, %780
  %782 = fmul double %781, %781
  %783 = tail call double @llvm.fmuladd.f64(double %775, double %775, double %782)
  %784 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %785 = load i64, ptr %784, align 8, !tbaa !28
  %786 = uitofp i64 %785 to double
  %787 = fsub double %781, %786
  %788 = fmul double %787, %787
  %789 = tail call double @llvm.fmuladd.f64(double %775, double %775, double %788)
  %790 = tail call fastcc double @MagickMax(double noundef %783, double noundef %789) #18
  %791 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %792 = load i64, ptr %791, align 8, !tbaa !26
  %793 = uitofp i64 %792 to double
  %794 = fsub double %775, %793
  %795 = tail call double @llvm.fmuladd.f64(double %794, double %794, double %788)
  %796 = tail call fastcc double @MagickMax(double noundef %790, double noundef %795) #18
  %797 = tail call double @llvm.fmuladd.f64(double %794, double %794, double %782)
  %798 = tail call fastcc double @MagickMax(double noundef %796, double noundef %797) #18
  %799 = tail call double @sqrt(double noundef %798) #17
  store double %799, ptr %78, align 8, !tbaa !24
  br label %800

800:                                              ; preds = %764, %769, %730
  %801 = phi double [ %765, %764 ], [ %799, %769 ], [ %731, %730 ]
  %802 = fcmp olt double %801, 1.000000e-15
  br i1 %802, label %803, label %805

803:                                              ; preds = %800
  %804 = load i32, ptr %1, align 4, !tbaa !25
  br label %812

805:                                              ; preds = %800
  %806 = load double, ptr %722, align 8, !tbaa !24
  %807 = fcmp olt double %806, -1.000000e-15
  %808 = fsub double %801, %806
  %809 = fcmp olt double %808, 1.000000e-15
  %810 = or i1 %807, %809
  %811 = load i32, ptr %1, align 4, !tbaa !25
  br i1 %810, label %812, label %818

812:                                              ; preds = %803, %805
  %813 = phi i32 [ %804, %803 ], [ %811, %805 ]
  %814 = zext i32 %813 to i64
  %815 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %814) #17
  %816 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1259, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.134, ptr noundef %815) #17
  %817 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %994

818:                                              ; preds = %805
  %819 = icmp eq i32 %811, 10
  %820 = getelementptr inbounds double, ptr %78, i64 6
  br i1 %819, label %821, label %831

821:                                              ; preds = %818
  %822 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %823 = load double, ptr %721, align 8, !tbaa !24
  %824 = load double, ptr %723, align 8, !tbaa !24
  %825 = fsub double %823, %824
  %826 = load <2 x i64>, ptr %822, align 8, !tbaa !50
  %827 = uitofp <2 x i64> %826 to <2 x double>
  %828 = insertelement <2 x double> poison, double %825, i64 0
  %829 = insertelement <2 x double> %828, double %808, i64 1
  %830 = fdiv <2 x double> %827, %829
  store <2 x double> %830, ptr %820, align 8, !tbaa !24
  br label %994

831:                                              ; preds = %818
  %832 = load double, ptr %721, align 8, !tbaa !24
  %833 = load double, ptr %723, align 8, !tbaa !24
  %834 = fsub double %832, %833
  %835 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %836 = load <2 x i64>, ptr %835, align 8, !tbaa !50
  %837 = uitofp <2 x i64> %836 to <2 x double>
  %838 = insertelement <2 x double> poison, double %834, i64 0
  %839 = insertelement <2 x double> %838, double %808, i64 1
  %840 = fdiv <2 x double> %839, %837
  store <2 x double> %840, ptr %820, align 8, !tbaa !24
  br label %994

841:                                              ; preds = %74, %74
  %842 = load double, ptr %3, align 8, !tbaa !24
  %843 = fcmp olt double %842, 1.000000e-15
  %844 = fcmp ogt double %842, 1.600000e+02
  %845 = or i1 %843, %844
  br i1 %845, label %846, label %851

846:                                              ; preds = %841
  %847 = zext nneg i32 %79 to i64
  %848 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %847) #17
  %849 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1302, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.135, ptr noundef %848) #17
  %850 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %994

851:                                              ; preds = %841
  %852 = tail call fastcc double @DegreesToRadians(double noundef %842) #18
  store double %852, ptr %78, align 8, !tbaa !24
  %853 = icmp eq i32 %79, 12
  %854 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %855 = load i64, ptr %854, align 8, !tbaa !26
  %856 = uitofp i64 %855 to double
  br i1 %853, label %861, label %857

857:                                              ; preds = %851
  %858 = fmul double %852, 5.000000e-01
  %859 = tail call double @tan(double noundef %858) #17
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
  %868 = load <2 x i64>, ptr %865, align 8, !tbaa !50
  %869 = uitofp <2 x i64> %868 to <2 x double>
  %870 = fmul <2 x double> %869, <double 5.000000e-01, double 5.000000e-01>
  %871 = load <2 x i64>, ptr %866, align 8, !tbaa !50
  %872 = sitofp <2 x i64> %871 to <2 x double>
  %873 = fadd <2 x double> %870, %872
  store <2 x double> %873, ptr %867, align 8, !tbaa !24
  %874 = getelementptr inbounds double, ptr %78, i64 4
  store <2 x double> %873, ptr %874, align 8, !tbaa !24
  br label %994

875:                                              ; preds = %74, %74
  %876 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %877 = load i64, ptr %876, align 8, !tbaa !26
  %878 = uitofp i64 %877 to double
  %879 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %880 = load i64, ptr %879, align 8, !tbaa !28
  %881 = uitofp i64 %880 to double
  %882 = tail call fastcc double @MagickMin(double noundef %878, double noundef %881) #18
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
  %887 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  %888 = load i32, ptr %1, align 4, !tbaa !25
  %889 = zext i32 %888 to i64
  %890 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %889) #17
  %891 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.133, ptr noundef %890) #17
  br label %994

892:                                              ; preds = %885
  %893 = load double, ptr %3, align 8, !tbaa !24
  store double %893, ptr %78, align 8, !tbaa !24
  %894 = getelementptr inbounds double, ptr %3, i64 1
  %895 = load double, ptr %894, align 8, !tbaa !24
  %896 = getelementptr inbounds double, ptr %78, i64 1
  store double %895, ptr %896, align 8, !tbaa !24
  %897 = getelementptr inbounds double, ptr %3, i64 2
  %898 = load double, ptr %897, align 8, !tbaa !24
  %899 = getelementptr inbounds double, ptr %78, i64 2
  store double %898, ptr %899, align 8, !tbaa !24
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
  %906 = load double, ptr %905, align 8, !tbaa !24
  br label %907

907:                                              ; preds = %904, %900
  %908 = phi double [ %906, %904 ], [ %903, %900 ]
  %909 = getelementptr inbounds double, ptr %78, i64 3
  store double %908, ptr %909, align 8, !tbaa !24
  %910 = tail call double @pow(double noundef %883, double noundef 3.000000e+00) #17
  %911 = fmul double %883, %883
  %912 = load <2 x double>, ptr %78, align 8, !tbaa !24
  %913 = insertelement <2 x double> poison, double %910, i64 0
  %914 = insertelement <2 x double> %913, double %911, i64 1
  %915 = fmul <2 x double> %914, %912
  store <2 x double> %915, ptr %78, align 8, !tbaa !24
  %916 = load double, ptr %899, align 8, !tbaa !24
  %917 = fmul double %883, %916
  store double %917, ptr %899, align 8, !tbaa !24
  %918 = icmp ugt i64 %2, 7
  br i1 %918, label %919, label %935

919:                                              ; preds = %907
  %920 = getelementptr inbounds double, ptr %3, i64 4
  %921 = load double, ptr %920, align 8, !tbaa !24
  %922 = tail call double @pow(double noundef %883, double noundef 3.000000e+00) #17
  %923 = fmul double %921, %922
  %924 = getelementptr inbounds double, ptr %78, i64 4
  store double %923, ptr %924, align 8, !tbaa !24
  %925 = getelementptr inbounds double, ptr %3, i64 5
  %926 = load double, ptr %925, align 8, !tbaa !24
  %927 = fmul double %883, %926
  %928 = fmul double %883, %927
  %929 = getelementptr inbounds double, ptr %78, i64 5
  store double %928, ptr %929, align 8, !tbaa !24
  %930 = getelementptr inbounds double, ptr %3, i64 6
  %931 = load double, ptr %930, align 8, !tbaa !24
  %932 = fmul double %883, %931
  %933 = getelementptr inbounds double, ptr %78, i64 6
  store double %932, ptr %933, align 8, !tbaa !24
  %934 = getelementptr inbounds double, ptr %3, i64 7
  br label %939

935:                                              ; preds = %907
  %936 = getelementptr inbounds double, ptr %78, i64 4
  store <2 x double> %915, ptr %936, align 8, !tbaa !24
  %937 = getelementptr inbounds double, ptr %78, i64 6
  store double %917, ptr %937, align 8, !tbaa !24
  %938 = getelementptr inbounds double, ptr %78, i64 3
  br label %939

939:                                              ; preds = %935, %919
  %940 = phi ptr [ %934, %919 ], [ %938, %935 ]
  %941 = load double, ptr %940, align 8, !tbaa !24
  %942 = getelementptr inbounds double, ptr %78, i64 7
  store double %941, ptr %942, align 8
  switch i64 %2, label %964 [
    i64 5, label %943
    i64 6, label %950
    i64 10, label %957
  ]

943:                                              ; preds = %939
  %944 = getelementptr inbounds double, ptr %3, i64 3
  %945 = load double, ptr %944, align 8, !tbaa !24
  %946 = getelementptr inbounds double, ptr %78, i64 8
  store double %945, ptr %946, align 8, !tbaa !24
  %947 = getelementptr inbounds double, ptr %3, i64 4
  %948 = load double, ptr %947, align 8, !tbaa !24
  %949 = getelementptr inbounds double, ptr %78, i64 9
  store double %948, ptr %949, align 8, !tbaa !24
  br label %994

950:                                              ; preds = %939
  %951 = getelementptr inbounds double, ptr %3, i64 4
  %952 = load double, ptr %951, align 8, !tbaa !24
  %953 = getelementptr inbounds double, ptr %78, i64 8
  store double %952, ptr %953, align 8, !tbaa !24
  %954 = getelementptr inbounds double, ptr %3, i64 5
  %955 = load double, ptr %954, align 8, !tbaa !24
  %956 = getelementptr inbounds double, ptr %78, i64 9
  store double %955, ptr %956, align 8, !tbaa !24
  br label %994

957:                                              ; preds = %939
  %958 = getelementptr inbounds double, ptr %3, i64 8
  %959 = load double, ptr %958, align 8, !tbaa !24
  %960 = getelementptr inbounds double, ptr %78, i64 8
  store double %959, ptr %960, align 8, !tbaa !24
  %961 = getelementptr inbounds double, ptr %3, i64 9
  %962 = load double, ptr %961, align 8, !tbaa !24
  %963 = getelementptr inbounds double, ptr %78, i64 9
  store double %962, ptr %963, align 8, !tbaa !24
  br label %994

964:                                              ; preds = %939
  %965 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %966 = getelementptr inbounds double, ptr %78, i64 8
  %967 = load <2 x i64>, ptr %876, align 8, !tbaa !50
  %968 = uitofp <2 x i64> %967 to <2 x double>
  %969 = fmul <2 x double> %968, <double 5.000000e-01, double 5.000000e-01>
  %970 = load <2 x i64>, ptr %965, align 8, !tbaa !50
  %971 = sitofp <2 x i64> %970 to <2 x double>
  %972 = fadd <2 x double> %969, %971
  store <2 x double> %972, ptr %966, align 8, !tbaa !24
  br label %994

973:                                              ; preds = %74
  %974 = urem i64 %2, %18
  %975 = icmp ne i64 %974, 0
  %976 = icmp ugt i64 %18, %2
  %977 = or i1 %976, %975
  br i1 %977, label %978, label %982

978:                                              ; preds = %973
  %979 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 16) #17
  %980 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1412, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.136, ptr noundef %979) #17
  %981 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %994

982:                                              ; preds = %973
  %983 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.137) #17
  %984 = icmp eq ptr %983, null
  br i1 %984, label %989, label %985

985:                                              ; preds = %982
  %986 = tail call fastcc double @StringToDouble(ptr noundef nonnull %983) #18
  %987 = fmul double %986, 5.000000e-01
  store double %987, ptr %78, align 8, !tbaa !24
  %988 = fcmp olt double %987, 1.000000e-15
  br i1 %988, label %990, label %994

989:                                              ; preds = %982
  store double 1.000000e+00, ptr %78, align 8, !tbaa !24
  br label %994

990:                                              ; preds = %985
  %991 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.138) #17
  %992 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %78) #17
  br label %994

993:                                              ; preds = %74
  tail call void @perror(ptr noundef nonnull @.str.139) #21
  br label %994

994:                                              ; preds = %108, %990, %985, %989, %196, %195, %886, %950, %964, %957, %943, %821, %831, %522, %564, %558, %217, %254, %271, %277, %95, %993, %978, %861, %846, %812, %664, %640, %587, %575, %504, %391, %388, %384, %206, %85, %72, %47, %39, %33
  %995 = phi ptr [ null, %72 ], [ null, %993 ], [ null, %978 ], [ null, %846 ], [ %78, %861 ], [ null, %664 ], [ null, %812 ], [ null, %575 ], [ null, %587 ], [ %78, %640 ], [ %505, %504 ], [ null, %388 ], [ %78, %391 ], [ %385, %384 ], [ %207, %206 ], [ null, %85 ], [ null, %33 ], [ null, %39 ], [ null, %47 ], [ %78, %95 ], [ null, %254 ], [ null, %271 ], [ %78, %277 ], [ null, %217 ], [ null, %522 ], [ null, %564 ], [ %78, %558 ], [ %78, %831 ], [ %78, %821 ], [ null, %886 ], [ %78, %950 ], [ %78, %964 ], [ %78, %957 ], [ %78, %943 ], [ %78, %196 ], [ null, %195 ], [ null, %990 ], [ %78, %985 ], [ %78, %989 ], [ %78, %108 ]
  ret ptr %995
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InvertAffineCoefficients(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = load double, ptr %0, align 8, !tbaa !24
  %4 = getelementptr inbounds double, ptr %0, i64 4
  %5 = load double, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds double, ptr %0, i64 3
  %9 = load double, ptr %8, align 8, !tbaa !24
  %10 = fneg double %7
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %11)
  %13 = tail call fastcc double @PerceptibleReciprocal(double noundef %12) #18
  %14 = fmul double %5, %13
  store double %14, ptr %1, align 8, !tbaa !24
  %15 = load double, ptr %6, align 8, !tbaa !24
  %16 = fneg double %15
  %17 = fmul double %13, %16
  %18 = getelementptr inbounds double, ptr %1, i64 1
  store double %17, ptr %18, align 8, !tbaa !24
  %19 = load double, ptr %6, align 8, !tbaa !24
  %20 = getelementptr inbounds double, ptr %0, i64 5
  %21 = load double, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds double, ptr %0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !24
  %24 = load double, ptr %4, align 8, !tbaa !24
  %25 = fneg double %23
  %26 = fmul double %24, %25
  %27 = tail call double @llvm.fmuladd.f64(double %19, double %21, double %26)
  %28 = fmul double %13, %27
  %29 = getelementptr inbounds double, ptr %1, i64 2
  store double %28, ptr %29, align 8, !tbaa !24
  %30 = load double, ptr %8, align 8, !tbaa !24
  %31 = fneg double %30
  %32 = fmul double %13, %31
  %33 = getelementptr inbounds double, ptr %1, i64 3
  store double %32, ptr %33, align 8, !tbaa !24
  %34 = load double, ptr %0, align 8, !tbaa !24
  %35 = fmul double %13, %34
  %36 = getelementptr inbounds double, ptr %1, i64 4
  store double %35, ptr %36, align 8, !tbaa !24
  %37 = load double, ptr %22, align 8, !tbaa !24
  %38 = load double, ptr %8, align 8, !tbaa !24
  %39 = load double, ptr %0, align 8, !tbaa !24
  %40 = load double, ptr %20, align 8, !tbaa !24
  %41 = fneg double %39
  %42 = fmul double %40, %41
  %43 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %42)
  %44 = fmul double %13, %43
  %45 = getelementptr inbounds double, ptr %1, i64 5
  store double %44, ptr %45, align 8, !tbaa !24
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
  %3 = load double, ptr %0, align 8, !tbaa !24
  %4 = getelementptr inbounds double, ptr %0, i64 4
  %5 = load double, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !24
  %10 = fneg double %7
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %11)
  %13 = tail call fastcc double @PerceptibleReciprocal(double noundef %12) #18
  %14 = getelementptr inbounds double, ptr %0, i64 7
  %15 = load double, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds double, ptr %0, i64 5
  %17 = load double, ptr %16, align 8, !tbaa !24
  %18 = fneg double %15
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double %5)
  %20 = fmul double %13, %19
  store double %20, ptr %1, align 8, !tbaa !24
  %21 = load double, ptr %14, align 8, !tbaa !24
  %22 = getelementptr inbounds double, ptr %0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !24
  %24 = load double, ptr %8, align 8, !tbaa !24
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %21, double %23, double %25)
  %27 = fmul double %13, %26
  %28 = getelementptr inbounds double, ptr %1, i64 1
  store double %27, ptr %28, align 8, !tbaa !24
  %29 = load double, ptr %8, align 8, !tbaa !24
  %30 = load double, ptr %16, align 8, !tbaa !24
  %31 = load double, ptr %4, align 8, !tbaa !24
  %32 = load double, ptr %22, align 8, !tbaa !24
  %33 = fneg double %31
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %34)
  %36 = fmul double %13, %35
  %37 = getelementptr inbounds double, ptr %1, i64 2
  store double %36, ptr %37, align 8, !tbaa !24
  %38 = getelementptr inbounds double, ptr %0, i64 6
  %39 = load double, ptr %38, align 8, !tbaa !24
  %40 = load double, ptr %16, align 8, !tbaa !24
  %41 = load double, ptr %6, align 8, !tbaa !24
  %42 = fneg double %41
  %43 = tail call double @llvm.fmuladd.f64(double %39, double %40, double %42)
  %44 = fmul double %13, %43
  %45 = getelementptr inbounds double, ptr %1, i64 3
  store double %44, ptr %45, align 8, !tbaa !24
  %46 = load double, ptr %0, align 8, !tbaa !24
  %47 = load double, ptr %38, align 8, !tbaa !24
  %48 = load double, ptr %22, align 8, !tbaa !24
  %49 = fneg double %47
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %48, double %46)
  %51 = fmul double %13, %50
  %52 = getelementptr inbounds double, ptr %1, i64 4
  store double %51, ptr %52, align 8, !tbaa !24
  %53 = load double, ptr %6, align 8, !tbaa !24
  %54 = load double, ptr %22, align 8, !tbaa !24
  %55 = load double, ptr %0, align 8, !tbaa !24
  %56 = load double, ptr %16, align 8, !tbaa !24
  %57 = fneg double %55
  %58 = fmul double %56, %57
  %59 = tail call double @llvm.fmuladd.f64(double %53, double %54, double %58)
  %60 = fmul double %13, %59
  %61 = getelementptr inbounds double, ptr %1, i64 5
  store double %60, ptr %61, align 8, !tbaa !24
  %62 = load double, ptr %6, align 8, !tbaa !24
  %63 = load double, ptr %14, align 8, !tbaa !24
  %64 = load double, ptr %38, align 8, !tbaa !24
  %65 = load double, ptr %4, align 8, !tbaa !24
  %66 = fneg double %64
  %67 = fmul double %65, %66
  %68 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %67)
  %69 = fmul double %13, %68
  %70 = getelementptr inbounds double, ptr %1, i64 6
  store double %69, ptr %70, align 8, !tbaa !24
  %71 = load double, ptr %38, align 8, !tbaa !24
  %72 = load double, ptr %8, align 8, !tbaa !24
  %73 = load double, ptr %0, align 8, !tbaa !24
  %74 = load double, ptr %14, align 8, !tbaa !24
  %75 = fneg double %73
  %76 = fmul double %74, %75
  %77 = tail call double @llvm.fmuladd.f64(double %71, double %72, double %76)
  %78 = fmul double %13, %77
  %79 = getelementptr inbounds double, ptr %1, i64 7
  store double %78, ptr %79, align 8, !tbaa !24
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
  %3 = load double, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !24
  store double %3, ptr %4, align 8, !tbaa !24
  store double %5, ptr %8, align 8, !tbaa !24
  store double %7, ptr %2, align 8, !tbaa !24
  store double %9, ptr %6, align 8, !tbaa !24
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
  %7 = phi ptr [ %5, %3 ], [ @.str.160, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #17
  ret double %2
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !70
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #18
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !71
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #18
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
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %4 = tail call ptr @AcquireAlignedMemory(i64 noundef %3, i64 noundef 8) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #17
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %3
  br i1 %12, label %20, label %13, !llvm.loop !72

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = tail call ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef %1) #17
  %16 = getelementptr inbounds ptr, ptr %4, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !37
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef nonnull %4) #18
  br label %20

20:                                               ; preds = %10, %6, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %4, %6 ], [ %4, %10 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !70
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !70
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !73
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !76
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !77
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !78
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #20
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !77
  %24 = tail call float @DecodePixelGamma(float noundef %23) #20
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !78
  %27 = tail call float @DecodePixelGamma(float noundef %26) #20
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
  store i32 12, ptr %2, align 4, !tbaa !75
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !52
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !78
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !73
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
  %9 = tail call fastcc double @poly_basis_dx(i64 noundef %8, double noundef %1, double noundef %2) #18
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
declare double @hypot(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !76
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #18
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !79
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #18
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !80
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !78
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #18
  store i16 %15, ptr %2, align 2, !tbaa !71
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !81
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #18
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !82
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !83
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !73
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #18
  store i16 %33, ptr %3, align 2, !tbaa !70
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: optsize
declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !81
  %8 = fsub float 6.553500e+04, %7
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 6.553500e+04)
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !81
  %13 = fsub float 6.553500e+04, %12
  %14 = fneg float %3
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %10, ptr noundef %2, float noundef %15, ptr noundef %4) #18
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.161, ptr noundef %1, ptr noundef nonnull %10) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #17
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyResampleFilterThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyResampleFilter(ptr noundef nonnull %7) #17
  store ptr %10, ptr %6, align 8, !tbaa !37
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !85

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #17
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  store double %1, ptr %4, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #17
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
  br i1 %20, label %17, label %14, !llvm.loop !86

21:                                               ; preds = %14, %21
  %22 = phi i64 [ %25, %21 ], [ 0, %14 ]
  %23 = phi float [ %24, %21 ], [ %15, %14 ]
  %24 = fadd float %23, -9.000000e+01
  %25 = add i64 %22, 1
  %26 = fcmp ogt float %24, 4.500000e+01
  br i1 %26, label %21, label %27, !llvm.loop !87

27:                                               ; preds = %21
  %28 = and i64 %25, 3
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi float [ %15, %14 ], [ %24, %27 ]
  %31 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %32 = fpext float %30 to double
  %33 = tail call fastcc double @DegreesToRadians(double noundef %32) #18
  %34 = fmul double %33, 5.000000e-01
  %35 = tail call double @tan(double noundef %34) #17
  %36 = fneg double %35
  %37 = tail call double @sin(double noundef %33) #17
  %38 = tail call double @llvm.fabs.f64(double %36)
  %39 = fcmp olt double %38, 1.000000e-15
  %40 = tail call double @llvm.fabs.f64(double %37)
  %41 = fcmp olt double %40, 1.000000e-15
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %31, ptr noundef %2) #17
  br label %52

45:                                               ; preds = %29
  %46 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %46, i32 noundef 1) #17
  %50 = call ptr @DistortImage(ptr noundef nonnull %46, i32 noundef 3, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2) #18
  %51 = call ptr @DestroyImage(ptr noundef nonnull %46) #17
  br label %52

52:                                               ; preds = %45, %48, %43
  %53 = phi ptr [ %44, %43 ], [ %50, %48 ], [ null, %45 ]
  ret ptr %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #5 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: optsize
declare ptr @IntegralRotateImage(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SparseColorImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2930, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #17
  br label %15

15:                                               ; preds = %12, %6
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %1, 2
  %19 = icmp eq i32 %18, 0
  %20 = lshr exact i32 %18, 1
  %21 = add nuw nsw i32 %20, %16
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  %24 = lshr exact i32 %22, 2
  %25 = add nuw nsw i32 %21, %24
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  %28 = lshr exact i32 %26, 5
  %29 = add nuw nsw i32 %25, %28
  %30 = and i32 %1, 8
  %31 = icmp eq i32 %30, 0
  %32 = lshr exact i32 %30, 3
  %33 = add nuw nsw i32 %29, %32
  %34 = zext nneg i32 %33 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %35 = icmp ugt i32 %2, 17
  %36 = select i1 %35, i32 16, i32 %2
  store i32 %36, ptr %7, align 4
  %37 = call fastcc ptr @GenerateCoefficients(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %3, ptr noundef %4, i64 noundef %34, ptr noundef %5) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %15
  %40 = load i32, ptr %7, align 4, !tbaa !25
  %41 = icmp eq i32 %40, 16
  %42 = select i1 %41, i32 %2, i32 %40
  %43 = icmp eq i32 %42, 19
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  store double 5.000000e-01, ptr %37, align 8, !tbaa !24
  br label %46

45:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %604

46:                                               ; preds = %39, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %47 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %179, label %49

49:                                               ; preds = %46
  switch i32 %42, label %179 [
    i32 1, label %50
    i32 7, label %108
  ]

50:                                               ; preds = %49
  %51 = load ptr, ptr @stderr, align 8, !tbaa !37
  %52 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %51, ptr noundef nonnull @.str.105) #17
  br i1 %17, label %61, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !37
  %55 = load double, ptr %37, align 8, !tbaa !24
  %56 = getelementptr inbounds double, ptr %37, i64 1
  %57 = load double, ptr %56, align 8, !tbaa !24
  %58 = getelementptr inbounds double, ptr %37, i64 2
  %59 = load double, ptr %58, align 8, !tbaa !24
  %60 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %54, ptr noundef nonnull @.str.106, double noundef %55, double noundef %57, double noundef %59) #17
  br label %61

61:                                               ; preds = %53, %50
  %62 = phi i64 [ 3, %53 ], [ 0, %50 ]
  br i1 %19, label %73, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr @stderr, align 8, !tbaa !37
  %65 = getelementptr inbounds double, ptr %37, i64 %62
  %66 = load double, ptr %65, align 8, !tbaa !24
  %67 = getelementptr double, ptr %65, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !24
  %69 = getelementptr double, ptr %65, i64 2
  %70 = load double, ptr %69, align 8, !tbaa !24
  %71 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %64, ptr noundef nonnull @.str.107, double noundef %66, double noundef %68, double noundef %70) #17
  %72 = add nuw nsw i64 %62, 3
  br label %73

73:                                               ; preds = %63, %61
  %74 = phi i64 [ %72, %63 ], [ %62, %61 ]
  br i1 %23, label %85, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr @stderr, align 8, !tbaa !37
  %77 = getelementptr inbounds double, ptr %37, i64 %74
  %78 = load double, ptr %77, align 8, !tbaa !24
  %79 = getelementptr double, ptr %77, i64 1
  %80 = load double, ptr %79, align 8, !tbaa !24
  %81 = getelementptr double, ptr %77, i64 2
  %82 = load double, ptr %81, align 8, !tbaa !24
  %83 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %76, ptr noundef nonnull @.str.108, double noundef %78, double noundef %80, double noundef %82) #17
  %84 = add nuw nsw i64 %74, 3
  br label %85

85:                                               ; preds = %75, %73
  %86 = phi i64 [ %84, %75 ], [ %74, %73 ]
  br i1 %27, label %97, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr @stderr, align 8, !tbaa !37
  %89 = getelementptr inbounds double, ptr %37, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !24
  %91 = getelementptr double, ptr %89, i64 1
  %92 = load double, ptr %91, align 8, !tbaa !24
  %93 = getelementptr double, ptr %89, i64 2
  %94 = load double, ptr %93, align 8, !tbaa !24
  %95 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %88, ptr noundef nonnull @.str.109, double noundef %90, double noundef %92, double noundef %94) #17
  %96 = add nuw nsw i64 %86, 3
  br label %97

97:                                               ; preds = %87, %85
  %98 = phi i64 [ %96, %87 ], [ %86, %85 ]
  br i1 %31, label %179, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr @stderr, align 8, !tbaa !37
  %101 = getelementptr inbounds double, ptr %37, i64 %98
  %102 = load double, ptr %101, align 8, !tbaa !24
  %103 = getelementptr double, ptr %101, i64 1
  %104 = load double, ptr %103, align 8, !tbaa !24
  %105 = getelementptr double, ptr %101, i64 2
  %106 = load double, ptr %105, align 8, !tbaa !24
  %107 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %100, ptr noundef nonnull @.str.110, double noundef %102, double noundef %104, double noundef %106) #17
  br label %179

108:                                              ; preds = %49
  %109 = load ptr, ptr @stderr, align 8, !tbaa !37
  %110 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %109, ptr noundef nonnull @.str.111) #17
  br i1 %17, label %121, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @stderr, align 8, !tbaa !37
  %113 = load double, ptr %37, align 8, !tbaa !24
  %114 = getelementptr inbounds double, ptr %37, i64 1
  %115 = load double, ptr %114, align 8, !tbaa !24
  %116 = getelementptr inbounds double, ptr %37, i64 2
  %117 = load double, ptr %116, align 8, !tbaa !24
  %118 = getelementptr inbounds double, ptr %37, i64 3
  %119 = load double, ptr %118, align 8, !tbaa !24
  %120 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %112, ptr noundef nonnull @.str.112, double noundef %113, double noundef %115, double noundef %117, double noundef %119) #17
  br label %121

121:                                              ; preds = %111, %108
  %122 = phi i64 [ 4, %111 ], [ 0, %108 ]
  br i1 %19, label %138, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr @stderr, align 8, !tbaa !37
  %125 = getelementptr inbounds double, ptr %37, i64 %122
  %126 = load double, ptr %125, align 8, !tbaa !24
  %127 = or disjoint i64 %122, 1
  %128 = getelementptr inbounds double, ptr %37, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !24
  %130 = or disjoint i64 %122, 2
  %131 = getelementptr inbounds double, ptr %37, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !24
  %133 = or disjoint i64 %122, 3
  %134 = getelementptr inbounds double, ptr %37, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !24
  %136 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %124, ptr noundef nonnull @.str.113, double noundef %126, double noundef %129, double noundef %132, double noundef %135) #17
  %137 = add nuw nsw i64 %122, 4
  br label %138

138:                                              ; preds = %123, %121
  %139 = phi i64 [ %137, %123 ], [ %122, %121 ]
  br i1 %23, label %152, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr @stderr, align 8, !tbaa !37
  %142 = getelementptr inbounds double, ptr %37, i64 %139
  %143 = load double, ptr %142, align 8, !tbaa !24
  %144 = getelementptr double, ptr %142, i64 1
  %145 = load double, ptr %144, align 8, !tbaa !24
  %146 = getelementptr double, ptr %142, i64 2
  %147 = load double, ptr %146, align 8, !tbaa !24
  %148 = getelementptr double, ptr %142, i64 3
  %149 = load double, ptr %148, align 8, !tbaa !24
  %150 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %141, ptr noundef nonnull @.str.114, double noundef %143, double noundef %145, double noundef %147, double noundef %149) #17
  %151 = add nuw nsw i64 %139, 4
  br label %152

152:                                              ; preds = %140, %138
  %153 = phi i64 [ %151, %140 ], [ %139, %138 ]
  br i1 %27, label %166, label %154

154:                                              ; preds = %152
  %155 = load ptr, ptr @stderr, align 8, !tbaa !37
  %156 = getelementptr inbounds double, ptr %37, i64 %153
  %157 = load double, ptr %156, align 8, !tbaa !24
  %158 = getelementptr double, ptr %156, i64 1
  %159 = load double, ptr %158, align 8, !tbaa !24
  %160 = getelementptr double, ptr %156, i64 2
  %161 = load double, ptr %160, align 8, !tbaa !24
  %162 = getelementptr double, ptr %156, i64 3
  %163 = load double, ptr %162, align 8, !tbaa !24
  %164 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %155, ptr noundef nonnull @.str.115, double noundef %157, double noundef %159, double noundef %161, double noundef %163) #17
  %165 = add nuw nsw i64 %153, 4
  br label %166

166:                                              ; preds = %154, %152
  %167 = phi i64 [ %165, %154 ], [ %153, %152 ]
  br i1 %31, label %179, label %168

168:                                              ; preds = %166
  %169 = load ptr, ptr @stderr, align 8, !tbaa !37
  %170 = getelementptr inbounds double, ptr %37, i64 %167
  %171 = load double, ptr %170, align 8, !tbaa !24
  %172 = getelementptr double, ptr %170, i64 1
  %173 = load double, ptr %172, align 8, !tbaa !24
  %174 = getelementptr double, ptr %170, i64 2
  %175 = load double, ptr %174, align 8, !tbaa !24
  %176 = getelementptr double, ptr %170, i64 3
  %177 = load double, ptr %176, align 8, !tbaa !24
  %178 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %169, ptr noundef nonnull @.str.116, double noundef %171, double noundef %173, double noundef %175, double noundef %177) #17
  br label %179

179:                                              ; preds = %166, %168, %97, %99, %49, %46
  %180 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #17
  %181 = icmp eq ptr %180, null
  br i1 %181, label %604, label %182

182:                                              ; preds = %179
  %183 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %180, i32 noundef 1) #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %186) #17
  %187 = tail call ptr @DestroyImage(ptr noundef nonnull %180) #17
  br label %604

188:                                              ; preds = %182
  %189 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %180, ptr noundef %5) #17
  %190 = getelementptr inbounds %struct._Image, ptr %180, i64 0, i32 8
  %191 = load i64, ptr %190, align 8, !tbaa !28
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = tail call ptr @DestroyCacheView(ptr noundef %189) #17
  br label %601

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct._Image, ptr %180, i64 0, i32 7
  %197 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %198 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %199 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %201 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %202 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %203 = icmp eq i64 %3, 0
  %204 = add nuw nsw i64 %34, 2
  %205 = getelementptr inbounds double, ptr %37, i64 1
  %206 = getelementptr inbounds double, ptr %37, i64 2
  %207 = getelementptr inbounds double, ptr %37, i64 3
  %208 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %210

210:                                              ; preds = %195, %590
  %211 = phi i64 [ 0, %195 ], [ %593, %590 ]
  %212 = phi i64 [ 0, %195 ], [ %592, %590 ]
  %213 = phi i32 [ 1, %195 ], [ %591, %590 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #16
  %214 = load i64, ptr %196, align 8, !tbaa !26
  %215 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %189, i64 noundef 0, i64 noundef %211, i64 noundef %214, i64 noundef 1, ptr noundef %5) #20
  %216 = icmp eq ptr %215, null
  br i1 %216, label %590, label %217

217:                                              ; preds = %210
  %218 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %189) #17
  call void @GetMagickPixelPacket(ptr noundef nonnull %180, ptr noundef nonnull %8) #17
  %219 = load i64, ptr %197, align 8, !tbaa !26
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %578

221:                                              ; preds = %217
  %222 = sitofp i64 %211 to double
  br label %223

223:                                              ; preds = %221, %572
  %224 = phi ptr [ %215, %221 ], [ %573, %572 ]
  %225 = phi i64 [ 0, %221 ], [ %575, %572 ]
  %226 = phi ptr [ %218, %221 ], [ %574, %572 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %224, ptr noundef %226, ptr noundef nonnull %8) #18
  switch i32 %42, label %227 [
    i32 1, label %230
    i32 7, label %298
    i32 19, label %388
    i32 16, label %388
  ]

227:                                              ; preds = %223
  br i1 %203, label %552, label %228

228:                                              ; preds = %227
  %229 = sitofp i64 %225 to double
  br label %499

230:                                              ; preds = %223
  br i1 %17, label %240, label %231

231:                                              ; preds = %230
  %232 = load double, ptr %37, align 8, !tbaa !24
  %233 = sitofp i64 %225 to double
  %234 = load double, ptr %205, align 8, !tbaa !24
  %235 = fmul double %234, %222
  %236 = call double @llvm.fmuladd.f64(double %232, double %233, double %235)
  %237 = load double, ptr %206, align 8, !tbaa !24
  %238 = fadd double %237, %236
  %239 = fptrunc double %238 to float
  store float %239, ptr %198, align 8, !tbaa !76
  br label %240

240:                                              ; preds = %231, %230
  %241 = phi i64 [ 3, %231 ], [ 0, %230 ]
  br i1 %19, label %255, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds double, ptr %37, i64 %241
  %244 = load double, ptr %243, align 8, !tbaa !24
  %245 = sitofp i64 %225 to double
  %246 = getelementptr double, ptr %243, i64 1
  %247 = load double, ptr %246, align 8, !tbaa !24
  %248 = fmul double %247, %222
  %249 = call double @llvm.fmuladd.f64(double %244, double %245, double %248)
  %250 = getelementptr double, ptr %243, i64 2
  %251 = load double, ptr %250, align 8, !tbaa !24
  %252 = fadd double %251, %249
  %253 = fptrunc double %252 to float
  store float %253, ptr %199, align 4, !tbaa !77
  %254 = add nuw nsw i64 %241, 3
  br label %255

255:                                              ; preds = %242, %240
  %256 = phi i64 [ %254, %242 ], [ %241, %240 ]
  br i1 %23, label %270, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds double, ptr %37, i64 %256
  %259 = load double, ptr %258, align 8, !tbaa !24
  %260 = sitofp i64 %225 to double
  %261 = getelementptr double, ptr %258, i64 1
  %262 = load double, ptr %261, align 8, !tbaa !24
  %263 = fmul double %262, %222
  %264 = call double @llvm.fmuladd.f64(double %259, double %260, double %263)
  %265 = getelementptr double, ptr %258, i64 2
  %266 = load double, ptr %265, align 8, !tbaa !24
  %267 = fadd double %266, %264
  %268 = fptrunc double %267 to float
  store float %268, ptr %200, align 8, !tbaa !78
  %269 = add nuw nsw i64 %256, 3
  br label %270

270:                                              ; preds = %257, %255
  %271 = phi i64 [ %269, %257 ], [ %256, %255 ]
  br i1 %27, label %285, label %272

272:                                              ; preds = %270
  %273 = getelementptr inbounds double, ptr %37, i64 %271
  %274 = load double, ptr %273, align 8, !tbaa !24
  %275 = sitofp i64 %225 to double
  %276 = getelementptr double, ptr %273, i64 1
  %277 = load double, ptr %276, align 8, !tbaa !24
  %278 = fmul double %277, %222
  %279 = call double @llvm.fmuladd.f64(double %274, double %275, double %278)
  %280 = getelementptr double, ptr %273, i64 2
  %281 = load double, ptr %280, align 8, !tbaa !24
  %282 = fadd double %281, %279
  %283 = fptrunc double %282 to float
  store float %283, ptr %201, align 8, !tbaa !73
  %284 = add nuw nsw i64 %271, 3
  br label %285

285:                                              ; preds = %272, %270
  %286 = phi i64 [ %284, %272 ], [ %271, %270 ]
  br i1 %31, label %552, label %287

287:                                              ; preds = %285
  %288 = getelementptr inbounds double, ptr %37, i64 %286
  %289 = load double, ptr %288, align 8, !tbaa !24
  %290 = sitofp i64 %225 to double
  %291 = getelementptr double, ptr %288, i64 1
  %292 = load double, ptr %291, align 8, !tbaa !24
  %293 = fmul double %292, %222
  %294 = call double @llvm.fmuladd.f64(double %289, double %290, double %293)
  %295 = getelementptr double, ptr %288, i64 2
  %296 = load double, ptr %295, align 8, !tbaa !24
  %297 = fadd double %296, %294
  br label %549

298:                                              ; preds = %223
  br i1 %17, label %311, label %299

299:                                              ; preds = %298
  %300 = load double, ptr %37, align 8, !tbaa !24
  %301 = sitofp i64 %225 to double
  %302 = load double, ptr %205, align 8, !tbaa !24
  %303 = fmul double %302, %222
  %304 = call double @llvm.fmuladd.f64(double %300, double %301, double %303)
  %305 = load double, ptr %206, align 8, !tbaa !24
  %306 = fmul double %305, %301
  %307 = call double @llvm.fmuladd.f64(double %306, double %222, double %304)
  %308 = load double, ptr %207, align 8, !tbaa !24
  %309 = fadd double %308, %307
  %310 = fptrunc double %309 to float
  store float %310, ptr %198, align 8, !tbaa !76
  br label %311

311:                                              ; preds = %299, %298
  %312 = phi i64 [ 4, %299 ], [ 0, %298 ]
  br i1 %19, label %333, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds double, ptr %37, i64 %312
  %315 = load double, ptr %314, align 8, !tbaa !24
  %316 = sitofp i64 %225 to double
  %317 = or disjoint i64 %312, 1
  %318 = getelementptr inbounds double, ptr %37, i64 %317
  %319 = load double, ptr %318, align 8, !tbaa !24
  %320 = fmul double %319, %222
  %321 = call double @llvm.fmuladd.f64(double %315, double %316, double %320)
  %322 = or disjoint i64 %312, 2
  %323 = getelementptr inbounds double, ptr %37, i64 %322
  %324 = load double, ptr %323, align 8, !tbaa !24
  %325 = fmul double %324, %316
  %326 = call double @llvm.fmuladd.f64(double %325, double %222, double %321)
  %327 = or disjoint i64 %312, 3
  %328 = getelementptr inbounds double, ptr %37, i64 %327
  %329 = load double, ptr %328, align 8, !tbaa !24
  %330 = fadd double %329, %326
  %331 = fptrunc double %330 to float
  store float %331, ptr %199, align 4, !tbaa !77
  %332 = add nuw nsw i64 %312, 4
  br label %333

333:                                              ; preds = %313, %311
  %334 = phi i64 [ %332, %313 ], [ %312, %311 ]
  br i1 %23, label %352, label %335

335:                                              ; preds = %333
  %336 = getelementptr inbounds double, ptr %37, i64 %334
  %337 = load double, ptr %336, align 8, !tbaa !24
  %338 = sitofp i64 %225 to double
  %339 = getelementptr double, ptr %336, i64 1
  %340 = load double, ptr %339, align 8, !tbaa !24
  %341 = fmul double %340, %222
  %342 = call double @llvm.fmuladd.f64(double %337, double %338, double %341)
  %343 = getelementptr double, ptr %336, i64 2
  %344 = load double, ptr %343, align 8, !tbaa !24
  %345 = fmul double %344, %338
  %346 = call double @llvm.fmuladd.f64(double %345, double %222, double %342)
  %347 = getelementptr double, ptr %336, i64 3
  %348 = load double, ptr %347, align 8, !tbaa !24
  %349 = fadd double %348, %346
  %350 = fptrunc double %349 to float
  store float %350, ptr %200, align 8, !tbaa !78
  %351 = add nuw nsw i64 %334, 4
  br label %352

352:                                              ; preds = %335, %333
  %353 = phi i64 [ %351, %335 ], [ %334, %333 ]
  br i1 %27, label %371, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds double, ptr %37, i64 %353
  %356 = load double, ptr %355, align 8, !tbaa !24
  %357 = sitofp i64 %225 to double
  %358 = getelementptr double, ptr %355, i64 1
  %359 = load double, ptr %358, align 8, !tbaa !24
  %360 = fmul double %359, %222
  %361 = call double @llvm.fmuladd.f64(double %356, double %357, double %360)
  %362 = getelementptr double, ptr %355, i64 2
  %363 = load double, ptr %362, align 8, !tbaa !24
  %364 = fmul double %363, %357
  %365 = call double @llvm.fmuladd.f64(double %364, double %222, double %361)
  %366 = getelementptr double, ptr %355, i64 3
  %367 = load double, ptr %366, align 8, !tbaa !24
  %368 = fadd double %367, %365
  %369 = fptrunc double %368 to float
  store float %369, ptr %201, align 8, !tbaa !73
  %370 = add nuw nsw i64 %353, 4
  br label %371

371:                                              ; preds = %354, %352
  %372 = phi i64 [ %370, %354 ], [ %353, %352 ]
  br i1 %31, label %552, label %373

373:                                              ; preds = %371
  %374 = getelementptr inbounds double, ptr %37, i64 %372
  %375 = load double, ptr %374, align 8, !tbaa !24
  %376 = sitofp i64 %225 to double
  %377 = getelementptr double, ptr %374, i64 1
  %378 = load double, ptr %377, align 8, !tbaa !24
  %379 = fmul double %378, %222
  %380 = call double @llvm.fmuladd.f64(double %375, double %376, double %379)
  %381 = getelementptr double, ptr %374, i64 2
  %382 = load double, ptr %381, align 8, !tbaa !24
  %383 = fmul double %382, %376
  %384 = call double @llvm.fmuladd.f64(double %383, double %222, double %380)
  %385 = getelementptr double, ptr %374, i64 3
  %386 = load double, ptr %385, align 8, !tbaa !24
  %387 = fadd double %386, %384
  br label %549

388:                                              ; preds = %223, %223
  br i1 %17, label %390, label %389

389:                                              ; preds = %388
  store float 0.000000e+00, ptr %198, align 8, !tbaa !76
  br label %390

390:                                              ; preds = %389, %388
  br i1 %19, label %392, label %391

391:                                              ; preds = %390
  store float 0.000000e+00, ptr %199, align 4, !tbaa !77
  br label %392

392:                                              ; preds = %391, %390
  br i1 %23, label %394, label %393

393:                                              ; preds = %392
  store float 0.000000e+00, ptr %200, align 8, !tbaa !78
  br label %394

394:                                              ; preds = %393, %392
  br i1 %27, label %396, label %395

395:                                              ; preds = %394
  store float 0.000000e+00, ptr %201, align 8, !tbaa !73
  br label %396

396:                                              ; preds = %395, %394
  br i1 %31, label %398, label %397

397:                                              ; preds = %396
  store float 0.000000e+00, ptr %202, align 4, !tbaa !81
  br label %398

398:                                              ; preds = %397, %396
  br i1 %203, label %469, label %399

399:                                              ; preds = %398
  %400 = sitofp i64 %225 to double
  br label %401

401:                                              ; preds = %399, %465
  %402 = phi double [ 0.000000e+00, %399 ], [ %466, %465 ]
  %403 = phi i64 [ 0, %399 ], [ %467, %465 ]
  %404 = add nsw i64 %403, 2
  %405 = getelementptr inbounds double, ptr %4, i64 %403
  %406 = load double, ptr %405, align 8, !tbaa !24
  %407 = fsub double %400, %406
  %408 = getelementptr double, ptr %405, i64 1
  %409 = load double, ptr %408, align 8, !tbaa !24
  %410 = fsub double %222, %409
  %411 = fmul double %410, %410
  %412 = call double @llvm.fmuladd.f64(double %407, double %407, double %411)
  %413 = load double, ptr %37, align 8, !tbaa !24
  %414 = call double @pow(double noundef %412, double noundef %413) #17
  %415 = fcmp olt double %414, 1.000000e+00
  %416 = fdiv double 1.000000e+00, %414
  %417 = select i1 %415, double 1.000000e+00, double %416
  br i1 %17, label %426, label %418

418:                                              ; preds = %401
  %419 = add nsw i64 %403, 3
  %420 = getelementptr inbounds double, ptr %4, i64 %404
  %421 = load double, ptr %420, align 8, !tbaa !24
  %422 = load float, ptr %198, align 8, !tbaa !76
  %423 = fpext float %422 to double
  %424 = call double @llvm.fmuladd.f64(double %421, double %417, double %423)
  %425 = fptrunc double %424 to float
  store float %425, ptr %198, align 8, !tbaa !76
  br label %426

426:                                              ; preds = %418, %401
  %427 = phi i64 [ %419, %418 ], [ %404, %401 ]
  br i1 %19, label %436, label %428

428:                                              ; preds = %426
  %429 = add nsw i64 %427, 1
  %430 = getelementptr inbounds double, ptr %4, i64 %427
  %431 = load double, ptr %430, align 8, !tbaa !24
  %432 = load float, ptr %199, align 4, !tbaa !77
  %433 = fpext float %432 to double
  %434 = call double @llvm.fmuladd.f64(double %431, double %417, double %433)
  %435 = fptrunc double %434 to float
  store float %435, ptr %199, align 4, !tbaa !77
  br label %436

436:                                              ; preds = %428, %426
  %437 = phi i64 [ %429, %428 ], [ %427, %426 ]
  br i1 %23, label %446, label %438

438:                                              ; preds = %436
  %439 = add nsw i64 %437, 1
  %440 = getelementptr inbounds double, ptr %4, i64 %437
  %441 = load double, ptr %440, align 8, !tbaa !24
  %442 = load float, ptr %200, align 8, !tbaa !78
  %443 = fpext float %442 to double
  %444 = call double @llvm.fmuladd.f64(double %441, double %417, double %443)
  %445 = fptrunc double %444 to float
  store float %445, ptr %200, align 8, !tbaa !78
  br label %446

446:                                              ; preds = %438, %436
  %447 = phi i64 [ %439, %438 ], [ %437, %436 ]
  br i1 %27, label %456, label %448

448:                                              ; preds = %446
  %449 = add nsw i64 %447, 1
  %450 = getelementptr inbounds double, ptr %4, i64 %447
  %451 = load double, ptr %450, align 8, !tbaa !24
  %452 = load float, ptr %201, align 8, !tbaa !73
  %453 = fpext float %452 to double
  %454 = call double @llvm.fmuladd.f64(double %451, double %417, double %453)
  %455 = fptrunc double %454 to float
  store float %455, ptr %201, align 8, !tbaa !73
  br label %456

456:                                              ; preds = %448, %446
  %457 = phi i64 [ %449, %448 ], [ %447, %446 ]
  br i1 %31, label %465, label %458

458:                                              ; preds = %456
  %459 = getelementptr inbounds double, ptr %4, i64 %457
  %460 = load double, ptr %459, align 8, !tbaa !24
  %461 = load float, ptr %202, align 4, !tbaa !81
  %462 = fpext float %461 to double
  %463 = call double @llvm.fmuladd.f64(double %460, double %417, double %462)
  %464 = fptrunc double %463 to float
  store float %464, ptr %202, align 4, !tbaa !81
  br label %465

465:                                              ; preds = %458, %456
  %466 = fadd double %402, %417
  %467 = add i64 %204, %403
  %468 = icmp ult i64 %467, %3
  br i1 %468, label %401, label %469, !llvm.loop !88

469:                                              ; preds = %465, %398
  %470 = phi double [ 0.000000e+00, %398 ], [ %466, %465 ]
  br i1 %17, label %476, label %471

471:                                              ; preds = %469
  %472 = load float, ptr %198, align 8, !tbaa !76
  %473 = fpext float %472 to double
  %474 = fdiv double %473, %470
  %475 = fptrunc double %474 to float
  store float %475, ptr %198, align 8, !tbaa !76
  br label %476

476:                                              ; preds = %471, %469
  br i1 %19, label %482, label %477

477:                                              ; preds = %476
  %478 = load float, ptr %199, align 4, !tbaa !77
  %479 = fpext float %478 to double
  %480 = fdiv double %479, %470
  %481 = fptrunc double %480 to float
  store float %481, ptr %199, align 4, !tbaa !77
  br label %482

482:                                              ; preds = %477, %476
  br i1 %23, label %488, label %483

483:                                              ; preds = %482
  %484 = load float, ptr %200, align 8, !tbaa !78
  %485 = fpext float %484 to double
  %486 = fdiv double %485, %470
  %487 = fptrunc double %486 to float
  store float %487, ptr %200, align 8, !tbaa !78
  br label %488

488:                                              ; preds = %483, %482
  br i1 %27, label %494, label %489

489:                                              ; preds = %488
  %490 = load float, ptr %201, align 8, !tbaa !73
  %491 = fpext float %490 to double
  %492 = fdiv double %491, %470
  %493 = fptrunc double %492 to float
  store float %493, ptr %201, align 8, !tbaa !73
  br label %494

494:                                              ; preds = %489, %488
  br i1 %31, label %552, label %495

495:                                              ; preds = %494
  %496 = load float, ptr %202, align 4, !tbaa !81
  %497 = fpext float %496 to double
  %498 = fdiv double %497, %470
  br label %549

499:                                              ; preds = %228, %545
  %500 = phi double [ 0x7FEFFFFFFFFFFFFF, %228 ], [ %546, %545 ]
  %501 = phi i64 [ 0, %228 ], [ %547, %545 ]
  %502 = getelementptr inbounds double, ptr %4, i64 %501
  %503 = load double, ptr %502, align 8, !tbaa !24
  %504 = fsub double %229, %503
  %505 = getelementptr double, ptr %502, i64 1
  %506 = load double, ptr %505, align 8, !tbaa !24
  %507 = fsub double %222, %506
  %508 = fmul double %507, %507
  %509 = call double @llvm.fmuladd.f64(double %504, double %504, double %508)
  %510 = fcmp olt double %509, %500
  br i1 %510, label %511, label %545

511:                                              ; preds = %499
  %512 = add nsw i64 %501, 2
  br i1 %17, label %518, label %513

513:                                              ; preds = %511
  %514 = add nsw i64 %501, 3
  %515 = getelementptr inbounds double, ptr %4, i64 %512
  %516 = load double, ptr %515, align 8, !tbaa !24
  %517 = fptrunc double %516 to float
  store float %517, ptr %198, align 8, !tbaa !76
  br label %518

518:                                              ; preds = %513, %511
  %519 = phi i64 [ %514, %513 ], [ %512, %511 ]
  br i1 %19, label %525, label %520

520:                                              ; preds = %518
  %521 = add nsw i64 %519, 1
  %522 = getelementptr inbounds double, ptr %4, i64 %519
  %523 = load double, ptr %522, align 8, !tbaa !24
  %524 = fptrunc double %523 to float
  store float %524, ptr %199, align 4, !tbaa !77
  br label %525

525:                                              ; preds = %520, %518
  %526 = phi i64 [ %521, %520 ], [ %519, %518 ]
  br i1 %23, label %532, label %527

527:                                              ; preds = %525
  %528 = add nsw i64 %526, 1
  %529 = getelementptr inbounds double, ptr %4, i64 %526
  %530 = load double, ptr %529, align 8, !tbaa !24
  %531 = fptrunc double %530 to float
  store float %531, ptr %200, align 8, !tbaa !78
  br label %532

532:                                              ; preds = %527, %525
  %533 = phi i64 [ %528, %527 ], [ %526, %525 ]
  br i1 %27, label %539, label %534

534:                                              ; preds = %532
  %535 = add nsw i64 %533, 1
  %536 = getelementptr inbounds double, ptr %4, i64 %533
  %537 = load double, ptr %536, align 8, !tbaa !24
  %538 = fptrunc double %537 to float
  store float %538, ptr %201, align 8, !tbaa !73
  br label %539

539:                                              ; preds = %534, %532
  %540 = phi i64 [ %535, %534 ], [ %533, %532 ]
  br i1 %31, label %545, label %541

541:                                              ; preds = %539
  %542 = getelementptr inbounds double, ptr %4, i64 %540
  %543 = load double, ptr %542, align 8, !tbaa !24
  %544 = fptrunc double %543 to float
  store float %544, ptr %202, align 4, !tbaa !81
  br label %545

545:                                              ; preds = %539, %541, %499
  %546 = phi double [ %500, %499 ], [ %509, %541 ], [ %509, %539 ]
  %547 = add i64 %204, %501
  %548 = icmp ult i64 %547, %3
  br i1 %548, label %499, label %552, !llvm.loop !89

549:                                              ; preds = %287, %373, %495
  %550 = phi double [ %498, %495 ], [ %387, %373 ], [ %297, %287 ]
  %551 = fptrunc double %550 to float
  store float %551, ptr %202, align 4, !tbaa !81
  br label %552

552:                                              ; preds = %545, %549, %227, %494, %371, %285
  br i1 %17, label %556, label %553

553:                                              ; preds = %552
  %554 = load float, ptr %198, align 8, !tbaa !76
  %555 = fmul float %554, 6.553500e+04
  store float %555, ptr %198, align 8, !tbaa !76
  br label %556

556:                                              ; preds = %553, %552
  br i1 %19, label %560, label %557

557:                                              ; preds = %556
  %558 = load float, ptr %199, align 4, !tbaa !77
  %559 = fmul float %558, 6.553500e+04
  store float %559, ptr %199, align 4, !tbaa !77
  br label %560

560:                                              ; preds = %557, %556
  br i1 %23, label %564, label %561

561:                                              ; preds = %560
  %562 = load float, ptr %200, align 8, !tbaa !78
  %563 = fmul float %562, 6.553500e+04
  store float %563, ptr %200, align 8, !tbaa !78
  br label %564

564:                                              ; preds = %561, %560
  br i1 %27, label %568, label %565

565:                                              ; preds = %564
  %566 = load float, ptr %201, align 8, !tbaa !73
  %567 = fmul float %566, 6.553500e+04
  store float %567, ptr %201, align 8, !tbaa !73
  br label %568

568:                                              ; preds = %565, %564
  br i1 %31, label %572, label %569

569:                                              ; preds = %568
  %570 = load float, ptr %202, align 4, !tbaa !81
  %571 = fmul float %570, 6.553500e+04
  store float %571, ptr %202, align 4, !tbaa !81
  br label %572

572:                                              ; preds = %569, %568
  call fastcc void @SetPixelPacket(ptr noundef nonnull %180, ptr noundef nonnull %8, ptr noundef nonnull %224, ptr noundef %226) #18
  %573 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 1
  %574 = getelementptr inbounds i16, ptr %226, i64 1
  %575 = add nuw nsw i64 %225, 1
  %576 = load i64, ptr %197, align 8, !tbaa !26
  %577 = icmp slt i64 %575, %576
  br i1 %577, label %223, label %578, !llvm.loop !90

578:                                              ; preds = %572, %217
  %579 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %189, ptr noundef %5) #20
  %580 = icmp eq i32 %579, 0
  %581 = select i1 %580, i32 0, i32 %213
  %582 = load ptr, ptr %208, align 8, !tbaa !57
  %583 = icmp eq ptr %582, null
  br i1 %583, label %590, label %584

584:                                              ; preds = %578
  %585 = add nsw i64 %212, 1
  %586 = load i64, ptr %209, align 8, !tbaa !28
  %587 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.117, i64 noundef %212, i64 noundef %586) #18
  %588 = icmp eq i32 %587, 0
  %589 = select i1 %588, i32 0, i32 %581
  br label %590

590:                                              ; preds = %578, %584, %210
  %591 = phi i32 [ 0, %210 ], [ %589, %584 ], [ %581, %578 ]
  %592 = phi i64 [ %212, %210 ], [ %585, %584 ], [ %212, %578 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #16
  %593 = add nuw nsw i64 %211, 1
  %594 = load i64, ptr %190, align 8, !tbaa !28
  %595 = icmp slt i64 %593, %594
  br i1 %595, label %210, label %596, !llvm.loop !91

596:                                              ; preds = %590
  %597 = icmp eq i32 %591, 0
  %598 = call ptr @DestroyCacheView(ptr noundef %189) #17
  br i1 %597, label %599, label %601

599:                                              ; preds = %596
  %600 = call ptr @DestroyImage(ptr noundef nonnull %180) #17
  br label %601

601:                                              ; preds = %193, %599, %596
  %602 = phi ptr [ %600, %599 ], [ %180, %596 ], [ %180, %193 ]
  %603 = call ptr @RelinquishMagickMemory(ptr noundef %37) #17
  br label %604

604:                                              ; preds = %45, %179, %601, %185
  %605 = phi ptr [ null, %185 ], [ %602, %601 ], [ null, %45 ], [ null, %179 ]
  ret ptr %605
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

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
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #12

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
  %3 = load double, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds double, ptr %0, i64 4
  %9 = load double, ptr %8, align 8, !tbaa !24
  store double %3, ptr %6, align 8, !tbaa !24
  store double %5, ptr %2, align 8, !tbaa !24
  store double %7, ptr %8, align 8, !tbaa !24
  store double %9, ptr %4, align 8, !tbaa !24
  ret void
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

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #9

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
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #18
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #18
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !52
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !52
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !78
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
  store <4 x float> %42, ptr %20, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !75
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !73
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !73
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize allocsize(0,1) }
attributes #20 = { hot nounwind optsize }
attributes #21 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!6, !10, i64 40}
!27 = !{!17, !10, i64 0}
!28 = !{!6, !10, i64 48}
!29 = !{!17, !10, i64 8}
!30 = !{!6, !10, i64 296}
!31 = !{!6, !10, i64 304}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!17, !10, i64 16}
!35 = !{!17, !10, i64 24}
!36 = !{!8, !8, i64 0}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = !{i32 0, i32 2}
!47 = !{!6, !7, i64 4}
!48 = !{!6, !13, i64 86}
!49 = !{!6, !7, i64 32}
!50 = !{!10, !10, i64 0}
!51 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 16, i64 8, !24, i64 24, i64 8, !50, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 4, !52, i64 48, i64 4, !52}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !8, i64 0}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = !{!6, !11, i64 568}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = !{!13, !13, i64 0}
!71 = !{!12, !13, i64 0}
!72 = distinct !{!72, !33}
!73 = !{!74, !53, i64 48}
!74 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48}
!75 = !{!74, !7, i64 4}
!76 = !{!74, !53, i64 32}
!77 = !{!74, !53, i64 36}
!78 = !{!74, !53, i64 40}
!79 = !{!12, !13, i64 4}
!80 = !{!12, !13, i64 2}
!81 = !{!74, !53, i64 44}
!82 = !{!12, !13, i64 6}
!83 = !{!6, !7, i64 0}
!84 = !{!6, !11, i64 576}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
