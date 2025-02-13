; ModuleID = 'magick/resize.c'
source_filename = "magick/resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { ptr, double, double, double, double, i32 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ResizeFilter = type { ptr, ptr, float, float, float, float, [7 x float], i32, i32, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ContributionInfo = type { float, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@AcquireResizeFilter.mapping = internal unnamed_addr constant [31 x %struct.anon] [%struct.anon { i32 0, i32 2 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 4, i32 2 }, %struct.anon { i32 15, i32 5 }, %struct.anon { i32 15, i32 6 }, %struct.anon { i32 15, i32 7 }, %struct.anon { i32 8, i32 2 }, %struct.anon { i32 9, i32 2 }, %struct.anon { i32 10, i32 2 }, %struct.anon { i32 11, i32 2 }, %struct.anon { i32 12, i32 2 }, %struct.anon { i32 13, i32 2 }, %struct.anon { i32 14, i32 2 }, %struct.anon { i32 15, i32 2 }, %struct.anon { i32 15, i32 16 }, %struct.anon { i32 22, i32 17 }, %struct.anon { i32 15, i32 10 }, %struct.anon { i32 15, i32 19 }, %struct.anon { i32 15, i32 3 }, %struct.anon { i32 21, i32 2 }, %struct.anon { i32 22, i32 22 }, %struct.anon { i32 23, i32 23 }, %struct.anon { i32 24, i32 24 }, %struct.anon { i32 25, i32 25 }, %struct.anon { i32 26, i32 2 }, %struct.anon { i32 27, i32 2 }, %struct.anon { i32 22, i32 28 }, %struct.anon { i32 29, i32 2 }, %struct.anon { i32 30, i32 22 }], align 16
@AcquireResizeFilter.filters = internal unnamed_addr constant [31 x %struct.anon.0] [%struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @CubicBC, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Hanning, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 3 }, %struct.anon.0 { ptr @Hamming, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 4 }, %struct.anon.0 { ptr @Blackman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 5 }, %struct.anon.0 { ptr @Gaussian, double 2.000000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 6 }, %struct.anon.0 { ptr @Quadratic, double 1.500000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 7 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 5.000000e-01, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2492492492492, double 0x3FD5555555555555, double 0x3FD5555555555555, i32 2 }, %struct.anon.0 { ptr @Jinc, double 3.000000e+00, double 0x3FF383C4936E7CFB, double 0.000000e+00, double 0.000000e+00, i32 8 }, %struct.anon.0 { ptr @Sinc, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 9 }, %struct.anon.0 { ptr @SincFast, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @Kaiser, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 11 }, %struct.anon.0 { ptr @Welsh, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 12 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Bohman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 13 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @Lagrange, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 14 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2B27E986FB7A1, double 0x3FD834AFDABD7B9D, double 0x3FD3E5A812A14232, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF1B1736377D6E3, double 0x3FD0C4D88475319A, double 0x3FD79D93BDC56733, i32 2 }, %struct.anon.0 { ptr @Cosine, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 15 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }], align 16
@AcquireResizeFilter.jinc_zeros = internal unnamed_addr constant [16 x double] [double 0x3FF383C4936E7CFB, double 0x4001DD7392B48691, double 0x4009E811F2D4FEC0, double 0x4010F6D92EF1230B, double 0x4014F897398D2A3D, double 0x4018F9C69B83031A, double 0x401CFAA254BE1A14, double 0x40207DA466F40EB9, double 0x40227DE5A5605E00, double 0x40247E1A296C3FD7, double 0x40267E4557CCE5B2, double 0x40287E6979A00AB2, double 0x402A7E8827691760, double 0x402C7EA28704F9D1, double 0x402E7EB9713F7348, double 0x40303F66C4C44E83], align 16
@.str = private unnamed_addr constant [16 x i8] c"magick/resize.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"filter:filter\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"filter:window\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"filter:sigma\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"filter:alpha\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"filter:kaiser-beta\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"filter:kaiser-alpha\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"filter:lobes\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"filter:blur\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"filter:support\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"filter:win-support\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filter:b\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"filter:c\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"filter:verbose\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"# Resampling Filter (for graphing)\0A#\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"# filter = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"# window = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"# support = %.*g\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"# window-support = %.*g\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"# scale-blur = %.*g\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"# gaussian-sigma = %.*g\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"# kaiser-beta = %.*g\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"# practical-support = %.*g\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"# B,C = %.*g,%.*g\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%5.2lf\09%.*g\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Resize/Image\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"`%s' (LQR)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Magnify/Image\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"NegativeOrZeroImageSize\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"sample:offset\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Sample/Image\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Scale/Image\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Thumb::URI\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Thumb::MTime\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Thumb::Size\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"image/%s\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Thumb::Mimetype\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Thumb::Image::Width\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Thumb::Image::Height\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Thumb::Document::Pages\00", align 1
@J1.Pone = internal unnamed_addr constant [9 x double] [double 0x443F81C2E523683D, double 0xC40CEF86BDED9999, double 0x43C012D008C7BCEA, double 0xC35FE006C30BA161, double 0x42F088DAAD7AF759, double 0xC273407F5DC0C206, double 0x41E96E3A40C9A788, double 0xC151E9B261F60E0A, double 0x40A51A3ED3F64AC9], align 16
@J1.Qone = internal unnamed_addr constant [9 x double] [double 0x444F81C2E523683D, double 0x43E491E139AE7522, double 0x436B0DDF388A59F6, double 0x42E7AA6E7871A918, double 0x425E85BCB84A30F5, double 0x41CE372A2D2DE908, double 0x4136EA619851D3CA, double 0x40991BB9EE66133E, double 1.000000e+00], align 16
@P1.Pone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EEA4DB0C43C658, double 0x40DE9E7DA39BF79D, double 0x40B3797BB3646E7F, double 0x406A64E4B4E35797, double 0x3FF41D6010A865E8], align 16
@P1.Qone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EE9CCB1A4A81E9, double 0x40DE821A02293EF4, double 0x40B34265806168F6, double 0x4069627B08F1C66B, double 1.000000e+00], align 16
@Q1.Pone = internal unnamed_addr constant [6 x double] [double 0x4075F2CD95877EA5, double 0x408688503DDC68E8, double 0x407A9FCBFC4E8E2C, double 0x4054CC274093A456, double 0x401245CEC89DC00C, double 0x3FA2169069C535FB], align 16
@Q1.Qone = internal unnamed_addr constant [6 x double] [double 0x40BD43BCC75F5387, double 0x40CE1B16B30D93F2, double 0x40C1E01DA86532F5, double 0x409C4CBF2E6DF9FA, double 0x4059F4668A3ED3A5, double 1.000000e+00], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireResizeFilter(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nocapture readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 902, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  call void @GetExceptionInfo(ptr noundef nonnull %6) #24
  %17 = tail call ptr @__errno_location() #27
  %18 = load i32, ptr %17, align 4, !tbaa !24
  %19 = call ptr @GetExceptionMessage(i32 noundef %18) #24
  %20 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 909, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %19) #24
  %21 = call ptr @DestroyString(ptr noundef %19) #24
  call void @CatchException(ptr noundef nonnull %6) #24
  %22 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #24
  call void @MagickCoreTerminus() #24
  call void @_exit(i32 noundef 1) #28
  unreachable

23:                                               ; preds = %13
  %24 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 80) #24
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %25
  %27 = load i32, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %25, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !27
  %30 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 5
  store float %2, ptr %30, align 4, !tbaa !28
  %31 = icmp ne i32 %3, 0
  %32 = icmp eq i32 %27, 15
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne i32 %1, 15
  %35 = and i1 %34, %33
  %36 = select i1 %35, i32 13, i32 %27
  %37 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %23
  %40 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #24
  %41 = add i64 %40, -1
  %42 = icmp ult i64 %41, 30
  %43 = trunc i64 %40 to i32
  %44 = select i1 %42, i32 2, i32 %29
  %45 = select i1 %42, i32 %43, i32 %36
  %46 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %39
  %49 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %46) #24
  %50 = add i64 %49, -1
  %51 = icmp ult i64 %50, 30
  %52 = trunc i64 %49 to i32
  %53 = select i1 %51, i32 %52, i32 %44
  br label %65

54:                                               ; preds = %23
  %55 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %55) #24
  %59 = add i64 %58, -1
  %60 = icmp ult i64 %59, 30
  %61 = select i1 %31, i32 13, i32 15
  %62 = trunc i64 %58 to i32
  %63 = select i1 %60, i32 %62, i32 %29
  %64 = select i1 %60, i32 %61, i32 %36
  br label %65

65:                                               ; preds = %48, %39, %54, %57
  %66 = phi i32 [ %63, %57 ], [ %29, %54 ], [ %44, %39 ], [ %53, %48 ]
  %67 = phi i32 [ %64, %57 ], [ %36, %54 ], [ %45, %39 ], [ %45, %48 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 16, !tbaa !31
  store ptr %70, ptr %14, align 8, !tbaa !33
  %71 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !34
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 2
  store float %73, ptr %74, align 8, !tbaa !35
  %75 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !36
  %77 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 7
  store i32 %76, ptr %77, align 4, !tbaa !37
  %78 = zext i32 %66 to i64
  %79 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 16, !tbaa !31
  %81 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !38
  %82 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !36
  %84 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 8
  store i32 %83, ptr %84, align 8, !tbaa !39
  %85 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78, i32 2
  %86 = load double, ptr %85, align 16, !tbaa !40
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 4
  store float %87, ptr %88, align 8, !tbaa !41
  %89 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 9
  store i64 2880220587, ptr %89, align 8, !tbaa !42
  br i1 %31, label %90, label %93

90:                                               ; preds = %65
  switch i32 %67, label %102 [
    i32 2, label %91
    i32 22, label %92
    i32 23, label %92
    i32 24, label %92
    i32 25, label %92
    i32 30, label %92
  ]

91:                                               ; preds = %90
  store float 0x3FE6A09E60000000, ptr %74, align 8, !tbaa !35
  br label %102

92:                                               ; preds = %90, %90, %90, %90, %90
  store ptr @Jinc, ptr %14, align 8, !tbaa !33
  store ptr @Jinc, ptr %81, align 8, !tbaa !38
  store float 0x3FF383C4A0000000, ptr %88, align 8, !tbaa !41
  br label %93

93:                                               ; preds = %92, %65
  %94 = phi ptr [ @Jinc, %92 ], [ %80, %65 ]
  %95 = phi ptr [ @Jinc, %92 ], [ %70, %65 ]
  switch i32 %67, label %102 [
    i32 23, label %96
    i32 25, label %99
  ]

96:                                               ; preds = %93
  %97 = load float, ptr %30, align 4, !tbaa !28
  %98 = fmul float %97, 0x3FEF6667A0000000
  store float %98, ptr %30, align 4, !tbaa !28
  br label %102

99:                                               ; preds = %93
  %100 = load float, ptr %30, align 4, !tbaa !28
  %101 = fmul float %100, 0x3FEE8F5480000000
  store float %101, ptr %30, align 4, !tbaa !28
  br label %102

102:                                              ; preds = %91, %90, %93, %99, %96
  %103 = phi ptr [ %80, %91 ], [ %80, %90 ], [ %94, %93 ], [ %94, %99 ], [ %94, %96 ]
  %104 = phi ptr [ %70, %91 ], [ %70, %90 ], [ %95, %93 ], [ %95, %99 ], [ %95, %96 ]
  %105 = icmp eq ptr %104, @Gaussian
  %106 = icmp eq ptr %103, @Gaussian
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #24
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = tail call fastcc double @StringToDouble(ptr noundef nonnull %109) #29
  %113 = fptrunc double %112 to float
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi float [ %113, %111 ], [ 5.000000e-01, %108 ]
  %116 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  store float %115, ptr %116, align 8, !tbaa !43
  %117 = fpext float %115 to double
  %118 = fmul double %117, 2.000000e+00
  %119 = fmul double %118, %117
  %120 = tail call fastcc double @PerceptibleReciprocal(double noundef %119) #29
  %121 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 1
  %122 = fmul double %117, 0x401921FB54442D18
  %123 = fmul double %122, %117
  %124 = tail call fastcc double @PerceptibleReciprocal(double noundef %123) #29
  %125 = insertelement <2 x double> poison, double %120, i64 0
  %126 = insertelement <2 x double> %125, double %124, i64 1
  %127 = fptrunc <2 x double> %126 to <2 x float>
  store <2 x float> %127, ptr %121, align 4, !tbaa !43
  %128 = fcmp ogt float %115, 5.000000e-01
  br i1 %128, label %129, label %134

129:                                              ; preds = %114
  %130 = load float, ptr %74, align 8, !tbaa !35
  %131 = fpext float %130 to double
  %132 = fmul double %118, %131
  %133 = fptrunc double %132 to float
  store float %133, ptr %74, align 8, !tbaa !35
  br label %134

134:                                              ; preds = %129, %114
  %135 = load ptr, ptr %14, align 8, !tbaa !33
  br label %136

136:                                              ; preds = %102, %134
  %137 = phi ptr [ %135, %134 ], [ %104, %102 ]
  %138 = icmp eq ptr %137, @Kaiser
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %81, align 8, !tbaa !38
  %141 = icmp eq ptr %140, @Kaiser
  br i1 %141, label %142, label %171

142:                                              ; preds = %139, %136
  %143 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #24
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = tail call fastcc double @StringToDouble(ptr noundef nonnull %143) #29
  %147 = fptrunc double %146 to float
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi float [ %147, %145 ], [ 6.500000e+00, %142 ]
  %150 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #24
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = tail call fastcc double @StringToDouble(ptr noundef nonnull %150) #29
  %154 = fptrunc double %153 to float
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi float [ %154, %152 ], [ %149, %148 ]
  %157 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #24
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = tail call fastcc double @StringToDouble(ptr noundef nonnull %157) #29
  %161 = fmul double %160, 0x400921FB54442D18
  %162 = fptrunc double %161 to float
  br label %163

163:                                              ; preds = %159, %155
  %164 = phi float [ %162, %159 ], [ %156, %155 ]
  %165 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  store float %164, ptr %165, align 8, !tbaa !43
  %166 = tail call fastcc float @I0(float noundef %164) #29
  %167 = fpext float %166 to double
  %168 = tail call fastcc double @PerceptibleReciprocal(double noundef %167) #29
  %169 = fptrunc double %168 to float
  %170 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 1
  store float %169, ptr %170, align 4, !tbaa !43
  br label %171

171:                                              ; preds = %163, %139
  %172 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #24
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = tail call fastcc i64 @StringToLong(ptr noundef nonnull %172) #29
  %176 = tail call i64 @llvm.smax.i64(i64 %175, i64 1)
  %177 = sitofp i64 %176 to float
  store float %177, ptr %74, align 8, !tbaa !35
  br label %178

178:                                              ; preds = %174, %171
  %179 = load ptr, ptr %14, align 8, !tbaa !33
  %180 = icmp eq ptr %179, @Jinc
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = load float, ptr %74, align 8, !tbaa !35
  %183 = fcmp ogt float %182, 1.600000e+01
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = fptosi float %182 to i64
  %186 = add nsw i64 %185, -1
  %187 = getelementptr inbounds [16 x double], ptr @AcquireResizeFilter.jinc_zeros, i64 0, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !44
  %189 = fptrunc double %188 to float
  br label %190

190:                                              ; preds = %181, %184
  %191 = phi float [ %189, %184 ], [ 0x40303F66C0000000, %181 ]
  store float %191, ptr %74, align 8, !tbaa !35
  %192 = icmp eq i32 %67, 30
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = fpext float %191 to double
  %195 = tail call double @llvm.floor.f64(double %194)
  %196 = fdiv double %195, %194
  %197 = load float, ptr %30, align 4, !tbaa !28
  %198 = fpext float %197 to double
  %199 = fmul double %196, %198
  %200 = fptrunc double %199 to float
  store float %200, ptr %30, align 4, !tbaa !28
  br label %201

201:                                              ; preds = %190, %193, %178
  %202 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #24
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load float, ptr %30, align 4, !tbaa !28
  br label %212

206:                                              ; preds = %201
  %207 = tail call fastcc double @StringToDouble(ptr noundef nonnull %202) #29
  %208 = load float, ptr %30, align 4, !tbaa !28
  %209 = fpext float %208 to double
  %210 = fmul double %207, %209
  %211 = fptrunc double %210 to float
  store float %211, ptr %30, align 4, !tbaa !28
  br label %212

212:                                              ; preds = %204, %206
  %213 = phi float [ %205, %204 ], [ %211, %206 ]
  %214 = fpext float %213 to double
  %215 = fcmp olt double %214, 1.000000e-15
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store float 0x3CD203AFA0000000, ptr %30, align 4, !tbaa !28
  br label %217

217:                                              ; preds = %216, %212
  %218 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #24
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load float, ptr %74, align 8, !tbaa !35
  br label %226

222:                                              ; preds = %217
  %223 = tail call fastcc double @StringToDouble(ptr noundef nonnull %218) #29
  %224 = fptrunc double %223 to float
  %225 = tail call float @llvm.fabs.f32(float %224)
  store float %225, ptr %74, align 8, !tbaa !35
  br label %226

226:                                              ; preds = %220, %222
  %227 = phi float [ %221, %220 ], [ %225, %222 ]
  %228 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 3
  store float %227, ptr %228, align 4, !tbaa !45
  %229 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #24
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load float, ptr %228, align 4, !tbaa !45
  br label %237

233:                                              ; preds = %226
  %234 = tail call fastcc double @StringToDouble(ptr noundef nonnull %229) #29
  %235 = fptrunc double %234 to float
  %236 = tail call float @llvm.fabs.f32(float %235)
  store float %236, ptr %228, align 4, !tbaa !45
  br label %237

237:                                              ; preds = %231, %233
  %238 = phi float [ %232, %231 ], [ %236, %233 ]
  %239 = load float, ptr %88, align 8, !tbaa !41
  %240 = fdiv float %239, %238
  store float %240, ptr %88, align 8, !tbaa !41
  %241 = load ptr, ptr %14, align 8, !tbaa !33
  %242 = icmp eq ptr %241, @CubicBC
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %81, align 8, !tbaa !38
  %245 = icmp eq ptr %244, @CubicBC
  br i1 %245, label %246, label %310

246:                                              ; preds = %243, %237
  %247 = icmp eq ptr %80, @CubicBC
  %248 = select i1 %247, i64 %78, i64 %68
  %249 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %248, i32 3
  %250 = load double, ptr %249, align 8, !tbaa !46
  %251 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %248, i32 4
  %252 = load double, ptr %251, align 16, !tbaa !47
  %253 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #24
  %254 = icmp eq ptr %253, null
  br i1 %254, label %267, label %255

255:                                              ; preds = %246
  %256 = tail call fastcc double @StringToDouble(ptr noundef nonnull %253) #29
  %257 = fptrunc double %256 to float
  %258 = fpext float %257 to double
  %259 = fsub double 1.000000e+00, %258
  %260 = fmul double %259, 5.000000e-01
  %261 = fptrunc double %260 to float
  %262 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #24
  %263 = icmp eq ptr %262, null
  br i1 %263, label %278, label %264

264:                                              ; preds = %255
  %265 = tail call fastcc double @StringToDouble(ptr noundef nonnull %262) #29
  %266 = fptrunc double %265 to float
  br label %278

267:                                              ; preds = %246
  %268 = fptrunc double %250 to float
  %269 = fptrunc double %252 to float
  %270 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #24
  %271 = icmp eq ptr %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %267
  %273 = tail call fastcc double @StringToDouble(ptr noundef nonnull %270) #29
  %274 = fptrunc double %273 to float
  %275 = fpext float %274 to double
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -2.000000e+00, double 1.000000e+00)
  %277 = fptrunc double %276 to float
  br label %278

278:                                              ; preds = %267, %272, %255, %264
  %279 = phi float [ %266, %264 ], [ %261, %255 ], [ %274, %272 ], [ %269, %267 ]
  %280 = phi float [ %257, %264 ], [ %257, %255 ], [ %277, %272 ], [ %268, %267 ]
  %281 = fadd float %280, %280
  %282 = fpext float %281 to double
  %283 = fpext float %280 to double
  %284 = tail call double @llvm.fmuladd.f64(double %283, double 0xBFD5555555555555, double 1.000000e+00)
  %285 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  %286 = fadd double %282, -3.000000e+00
  %287 = fpext float %279 to double
  %288 = fadd double %286, %287
  %289 = tail call double @llvm.fmuladd.f64(double %283, double -1.500000e+00, double 2.000000e+00)
  %290 = fsub double %289, %287
  %291 = fmul double %287, 4.000000e+00
  %292 = tail call double @llvm.fmuladd.f64(double %283, double 0x3FF5555555555555, double %291)
  %293 = insertelement <4 x double> poison, double %284, i64 0
  %294 = insertelement <4 x double> %293, double %288, i64 1
  %295 = insertelement <4 x double> %294, double %290, i64 2
  %296 = insertelement <4 x double> %295, double %292, i64 3
  %297 = fptrunc <4 x double> %296 to <4 x float>
  store <4 x float> %297, ptr %285, align 8, !tbaa !43
  %298 = fneg double %282
  %299 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 4
  %300 = insertelement <2 x double> poison, double %287, i64 0
  %301 = shufflevector <2 x double> %300, <2 x double> poison, <2 x i32> zeroinitializer
  %302 = insertelement <2 x double> poison, double %298, i64 0
  %303 = insertelement <2 x double> %302, double %283, i64 1
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %301, <2 x double> <double -8.000000e+00, double 5.000000e+00>, <2 x double> %303)
  %305 = fptrunc <2 x double> %304 to <2 x float>
  store <2 x float> %305, ptr %299, align 8, !tbaa !43
  %306 = fneg double %287
  %307 = tail call double @llvm.fmuladd.f64(double %283, double 0xBFC5555555555555, double %306)
  %308 = fptrunc double %307 to float
  %309 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 6
  store float %308, ptr %309, align 8, !tbaa !43
  br label %310

310:                                              ; preds = %278, %243
  %311 = phi double [ %287, %278 ], [ 0.000000e+00, %243 ]
  %312 = phi double [ %283, %278 ], [ 0.000000e+00, %243 ]
  %313 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #24
  %314 = tail call i32 @IsMagickTrue(ptr noundef %313) #24
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %417, label %316

316:                                              ; preds = %310
  %317 = load ptr, ptr %14, align 8, !tbaa !33
  %318 = icmp eq ptr %317, @Box
  %319 = select i1 %318, i32 2, i32 %67
  %320 = icmp eq ptr %317, @Sinc
  %321 = select i1 %320, i32 14, i32 %319
  %322 = icmp eq ptr %317, @SincFast
  %323 = select i1 %322, i32 15, i32 %321
  %324 = icmp eq ptr %317, @Jinc
  %325 = select i1 %324, i32 13, i32 %323
  %326 = icmp eq ptr %317, @CubicBC
  %327 = select i1 %326, i32 10, i32 %325
  %328 = load ptr, ptr %81, align 8, !tbaa !38
  %329 = icmp eq ptr %328, @Box
  %330 = select i1 %329, i32 2, i32 %66
  %331 = icmp eq ptr %328, @Sinc
  %332 = select i1 %331, i32 14, i32 %330
  %333 = icmp eq ptr %328, @SincFast
  %334 = select i1 %333, i32 15, i32 %332
  %335 = icmp eq ptr %328, @Jinc
  %336 = select i1 %335, i32 13, i32 %334
  %337 = icmp eq ptr %328, @CubicBC
  %338 = select i1 %337, i32 10, i32 %336
  %339 = tail call float @GetResizeFilterSupport(ptr noundef nonnull %14) #29
  %340 = fpext float %339 to double
  %341 = load ptr, ptr @stdout, align 8, !tbaa !48
  %342 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %341, ptr noundef nonnull @.str.18) #24
  %343 = load ptr, ptr @stdout, align 8, !tbaa !48
  %344 = zext i32 %327 to i64
  %345 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %344) #24
  %346 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %343, ptr noundef nonnull @.str.19, ptr noundef %345) #24
  %347 = load ptr, ptr @stdout, align 8, !tbaa !48
  %348 = zext i32 %338 to i64
  %349 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %348) #24
  %350 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %347, ptr noundef nonnull @.str.20, ptr noundef %349) #24
  %351 = load ptr, ptr @stdout, align 8, !tbaa !48
  %352 = tail call i32 @GetMagickPrecision() #24
  %353 = load float, ptr %74, align 8, !tbaa !35
  %354 = fpext float %353 to double
  %355 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %351, ptr noundef nonnull @.str.21, i32 noundef %352, double noundef %354) #24
  %356 = load ptr, ptr @stdout, align 8, !tbaa !48
  %357 = tail call i32 @GetMagickPrecision() #24
  %358 = load float, ptr %228, align 4, !tbaa !45
  %359 = fpext float %358 to double
  %360 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %356, ptr noundef nonnull @.str.22, i32 noundef %357, double noundef %359) #24
  %361 = load ptr, ptr @stdout, align 8, !tbaa !48
  %362 = tail call i32 @GetMagickPrecision() #24
  %363 = load float, ptr %30, align 4, !tbaa !28
  %364 = fpext float %363 to double
  %365 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %361, ptr noundef nonnull @.str.23, i32 noundef %362, double noundef %364) #24
  %366 = icmp eq i32 %327, 8
  %367 = icmp eq i32 %338, 8
  %368 = or i1 %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %316
  %370 = load ptr, ptr @stdout, align 8, !tbaa !48
  %371 = tail call i32 @GetMagickPrecision() #24
  %372 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  %373 = load float, ptr %372, align 8, !tbaa !43
  %374 = fpext float %373 to double
  %375 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %370, ptr noundef nonnull @.str.24, i32 noundef %371, double noundef %374) #24
  br label %376

376:                                              ; preds = %316, %369
  %377 = icmp eq i32 %327, 16
  %378 = icmp eq i32 %338, 16
  %379 = or i1 %377, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %376
  %381 = load ptr, ptr @stdout, align 8, !tbaa !48
  %382 = tail call i32 @GetMagickPrecision() #24
  %383 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  %384 = load float, ptr %383, align 8, !tbaa !43
  %385 = fpext float %384 to double
  %386 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %381, ptr noundef nonnull @.str.25, i32 noundef %382, double noundef %385) #24
  br label %387

387:                                              ; preds = %376, %380
  %388 = load ptr, ptr @stdout, align 8, !tbaa !48
  %389 = tail call i32 @GetMagickPrecision() #24
  %390 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %388, ptr noundef nonnull @.str.26, i32 noundef %389, double noundef %340) #24
  %391 = icmp eq i32 %327, 10
  %392 = icmp eq i32 %338, 10
  %393 = or i1 %391, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %387
  %395 = load ptr, ptr @stdout, align 8, !tbaa !48
  %396 = tail call i32 @GetMagickPrecision() #24
  %397 = tail call i32 @GetMagickPrecision() #24
  %398 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %395, ptr noundef nonnull @.str.27, i32 noundef %396, double noundef %312, i32 noundef %397, double noundef %311) #24
  br label %399

399:                                              ; preds = %387, %394
  %400 = load ptr, ptr @stdout, align 8, !tbaa !48
  %401 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %400, ptr noundef nonnull @.str.28) #24
  %402 = fcmp ult float %339, 0.000000e+00
  br i1 %402, label %413, label %403

403:                                              ; preds = %399, %403
  %404 = phi double [ %411, %403 ], [ 0.000000e+00, %399 ]
  %405 = load ptr, ptr @stdout, align 8, !tbaa !48
  %406 = tail call i32 @GetMagickPrecision() #24
  %407 = fptrunc double %404 to float
  %408 = tail call float @GetResizeFilterWeight(ptr noundef nonnull %14, float noundef %407) #29
  %409 = fpext float %408 to double
  %410 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %405, ptr noundef nonnull @.str.29, double noundef %404, i32 noundef %406, double noundef %409) #24
  %411 = fadd double %404, 0x3F847AE140000000
  %412 = fcmp ugt double %411, %340
  br i1 %412, label %413, label %403, !llvm.loop !49

413:                                              ; preds = %403, %399
  %414 = load ptr, ptr @stdout, align 8, !tbaa !48
  %415 = tail call i32 @GetMagickPrecision() #24
  %416 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %414, ptr noundef nonnull @.str.29, double noundef %340, i32 noundef %415, double noundef 0.000000e+00) #24
  br label %417

417:                                              ; preds = %413, %310
  %418 = tail call i32 @DeleteImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.17) #24
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Box(float %0, ptr nocapture readnone %1) #2 {
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Triangle(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fsub float 1.000000e+00, %0
  %5 = select i1 %3, float %4, float 0.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal float @CubicBC(float noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = fcmp olt float %0, 1.000000e+00
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %6 = load float, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 2
  %10 = load float, ptr %9, align 8, !tbaa !43
  %11 = tail call float @llvm.fmuladd.f32(float %0, float %10, float %8)
  %12 = fmul float %11, %0
  %13 = tail call float @llvm.fmuladd.f32(float %0, float %12, float %6)
  br label %28

14:                                               ; preds = %2
  %15 = fcmp olt float %0, 2.000000e+00
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 4
  %20 = load float, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 5
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 6
  %24 = load float, ptr %23, align 8, !tbaa !43
  %25 = tail call float @llvm.fmuladd.f32(float %0, float %24, float %22)
  %26 = tail call float @llvm.fmuladd.f32(float %0, float %25, float %20)
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %26, float %18)
  br label %28

28:                                               ; preds = %14, %16, %4
  %29 = phi float [ %13, %4 ], [ %27, %16 ], [ 0.000000e+00, %14 ]
  ret float %29
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Hanning(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #24
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 5.000000e-01, double 5.000000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Hamming(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #24
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 4.600000e-01, double 5.400000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Blackman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #24
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 1.600000e-01, double 5.000000e-01)
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %8, double 3.400000e-01)
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @Gaussian(float noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !43
  %5 = fneg float %4
  %6 = fmul float %5, %0
  %7 = fmul float %6, %0
  %8 = fpext float %7 to double
  %9 = tail call double @exp(double noundef %8) #24
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal float @Quadratic(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fpext float %0 to double
  %4 = fcmp olt float %0, 5.000000e-01
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = fmul float %0, %0
  %7 = fsub float 7.500000e-01, %6
  br label %15

8:                                                ; preds = %2
  %9 = fcmp olt float %0, 1.500000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = fadd double %3, -1.500000e+00
  %12 = fmul double %11, 5.000000e-01
  %13 = fmul double %11, %12
  %14 = fptrunc double %13 to float
  br label %15

15:                                               ; preds = %8, %10, %5
  %16 = phi float [ %7, %5 ], [ %14, %10 ], [ 0.000000e+00, %8 ]
  ret float %16
}

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal float @Jinc(float noundef %0, ptr nocapture readnone %1) #6 {
  %3 = fcmp oeq float %0, 0.000000e+00
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = fmul float %0, 0x400921FB60000000
  %6 = tail call fastcc float @BesselOrderOne(float noundef %5) #29
  %7 = fdiv float %6, %0
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi float [ %7, %4 ], [ 0x3FF921FB60000000, %2 ]
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Sinc(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp une float %0, 0.000000e+00
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #24
  %10 = fdiv double %9, %8
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %2, %4
  %13 = phi float [ %11, %4 ], [ 1.000000e+00, %2 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @SincFast(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp ogt float %0, 4.000000e+00
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #24
  %10 = fdiv double %9, %8
  br label %31

11:                                               ; preds = %2
  %12 = fmul float %0, %0
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0xBCA98546B213E547, double 0x3D1C8B574F3D493C)
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double 0xBD80778FF9CFD451)
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double 0x3DDA532C7DACB935)
  %17 = tail call double @llvm.fmuladd.f64(double %13, double %16, double 0xBE300406665C46FB)
  %18 = tail call double @llvm.fmuladd.f64(double %13, double %17, double 0x3E7E09D9614D342A)
  %19 = tail call double @llvm.fmuladd.f64(double %13, double %18, double 0xBEC50D655760D6D4)
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %19, double 0x3F04AAE0F2F31F28)
  %21 = tail call double @llvm.fmuladd.f64(double %13, double %20, double 0xBF392E7E30A21C51)
  %22 = tail call double @llvm.fmuladd.f64(double %13, double %21, double 0x3F5C71C712204843)
  %23 = fadd double %13, -1.000000e+00
  %24 = fadd double %13, -4.000000e+00
  %25 = fmul double %23, %24
  %26 = fadd double %13, -9.000000e+00
  %27 = fmul double %26, %25
  %28 = fadd double %13, -1.600000e+01
  %29 = fmul double %28, %27
  %30 = fmul double %29, %22
  br label %31

31:                                               ; preds = %11, %4
  %32 = phi double [ %10, %4 ], [ %30, %11 ]
  %33 = fptrunc double %32 to float
  ret float %33
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal float @Kaiser(float noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = load float, ptr %3, align 8, !tbaa !43
  %7 = fpext float %6 to double
  %8 = fmul float %0, %0
  %9 = fpext float %8 to double
  %10 = fsub double 1.000000e+00, %9
  %11 = tail call double @sqrt(double noundef %10) #24
  %12 = fmul double %11, %7
  %13 = fptrunc double %12 to float
  %14 = tail call fastcc float @I0(float noundef %13) #29
  %15 = fmul float %5, %14
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Welsh(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fmul float %0, %0
  %5 = fsub float 1.000000e+00, %4
  %6 = select i1 %3, float %5, float 0.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Bohman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #24
  %6 = fneg double %5
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = tail call double @sqrt(double noundef %7) #24
  %9 = fsub double 1.000000e+00, %3
  %10 = fmul double %8, 0x3FD45F306DC9C883
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %5, double %10)
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal float @Lagrange(float noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !35
  %5 = fcmp olt float %4, %0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fpext float %8 to double
  %10 = fmul double %9, 2.000000e+00
  %11 = fptosi double %10 to i64
  %12 = fadd float %8, %0
  %13 = fptosi float %12 to i64
  %14 = icmp sgt i64 %11, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %6, %25
  %16 = phi float [ %26, %25 ], [ 1.000000e+00, %6 ]
  %17 = phi i64 [ %27, %25 ], [ 0, %6 ]
  %18 = icmp eq i64 %17, %13
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = sub nsw i64 %13, %17
  %21 = sitofp i64 %20 to float
  %22 = fsub float %21, %0
  %23 = fdiv float %22, %21
  %24 = fmul float %16, %23
  br label %25

25:                                               ; preds = %15, %19
  %26 = phi float [ %24, %19 ], [ %16, %15 ]
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %15, !llvm.loop !51

29:                                               ; preds = %25, %6, %2
  %30 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %6 ], [ %26, %25 ]
  ret float %30
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Cosine(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x3FF921FB54442D18
  %5 = tail call double @cos(double noundef %4) #24
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #24
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #2 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @I0(float noundef %0) unnamed_addr #13 {
  %2 = fmul float %0, %0
  %3 = fmul float %2, 2.500000e-01
  %4 = fpext float %3 to double
  %5 = fcmp ogt double %4, 1.000000e-15
  br i1 %5, label %6, label %18

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %15, %6 ], [ 2, %1 ]
  %8 = phi float [ %10, %6 ], [ 1.000000e+00, %1 ]
  %9 = phi float [ %14, %6 ], [ %3, %1 ]
  %10 = fadd float %9, %8
  %11 = sitofp i64 %7 to float
  %12 = fmul float %11, %11
  %13 = fdiv float %3, %12
  %14 = fmul float %9, %13
  %15 = add nuw nsw i64 %7, 1
  %16 = fpext float %14 to double
  %17 = fcmp ogt double %16, 1.000000e-15
  br i1 %17, label %6, label %18, !llvm.loop !52

18:                                               ; preds = %6, %1
  %19 = phi float [ 1.000000e+00, %1 ], [ %10, %6 ]
  ret float %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #24
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !28
  %6 = fmul float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @GetResizeFilterWeight(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = tail call float @llvm.fabs.f32(float %1)
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !28
  %6 = fdiv float %3, %5
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, @Box
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !41
  %18 = fmul float %6, %17
  %19 = tail call float %13(float noundef %18, ptr noundef nonnull %0) #24
  br label %20

20:                                               ; preds = %2, %11, %15
  %21 = phi float [ %19, %15 ], [ 1.000000e+00, %11 ], [ 1.000000e+00, %2 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !33
  %23 = tail call float %22(float noundef %6, ptr noundef nonnull %0) #24
  %24 = fmul float %21, %23
  ret float %24
}

; Function Attrs: optsize
declare i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 6, ptr noundef %3) #29
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1701, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %5
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %112, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #24
  br label %112

27:                                               ; preds = %21, %17
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %4) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %112, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %34) #24
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #24
  br label %112

36:                                               ; preds = %30
  %37 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #24
  %38 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %4) #24
  %39 = load i64, ptr %18, align 8, !tbaa !53
  %40 = uitofp i64 %39 to double
  %41 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !53
  %43 = uitofp i64 %42 to double
  %44 = fdiv double %40, %43
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !54
  %47 = uitofp i64 %46 to double
  %48 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !54
  %50 = uitofp i64 %49 to double
  %51 = fdiv double %47, %50
  %52 = icmp sgt i64 %49, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %55

55:                                               ; preds = %53, %97
  %56 = phi i64 [ 0, %53 ], [ %100, %97 ]
  %57 = phi i32 [ 1, %53 ], [ %99, %97 ]
  %58 = phi i64 [ 0, %53 ], [ %98, %97 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %41, align 8, !tbaa !53
  %62 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %38, i64 noundef 0, i64 noundef %56, i64 noundef %61, i64 noundef 1, ptr noundef %4) #30
  %63 = icmp eq ptr %62, null
  br i1 %63, label %97, label %64

64:                                               ; preds = %60
  %65 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %38) #24
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #24
  %66 = sitofp i64 %56 to float
  %67 = fpext float %66 to double
  %68 = fadd double %67, 5.000000e-01
  %69 = call double @llvm.fmuladd.f64(double %68, double %51, double -5.000000e-01)
  %70 = load i64, ptr %41, align 8, !tbaa !53
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %64, %72
  %73 = phi i64 [ %82, %72 ], [ 0, %64 ]
  %74 = phi ptr [ %81, %72 ], [ %62, %64 ]
  %75 = sitofp i64 %73 to float
  %76 = fpext float %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = call double @llvm.fmuladd.f64(double %77, double %44, double -5.000000e-01)
  %79 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %37, i32 noundef %3, double noundef %78, double noundef %69, ptr noundef nonnull %6, ptr noundef %4) #24
  %80 = getelementptr inbounds i16, ptr %65, i64 %73
  call fastcc void @SetPixelPacket(ptr noundef nonnull %28, ptr noundef nonnull %6, ptr noundef nonnull %74, ptr noundef %80) #29
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %82 = add nuw nsw i64 %73, 1
  %83 = load i64, ptr %41, align 8, !tbaa !53
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %72, label %85, !llvm.loop !55

85:                                               ; preds = %72, %64
  %86 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %38, ptr noundef %4) #30
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %54, align 8, !tbaa !56
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = add nsw i64 %58, 1
  %93 = load i64, ptr %45, align 8, !tbaa !54
  %94 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef %58, i64 noundef %93) #29
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  br label %97

97:                                               ; preds = %88, %91, %85, %60, %55
  %98 = phi i64 [ %58, %55 ], [ %58, %60 ], [ %58, %85 ], [ %92, %91 ], [ %58, %88 ]
  %99 = phi i32 [ 0, %55 ], [ 1, %60 ], [ 1, %85 ], [ %96, %91 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #26
  %100 = add nuw nsw i64 %56, 1
  %101 = load i64, ptr %48, align 8, !tbaa !54
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %55, label %103, !llvm.loop !57

103:                                              ; preds = %97
  %104 = icmp eq i32 %99, 0
  %105 = call ptr @DestroyCacheView(ptr noundef %38) #24
  %106 = call ptr @DestroyCacheView(ptr noundef %37) #24
  br i1 %104, label %107, label %112

107:                                              ; preds = %103
  %108 = call ptr @DestroyImage(ptr noundef nonnull %28) #24
  br label %112

109:                                              ; preds = %36
  %110 = tail call ptr @DestroyCacheView(ptr noundef %38) #24
  %111 = tail call ptr @DestroyCacheView(ptr noundef %37) #24
  br label %112

112:                                              ; preds = %109, %103, %107, %27, %13, %33, %25
  %113 = phi ptr [ %26, %25 ], [ null, %33 ], [ null, %13 ], [ null, %27 ], [ %108, %107 ], [ %28, %103 ], [ %28, %109 ]
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyResizeFilter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 9
  store i64 -2880220588, ptr %2, align 8, !tbaa !42
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #24
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @GetResizeFilterCoefficient(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterBlur(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %3 = load float, ptr %2, align 4, !tbaa !28
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterScale(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !41
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterWindowSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !45
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !37
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWindowWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !58
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #29
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !60
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #29
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !62
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !63
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #29
  store i16 %15, ptr %2, align 2, !tbaa !64
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !65
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #29
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !66
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !68
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !69
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #29
  store i16 %33, ptr %3, align 2, !tbaa !70
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #26
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef %1, ptr noundef nonnull %10) #24
  %12 = load ptr, ptr %6, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #24
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #26
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @LiquidRescaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1992, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1995, i32 noundef 420, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %14) #24
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagnifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [9 x float], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2052, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #24
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = shl i64 %15, 1
  %17 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %16, i32 noundef 1, ptr noundef %1) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %225, label %19

19:                                               ; preds = %10
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #24
  %21 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %17, ptr noundef %1) #24
  %22 = load i64, ptr %14, align 8, !tbaa !54
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %222

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %26 = getelementptr inbounds [9 x float], ptr %3, i64 0, i64 1
  %27 = getelementptr inbounds [9 x float], ptr %3, i64 0, i64 7
  %28 = getelementptr inbounds [9 x float], ptr %3, i64 0, i64 3
  %29 = getelementptr inbounds [9 x float], ptr %3, i64 0, i64 5
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %24, %210
  %32 = phi i64 [ 0, %24 ], [ %213, %210 ]
  %33 = phi i64 [ 0, %24 ], [ %212, %210 ]
  %34 = phi i32 [ 1, %24 ], [ %211, %210 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %210, label %36

36:                                               ; preds = %31
  %37 = shl nuw nsw i64 %32, 1
  %38 = load i64, ptr %25, align 8, !tbaa !53
  %39 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %37, i64 noundef %38, i64 noundef 2, ptr noundef %1) #30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %210, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #24
  %43 = load i64, ptr %11, align 8, !tbaa !53
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %197

45:                                               ; preds = %41
  %46 = add nsw i64 %32, -1
  br label %47

47:                                               ; preds = %45, %190
  %48 = phi i64 [ 0, %45 ], [ %194, %190 ]
  %49 = phi ptr [ %39, %45 ], [ %193, %190 ]
  %50 = phi ptr [ %42, %45 ], [ %192, %190 ]
  %51 = phi i32 [ 1, %45 ], [ %191, %190 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #26
  %52 = add nsw i64 %48, -1
  %53 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef %52, i64 noundef %46, i64 noundef 3, i64 noundef 3, ptr noundef %1) #30
  %54 = icmp eq ptr %53, null
  br i1 %54, label %190, label %55

55:                                               ; preds = %47
  %56 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #24
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ 0, %55 ], [ %62, %57 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %58
  %60 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %59) #30
  %61 = getelementptr inbounds [9 x float], ptr %3, i64 0, i64 %58
  store float %60, ptr %61, align 4, !tbaa !43
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %64, label %57, !llvm.loop !72

64:                                               ; preds = %57
  %65 = load float, ptr %26, align 4, !tbaa !43
  %66 = load float, ptr %27, align 4, !tbaa !43
  %67 = fsub float %65, %66
  %68 = tail call float @llvm.fabs.f32(float %67)
  %69 = fpext float %68 to double
  %70 = fcmp olt double %69, 1.000000e-15
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load float, ptr %28, align 4, !tbaa !43
  %73 = load float, ptr %29, align 4, !tbaa !43
  %74 = fsub float %72, %73
  %75 = tail call float @llvm.fabs.f32(float %74)
  %76 = fpext float %75 to double
  %77 = fcmp olt double %76, 1.000000e-15
  br i1 %77, label %78, label %86

78:                                               ; preds = %71, %64
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 4
  %80 = load i64, ptr %79, align 2
  store i64 %80, ptr %49, align 2
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %82 = load i64, ptr %79, align 2
  store i64 %82, ptr %81, align 2
  %83 = load i64, ptr %25, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %83
  %85 = load i64, ptr %79, align 2
  store i64 %85, ptr %84, align 2
  br label %122

86:                                               ; preds = %71
  %87 = fsub float %65, %72
  %88 = tail call float @llvm.fabs.f32(float %87)
  %89 = fpext float %88 to double
  %90 = fcmp olt double %89, 1.000000e-15
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 3
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 4
  %93 = select i1 %90, ptr %91, ptr %92
  %94 = load i64, ptr %93, align 2
  store i64 %94, ptr %49, align 2
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %96 = load float, ptr %26, align 4, !tbaa !43
  %97 = load float, ptr %29, align 4, !tbaa !43
  %98 = fsub float %96, %97
  %99 = tail call float @llvm.fabs.f32(float %98)
  %100 = fpext float %99 to double
  %101 = fcmp olt double %100, 1.000000e-15
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 5
  %103 = select i1 %101, ptr %102, ptr %92
  %104 = load i64, ptr %103, align 2
  store i64 %104, ptr %95, align 2
  %105 = load i64, ptr %25, align 8, !tbaa !53
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %105
  %107 = load float, ptr %28, align 4, !tbaa !43
  %108 = load float, ptr %27, align 4, !tbaa !43
  %109 = fsub float %107, %108
  %110 = tail call float @llvm.fabs.f32(float %109)
  %111 = fpext float %110 to double
  %112 = fcmp olt double %111, 1.000000e-15
  %113 = select i1 %112, ptr %91, ptr %92
  %114 = load i64, ptr %113, align 2
  store i64 %114, ptr %106, align 2
  %115 = load float, ptr %29, align 4, !tbaa !43
  %116 = load float, ptr %27, align 4, !tbaa !43
  %117 = fsub float %115, %116
  %118 = tail call float @llvm.fabs.f32(float %117)
  %119 = fpext float %118 to double
  %120 = fcmp olt double %119, 1.000000e-15
  %121 = select i1 %120, ptr %102, ptr %92
  br label %122

122:                                              ; preds = %86, %78
  %123 = phi ptr [ %79, %78 ], [ %121, %86 ]
  %124 = phi i64 [ %83, %78 ], [ %105, %86 ]
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %124
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 1
  %127 = load i64, ptr %123, align 2
  store i64 %127, ptr %126, align 2
  %128 = icmp eq ptr %56, null
  br i1 %128, label %187, label %129

129:                                              ; preds = %122
  %130 = load float, ptr %26, align 4, !tbaa !43
  %131 = load float, ptr %27, align 4, !tbaa !43
  %132 = fsub float %130, %131
  %133 = tail call float @llvm.fabs.f32(float %132)
  %134 = fpext float %133 to double
  %135 = fcmp olt double %134, 1.000000e-15
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load float, ptr %28, align 4, !tbaa !43
  %138 = load float, ptr %29, align 4, !tbaa !43
  %139 = fsub float %137, %138
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fpext float %140 to double
  %142 = fcmp olt double %141, 1.000000e-15
  br i1 %142, label %143, label %151

143:                                              ; preds = %136, %129
  %144 = getelementptr inbounds i16, ptr %56, i64 4
  %145 = load i16, ptr %144, align 2, !tbaa !70
  store i16 %145, ptr %50, align 2, !tbaa !70
  %146 = getelementptr inbounds i16, ptr %50, i64 1
  store i16 %145, ptr %146, align 2, !tbaa !70
  %147 = load i64, ptr %25, align 8, !tbaa !53
  %148 = getelementptr inbounds i16, ptr %50, i64 %147
  %149 = load i16, ptr %144, align 2, !tbaa !70
  store i16 %149, ptr %148, align 2, !tbaa !70
  %150 = getelementptr inbounds i16, ptr %148, i64 1
  store i16 %149, ptr %150, align 2, !tbaa !70
  br label %185

151:                                              ; preds = %136
  %152 = insertelement <4 x float> poison, float %138, i64 0
  %153 = insertelement <4 x float> %152, float %137, i64 1
  %154 = insertelement <4 x float> %153, float %130, i64 2
  %155 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %156 = insertelement <4 x float> poison, float %131, i64 0
  %157 = insertelement <4 x float> %156, float %138, i64 2
  %158 = insertelement <4 x float> %157, float %137, i64 3
  %159 = shufflevector <4 x float> %158, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %160 = fsub <4 x float> %155, %159
  %161 = getelementptr inbounds i16, ptr %56, i64 4
  %162 = getelementptr inbounds i16, ptr %56, i64 3
  %163 = getelementptr inbounds i16, ptr %50, i64 1
  %164 = getelementptr inbounds i16, ptr %56, i64 5
  %165 = load i64, ptr %25, align 8, !tbaa !53
  %166 = getelementptr inbounds i16, ptr %50, i64 %165
  %167 = getelementptr inbounds i16, ptr %166, i64 1
  %168 = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %160)
  %169 = fpext <4 x float> %168 to <4 x double>
  %170 = fcmp olt <4 x double> %169, <double 1.000000e-15, double 1.000000e-15, double 1.000000e-15, double 1.000000e-15>
  %171 = extractelement <4 x i1> %170, i64 3
  %172 = select i1 %171, ptr %162, ptr %161
  %173 = load i16, ptr %172, align 2, !tbaa !70
  store i16 %173, ptr %50, align 2, !tbaa !70
  %174 = extractelement <4 x i1> %170, i64 2
  %175 = select i1 %174, ptr %164, ptr %161
  %176 = load i16, ptr %175, align 2, !tbaa !70
  store i16 %176, ptr %163, align 2, !tbaa !70
  %177 = extractelement <4 x i1> %170, i64 1
  %178 = select i1 %177, ptr %162, ptr %161
  %179 = load i16, ptr %178, align 2, !tbaa !70
  store i16 %179, ptr %166, align 2, !tbaa !70
  %180 = extractelement <4 x i1> %170, i64 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %151
  %182 = load i16, ptr %164, align 2, !tbaa !70
  store i16 %182, ptr %167, align 2, !tbaa !70
  br label %185

183:                                              ; preds = %151
  %184 = load i16, ptr %161, align 2, !tbaa !70
  store i16 %184, ptr %167, align 2, !tbaa !70
  br label %185

185:                                              ; preds = %181, %183, %143
  %186 = getelementptr inbounds i16, ptr %50, i64 2
  br label %187

187:                                              ; preds = %185, %122
  %188 = phi ptr [ %186, %185 ], [ %50, %122 ]
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 2
  br label %190

190:                                              ; preds = %47, %187
  %191 = phi i32 [ %51, %187 ], [ 0, %47 ]
  %192 = phi ptr [ %188, %187 ], [ %50, %47 ]
  %193 = phi ptr [ %189, %187 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #26
  %194 = add nuw nsw i64 %48, 1
  %195 = load i64, ptr %11, align 8, !tbaa !53
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %47, label %197, !llvm.loop !73

197:                                              ; preds = %190, %41
  %198 = phi i32 [ 1, %41 ], [ %191, %190 ]
  %199 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef %1) #30
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i32 0, i32 %198
  %202 = load ptr, ptr %30, align 8, !tbaa !56
  %203 = icmp eq ptr %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %197
  %205 = add nsw i64 %33, 1
  %206 = load i64, ptr %14, align 8, !tbaa !54
  %207 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef %33, i64 noundef %206) #29
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i32 0, i32 %201
  br label %210

210:                                              ; preds = %197, %204, %36, %31
  %211 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %209, %204 ], [ %201, %197 ]
  %212 = phi i64 [ %33, %31 ], [ %33, %36 ], [ %205, %204 ], [ %33, %197 ]
  %213 = add nuw nsw i64 %32, 1
  %214 = load i64, ptr %14, align 8, !tbaa !54
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %31, label %216, !llvm.loop !74

216:                                              ; preds = %210
  %217 = icmp eq i32 %211, 0
  %218 = tail call ptr @DestroyCacheView(ptr noundef %21) #24
  %219 = tail call ptr @DestroyCacheView(ptr noundef %20) #24
  br i1 %217, label %220, label %225

220:                                              ; preds = %216
  %221 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #24
  br label %225

222:                                              ; preds = %19
  %223 = tail call ptr @DestroyCacheView(ptr noundef %21) #24
  %224 = tail call ptr @DestroyCacheView(ptr noundef %20) #24
  br label %225

225:                                              ; preds = %222, %216, %220, %10
  %226 = phi ptr [ null, %10 ], [ %221, %220 ], [ %17, %216 ], [ %17, %222 ]
  ret ptr %226
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MinifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #24
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !54
  %15 = lshr i64 %14, 1
  %16 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %15, i32 noundef 29, double noundef 1.000000e+00, ptr noundef %1) #29
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2980, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #24
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp eq i64 %1, 0
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2984, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #24
  br label %111

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !53
  %24 = icmp eq i64 %23, %1
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !54
  br i1 %24, label %27, label %35

27:                                               ; preds = %21
  %28 = icmp eq i64 %26, %2
  %29 = icmp eq i32 %3, 0
  %30 = and i1 %29, %28
  %31 = fcmp oeq double %4, 1.000000e+00
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #24
  br label %111

35:                                               ; preds = %21, %27
  %36 = uitofp i64 %1 to float
  %37 = uitofp i64 %23 to float
  %38 = fdiv float %36, %37
  %39 = uitofp i64 %2 to float
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = uitofp i64 %26 to float
  %42 = fdiv float %39, %41
  %43 = icmp eq i32 %3, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = fcmp oeq float %38, 1.000000e+00
  %46 = fcmp oeq float %42, 1.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %0, align 8, !tbaa !68
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !75
  %54 = icmp ne i32 %53, 0
  %55 = fmul float %38, %42
  %56 = fcmp ogt float %55, 1.000000e+00
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %48
  br label %59

59:                                               ; preds = %51, %44, %35, %58
  %60 = phi i32 [ 12, %58 ], [ %3, %35 ], [ 1, %44 ], [ 22, %51 ]
  %61 = fptrunc double %4 to float
  %62 = tail call ptr @AcquireResizeFilter(ptr noundef nonnull %0, i32 noundef %60, float noundef %61, i32 noundef 0, ptr poison) #29
  %63 = tail call ptr @AccelerateResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %62, ptr noundef %5) #24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #29
  br label %111

67:                                               ; preds = %59
  %68 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %5) #24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #29
  br label %111

72:                                               ; preds = %67
  %73 = fcmp ogt float %38, %42
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = load i64, ptr %40, align 8, !tbaa !54
  %76 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %75, i32 noundef 1, ptr noundef %5) #24
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %85

78:                                               ; preds = %72
  %79 = load i64, ptr %22, align 8, !tbaa !53
  %80 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %79, i64 noundef %2, i32 noundef 1, ptr noundef %5) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %78, %74
  %83 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #29
  %84 = tail call ptr @DestroyImage(ptr noundef nonnull %68) #24
  br label %111

85:                                               ; preds = %74
  store i64 0, ptr %7, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 7
  %87 = load i64, ptr %86, align 8, !tbaa !53
  %88 = add i64 %87, %2
  %89 = call fastcc i32 @HorizontalFilter(ptr noundef %62, ptr noundef nonnull %0, ptr noundef nonnull %76, float noundef %38, i64 noundef %88, ptr noundef nonnull %7, ptr noundef %5) #29, !range !77
  %90 = call fastcc i32 @VerticalFilter(ptr noundef %62, ptr noundef nonnull %76, ptr noundef nonnull %68, float noundef %42, i64 noundef %88, ptr noundef nonnull %7, ptr noundef %5) #29, !range !77
  %91 = and i32 %90, %89
  br label %99

92:                                               ; preds = %78
  store i64 0, ptr %7, align 8, !tbaa !76
  %93 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !54
  %95 = add i64 %94, %1
  %96 = call fastcc i32 @VerticalFilter(ptr noundef %62, ptr noundef nonnull %0, ptr noundef nonnull %80, float noundef %42, i64 noundef %95, ptr noundef nonnull %7, ptr noundef %5) #29, !range !77
  %97 = call fastcc i32 @HorizontalFilter(ptr noundef %62, ptr noundef nonnull %80, ptr noundef nonnull %68, float noundef %38, i64 noundef %95, ptr noundef nonnull %7, ptr noundef %5) #29, !range !77
  %98 = and i32 %97, %96
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi ptr [ %76, %85 ], [ %80, %92 ]
  %101 = phi i32 [ %91, %85 ], [ %98, %92 ]
  %102 = tail call ptr @DestroyImage(ptr noundef nonnull %100) #24
  %103 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #29
  %104 = icmp eq i32 %101, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = tail call ptr @DestroyImage(ptr noundef nonnull %68) #24
  br label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %109 = load i32, ptr %108, align 8, !tbaa !78
  %110 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 77
  store i32 %109, ptr %110, align 8, !tbaa !78
  br label %111

111:                                              ; preds = %107, %105, %82, %70, %65, %33, %18
  %112 = phi ptr [ null, %18 ], [ %34, %33 ], [ %63, %65 ], [ null, %70 ], [ %84, %82 ], [ null, %105 ], [ %68, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  ret ptr %112
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ResampleImage(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2328, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = uitofp i64 %15 to double
  %17 = fmul double %16, %1
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %19 = load double, ptr %18, align 8, !tbaa !79
  %20 = fcmp oeq double %19, 0.000000e+00
  %21 = select i1 %20, double 7.200000e+01, double %19
  %22 = fdiv double %17, %21
  %23 = fadd double %22, 5.000000e-01
  %24 = fptoui double %23 to i64
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !54
  %27 = uitofp i64 %26 to double
  %28 = fmul double %27, %2
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %30 = load double, ptr %29, align 8, !tbaa !80
  %31 = fcmp oeq double %30, 0.000000e+00
  %32 = select i1 %31, double 7.200000e+01, double %30
  %33 = fdiv double %28, %32
  %34 = fadd double %33, 5.000000e-01
  %35 = fptoui double %34 to i64
  %36 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %35, i32 noundef %3, double noundef %4, ptr noundef %5) #29
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 24
  store double %1, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 25
  store double %2, ptr %40, align 8, !tbaa !80
  br label %41

41:                                               ; preds = %38, %13
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @AccelerateResizeImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @HorizontalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #26
  %9 = fpext float %3 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = fadd double %10, 1.000000e-15
  %12 = tail call fastcc double @MagickMax(double noundef %11, double noundef 1.000000e+00) #29
  %13 = fptrunc double %12 to float
  %14 = tail call float @GetResizeFilterSupport(ptr noundef %0) #29
  %15 = fmul float %14, %13
  %16 = fcmp ogt float %15, 5.000000e-01
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %1, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 1, %7 ]
  %21 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %20) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %24) #24
  br label %390

25:                                               ; preds = %19
  %26 = fcmp olt float %15, 5.000000e-01
  %27 = select i1 %26, float 5.000000e-01, float %15
  %28 = fpext float %27 to double
  %29 = tail call double @llvm.fmuladd.f64(double %28, double 2.000000e+00, double 3.000000e+00)
  %30 = fptoui double %29 to i64
  %31 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %30) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #24
  br label %390

36:                                               ; preds = %25
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 56) #24
  %38 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #24
  %39 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #24
  %40 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !53
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %385

43:                                               ; preds = %36
  %44 = select i1 %26, float 1.000000e+00, float %13
  %45 = fpext float %44 to double
  %46 = tail call fastcc double @PerceptibleReciprocal(double noundef %45) #29
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %49 = fpext float %47 to double
  %50 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %51 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %52 = getelementptr inbounds i8, ptr %8, i64 32
  %53 = getelementptr inbounds i8, ptr %8, i64 48
  %54 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %55 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %56 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  br label %58

58:                                               ; preds = %43, %380
  %59 = phi i32 [ 1, %43 ], [ %381, %380 ]
  %60 = phi i64 [ 0, %43 ], [ %382, %380 ]
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %380, label %62

62:                                               ; preds = %58
  %63 = sitofp i64 %60 to double
  %64 = fadd double %63, 5.000000e-01
  %65 = fptrunc double %64 to float
  %66 = fdiv float %65, %3
  %67 = fpext float %66 to double
  %68 = fadd double %67, 1.000000e-15
  %69 = fptrunc double %68 to float
  %70 = fsub float %69, %27
  %71 = fpext float %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = call fastcc double @MagickMax(double noundef %72, double noundef 0.000000e+00) #29
  %74 = fptosi double %73 to i64
  %75 = fadd float %27, %69
  %76 = fpext float %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = load i64, ptr %48, align 8, !tbaa !53
  %79 = uitofp i64 %78 to double
  %80 = call fastcc double @MagickMin(double noundef %77, double noundef %79) #29
  %81 = fptosi double %80 to i64
  %82 = load ptr, ptr %31, align 8, !tbaa !48
  %83 = sub nsw i64 %81, %74
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %62, %85
  %86 = phi i64 [ %99, %85 ], [ 0, %62 ]
  %87 = phi float [ %98, %85 ], [ 0.000000e+00, %62 ]
  %88 = add nsw i64 %86, %74
  %89 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %86
  %90 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %86, i32 1
  store i64 %88, ptr %90, align 8, !tbaa !81
  %91 = sitofp i64 %88 to float
  %92 = fsub float %91, %69
  %93 = fpext float %92 to double
  %94 = fadd double %93, 5.000000e-01
  %95 = fmul double %94, %49
  %96 = fptrunc double %95 to float
  %97 = call float @GetResizeFilterWeight(ptr noundef %0, float noundef %96) #29
  store float %97, ptr %89, align 8, !tbaa !83
  %98 = fadd float %87, %97
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, %83
  br i1 %100, label %101, label %85, !llvm.loop !84

101:                                              ; preds = %85
  %102 = fcmp une float %98, 0.000000e+00
  %103 = fcmp une float %98, 1.000000e+00
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = fpext float %98 to double
  %107 = call fastcc double @PerceptibleReciprocal(double noundef %106) #29
  %108 = fptrunc double %107 to float
  br label %109

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %114, %109 ], [ 0, %105 ]
  %111 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %110
  %112 = load float, ptr %111, align 8, !tbaa !83
  %113 = fmul float %112, %108
  store float %113, ptr %111, align 8, !tbaa !83
  %114 = add nuw nsw i64 %110, 1
  %115 = icmp eq i64 %114, %83
  br i1 %115, label %116, label %109, !llvm.loop !85

116:                                              ; preds = %109, %62, %101
  %117 = phi i64 [ %83, %101 ], [ 0, %62 ], [ %83, %109 ]
  %118 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !81
  %120 = getelementptr %struct._ContributionInfo, ptr %82, i64 %117
  %121 = getelementptr %struct._ContributionInfo, ptr %120, i64 -1, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !81
  %123 = sub i64 %122, %119
  %124 = add i64 %123, 1
  %125 = load i64, ptr %50, align 8, !tbaa !54
  %126 = call ptr @GetCacheViewVirtualPixels(ptr noundef %38, i64 noundef %119, i64 noundef 0, i64 noundef %124, i64 noundef %125, ptr noundef %6) #30
  %127 = load i64, ptr %51, align 8, !tbaa !54
  %128 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef %60, i64 noundef 0, i64 noundef 1, i64 noundef %127, ptr noundef %6) #30
  %129 = icmp eq ptr %126, null
  %130 = icmp eq ptr %128, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %380, label %132

132:                                              ; preds = %116
  %133 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %38) #24
  %134 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %39) #24
  %135 = load i64, ptr %51, align 8, !tbaa !54
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %368

137:                                              ; preds = %132
  %138 = load i32, ptr %54, align 8, !tbaa !75
  %139 = icmp eq i32 %138, 0
  %140 = icmp eq i64 %117, 0
  %141 = icmp eq ptr %133, null
  %142 = icmp eq ptr %134, null
  %143 = load i32, ptr %2, align 8, !tbaa !68
  %144 = icmp eq i32 %143, 2
  %145 = fpext float %69 to double
  %146 = sitofp i64 %74 to double
  %147 = sitofp i64 %81 to double
  %148 = fadd double %147, -1.000000e+00
  br label %149

149:                                              ; preds = %137, %364
  %150 = phi i64 [ 0, %137 ], [ %366, %364 ]
  %151 = phi ptr [ %128, %137 ], [ %365, %364 ]
  %152 = load <4 x float>, ptr %52, align 8
  %153 = load float, ptr %53, align 8, !tbaa.struct !86
  br i1 %139, label %162, label %154

154:                                              ; preds = %149
  br i1 %140, label %262, label %155

155:                                              ; preds = %154
  %156 = load i64, ptr %121, align 8, !tbaa !81
  %157 = load i64, ptr %118, align 8, !tbaa !81
  %158 = add i64 %156, 1
  %159 = sub i64 %158, %157
  %160 = mul nsw i64 %159, %150
  %161 = getelementptr %struct._PixelPacket, ptr %126, i64 %160
  br label %234

162:                                              ; preds = %149
  br i1 %140, label %187, label %163

163:                                              ; preds = %162
  %164 = load i64, ptr %121, align 8, !tbaa !81
  %165 = load i64, ptr %118, align 8, !tbaa !81
  %166 = add i64 %164, 1
  %167 = sub i64 %166, %165
  %168 = mul nsw i64 %167, %150
  %169 = getelementptr %struct._PixelPacket, ptr %126, i64 %168
  br label %170

170:                                              ; preds = %163, %170
  %171 = phi i64 [ 0, %163 ], [ %185, %170 ]
  %172 = phi <4 x float> [ %152, %163 ], [ %184, %170 ]
  %173 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %171
  %174 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %171, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !81
  %176 = sub nsw i64 %175, %165
  %177 = load float, ptr %173, align 8, !tbaa !83
  %178 = getelementptr %struct._PixelPacket, ptr %169, i64 %176
  %179 = load <4 x i16>, ptr %178, align 2, !tbaa !70
  %180 = uitofp <4 x i16> %179 to <4 x float>
  %181 = shufflevector <4 x float> %180, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %182 = insertelement <4 x float> poison, float %177, i64 0
  %183 = shufflevector <4 x float> %182, <4 x float> poison, <4 x i32> zeroinitializer
  %184 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %183, <4 x float> %181, <4 x float> %172)
  %185 = add nuw nsw i64 %171, 1
  %186 = icmp eq i64 %185, %117
  br i1 %186, label %187, label %170, !llvm.loop !87

187:                                              ; preds = %170, %162
  %188 = phi <4 x float> [ %152, %162 ], [ %184, %170 ]
  %189 = extractelement <4 x float> %188, i64 0
  %190 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #29
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  store i16 %190, ptr %191, align 2, !tbaa !60
  %192 = extractelement <4 x float> %188, i64 1
  %193 = call fastcc zeroext i16 @ClampToQuantum(float noundef %192) #29
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  store i16 %193, ptr %194, align 2, !tbaa !62
  %195 = extractelement <4 x float> %188, i64 2
  %196 = call fastcc zeroext i16 @ClampToQuantum(float noundef %195) #29
  store i16 %196, ptr %151, align 2, !tbaa !64
  %197 = extractelement <4 x float> %188, i64 3
  %198 = call fastcc zeroext i16 @ClampToQuantum(float noundef %197) #29
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  store i16 %198, ptr %199, align 2, !tbaa !66
  %200 = load i32, ptr %55, align 4, !tbaa !67
  %201 = icmp eq i32 %200, 12
  br i1 %201, label %202, label %337

202:                                              ; preds = %187
  %203 = load i32, ptr %56, align 4, !tbaa !67
  %204 = icmp eq i32 %203, 12
  br i1 %204, label %205, label %337

205:                                              ; preds = %202
  br i1 %140, label %232, label %206

206:                                              ; preds = %205
  %207 = load i64, ptr %121, align 8, !tbaa !81
  %208 = load i64, ptr %118, align 8, !tbaa !81
  %209 = add i64 %207, 1
  %210 = sub i64 %209, %208
  %211 = mul nsw i64 %210, %150
  %212 = getelementptr i16, ptr %133, i64 %211
  br label %213

213:                                              ; preds = %206, %226
  %214 = phi i64 [ 0, %206 ], [ %230, %226 ]
  %215 = phi float [ %153, %206 ], [ %229, %226 ]
  %216 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %214
  %217 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %214, i32 1
  %218 = load i64, ptr %217, align 8, !tbaa !81
  %219 = sub nsw i64 %218, %208
  %220 = load float, ptr %216, align 8, !tbaa !83
  %221 = getelementptr i16, ptr %212, i64 %219
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %213
  %224 = load i16, ptr %221, align 2, !tbaa !70
  %225 = zext i16 %224 to i32
  br label %226

226:                                              ; preds = %213, %223
  %227 = phi i32 [ %225, %223 ], [ 0, %213 ]
  %228 = sitofp i32 %227 to float
  %229 = call float @llvm.fmuladd.f32(float %220, float %228, float %215)
  %230 = add nuw nsw i64 %214, 1
  %231 = icmp eq i64 %230, %117
  br i1 %231, label %232, label %213, !llvm.loop !88

232:                                              ; preds = %226, %205
  %233 = phi float [ %153, %205 ], [ %229, %226 ]
  br i1 %142, label %337, label %333

234:                                              ; preds = %155, %234
  %235 = phi double [ 0.000000e+00, %155 ], [ %259, %234 ]
  %236 = phi i64 [ 0, %155 ], [ %260, %234 ]
  %237 = phi <4 x float> [ %152, %155 ], [ %257, %234 ]
  %238 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %236
  %239 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %236, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !81
  %241 = sub nsw i64 %240, %157
  %242 = load float, ptr %238, align 8, !tbaa !83
  %243 = fpext float %242 to double
  %244 = fmul double %243, 0x3EF0001000100010
  %245 = getelementptr %struct._PixelPacket, ptr %161, i64 %241
  %246 = load <4 x i16>, ptr %245, align 2, !tbaa !70
  %247 = extractelement <4 x i16> %246, i64 3
  %248 = xor i16 %247, -1
  %249 = uitofp i16 %248 to double
  %250 = fmul double %244, %249
  %251 = fptrunc double %250 to float
  %252 = uitofp <4 x i16> %246 to <4 x float>
  %253 = shufflevector <4 x float> %252, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %254 = insertelement <4 x float> poison, float %242, i64 0
  %255 = insertelement <4 x float> %254, float %251, i64 1
  %256 = shufflevector <4 x float> %255, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %257 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %256, <4 x float> %253, <4 x float> %237)
  %258 = fpext float %251 to double
  %259 = fadd double %235, %258
  %260 = add nuw nsw i64 %236, 1
  %261 = icmp eq i64 %260, %117
  br i1 %261, label %262, label %234, !llvm.loop !89

262:                                              ; preds = %234, %154
  %263 = phi double [ 0.000000e+00, %154 ], [ %259, %234 ]
  %264 = phi <4 x float> [ %152, %154 ], [ %257, %234 ]
  %265 = fcmp olt double %263, 0.000000e+00
  %266 = select i1 %265, double 0.000000e+00, double %263
  %267 = call fastcc double @PerceptibleReciprocal(double noundef %266) #29
  %268 = extractelement <4 x float> %264, i64 0
  %269 = fpext float %268 to double
  %270 = fmul double %267, %269
  %271 = fptrunc double %270 to float
  %272 = call fastcc zeroext i16 @ClampToQuantum(float noundef %271) #29
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  store i16 %272, ptr %273, align 2, !tbaa !60
  %274 = extractelement <4 x float> %264, i64 1
  %275 = fpext float %274 to double
  %276 = fmul double %267, %275
  %277 = fptrunc double %276 to float
  %278 = call fastcc zeroext i16 @ClampToQuantum(float noundef %277) #29
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  store i16 %278, ptr %279, align 2, !tbaa !62
  %280 = extractelement <4 x float> %264, i64 2
  %281 = fpext float %280 to double
  %282 = fmul double %267, %281
  %283 = fptrunc double %282 to float
  %284 = call fastcc zeroext i16 @ClampToQuantum(float noundef %283) #29
  store i16 %284, ptr %151, align 2, !tbaa !64
  %285 = extractelement <4 x float> %264, i64 3
  %286 = call fastcc zeroext i16 @ClampToQuantum(float noundef %285) #29
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  store i16 %286, ptr %287, align 2, !tbaa !66
  %288 = load i32, ptr %55, align 4, !tbaa !67
  %289 = icmp eq i32 %288, 12
  br i1 %289, label %290, label %337

290:                                              ; preds = %262
  %291 = load i32, ptr %56, align 4, !tbaa !67
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %337

293:                                              ; preds = %290
  br i1 %140, label %327, label %294

294:                                              ; preds = %293
  %295 = load i64, ptr %121, align 8, !tbaa !81
  %296 = load i64, ptr %118, align 8, !tbaa !81
  %297 = add i64 %295, 1
  %298 = sub i64 %297, %296
  %299 = mul nsw i64 %298, %150
  br label %300

300:                                              ; preds = %294, %321
  %301 = phi i64 [ 0, %294 ], [ %325, %321 ]
  %302 = phi float [ %153, %294 ], [ %324, %321 ]
  %303 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %301
  %304 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %301, i32 1
  %305 = load i64, ptr %304, align 8, !tbaa !81
  %306 = sub nsw i64 %305, %296
  %307 = add nsw i64 %299, %306
  %308 = load float, ptr %303, align 8, !tbaa !83
  %309 = fpext float %308 to double
  %310 = fmul double %309, 0x3EF0001000100010
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %307, i32 3
  %312 = load i16, ptr %311, align 2, !tbaa !66
  %313 = xor i16 %312, -1
  %314 = uitofp i16 %313 to double
  %315 = fmul double %310, %314
  %316 = fptrunc double %315 to float
  br i1 %141, label %321, label %317

317:                                              ; preds = %300
  %318 = getelementptr inbounds i16, ptr %133, i64 %307
  %319 = load i16, ptr %318, align 2, !tbaa !70
  %320 = zext i16 %319 to i32
  br label %321

321:                                              ; preds = %300, %317
  %322 = phi i32 [ %320, %317 ], [ 0, %300 ]
  %323 = sitofp i32 %322 to float
  %324 = call float @llvm.fmuladd.f32(float %316, float %323, float %302)
  %325 = add nuw nsw i64 %301, 1
  %326 = icmp eq i64 %325, %117
  br i1 %326, label %327, label %300, !llvm.loop !90

327:                                              ; preds = %321, %293
  %328 = phi float [ %153, %293 ], [ %324, %321 ]
  br i1 %142, label %337, label %329

329:                                              ; preds = %327
  %330 = fpext float %328 to double
  %331 = fmul double %267, %330
  %332 = fptrunc double %331 to float
  br label %333

333:                                              ; preds = %232, %329
  %334 = phi float [ %332, %329 ], [ %233, %232 ]
  %335 = getelementptr inbounds i16, ptr %134, i64 %150
  %336 = call fastcc zeroext i16 @ClampToQuantum(float noundef %334) #29
  store i16 %336, ptr %335, align 2, !tbaa !70
  br label %337

337:                                              ; preds = %333, %262, %290, %327, %187, %202, %232
  br i1 %144, label %338, label %364

338:                                              ; preds = %337
  %339 = load i32, ptr %1, align 8, !tbaa !68
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %364

341:                                              ; preds = %338
  %342 = getelementptr inbounds i16, ptr %134, i64 %150
  br i1 %142, label %364, label %343

343:                                              ; preds = %341
  %344 = call fastcc double @MagickMax(double noundef %145, double noundef %146) #29
  %345 = call fastcc double @MagickMin(double noundef %344, double noundef %148) #29
  %346 = load i64, ptr %121, align 8, !tbaa !81
  %347 = load i64, ptr %118, align 8, !tbaa !81
  %348 = add i64 %346, 1
  %349 = sub i64 %348, %347
  %350 = mul nsw i64 %349, %150
  %351 = fadd double %345, 5.000000e-01
  %352 = fptosi double %351 to i64
  %353 = sub nsw i64 %352, %74
  %354 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %353, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !81
  %356 = sub nsw i64 %355, %347
  %357 = getelementptr i16, ptr %133, i64 %350
  %358 = getelementptr i16, ptr %357, i64 %356
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %360

360:                                              ; preds = %343
  %361 = load i16, ptr %358, align 2, !tbaa !70
  br label %362

362:                                              ; preds = %343, %360
  %363 = phi i16 [ %361, %360 ], [ 0, %343 ]
  store i16 %363, ptr %342, align 2, !tbaa !70
  br label %364

364:                                              ; preds = %341, %362, %338, %337
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %366 = add nuw nsw i64 %150, 1
  %367 = icmp eq i64 %366, %135
  br i1 %367, label %368, label %149, !llvm.loop !91

368:                                              ; preds = %364, %132
  %369 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %39, ptr noundef %6) #30
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i32
  %372 = load ptr, ptr %57, align 8, !tbaa !56
  %373 = icmp eq ptr %372, null
  br i1 %373, label %380, label %374

374:                                              ; preds = %368
  %375 = load i64, ptr %5, align 8, !tbaa !76
  %376 = add nsw i64 %375, 1
  store i64 %376, ptr %5, align 8, !tbaa !76
  %377 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, i64 noundef %375, i64 noundef %4) #29
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %378, i32 0, i32 %371
  br label %380

380:                                              ; preds = %368, %374, %116, %58
  %381 = phi i32 [ 0, %58 ], [ 0, %116 ], [ %379, %374 ], [ %371, %368 ]
  %382 = add nuw nsw i64 %60, 1
  %383 = load i64, ptr %40, align 8, !tbaa !53
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %58, label %385, !llvm.loop !92

385:                                              ; preds = %380, %36
  %386 = phi i32 [ 1, %36 ], [ %381, %380 ]
  %387 = call ptr @DestroyCacheView(ptr noundef %39) #24
  %388 = call ptr @DestroyCacheView(ptr noundef %38) #24
  %389 = call fastcc ptr @DestroyContributionThreadSet(ptr noundef nonnull %31) #29
  br label %390

390:                                              ; preds = %385, %33, %23
  %391 = phi i32 [ 0, %23 ], [ 0, %33 ], [ %386, %385 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #26
  ret i32 %391
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @VerticalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #26
  %9 = fpext float %3 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = fadd double %10, 1.000000e-15
  %12 = tail call fastcc double @MagickMax(double noundef %11, double noundef 1.000000e+00) #29
  %13 = fptrunc double %12 to float
  %14 = tail call float @GetResizeFilterSupport(ptr noundef %0) #29
  %15 = fmul float %14, %13
  %16 = fcmp ogt float %15, 5.000000e-01
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %1, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 1, %7 ]
  %21 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %20) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %24) #24
  br label %380

25:                                               ; preds = %19
  %26 = fcmp olt float %15, 5.000000e-01
  %27 = select i1 %26, float 5.000000e-01, float %15
  %28 = fpext float %27 to double
  %29 = tail call double @llvm.fmuladd.f64(double %28, double 2.000000e+00, double 3.000000e+00)
  %30 = fptoui double %29 to i64
  %31 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %30) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2750, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #24
  br label %380

36:                                               ; preds = %25
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 56) #24
  %38 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #24
  %39 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #24
  %40 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !54
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %375

43:                                               ; preds = %36
  %44 = select i1 %26, float 1.000000e+00, float %13
  %45 = fpext float %44 to double
  %46 = tail call fastcc double @PerceptibleReciprocal(double noundef %45) #29
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %49 = fpext float %47 to double
  %50 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %51 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %52 = getelementptr inbounds i8, ptr %8, i64 32
  %53 = getelementptr inbounds i8, ptr %8, i64 48
  %54 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %55 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %56 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  br label %58

58:                                               ; preds = %43, %370
  %59 = phi i32 [ 1, %43 ], [ %371, %370 ]
  %60 = phi i64 [ 0, %43 ], [ %372, %370 ]
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %370, label %62

62:                                               ; preds = %58
  %63 = sitofp i64 %60 to double
  %64 = fadd double %63, 5.000000e-01
  %65 = fptrunc double %64 to float
  %66 = fdiv float %65, %3
  %67 = fpext float %66 to double
  %68 = fadd double %67, 1.000000e-15
  %69 = fptrunc double %68 to float
  %70 = fsub float %69, %27
  %71 = fpext float %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = call fastcc double @MagickMax(double noundef %72, double noundef 0.000000e+00) #29
  %74 = fptosi double %73 to i64
  %75 = fadd float %27, %69
  %76 = fpext float %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = load i64, ptr %48, align 8, !tbaa !54
  %79 = uitofp i64 %78 to double
  %80 = call fastcc double @MagickMin(double noundef %77, double noundef %79) #29
  %81 = fptosi double %80 to i64
  %82 = load ptr, ptr %31, align 8, !tbaa !48
  %83 = sub nsw i64 %81, %74
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %62, %85
  %86 = phi i64 [ %99, %85 ], [ 0, %62 ]
  %87 = phi float [ %98, %85 ], [ 0.000000e+00, %62 ]
  %88 = add nsw i64 %86, %74
  %89 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %86
  %90 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %86, i32 1
  store i64 %88, ptr %90, align 8, !tbaa !81
  %91 = sitofp i64 %88 to float
  %92 = fsub float %91, %69
  %93 = fpext float %92 to double
  %94 = fadd double %93, 5.000000e-01
  %95 = fmul double %94, %49
  %96 = fptrunc double %95 to float
  %97 = call float @GetResizeFilterWeight(ptr noundef %0, float noundef %96) #29
  store float %97, ptr %89, align 8, !tbaa !83
  %98 = fadd float %87, %97
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, %83
  br i1 %100, label %101, label %85, !llvm.loop !93

101:                                              ; preds = %85
  %102 = fcmp une float %98, 0.000000e+00
  %103 = fcmp une float %98, 1.000000e+00
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = fpext float %98 to double
  %107 = call fastcc double @PerceptibleReciprocal(double noundef %106) #29
  %108 = fptrunc double %107 to float
  br label %109

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %114, %109 ], [ 0, %105 ]
  %111 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %110
  %112 = load float, ptr %111, align 8, !tbaa !83
  %113 = fmul float %112, %108
  store float %113, ptr %111, align 8, !tbaa !83
  %114 = add nuw nsw i64 %110, 1
  %115 = icmp eq i64 %114, %83
  br i1 %115, label %116, label %109, !llvm.loop !94

116:                                              ; preds = %109, %62, %101
  %117 = phi i64 [ %83, %101 ], [ 0, %62 ], [ %83, %109 ]
  %118 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !81
  %120 = load i64, ptr %50, align 8, !tbaa !53
  %121 = getelementptr %struct._ContributionInfo, ptr %82, i64 %117
  %122 = getelementptr %struct._ContributionInfo, ptr %121, i64 -1, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !81
  %124 = sub i64 %123, %119
  %125 = add i64 %124, 1
  %126 = call ptr @GetCacheViewVirtualPixels(ptr noundef %38, i64 noundef 0, i64 noundef %119, i64 noundef %120, i64 noundef %125, ptr noundef %6) #30
  %127 = load i64, ptr %51, align 8, !tbaa !53
  %128 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %60, i64 noundef %127, i64 noundef 1, ptr noundef %6) #30
  %129 = icmp eq ptr %126, null
  %130 = icmp eq ptr %128, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %370, label %132

132:                                              ; preds = %116
  %133 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %38) #24
  %134 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %39) #24
  %135 = load i64, ptr %51, align 8, !tbaa !53
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %358

137:                                              ; preds = %132
  %138 = load i32, ptr %54, align 8, !tbaa !75
  %139 = icmp eq i32 %138, 0
  %140 = icmp eq i64 %117, 0
  %141 = icmp eq ptr %133, null
  %142 = icmp eq ptr %134, null
  %143 = load i32, ptr %2, align 8, !tbaa !68
  %144 = icmp eq i32 %143, 2
  %145 = fpext float %69 to double
  %146 = sitofp i64 %74 to double
  %147 = sitofp i64 %81 to double
  %148 = fadd double %147, -1.000000e+00
  br label %149

149:                                              ; preds = %137, %354
  %150 = phi i64 [ 0, %137 ], [ %356, %354 ]
  %151 = phi ptr [ %128, %137 ], [ %355, %354 ]
  %152 = load <4 x float>, ptr %52, align 8
  %153 = load float, ptr %53, align 8, !tbaa.struct !86
  br i1 %139, label %159, label %154

154:                                              ; preds = %149
  br i1 %140, label %256, label %155

155:                                              ; preds = %154
  %156 = load i64, ptr %118, align 8, !tbaa !81
  %157 = load i64, ptr %50, align 8, !tbaa !53
  %158 = getelementptr %struct._PixelPacket, ptr %126, i64 %150
  br label %227

159:                                              ; preds = %149
  br i1 %140, label %182, label %160

160:                                              ; preds = %159
  %161 = load i64, ptr %118, align 8, !tbaa !81
  %162 = load i64, ptr %50, align 8, !tbaa !53
  %163 = getelementptr %struct._PixelPacket, ptr %126, i64 %150
  br label %164

164:                                              ; preds = %160, %164
  %165 = phi i64 [ 0, %160 ], [ %180, %164 ]
  %166 = phi <4 x float> [ %152, %160 ], [ %179, %164 ]
  %167 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %165
  %168 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %165, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !81
  %170 = sub nsw i64 %169, %161
  %171 = mul i64 %170, %162
  %172 = load float, ptr %167, align 8, !tbaa !83
  %173 = getelementptr %struct._PixelPacket, ptr %163, i64 %171
  %174 = load <4 x i16>, ptr %173, align 2, !tbaa !70
  %175 = uitofp <4 x i16> %174 to <4 x float>
  %176 = shufflevector <4 x float> %175, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %177 = insertelement <4 x float> poison, float %172, i64 0
  %178 = shufflevector <4 x float> %177, <4 x float> poison, <4 x i32> zeroinitializer
  %179 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %178, <4 x float> %176, <4 x float> %166)
  %180 = add nuw nsw i64 %165, 1
  %181 = icmp eq i64 %180, %117
  br i1 %181, label %182, label %164, !llvm.loop !95

182:                                              ; preds = %164, %159
  %183 = phi <4 x float> [ %152, %159 ], [ %179, %164 ]
  %184 = extractelement <4 x float> %183, i64 0
  %185 = call fastcc zeroext i16 @ClampToQuantum(float noundef %184) #29
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  store i16 %185, ptr %186, align 2, !tbaa !60
  %187 = extractelement <4 x float> %183, i64 1
  %188 = call fastcc zeroext i16 @ClampToQuantum(float noundef %187) #29
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  store i16 %188, ptr %189, align 2, !tbaa !62
  %190 = extractelement <4 x float> %183, i64 2
  %191 = call fastcc zeroext i16 @ClampToQuantum(float noundef %190) #29
  store i16 %191, ptr %151, align 2, !tbaa !64
  %192 = extractelement <4 x float> %183, i64 3
  %193 = call fastcc zeroext i16 @ClampToQuantum(float noundef %192) #29
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  store i16 %193, ptr %194, align 2, !tbaa !66
  %195 = load i32, ptr %55, align 4, !tbaa !67
  %196 = icmp eq i32 %195, 12
  br i1 %196, label %197, label %329

197:                                              ; preds = %182
  %198 = load i32, ptr %56, align 4, !tbaa !67
  %199 = icmp eq i32 %198, 12
  br i1 %199, label %200, label %329

200:                                              ; preds = %197
  %201 = getelementptr i16, ptr %133, i64 %150
  br i1 %140, label %225, label %202

202:                                              ; preds = %200
  %203 = load i64, ptr %118, align 8, !tbaa !81
  %204 = load i64, ptr %50, align 8, !tbaa !53
  br label %205

205:                                              ; preds = %202, %219
  %206 = phi i64 [ 0, %202 ], [ %223, %219 ]
  %207 = phi float [ %153, %202 ], [ %222, %219 ]
  %208 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %206
  %209 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %206, i32 1
  %210 = load i64, ptr %209, align 8, !tbaa !81
  %211 = sub nsw i64 %210, %203
  %212 = mul i64 %211, %204
  %213 = load float, ptr %208, align 8, !tbaa !83
  %214 = getelementptr i16, ptr %201, i64 %212
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %205
  %217 = load i16, ptr %214, align 2, !tbaa !70
  %218 = zext i16 %217 to i32
  br label %219

219:                                              ; preds = %205, %216
  %220 = phi i32 [ %218, %216 ], [ 0, %205 ]
  %221 = sitofp i32 %220 to float
  %222 = call float @llvm.fmuladd.f32(float %213, float %221, float %207)
  %223 = add nuw nsw i64 %206, 1
  %224 = icmp eq i64 %223, %117
  br i1 %224, label %225, label %205, !llvm.loop !96

225:                                              ; preds = %219, %200
  %226 = phi float [ %153, %200 ], [ %222, %219 ]
  br i1 %142, label %329, label %325

227:                                              ; preds = %155, %227
  %228 = phi double [ 0.000000e+00, %155 ], [ %253, %227 ]
  %229 = phi i64 [ 0, %155 ], [ %254, %227 ]
  %230 = phi <4 x float> [ %152, %155 ], [ %251, %227 ]
  %231 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %229
  %232 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %229, i32 1
  %233 = load i64, ptr %232, align 8, !tbaa !81
  %234 = sub nsw i64 %233, %156
  %235 = mul i64 %234, %157
  %236 = load float, ptr %231, align 8, !tbaa !83
  %237 = fpext float %236 to double
  %238 = fmul double %237, 0x3EF0001000100010
  %239 = getelementptr %struct._PixelPacket, ptr %158, i64 %235
  %240 = load <4 x i16>, ptr %239, align 2, !tbaa !70
  %241 = extractelement <4 x i16> %240, i64 3
  %242 = xor i16 %241, -1
  %243 = uitofp i16 %242 to double
  %244 = fmul double %238, %243
  %245 = fptrunc double %244 to float
  %246 = uitofp <4 x i16> %240 to <4 x float>
  %247 = shufflevector <4 x float> %246, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %248 = insertelement <4 x float> poison, float %236, i64 0
  %249 = insertelement <4 x float> %248, float %245, i64 1
  %250 = shufflevector <4 x float> %249, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %251 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %250, <4 x float> %247, <4 x float> %230)
  %252 = fpext float %245 to double
  %253 = fadd double %228, %252
  %254 = add nuw nsw i64 %229, 1
  %255 = icmp eq i64 %254, %117
  br i1 %255, label %256, label %227, !llvm.loop !97

256:                                              ; preds = %227, %154
  %257 = phi double [ 0.000000e+00, %154 ], [ %253, %227 ]
  %258 = phi <4 x float> [ %152, %154 ], [ %251, %227 ]
  %259 = fcmp olt double %257, 0.000000e+00
  %260 = select i1 %259, double 0.000000e+00, double %257
  %261 = call fastcc double @PerceptibleReciprocal(double noundef %260) #29
  %262 = extractelement <4 x float> %258, i64 0
  %263 = fpext float %262 to double
  %264 = fmul double %261, %263
  %265 = fptrunc double %264 to float
  %266 = call fastcc zeroext i16 @ClampToQuantum(float noundef %265) #29
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  store i16 %266, ptr %267, align 2, !tbaa !60
  %268 = extractelement <4 x float> %258, i64 1
  %269 = fpext float %268 to double
  %270 = fmul double %261, %269
  %271 = fptrunc double %270 to float
  %272 = call fastcc zeroext i16 @ClampToQuantum(float noundef %271) #29
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  store i16 %272, ptr %273, align 2, !tbaa !62
  %274 = extractelement <4 x float> %258, i64 2
  %275 = fpext float %274 to double
  %276 = fmul double %261, %275
  %277 = fptrunc double %276 to float
  %278 = call fastcc zeroext i16 @ClampToQuantum(float noundef %277) #29
  store i16 %278, ptr %151, align 2, !tbaa !64
  %279 = extractelement <4 x float> %258, i64 3
  %280 = call fastcc zeroext i16 @ClampToQuantum(float noundef %279) #29
  %281 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 3
  store i16 %280, ptr %281, align 2, !tbaa !66
  %282 = load i32, ptr %55, align 4, !tbaa !67
  %283 = icmp eq i32 %282, 12
  br i1 %283, label %284, label %329

284:                                              ; preds = %256
  %285 = load i32, ptr %56, align 4, !tbaa !67
  %286 = icmp eq i32 %285, 12
  br i1 %286, label %287, label %329

287:                                              ; preds = %284
  br i1 %140, label %319, label %288

288:                                              ; preds = %287
  %289 = load i64, ptr %118, align 8, !tbaa !81
  %290 = load i64, ptr %50, align 8, !tbaa !53
  br label %291

291:                                              ; preds = %288, %313
  %292 = phi i64 [ 0, %288 ], [ %317, %313 ]
  %293 = phi float [ %153, %288 ], [ %316, %313 ]
  %294 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %292
  %295 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %292, i32 1
  %296 = load i64, ptr %295, align 8, !tbaa !81
  %297 = sub nsw i64 %296, %289
  %298 = mul i64 %297, %290
  %299 = add i64 %298, %150
  %300 = load float, ptr %294, align 8, !tbaa !83
  %301 = fpext float %300 to double
  %302 = fmul double %301, 0x3EF0001000100010
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 %299, i32 3
  %304 = load i16, ptr %303, align 2, !tbaa !66
  %305 = xor i16 %304, -1
  %306 = uitofp i16 %305 to double
  %307 = fmul double %302, %306
  %308 = fptrunc double %307 to float
  br i1 %141, label %313, label %309

309:                                              ; preds = %291
  %310 = getelementptr inbounds i16, ptr %133, i64 %299
  %311 = load i16, ptr %310, align 2, !tbaa !70
  %312 = zext i16 %311 to i32
  br label %313

313:                                              ; preds = %291, %309
  %314 = phi i32 [ %312, %309 ], [ 0, %291 ]
  %315 = sitofp i32 %314 to float
  %316 = call float @llvm.fmuladd.f32(float %308, float %315, float %293)
  %317 = add nuw nsw i64 %292, 1
  %318 = icmp eq i64 %317, %117
  br i1 %318, label %319, label %291, !llvm.loop !98

319:                                              ; preds = %313, %287
  %320 = phi float [ %153, %287 ], [ %316, %313 ]
  br i1 %142, label %329, label %321

321:                                              ; preds = %319
  %322 = fpext float %320 to double
  %323 = fmul double %261, %322
  %324 = fptrunc double %323 to float
  br label %325

325:                                              ; preds = %225, %321
  %326 = phi float [ %324, %321 ], [ %226, %225 ]
  %327 = getelementptr inbounds i16, ptr %134, i64 %150
  %328 = call fastcc zeroext i16 @ClampToQuantum(float noundef %326) #29
  store i16 %328, ptr %327, align 2, !tbaa !70
  br label %329

329:                                              ; preds = %325, %256, %284, %319, %182, %197, %225
  br i1 %144, label %330, label %354

330:                                              ; preds = %329
  %331 = load i32, ptr %1, align 8, !tbaa !68
  %332 = icmp eq i32 %331, 2
  br i1 %332, label %333, label %354

333:                                              ; preds = %330
  %334 = getelementptr inbounds i16, ptr %134, i64 %150
  br i1 %142, label %354, label %335

335:                                              ; preds = %333
  %336 = call fastcc double @MagickMax(double noundef %145, double noundef %146) #29
  %337 = call fastcc double @MagickMin(double noundef %336, double noundef %148) #29
  %338 = fadd double %337, 5.000000e-01
  %339 = fptosi double %338 to i64
  %340 = sub nsw i64 %339, %74
  %341 = getelementptr inbounds %struct._ContributionInfo, ptr %82, i64 %340, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !81
  %343 = load i64, ptr %118, align 8, !tbaa !81
  %344 = sub nsw i64 %342, %343
  %345 = load i64, ptr %50, align 8, !tbaa !53
  %346 = mul i64 %344, %345
  %347 = getelementptr i16, ptr %133, i64 %346
  %348 = getelementptr i16, ptr %347, i64 %150
  %349 = icmp eq ptr %348, null
  br i1 %349, label %352, label %350

350:                                              ; preds = %335
  %351 = load i16, ptr %348, align 2, !tbaa !70
  br label %352

352:                                              ; preds = %335, %350
  %353 = phi i16 [ %351, %350 ], [ 0, %335 ]
  store i16 %353, ptr %334, align 2, !tbaa !70
  br label %354

354:                                              ; preds = %333, %352, %330, %329
  %355 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %356 = add nuw nsw i64 %150, 1
  %357 = icmp eq i64 %356, %135
  br i1 %357, label %358, label %149, !llvm.loop !99

358:                                              ; preds = %354, %132
  %359 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %39, ptr noundef %6) #30
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i32
  %362 = load ptr, ptr %57, align 8, !tbaa !56
  %363 = icmp eq ptr %362, null
  br i1 %363, label %370, label %364

364:                                              ; preds = %358
  %365 = load i64, ptr %5, align 8, !tbaa !76
  %366 = add nsw i64 %365, 1
  store i64 %366, ptr %5, align 8, !tbaa !76
  %367 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, i64 noundef %365, i64 noundef %4) #29
  %368 = icmp eq i32 %367, 0
  %369 = select i1 %368, i32 0, i32 %361
  br label %370

370:                                              ; preds = %358, %364, %116, %58
  %371 = phi i32 [ 0, %58 ], [ 0, %116 ], [ %369, %364 ], [ %361, %358 ]
  %372 = add nuw nsw i64 %60, 1
  %373 = load i64, ptr %40, align 8, !tbaa !54
  %374 = icmp slt i64 %372, %373
  br i1 %374, label %58, label %375, !llvm.loop !100

375:                                              ; preds = %370, %36
  %376 = phi i32 [ 1, %36 ], [ %371, %370 ]
  %377 = call ptr @DestroyCacheView(ptr noundef %39) #24
  %378 = call ptr @DestroyCacheView(ptr noundef %38) #24
  %379 = call fastcc ptr @DestroyContributionThreadSet(ptr noundef nonnull %31) #29
  br label %380

380:                                              ; preds = %375, %33, %23
  %381 = phi i32 [ 0, %23 ], [ 0, %33 ], [ %376, %375 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #26
  ret i32 %381
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SampleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3130, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #24
  br label %12

12:                                               ; preds = %9, %4
  %13 = icmp eq i64 %1, 0
  %14 = icmp eq i64 %2, 0
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3134, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #24
  br label %188

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !53
  %22 = icmp eq i64 %21, %1
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !54
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #24
  br label %188

29:                                               ; preds = %23, %19
  %30 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %188, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.35) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #26
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %33, ptr noundef nonnull %5) #24
  %37 = call i32 @ParseGeometry(ptr noundef nonnull %33, ptr noundef nonnull %5) #24
  %38 = load double, ptr %5, align 8, !tbaa !101
  %39 = fdiv double %38, 1.000000e+02
  %40 = fadd double %39, -1.000000e-15
  %41 = and i32 %37, 8
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %44 = load double, ptr %43, align 8
  %45 = fdiv double %44, 1.000000e+02
  %46 = fadd double %45, -1.000000e-15
  %47 = select i1 %42, double %40, double %46
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #26
  br label %48

48:                                               ; preds = %35, %32
  %49 = phi double [ %47, %35 ], [ 0x3FDFFFFFFFFFFFEE, %32 ]
  %50 = phi double [ %40, %35 ], [ 0x3FDFFFFFFFFFFFEE, %32 ]
  %51 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !53
  %53 = call ptr @AcquireQuantumMemory(i64 noundef %52, i64 noundef 8) #31
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i64, ptr %51, align 8, !tbaa !53
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %62, label %77

58:                                               ; preds = %48
  %59 = call ptr @DestroyImage(ptr noundef nonnull %30) #24
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %61 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3172, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %60) #24
  br label %188

62:                                               ; preds = %55, %62
  %63 = phi i64 [ %75, %62 ], [ %56, %55 ]
  %64 = phi i64 [ %74, %62 ], [ 0, %55 ]
  %65 = sitofp i64 %64 to double
  %66 = fadd double %50, %65
  %67 = load i64, ptr %20, align 8, !tbaa !53
  %68 = uitofp i64 %67 to double
  %69 = fmul double %66, %68
  %70 = uitofp i64 %63 to double
  %71 = fdiv double %69, %70
  %72 = fptosi double %71 to i64
  %73 = getelementptr inbounds i64, ptr %53, i64 %64
  store i64 %72, ptr %73, align 8, !tbaa !103
  %74 = add nuw nsw i64 %64, 1
  %75 = load i64, ptr %51, align 8, !tbaa !53
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %62, label %77, !llvm.loop !104

77:                                               ; preds = %62, %55
  %78 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #24
  %79 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %30, ptr noundef %3) #24
  %80 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !54
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %181

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %87

87:                                               ; preds = %83, %165
  %88 = phi i64 [ %81, %83 ], [ %169, %165 ]
  %89 = phi i32 [ 1, %83 ], [ %167, %165 ]
  %90 = phi i64 [ 0, %83 ], [ %166, %165 ]
  %91 = phi i64 [ 0, %83 ], [ %168, %165 ]
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %165, label %93

93:                                               ; preds = %87
  %94 = sitofp i64 %91 to double
  %95 = fadd double %49, %94
  %96 = load i64, ptr %84, align 8, !tbaa !54
  %97 = uitofp i64 %96 to double
  %98 = fmul double %95, %97
  %99 = uitofp i64 %88 to double
  %100 = fdiv double %98, %99
  %101 = fptosi double %100 to i64
  %102 = load i64, ptr %20, align 8, !tbaa !53
  %103 = call ptr @GetCacheViewVirtualPixels(ptr noundef %78, i64 noundef 0, i64 noundef %101, i64 noundef %102, i64 noundef 1, ptr noundef %3) #30
  %104 = load i64, ptr %51, align 8, !tbaa !53
  %105 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %79, i64 noundef 0, i64 noundef %91, i64 noundef %104, i64 noundef 1, ptr noundef %3) #30
  %106 = icmp eq ptr %103, null
  %107 = icmp eq ptr %105, null
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %165, label %109

109:                                              ; preds = %93
  %110 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %78) #24
  %111 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %79) #24
  %112 = load i64, ptr %51, align 8, !tbaa !53
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109, %114
  %115 = phi i64 [ %122, %114 ], [ 0, %109 ]
  %116 = phi ptr [ %117, %114 ], [ %105, %109 ]
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %118 = getelementptr inbounds i64, ptr %53, i64 %115
  %119 = load i64, ptr %118, align 8, !tbaa !103
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 %119
  %121 = load i64, ptr %120, align 2
  store i64 %121, ptr %116, align 2
  %122 = add nuw nsw i64 %115, 1
  %123 = load i64, ptr %51, align 8, !tbaa !53
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %114, label %125, !llvm.loop !105

125:                                              ; preds = %114, %109
  %126 = phi i64 [ %112, %109 ], [ %123, %114 ]
  %127 = load i32, ptr %0, align 8, !tbaa !68
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %85, align 4, !tbaa !67
  %131 = icmp eq i32 %130, 12
  %132 = icmp sgt i64 %126, 0
  %133 = and i1 %131, %132
  br i1 %133, label %136, label %153

134:                                              ; preds = %125
  %135 = icmp sgt i64 %126, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %129, %134
  %137 = icmp eq ptr %111, null
  %138 = icmp eq ptr %110, null
  br label %139

139:                                              ; preds = %136, %150
  %140 = phi i64 [ 0, %136 ], [ %151, %150 ]
  %141 = getelementptr inbounds i16, ptr %111, i64 %140
  br i1 %137, label %150, label %142

142:                                              ; preds = %139
  br i1 %138, label %148, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds i64, ptr %53, i64 %140
  %145 = load i64, ptr %144, align 8, !tbaa !103
  %146 = getelementptr inbounds i16, ptr %110, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !70
  br label %148

148:                                              ; preds = %142, %143
  %149 = phi i16 [ %147, %143 ], [ 0, %142 ]
  store i16 %149, ptr %141, align 2, !tbaa !70
  br label %150

150:                                              ; preds = %139, %148
  %151 = add nuw nsw i64 %140, 1
  %152 = icmp eq i64 %151, %126
  br i1 %152, label %153, label %139, !llvm.loop !106

153:                                              ; preds = %150, %134, %129
  %154 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %79, ptr noundef %3) #30
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load ptr, ptr %86, align 8, !tbaa !56
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = add nsw i64 %90, 1
  %161 = load i64, ptr %84, align 8, !tbaa !54
  %162 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i64 noundef %90, i64 noundef %161) #29
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 0, i32 %156
  br label %165

165:                                              ; preds = %153, %159, %93, %87
  %166 = phi i64 [ %90, %87 ], [ %90, %93 ], [ %160, %159 ], [ %90, %153 ]
  %167 = phi i32 [ 0, %87 ], [ 0, %93 ], [ %164, %159 ], [ %156, %153 ]
  %168 = add nuw nsw i64 %91, 1
  %169 = load i64, ptr %80, align 8, !tbaa !54
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %87, label %171, !llvm.loop !107

171:                                              ; preds = %165
  %172 = icmp eq i32 %167, 0
  %173 = call ptr @DestroyCacheView(ptr noundef %78) #24
  %174 = call ptr @DestroyCacheView(ptr noundef %79) #24
  %175 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #24
  %176 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %177 = load i32, ptr %176, align 8, !tbaa !78
  %178 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 77
  store i32 %177, ptr %178, align 8, !tbaa !78
  br i1 %172, label %179, label %188

179:                                              ; preds = %171
  %180 = call ptr @DestroyImage(ptr noundef nonnull %30) #24
  br label %188

181:                                              ; preds = %77
  %182 = call ptr @DestroyCacheView(ptr noundef %78) #24
  %183 = call ptr @DestroyCacheView(ptr noundef %79) #24
  %184 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #24
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %186 = load i32, ptr %185, align 8, !tbaa !78
  %187 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 77
  store i32 %186, ptr %187, align 8, !tbaa !78
  br label %188

188:                                              ; preds = %181, %171, %179, %29, %58, %27, %16
  %189 = phi ptr [ null, %16 ], [ %28, %27 ], [ null, %58 ], [ null, %29 ], [ %180, %179 ], [ %30, %171 ], [ %30, %181 ]
  ret ptr %189
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ScaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #26
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3331, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #24
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %799, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #24
  br label %799

27:                                               ; preds = %21, %17
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %799, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %34) #24
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #24
  br label %799

36:                                               ; preds = %30
  %37 = load i64, ptr %18, align 8, !tbaa !53
  %38 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 56) #31
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %42 = load i64, ptr %41, align 8, !tbaa !54
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i64, ptr %18, align 8, !tbaa !53
  %46 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef 56) #31
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %38, %36 ]
  %49 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !53
  %51 = tail call ptr @AcquireQuantumMemory(i64 noundef %50, i64 noundef 56) #31
  %52 = load i64, ptr %18, align 8, !tbaa !53
  %53 = tail call ptr @AcquireQuantumMemory(i64 noundef %52, i64 noundef 56) #31
  %54 = insertelement <4 x ptr> poison, ptr %51, i64 0
  %55 = insertelement <4 x ptr> %54, ptr %48, i64 1
  %56 = insertelement <4 x ptr> %55, ptr %38, i64 2
  %57 = insertelement <4 x ptr> %56, ptr %53, i64 3
  %58 = freeze <4 x ptr> %57
  %59 = icmp eq <4 x ptr> %58, zeroinitializer
  %60 = bitcast <4 x i1> %59 to i4
  %61 = icmp eq i4 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #24
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3366, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %64) #24
  br label %799

66:                                               ; preds = %47
  %67 = load i64, ptr %41, align 8, !tbaa !54
  %68 = load i64, ptr %39, align 8, !tbaa !54
  %69 = load i64, ptr %18, align 8, !tbaa !53
  %70 = mul i64 %69, 56
  %71 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %53, i32 noundef 0, i64 noundef %70) #24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %72 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 56) #24
  %73 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #24
  %74 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %3) #24
  %75 = load i64, ptr %41, align 8, !tbaa !54
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %781

77:                                               ; preds = %66
  %78 = uitofp i64 %67 to double
  %79 = uitofp i64 %68 to double
  %80 = fdiv double %78, %79
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %82 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 6
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %87 = ptrtoint ptr %51 to i64
  br label %92

88:                                               ; preds = %774
  %89 = add nuw nsw i64 %93, 1
  %90 = load i64, ptr %41, align 8, !tbaa !54
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %778, !llvm.loop !108

92:                                               ; preds = %77, %88
  %93 = phi i64 [ 0, %77 ], [ %89, %88 ]
  %94 = phi i64 [ 0, %77 ], [ %457, %88 ]
  %95 = phi i64 [ 0, %77 ], [ %456, %88 ]
  %96 = phi double [ %80, %77 ], [ %455, %88 ]
  %97 = phi i32 [ 1, %77 ], [ %453, %88 ]
  %98 = phi i32 [ 1, %77 ], [ %452, %88 ]
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %778, label %100

100:                                              ; preds = %92
  %101 = load i64, ptr %49, align 8, !tbaa !53
  %102 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %74, i64 noundef 0, i64 noundef %93, i64 noundef %101, i64 noundef 1, ptr noundef %3) #30
  %103 = icmp eq ptr %102, null
  br i1 %103, label %778, label %104

104:                                              ; preds = %100
  %105 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %74) #24
  %106 = load i64, ptr %41, align 8, !tbaa !54
  %107 = load i64, ptr %39, align 8, !tbaa !54
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = fcmp olt double %96, 1.000000e+00
  br i1 %110, label %111, label %296

111:                                              ; preds = %109
  %112 = icmp eq ptr %105, null
  br label %167

113:                                              ; preds = %104
  %114 = add nsw i64 %95, 1
  %115 = load i64, ptr %18, align 8, !tbaa !53
  %116 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %95, i64 noundef %115, i64 noundef 1, ptr noundef %3) #30
  %117 = icmp eq ptr %116, null
  br i1 %117, label %778, label %118

118:                                              ; preds = %113
  %119 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #24
  %120 = load i64, ptr %18, align 8, !tbaa !53
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %450

122:                                              ; preds = %118
  %123 = load i32, ptr %81, align 8, !tbaa !75
  %124 = icmp eq i32 %123, 0
  %125 = icmp eq ptr %119, null
  br label %126

126:                                              ; preds = %122, %163
  %127 = phi i64 [ 0, %122 ], [ %165, %163 ]
  %128 = phi ptr [ %116, %122 ], [ %164, %163 ]
  %129 = phi float [ 1.000000e+00, %122 ], [ %138, %163 ]
  br i1 %124, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !66
  %133 = xor i16 %132, -1
  %134 = uitofp i16 %133 to double
  %135 = fmul double %134, 0x3EF0001000100010
  %136 = fptrunc double %135 to float
  br label %137

137:                                              ; preds = %130, %126
  %138 = phi float [ %136, %130 ], [ %129, %126 ]
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 5
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 1
  %141 = load <2 x i16>, ptr %140, align 2, !tbaa !70
  %142 = uitofp <2 x i16> %141 to <2 x float>
  %143 = insertelement <2 x float> poison, float %138, i64 0
  %144 = shufflevector <2 x float> %143, <2 x float> poison, <2 x i32> zeroinitializer
  %145 = fmul <2 x float> %144, %142
  %146 = shufflevector <2 x float> %145, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %146, ptr %139, align 8, !tbaa !43
  %147 = load i16, ptr %128, align 2, !tbaa !64
  %148 = uitofp i16 %147 to float
  %149 = fmul float %138, %148
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 7
  store float %149, ptr %150, align 8, !tbaa !63
  br i1 %124, label %156, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !66
  %154 = uitofp i16 %153 to float
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 8
  store float %154, ptr %155, align 4, !tbaa !65
  br label %156

156:                                              ; preds = %151, %137
  br i1 %125, label %163, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds i16, ptr %119, i64 %127
  %159 = load i16, ptr %158, align 2, !tbaa !70
  %160 = uitofp i16 %159 to float
  %161 = fmul float %138, %160
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 9
  store float %161, ptr %162, align 8, !tbaa !69
  br label %163

163:                                              ; preds = %157, %156
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %165 = add nuw nsw i64 %127, 1
  %166 = icmp eq i64 %165, %120
  br i1 %166, label %450, label %126, !llvm.loop !109

167:                                              ; preds = %111, %288
  %168 = phi i64 [ %107, %111 ], [ %292, %288 ]
  %169 = phi i64 [ %94, %111 ], [ %241, %288 ]
  %170 = phi i64 [ %95, %111 ], [ %240, %288 ]
  %171 = phi double [ 1.000000e+00, %111 ], [ %289, %288 ]
  %172 = phi double [ %96, %111 ], [ %294, %288 ]
  %173 = phi float [ 1.000000e+00, %111 ], [ %239, %288 ]
  %174 = phi i32 [ %98, %111 ], [ 1, %288 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i64, ptr %18, align 8, !tbaa !53
  br label %237

178:                                              ; preds = %167
  %179 = icmp slt i64 %169, %168
  %180 = load i64, ptr %18, align 8, !tbaa !53
  br i1 %179, label %181, label %237

181:                                              ; preds = %178
  %182 = add nsw i64 %170, 1
  %183 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %170, i64 noundef %180, i64 noundef 1, ptr noundef %3) #30
  %184 = icmp eq ptr %183, null
  br i1 %184, label %299, label %185

185:                                              ; preds = %181
  %186 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #24
  %187 = load i64, ptr %18, align 8, !tbaa !53
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %185
  %190 = load i32, ptr %81, align 8, !tbaa !75
  %191 = icmp eq i32 %190, 0
  %192 = icmp eq ptr %186, null
  br label %193

193:                                              ; preds = %189, %230
  %194 = phi i64 [ 0, %189 ], [ %232, %230 ]
  %195 = phi ptr [ %183, %189 ], [ %231, %230 ]
  %196 = phi float [ %173, %189 ], [ %205, %230 ]
  br i1 %191, label %204, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 3
  %199 = load i16, ptr %198, align 2, !tbaa !66
  %200 = xor i16 %199, -1
  %201 = uitofp i16 %200 to double
  %202 = fmul double %201, 0x3EF0001000100010
  %203 = fptrunc double %202 to float
  br label %204

204:                                              ; preds = %197, %193
  %205 = phi float [ %203, %197 ], [ %196, %193 ]
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 5
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 1
  %208 = load <2 x i16>, ptr %207, align 2, !tbaa !70
  %209 = uitofp <2 x i16> %208 to <2 x float>
  %210 = insertelement <2 x float> poison, float %205, i64 0
  %211 = shufflevector <2 x float> %210, <2 x float> poison, <2 x i32> zeroinitializer
  %212 = fmul <2 x float> %211, %209
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %213, ptr %206, align 8, !tbaa !43
  %214 = load i16, ptr %195, align 2, !tbaa !64
  %215 = uitofp i16 %214 to float
  %216 = fmul float %205, %215
  %217 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 7
  store float %216, ptr %217, align 8, !tbaa !63
  br i1 %191, label %223, label %218

218:                                              ; preds = %204
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 3
  %220 = load i16, ptr %219, align 2, !tbaa !66
  %221 = uitofp i16 %220 to float
  %222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 8
  store float %221, ptr %222, align 4, !tbaa !65
  br label %223

223:                                              ; preds = %218, %204
  br i1 %192, label %230, label %224

224:                                              ; preds = %223
  %225 = getelementptr inbounds i16, ptr %186, i64 %194
  %226 = load i16, ptr %225, align 2, !tbaa !70
  %227 = uitofp i16 %226 to float
  %228 = fmul float %205, %227
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 9
  store float %228, ptr %229, align 8, !tbaa !69
  br label %230

230:                                              ; preds = %224, %223
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 1
  %232 = add nuw nsw i64 %194, 1
  %233 = icmp eq i64 %232, %187
  br i1 %233, label %234, label %193, !llvm.loop !110

234:                                              ; preds = %230, %185
  %235 = phi float [ %173, %185 ], [ %205, %230 ]
  %236 = add nsw i64 %169, 1
  br label %237

237:                                              ; preds = %176, %234, %178
  %238 = phi i64 [ %187, %234 ], [ %180, %178 ], [ %177, %176 ]
  %239 = phi float [ %235, %234 ], [ %173, %178 ], [ %173, %176 ]
  %240 = phi i64 [ %182, %234 ], [ %170, %178 ], [ %170, %176 ]
  %241 = phi i64 [ %236, %234 ], [ %169, %178 ], [ %169, %176 ]
  %242 = icmp sgt i64 %238, 0
  br i1 %242, label %243, label %288

243:                                              ; preds = %237
  %244 = load i32, ptr %82, align 8, !tbaa !75
  %245 = icmp eq i32 %244, 0
  %246 = insertelement <2 x double> poison, double %172, i64 0
  %247 = shufflevector <2 x double> %246, <2 x double> poison, <2 x i32> zeroinitializer
  br label %248

248:                                              ; preds = %243, %285
  %249 = phi i64 [ 0, %243 ], [ %286, %285 ]
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 5
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 5
  %252 = load <2 x float>, ptr %250, align 8, !tbaa !43
  %253 = fpext <2 x float> %252 to <2 x double>
  %254 = load <2 x float>, ptr %251, align 8, !tbaa !43
  %255 = fpext <2 x float> %254 to <2 x double>
  %256 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %247, <2 x double> %253, <2 x double> %255)
  %257 = fptrunc <2 x double> %256 to <2 x float>
  store <2 x float> %257, ptr %251, align 8, !tbaa !43
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 7
  %259 = load float, ptr %258, align 8, !tbaa !63
  %260 = fpext float %259 to double
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 7
  %262 = load float, ptr %261, align 8, !tbaa !63
  %263 = fpext float %262 to double
  %264 = call double @llvm.fmuladd.f64(double %172, double %260, double %263)
  %265 = fptrunc double %264 to float
  store float %265, ptr %261, align 8, !tbaa !63
  br i1 %245, label %275, label %266

266:                                              ; preds = %248
  %267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 8
  %268 = load float, ptr %267, align 4, !tbaa !65
  %269 = fpext float %268 to double
  %270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 8
  %271 = load float, ptr %270, align 4, !tbaa !65
  %272 = fpext float %271 to double
  %273 = call double @llvm.fmuladd.f64(double %172, double %269, double %272)
  %274 = fptrunc double %273 to float
  store float %274, ptr %270, align 4, !tbaa !65
  br label %275

275:                                              ; preds = %266, %248
  br i1 %112, label %285, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 9
  %278 = load float, ptr %277, align 8, !tbaa !69
  %279 = fpext float %278 to double
  %280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 9
  %281 = load float, ptr %280, align 8, !tbaa !69
  %282 = fpext float %281 to double
  %283 = call double @llvm.fmuladd.f64(double %172, double %279, double %282)
  %284 = fptrunc double %283 to float
  store float %284, ptr %280, align 8, !tbaa !69
  br label %285

285:                                              ; preds = %275, %276
  %286 = add nuw nsw i64 %249, 1
  %287 = icmp eq i64 %286, %238
  br i1 %287, label %288, label %248, !llvm.loop !111

288:                                              ; preds = %285, %237
  %289 = fsub double %171, %172
  %290 = load i64, ptr %41, align 8, !tbaa !54
  %291 = uitofp i64 %290 to double
  %292 = load i64, ptr %39, align 8, !tbaa !54
  %293 = uitofp i64 %292 to double
  %294 = fdiv double %291, %293
  %295 = fcmp olt double %294, %289
  br i1 %295, label %167, label %302, !llvm.loop !112

296:                                              ; preds = %109
  %297 = load i64, ptr %18, align 8, !tbaa !53
  %298 = icmp eq i32 %98, 0
  br i1 %298, label %368, label %302

299:                                              ; preds = %181
  %300 = load i64, ptr %39, align 8, !tbaa !54
  %301 = load i64, ptr %18, align 8, !tbaa !53
  br label %302

302:                                              ; preds = %288, %299, %296
  %303 = phi i64 [ %297, %296 ], [ %301, %299 ], [ %238, %288 ]
  %304 = phi i64 [ %107, %296 ], [ %300, %299 ], [ %292, %288 ]
  %305 = phi float [ 1.000000e+00, %296 ], [ %173, %299 ], [ %239, %288 ]
  %306 = phi double [ %96, %296 ], [ %172, %299 ], [ %294, %288 ]
  %307 = phi double [ 1.000000e+00, %296 ], [ %171, %299 ], [ %289, %288 ]
  %308 = phi i64 [ %94, %296 ], [ %169, %299 ], [ %241, %288 ]
  %309 = phi i64 [ %95, %296 ], [ %182, %299 ], [ %240, %288 ]
  %310 = phi i32 [ 1, %296 ], [ 0, %299 ], [ 1, %288 ]
  %311 = icmp slt i64 %308, %304
  br i1 %311, label %312, label %368

312:                                              ; preds = %302
  %313 = add nsw i64 %309, 1
  %314 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %309, i64 noundef %303, i64 noundef 1, ptr noundef %3) #30
  %315 = icmp eq ptr %314, null
  br i1 %315, label %778, label %316

316:                                              ; preds = %312
  %317 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #24
  %318 = load i64, ptr %18, align 8, !tbaa !53
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %365

320:                                              ; preds = %316
  %321 = load i32, ptr %81, align 8, !tbaa !75
  %322 = icmp eq i32 %321, 0
  %323 = icmp eq ptr %317, null
  br label %324

324:                                              ; preds = %320, %361
  %325 = phi i64 [ 0, %320 ], [ %363, %361 ]
  %326 = phi ptr [ %314, %320 ], [ %362, %361 ]
  %327 = phi float [ %305, %320 ], [ %336, %361 ]
  br i1 %322, label %335, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 3
  %330 = load i16, ptr %329, align 2, !tbaa !66
  %331 = xor i16 %330, -1
  %332 = uitofp i16 %331 to double
  %333 = fmul double %332, 0x3EF0001000100010
  %334 = fptrunc double %333 to float
  br label %335

335:                                              ; preds = %328, %324
  %336 = phi float [ %334, %328 ], [ %327, %324 ]
  %337 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 5
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 1
  %339 = load <2 x i16>, ptr %338, align 2, !tbaa !70
  %340 = uitofp <2 x i16> %339 to <2 x float>
  %341 = insertelement <2 x float> poison, float %336, i64 0
  %342 = shufflevector <2 x float> %341, <2 x float> poison, <2 x i32> zeroinitializer
  %343 = fmul <2 x float> %342, %340
  %344 = shufflevector <2 x float> %343, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %344, ptr %337, align 8, !tbaa !43
  %345 = load i16, ptr %326, align 2, !tbaa !64
  %346 = uitofp i16 %345 to float
  %347 = fmul float %336, %346
  %348 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 7
  store float %347, ptr %348, align 8, !tbaa !63
  br i1 %322, label %354, label %349

349:                                              ; preds = %335
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 3
  %351 = load i16, ptr %350, align 2, !tbaa !66
  %352 = uitofp i16 %351 to float
  %353 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 8
  store float %352, ptr %353, align 4, !tbaa !65
  br label %354

354:                                              ; preds = %349, %335
  br i1 %323, label %361, label %355

355:                                              ; preds = %354
  %356 = getelementptr inbounds i16, ptr %317, i64 %325
  %357 = load i16, ptr %356, align 2, !tbaa !70
  %358 = uitofp i16 %357 to float
  %359 = fmul float %336, %358
  %360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 9
  store float %359, ptr %360, align 8, !tbaa !69
  br label %361

361:                                              ; preds = %355, %354
  %362 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 1
  %363 = add nuw nsw i64 %325, 1
  %364 = icmp eq i64 %363, %318
  br i1 %364, label %365, label %324, !llvm.loop !113

365:                                              ; preds = %361, %316
  %366 = phi float [ %305, %316 ], [ %336, %361 ]
  %367 = add nsw i64 %308, 1
  br label %368

368:                                              ; preds = %296, %365, %302
  %369 = phi i64 [ %318, %365 ], [ %303, %302 ], [ %297, %296 ]
  %370 = phi double [ %306, %365 ], [ %306, %302 ], [ %96, %296 ]
  %371 = phi double [ %307, %365 ], [ %307, %302 ], [ 1.000000e+00, %296 ]
  %372 = phi i32 [ %310, %365 ], [ %310, %302 ], [ 1, %296 ]
  %373 = phi i32 [ 0, %365 ], [ 1, %302 ], [ 0, %296 ]
  %374 = phi float [ %366, %365 ], [ %305, %302 ], [ 1.000000e+00, %296 ]
  %375 = phi i64 [ %313, %365 ], [ %309, %302 ], [ %95, %296 ]
  %376 = phi i64 [ %367, %365 ], [ %308, %302 ], [ %94, %296 ]
  %377 = icmp sgt i64 %369, 0
  br i1 %377, label %378, label %440

378:                                              ; preds = %368
  %379 = icmp eq ptr %105, null
  %380 = insertelement <2 x double> poison, double %371, i64 0
  %381 = shufflevector <2 x double> %380, <2 x double> poison, <2 x i32> zeroinitializer
  br label %382

382:                                              ; preds = %378, %435
  %383 = phi i64 [ 0, %378 ], [ %437, %435 ]
  %384 = phi ptr [ %48, %378 ], [ %436, %435 ]
  %385 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383
  %386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 5
  %387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 5
  %388 = load <2 x float>, ptr %386, align 8, !tbaa !43
  %389 = fpext <2 x float> %388 to <2 x double>
  %390 = load <2 x float>, ptr %387, align 8, !tbaa !43
  %391 = fpext <2 x float> %390 to <2 x double>
  %392 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %381, <2 x double> %391, <2 x double> %389)
  %393 = fptrunc <2 x double> %392 to <2 x float>
  store <2 x float> %393, ptr %83, align 8, !tbaa !43
  %394 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 7
  %395 = load float, ptr %394, align 8, !tbaa !63
  %396 = fpext float %395 to double
  %397 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 7
  %398 = load float, ptr %397, align 8, !tbaa !63
  %399 = fpext float %398 to double
  %400 = call double @llvm.fmuladd.f64(double %371, double %399, double %396)
  %401 = fptrunc double %400 to float
  store float %401, ptr %84, align 8, !tbaa !63
  %402 = load i32, ptr %81, align 8, !tbaa !75
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %382
  %405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 8
  %406 = load float, ptr %405, align 4, !tbaa !65
  %407 = fpext float %406 to double
  %408 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 8
  %409 = load float, ptr %408, align 4, !tbaa !65
  %410 = fpext float %409 to double
  %411 = call double @llvm.fmuladd.f64(double %371, double %410, double %407)
  %412 = fptrunc double %411 to float
  store float %412, ptr %85, align 4, !tbaa !65
  br label %413

413:                                              ; preds = %404, %382
  br i1 %379, label %423, label %414

414:                                              ; preds = %413
  %415 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 9
  %416 = load float, ptr %415, align 8, !tbaa !69
  %417 = fpext float %416 to double
  %418 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 9
  %419 = load float, ptr %418, align 8, !tbaa !69
  %420 = fpext float %419 to double
  %421 = call double @llvm.fmuladd.f64(double %371, double %420, double %417)
  %422 = fptrunc double %421 to float
  store float %422, ptr %86, align 8, !tbaa !69
  br label %423

423:                                              ; preds = %414, %413
  %424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 5
  store <2 x float> %393, ptr %424, align 8, !tbaa !43
  %425 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 7
  store float %401, ptr %425, align 8, !tbaa !63
  %426 = load i32, ptr %82, align 8, !tbaa !75
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %423
  %429 = load float, ptr %85, align 4, !tbaa !65
  %430 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 8
  store float %429, ptr %430, align 4, !tbaa !65
  br label %431

431:                                              ; preds = %428, %423
  br i1 %379, label %435, label %432

432:                                              ; preds = %431
  %433 = load float, ptr %86, align 8, !tbaa !69
  %434 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 9
  store float %433, ptr %434, align 8, !tbaa !69
  br label %435

435:                                              ; preds = %432, %431
  %436 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %385, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !114
  %437 = add nuw nsw i64 %383, 1
  %438 = load i64, ptr %18, align 8, !tbaa !53
  %439 = icmp slt i64 %437, %438
  br i1 %439, label %382, label %440, !llvm.loop !115

440:                                              ; preds = %435, %368
  %441 = phi i64 [ %369, %368 ], [ %438, %435 ]
  %442 = fsub double %370, %371
  %443 = fcmp ugt double %442, 0.000000e+00
  br i1 %443, label %450, label %444

444:                                              ; preds = %440
  %445 = load i64, ptr %41, align 8, !tbaa !54
  %446 = uitofp i64 %445 to double
  %447 = load i64, ptr %39, align 8, !tbaa !54
  %448 = uitofp i64 %447 to double
  %449 = fdiv double %446, %448
  br label %450

450:                                              ; preds = %163, %118, %440, %444
  %451 = phi i64 [ %441, %444 ], [ %441, %440 ], [ %120, %118 ], [ %120, %163 ]
  %452 = phi i32 [ 1, %444 ], [ %373, %440 ], [ %98, %118 ], [ %98, %163 ]
  %453 = phi i32 [ %372, %444 ], [ %372, %440 ], [ 1, %118 ], [ 1, %163 ]
  %454 = phi float [ %374, %444 ], [ %374, %440 ], [ 1.000000e+00, %118 ], [ %138, %163 ]
  %455 = phi double [ %449, %444 ], [ %442, %440 ], [ %96, %118 ], [ %96, %163 ]
  %456 = phi i64 [ %375, %444 ], [ %375, %440 ], [ %114, %118 ], [ %114, %163 ]
  %457 = phi i64 [ %376, %444 ], [ %376, %440 ], [ %94, %118 ], [ %94, %163 ]
  %458 = load i64, ptr %49, align 8, !tbaa !53
  %459 = icmp eq i64 %458, %451
  br i1 %459, label %460, label %514

460:                                              ; preds = %450
  %461 = icmp sgt i64 %451, 0
  br i1 %461, label %462, label %771

462:                                              ; preds = %460
  %463 = load i32, ptr %82, align 8, !tbaa !75
  %464 = icmp eq i32 %463, 0
  %465 = icmp eq ptr %105, null
  br label %466

466:                                              ; preds = %462, %509
  %467 = phi i64 [ 0, %462 ], [ %512, %509 ]
  %468 = phi ptr [ %102, %462 ], [ %510, %509 ]
  %469 = phi ptr [ %48, %462 ], [ %511, %509 ]
  %470 = phi float [ %454, %462 ], [ %482, %509 ]
  br i1 %464, label %478, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 8
  %473 = load float, ptr %472, align 4, !tbaa !65
  %474 = fsub float 6.553500e+04, %473
  %475 = fpext float %474 to double
  %476 = fmul double %475, 0x3EF0001000100010
  %477 = fptrunc double %476 to float
  br label %478

478:                                              ; preds = %471, %466
  %479 = phi float [ %477, %471 ], [ %470, %466 ]
  %480 = fpext float %479 to double
  %481 = call fastcc double @PerceptibleReciprocal(double noundef %480) #29
  %482 = fptrunc double %481 to float
  %483 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 5
  %484 = load float, ptr %483, align 8, !tbaa !58
  %485 = fmul float %484, %482
  %486 = call fastcc zeroext i16 @ClampToQuantum(float noundef %485) #29
  %487 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 2
  store i16 %486, ptr %487, align 2, !tbaa !60
  %488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 6
  %489 = load float, ptr %488, align 4, !tbaa !61
  %490 = fmul float %489, %482
  %491 = call fastcc zeroext i16 @ClampToQuantum(float noundef %490) #29
  %492 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 1
  store i16 %491, ptr %492, align 2, !tbaa !62
  %493 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 7
  %494 = load float, ptr %493, align 8, !tbaa !63
  %495 = fmul float %494, %482
  %496 = call fastcc zeroext i16 @ClampToQuantum(float noundef %495) #29
  store i16 %496, ptr %468, align 2, !tbaa !64
  br i1 %464, label %502, label %497

497:                                              ; preds = %478
  %498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 8
  %499 = load float, ptr %498, align 4, !tbaa !65
  %500 = call fastcc zeroext i16 @ClampToQuantum(float noundef %499) #29
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 3
  store i16 %500, ptr %501, align 2, !tbaa !66
  br label %502

502:                                              ; preds = %497, %478
  br i1 %465, label %509, label %503

503:                                              ; preds = %502
  %504 = getelementptr inbounds i16, ptr %105, i64 %467
  %505 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 9
  %506 = load float, ptr %505, align 8, !tbaa !69
  %507 = fmul float %506, %482
  %508 = call fastcc zeroext i16 @ClampToQuantum(float noundef %507) #29
  store i16 %508, ptr %504, align 2, !tbaa !70
  br label %509

509:                                              ; preds = %503, %502
  %510 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 1
  %511 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 1
  %512 = add nuw nsw i64 %467, 1
  %513 = icmp eq i64 %512, %451
  br i1 %513, label %771, label %466, !llvm.loop !116

514:                                              ; preds = %450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !114
  %515 = icmp sgt i64 %451, 0
  br i1 %515, label %516, label %651

516:                                              ; preds = %514
  %517 = uitofp i64 %451 to double
  %518 = icmp eq ptr %105, null
  br label %519

519:                                              ; preds = %516, %642
  %520 = phi i64 [ 0, %516 ], [ %647, %642 ]
  %521 = phi ptr [ %51, %516 ], [ %645, %642 ]
  %522 = phi ptr [ %48, %516 ], [ %646, %642 ]
  %523 = phi double [ 1.000000e+00, %516 ], [ %644, %642 ]
  %524 = phi i32 [ 0, %516 ], [ %643, %642 ]
  %525 = load i64, ptr %49, align 8, !tbaa !53
  %526 = uitofp i64 %525 to double
  %527 = fdiv double %526, %517
  %528 = fcmp ult double %527, %523
  br i1 %528, label %590, label %529

529:                                              ; preds = %519
  %530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 5
  %531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 7
  %532 = load i32, ptr %81, align 8, !tbaa !75
  %533 = icmp eq i32 %532, 0
  %534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 8
  %535 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 9
  br label %536

536:                                              ; preds = %529, %587
  %537 = phi ptr [ %521, %529 ], [ %545, %587 ]
  %538 = phi double [ %523, %529 ], [ 1.000000e+00, %587 ]
  %539 = phi double [ %527, %529 ], [ %588, %587 ]
  %540 = phi i32 [ %524, %529 ], [ 1, %587 ]
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %544, label %542

542:                                              ; preds = %536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !114
  %543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %537, i64 1
  br label %544

544:                                              ; preds = %542, %536
  %545 = phi ptr [ %543, %542 ], [ %537, %536 ]
  %546 = load <2 x float>, ptr %530, align 8, !tbaa !43
  %547 = fpext <2 x float> %546 to <2 x double>
  %548 = load <2 x float>, ptr %83, align 8, !tbaa !43
  %549 = fpext <2 x float> %548 to <2 x double>
  %550 = insertelement <2 x double> poison, double %538, i64 0
  %551 = shufflevector <2 x double> %550, <2 x double> poison, <2 x i32> zeroinitializer
  %552 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %551, <2 x double> %547, <2 x double> %549)
  %553 = fptrunc <2 x double> %552 to <2 x float>
  store <2 x float> %553, ptr %83, align 8, !tbaa !43
  %554 = load float, ptr %531, align 8, !tbaa !63
  %555 = fpext float %554 to double
  %556 = load float, ptr %84, align 8, !tbaa !63
  %557 = fpext float %556 to double
  %558 = call double @llvm.fmuladd.f64(double %538, double %555, double %557)
  %559 = fptrunc double %558 to float
  store float %559, ptr %84, align 8, !tbaa !63
  br i1 %533, label %567, label %560

560:                                              ; preds = %544
  %561 = load float, ptr %534, align 4, !tbaa !65
  %562 = fpext float %561 to double
  %563 = load float, ptr %85, align 4, !tbaa !65
  %564 = fpext float %563 to double
  %565 = call double @llvm.fmuladd.f64(double %538, double %562, double %564)
  %566 = fptrunc double %565 to float
  store float %566, ptr %85, align 4, !tbaa !65
  br label %567

567:                                              ; preds = %560, %544
  br i1 %518, label %575, label %568

568:                                              ; preds = %567
  %569 = load float, ptr %535, align 8, !tbaa !69
  %570 = fpext float %569 to double
  %571 = load float, ptr %86, align 8, !tbaa !69
  %572 = fpext float %571 to double
  %573 = call double @llvm.fmuladd.f64(double %538, double %570, double %572)
  %574 = fptrunc double %573 to float
  store float %574, ptr %86, align 8, !tbaa !69
  br label %575

575:                                              ; preds = %568, %567
  %576 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 5
  store <2 x float> %553, ptr %576, align 8, !tbaa !43
  %577 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 7
  store float %559, ptr %577, align 8, !tbaa !63
  %578 = load i32, ptr %82, align 8, !tbaa !75
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %583, label %580

580:                                              ; preds = %575
  %581 = load float, ptr %85, align 4, !tbaa !65
  %582 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 8
  store float %581, ptr %582, align 4, !tbaa !65
  br label %583

583:                                              ; preds = %580, %575
  br i1 %518, label %587, label %584

584:                                              ; preds = %583
  %585 = load float, ptr %86, align 8, !tbaa !69
  %586 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 9
  store float %585, ptr %586, align 8, !tbaa !69
  br label %587

587:                                              ; preds = %584, %583
  %588 = fsub double %539, %538
  %589 = fcmp ult double %588, 1.000000e+00
  br i1 %589, label %592, label %536, !llvm.loop !117

590:                                              ; preds = %519
  %591 = fcmp ogt double %527, 0.000000e+00
  br i1 %591, label %594, label %642

592:                                              ; preds = %587
  %593 = fcmp ogt double %588, 0.000000e+00
  br i1 %593, label %596, label %642

594:                                              ; preds = %590
  %595 = icmp eq i32 %524, 0
  br i1 %595, label %601, label %596

596:                                              ; preds = %592, %594
  %597 = phi double [ %527, %594 ], [ %588, %592 ]
  %598 = phi double [ %523, %594 ], [ 1.000000e+00, %592 ]
  %599 = phi ptr [ %521, %594 ], [ %545, %592 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !114
  %600 = getelementptr inbounds %struct._MagickPixelPacket, ptr %599, i64 1
  br label %601

601:                                              ; preds = %596, %594
  %602 = phi double [ %597, %596 ], [ %527, %594 ]
  %603 = phi double [ %598, %596 ], [ %523, %594 ]
  %604 = phi ptr [ %600, %596 ], [ %521, %594 ]
  %605 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 5
  %606 = load <2 x float>, ptr %605, align 8, !tbaa !43
  %607 = fpext <2 x float> %606 to <2 x double>
  %608 = load <2 x float>, ptr %83, align 8, !tbaa !43
  %609 = fpext <2 x float> %608 to <2 x double>
  %610 = insertelement <2 x double> poison, double %602, i64 0
  %611 = shufflevector <2 x double> %610, <2 x double> poison, <2 x i32> zeroinitializer
  %612 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %611, <2 x double> %607, <2 x double> %609)
  %613 = fptrunc <2 x double> %612 to <2 x float>
  store <2 x float> %613, ptr %83, align 8, !tbaa !43
  %614 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 7
  %615 = load float, ptr %614, align 8, !tbaa !63
  %616 = fpext float %615 to double
  %617 = load float, ptr %84, align 8, !tbaa !63
  %618 = fpext float %617 to double
  %619 = call double @llvm.fmuladd.f64(double %602, double %616, double %618)
  %620 = fptrunc double %619 to float
  store float %620, ptr %84, align 8, !tbaa !63
  %621 = load i32, ptr %82, align 8, !tbaa !75
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %631, label %623

623:                                              ; preds = %601
  %624 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 8
  %625 = load float, ptr %624, align 4, !tbaa !65
  %626 = fpext float %625 to double
  %627 = load float, ptr %85, align 4, !tbaa !65
  %628 = fpext float %627 to double
  %629 = call double @llvm.fmuladd.f64(double %602, double %626, double %628)
  %630 = fptrunc double %629 to float
  store float %630, ptr %85, align 4, !tbaa !65
  br label %631

631:                                              ; preds = %623, %601
  br i1 %518, label %640, label %632

632:                                              ; preds = %631
  %633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 9
  %634 = load float, ptr %633, align 8, !tbaa !69
  %635 = fpext float %634 to double
  %636 = load float, ptr %86, align 8, !tbaa !69
  %637 = fpext float %636 to double
  %638 = call double @llvm.fmuladd.f64(double %602, double %635, double %637)
  %639 = fptrunc double %638 to float
  store float %639, ptr %86, align 8, !tbaa !69
  br label %640

640:                                              ; preds = %632, %631
  %641 = fsub double %603, %602
  br label %642

642:                                              ; preds = %592, %640, %590
  %643 = phi i32 [ 0, %640 ], [ %524, %590 ], [ 1, %592 ]
  %644 = phi double [ %641, %640 ], [ %523, %590 ], [ 1.000000e+00, %592 ]
  %645 = phi ptr [ %604, %640 ], [ %521, %590 ], [ %545, %592 ]
  %646 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 1
  %647 = add nuw nsw i64 %520, 1
  %648 = icmp eq i64 %647, %451
  br i1 %648, label %649, label %519, !llvm.loop !118

649:                                              ; preds = %642
  %650 = fcmp ogt double %644, 0.000000e+00
  br i1 %650, label %651, label %692

651:                                              ; preds = %514, %649
  %652 = phi ptr [ %645, %649 ], [ %51, %514 ]
  %653 = phi ptr [ %646, %649 ], [ %48, %514 ]
  %654 = phi double [ %644, %649 ], [ 1.000000e+00, %514 ]
  %655 = phi i32 [ %643, %649 ], [ 0, %514 ]
  %656 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 5
  %657 = load <2 x float>, ptr %656, align 8, !tbaa !43
  %658 = fpext <2 x float> %657 to <2 x double>
  %659 = load <2 x float>, ptr %83, align 8, !tbaa !43
  %660 = fpext <2 x float> %659 to <2 x double>
  %661 = insertelement <2 x double> poison, double %654, i64 0
  %662 = shufflevector <2 x double> %661, <2 x double> poison, <2 x i32> zeroinitializer
  %663 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %662, <2 x double> %658, <2 x double> %660)
  %664 = fptrunc <2 x double> %663 to <2 x float>
  store <2 x float> %664, ptr %83, align 8, !tbaa !43
  %665 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 7
  %666 = load float, ptr %665, align 8, !tbaa !63
  %667 = fpext float %666 to double
  %668 = load float, ptr %84, align 8, !tbaa !63
  %669 = fpext float %668 to double
  %670 = call double @llvm.fmuladd.f64(double %654, double %667, double %669)
  %671 = fptrunc double %670 to float
  store float %671, ptr %84, align 8, !tbaa !63
  %672 = load i32, ptr %82, align 8, !tbaa !75
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %682, label %674

674:                                              ; preds = %651
  %675 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 8
  %676 = load float, ptr %675, align 4, !tbaa !65
  %677 = fpext float %676 to double
  %678 = load float, ptr %85, align 4, !tbaa !65
  %679 = fpext float %678 to double
  %680 = call double @llvm.fmuladd.f64(double %654, double %677, double %679)
  %681 = fptrunc double %680 to float
  store float %681, ptr %85, align 4, !tbaa !65
  br label %682

682:                                              ; preds = %674, %651
  %683 = icmp eq ptr %105, null
  br i1 %683, label %692, label %684

684:                                              ; preds = %682
  %685 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 9
  %686 = load float, ptr %685, align 8, !tbaa !69
  %687 = fpext float %686 to double
  %688 = load float, ptr %86, align 8, !tbaa !69
  %689 = fpext float %688 to double
  %690 = call double @llvm.fmuladd.f64(double %654, double %687, double %689)
  %691 = fptrunc double %690 to float
  store float %691, ptr %86, align 8, !tbaa !69
  br label %692

692:                                              ; preds = %682, %684, %649
  %693 = phi ptr [ %652, %682 ], [ %652, %684 ], [ %645, %649 ]
  %694 = phi i32 [ %655, %682 ], [ %655, %684 ], [ %643, %649 ]
  %695 = icmp eq i32 %694, 0
  %696 = load i64, ptr %49, align 8, !tbaa !53
  br i1 %695, label %697, label %717

697:                                              ; preds = %692
  %698 = ptrtoint ptr %693 to i64
  %699 = sub i64 %698, %87
  %700 = sdiv exact i64 %699, 56
  %701 = icmp slt i64 %700, %696
  br i1 %701, label %702, label %717

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 5
  %704 = load <2 x float>, ptr %83, align 8, !tbaa !43
  store <2 x float> %704, ptr %703, align 8, !tbaa !43
  %705 = load float, ptr %84, align 8, !tbaa !63
  %706 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 7
  store float %705, ptr %706, align 8, !tbaa !63
  %707 = load i32, ptr %82, align 8, !tbaa !75
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %712, label %709

709:                                              ; preds = %702
  %710 = load float, ptr %85, align 4, !tbaa !65
  %711 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 8
  store float %710, ptr %711, align 4, !tbaa !65
  br label %712

712:                                              ; preds = %709, %702
  %713 = icmp eq ptr %105, null
  br i1 %713, label %717, label %714

714:                                              ; preds = %712
  %715 = load float, ptr %86, align 8, !tbaa !69
  %716 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 9
  store float %715, ptr %716, align 8, !tbaa !69
  br label %717

717:                                              ; preds = %712, %714, %697, %692
  %718 = icmp sgt i64 %696, 0
  br i1 %718, label %719, label %771

719:                                              ; preds = %717
  %720 = load i32, ptr %82, align 8, !tbaa !75
  %721 = icmp eq i32 %720, 0
  %722 = icmp eq ptr %105, null
  br label %723

723:                                              ; preds = %719, %766
  %724 = phi i64 [ 0, %719 ], [ %769, %766 ]
  %725 = phi ptr [ %102, %719 ], [ %768, %766 ]
  %726 = phi ptr [ %51, %719 ], [ %767, %766 ]
  %727 = phi float [ %454, %719 ], [ %739, %766 ]
  br i1 %721, label %735, label %728

728:                                              ; preds = %723
  %729 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 8
  %730 = load float, ptr %729, align 4, !tbaa !65
  %731 = fsub float 6.553500e+04, %730
  %732 = fpext float %731 to double
  %733 = fmul double %732, 0x3EF0001000100010
  %734 = fptrunc double %733 to float
  br label %735

735:                                              ; preds = %728, %723
  %736 = phi float [ %734, %728 ], [ %727, %723 ]
  %737 = fpext float %736 to double
  %738 = call fastcc double @PerceptibleReciprocal(double noundef %737) #29
  %739 = fptrunc double %738 to float
  %740 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 5
  %741 = load float, ptr %740, align 8, !tbaa !58
  %742 = fmul float %741, %739
  %743 = call fastcc zeroext i16 @ClampToQuantum(float noundef %742) #29
  %744 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 2
  store i16 %743, ptr %744, align 2, !tbaa !60
  %745 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 6
  %746 = load float, ptr %745, align 4, !tbaa !61
  %747 = fmul float %746, %739
  %748 = call fastcc zeroext i16 @ClampToQuantum(float noundef %747) #29
  %749 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 1
  store i16 %748, ptr %749, align 2, !tbaa !62
  %750 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 7
  %751 = load float, ptr %750, align 8, !tbaa !63
  %752 = fmul float %751, %739
  %753 = call fastcc zeroext i16 @ClampToQuantum(float noundef %752) #29
  store i16 %753, ptr %725, align 2, !tbaa !64
  br i1 %721, label %759, label %754

754:                                              ; preds = %735
  %755 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 8
  %756 = load float, ptr %755, align 4, !tbaa !65
  %757 = call fastcc zeroext i16 @ClampToQuantum(float noundef %756) #29
  %758 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 3
  store i16 %757, ptr %758, align 2, !tbaa !66
  br label %759

759:                                              ; preds = %754, %735
  br i1 %722, label %766, label %760

760:                                              ; preds = %759
  %761 = getelementptr inbounds i16, ptr %105, i64 %724
  %762 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 9
  %763 = load float, ptr %762, align 8, !tbaa !69
  %764 = fmul float %763, %739
  %765 = call fastcc zeroext i16 @ClampToQuantum(float noundef %764) #29
  store i16 %765, ptr %761, align 2, !tbaa !70
  br label %766

766:                                              ; preds = %760, %759
  %767 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 1
  %768 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 1
  %769 = add nuw nsw i64 %724, 1
  %770 = icmp eq i64 %769, %696
  br i1 %770, label %771, label %723, !llvm.loop !119

771:                                              ; preds = %766, %509, %717, %460
  %772 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %74, ptr noundef %3) #30
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %778, label %774

774:                                              ; preds = %771
  %775 = load i64, ptr %39, align 8, !tbaa !54
  %776 = call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef %93, i64 noundef %775) #29
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %88

778:                                              ; preds = %774, %771, %312, %113, %100, %92, %88
  %779 = phi i32 [ %453, %88 ], [ 0, %92 ], [ 0, %100 ], [ 0, %113 ], [ 0, %312 ], [ 0, %771 ], [ 0, %774 ]
  %780 = icmp eq i32 %779, 0
  br label %781

781:                                              ; preds = %778, %66
  %782 = phi i1 [ false, %66 ], [ %780, %778 ]
  %783 = call ptr @DestroyCacheView(ptr noundef %74) #24
  %784 = call ptr @DestroyCacheView(ptr noundef %73) #24
  %785 = call ptr @RelinquishMagickMemory(ptr noundef %53) #24
  %786 = call ptr @RelinquishMagickMemory(ptr noundef %51) #24
  %787 = load i64, ptr %41, align 8, !tbaa !54
  %788 = load i64, ptr %39, align 8, !tbaa !54
  %789 = icmp eq i64 %787, %788
  br i1 %789, label %792, label %790

790:                                              ; preds = %781
  %791 = call ptr @RelinquishMagickMemory(ptr noundef %48) #24
  br label %792

792:                                              ; preds = %790, %781
  %793 = call ptr @RelinquishMagickMemory(ptr noundef %38) #24
  %794 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %795 = load i32, ptr %794, align 8, !tbaa !78
  %796 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 77
  store i32 %795, ptr %796, align 8, !tbaa !78
  br i1 %782, label %797, label %799

797:                                              ; preds = %792
  %798 = call ptr @DestroyImage(ptr noundef nonnull %28) #24
  br label %799

799:                                              ; preds = %792, %797, %27, %13, %62, %33, %25
  %800 = phi ptr [ %26, %25 ], [ null, %33 ], [ null, %62 ], [ null, %13 ], [ null, %27 ], [ %798, %797 ], [ %28, %792 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #26
  ret ptr %800
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #2 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ThumbnailImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #26
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3759, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #24
  br label %14

14:                                               ; preds = %11, %4
  %15 = uitofp i64 %1 to float
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !53
  %18 = uitofp i64 %17 to float
  %19 = fdiv float %15, %18
  %20 = uitofp i64 %2 to float
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !54
  %23 = uitofp i64 %22 to float
  %24 = fdiv float %20, %23
  %25 = fmul float %19, %24
  %26 = fpext float %25 to double
  %27 = fcmp ogt double %26, 1.000000e-01
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %30 = load i32, ptr %29, align 8, !tbaa !120
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %32 = load double, ptr %31, align 8, !tbaa !121
  %33 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %30, double noundef %32, ptr noundef %3) #29
  br label %56

34:                                               ; preds = %14
  %35 = mul i64 %1, 5
  %36 = icmp ult i64 %35, 128
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = mul i64 %2, 5
  %39 = icmp ult i64 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %42 = load i32, ptr %41, align 8, !tbaa !120
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %44 = load double, ptr %43, align 8, !tbaa !121
  %45 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %42, double noundef %44, ptr noundef %3) #29
  br label %56

46:                                               ; preds = %37
  %47 = tail call ptr @SampleImage(ptr noundef nonnull %0, i64 noundef %35, i64 noundef %38, ptr noundef %3) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %132, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %51 = load i32, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %53 = load double, ptr %52, align 8, !tbaa !121
  %54 = tail call ptr @ResizeImage(ptr noundef nonnull %47, i64 noundef %1, i64 noundef %2, i32 noundef %51, double noundef %53, ptr noundef %3) #29
  %55 = tail call ptr @DestroyImage(ptr noundef nonnull %47) #24
  br label %56

56:                                               ; preds = %49, %40, %28
  %57 = phi ptr [ %33, %28 ], [ %45, %40 ], [ %54, %49 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 26
  %61 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.38, ptr noundef nonnull %60) #24
  %62 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !75
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %57, i32 noundef 6) #24
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 9
  store i64 8, ptr %68, align 8, !tbaa !122
  %69 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 33
  store i32 1, ptr %69, align 4, !tbaa !123
  tail call void @ResetImageProfileIterator(ptr noundef nonnull %57) #24
  %70 = tail call ptr @GetNextImageProfile(ptr noundef nonnull %57) #24
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %67, %81
  %73 = phi ptr [ %82, %81 ], [ %70, %67 ]
  %74 = tail call i32 @LocaleCompare(ptr noundef nonnull %73, ptr noundef nonnull @.str.39) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @LocaleCompare(ptr noundef nonnull %73, ptr noundef nonnull @.str.40) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @DeleteImageProfile(ptr noundef %57, ptr noundef nonnull %73) #24
  tail call void @ResetImageProfileIterator(ptr noundef %57) #24
  br label %81

81:                                               ; preds = %79, %76, %72
  %82 = tail call ptr @GetNextImageProfile(ptr noundef %57) #24
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !124

84:                                               ; preds = %81, %67
  %85 = tail call i32 @DeleteImageProperty(ptr noundef %57, ptr noundef nonnull @.str.41) #24
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %87 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %86, i64 noundef 4096) #24
  %88 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %86, ptr noundef nonnull dereferenceable(1) @.str.42) #32
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.43, ptr noundef nonnull %86) #24
  br label %92

92:                                               ; preds = %90, %84
  %93 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.44, ptr noundef nonnull %5) #24
  %94 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %86, i64 noundef 4096) #24
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %96 = call i32 @GetPathAttributes(ptr noundef nonnull %95, ptr noundef nonnull %7) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %100 = load i64, ptr %99, align 8, !tbaa !125
  %101 = sitofp i64 %100 to double
  %102 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %101) #24
  %103 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.46, ptr noundef nonnull %5) #24
  br label %104

104:                                              ; preds = %98, %92
  %105 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %106 = load i64, ptr %105, align 8, !tbaa !125
  %107 = sitofp i64 %106 to double
  %108 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %107) #24
  %109 = call i64 @GetBlobSize(ptr noundef %0) #24
  %110 = call i64 @FormatMagickSize(i64 noundef %109, i32 noundef 0, ptr noundef nonnull %5) #24
  %111 = call i64 @ConcatenateMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.47, i64 noundef 4096) #24
  %112 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.48, ptr noundef nonnull %5) #24
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull %113) #24
  call void @LocaleLower(ptr noundef nonnull %5) #24
  %115 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.50, ptr noundef nonnull %5) #24
  %116 = call ptr @GetMagickVersion(ptr noundef nonnull %6) #24
  %117 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.51, ptr noundef %116) #24
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %119 = load i64, ptr %118, align 8, !tbaa !128
  %120 = uitofp i64 %119 to double
  %121 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %120) #24
  %122 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #24
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %124 = load i64, ptr %123, align 8, !tbaa !129
  %125 = uitofp i64 %124 to double
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %125) #24
  %127 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.53, ptr noundef nonnull %5) #24
  %128 = call i64 @GetImageListLength(ptr noundef %0) #24
  %129 = uitofp i64 %128 to double
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %129) #24
  %131 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.54, ptr noundef nonnull %5) #24
  br label %132

132:                                              ; preds = %46, %56, %104
  %133 = phi ptr [ %57, %104 ], [ null, %56 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #26
  ret ptr %133
}

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @DeleteImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #21

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc float @BesselOrderOne(float noundef %0) unnamed_addr #6 {
  %2 = fcmp oeq float %0, 0.000000e+00
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fneg float %0
  %6 = select i1 %4, float %5, float %0
  %7 = fcmp olt float %6, 8.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call fastcc float @J1(float noundef %6) #29
  %10 = fmul float %9, %0
  br label %36

11:                                               ; preds = %3
  %12 = fpext float %6 to double
  %13 = fmul double %12, 0x400921FB54442D18
  %14 = fdiv double 2.000000e+00, %13
  %15 = tail call double @sqrt(double noundef %14) #24
  %16 = tail call fastcc float @P1(float noundef %6) #29
  %17 = fpext float %16 to double
  %18 = tail call double @sin(double noundef %12) #24
  %19 = tail call double @cos(double noundef %12) #24
  %20 = fsub double %18, %19
  %21 = fmul double %20, 0x3FE6A09E667F3BCC
  %22 = tail call fastcc float @Q1(float noundef %6) #29
  %23 = fpext float %22 to double
  %24 = tail call double @sin(double noundef %12) #24
  %25 = tail call double @cos(double noundef %12) #24
  %26 = fadd double %24, %25
  %27 = fmul double %26, 0xBFE6A09E667F3BCC
  %28 = fdiv double -8.000000e+00, %12
  %29 = fmul double %28, %23
  %30 = fmul double %29, %27
  %31 = tail call double @llvm.fmuladd.f64(double %17, double %21, double %30)
  %32 = fmul double %15, %31
  %33 = fptrunc double %32 to float
  %34 = fneg float %33
  %35 = select i1 %4, float %34, float %33
  br label %36

36:                                               ; preds = %1, %11, %8
  %37 = phi float [ %10, %8 ], [ %35, %11 ], [ 0.000000e+00, %1 ]
  ret float %37
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @J1(float noundef %0) unnamed_addr #13 {
  %2 = insertelement <2 x float> poison, float %0, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 7, %1 ], [ %18, %4 ]
  %6 = phi <2 x float> [ <float 1.000000e+00, float 0x40A51A3EE0000000>, %1 ], [ %17, %4 ]
  %7 = fmul <2 x float> %6, %3
  %8 = getelementptr inbounds [9 x double], ptr @J1.Pone, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds [9 x double], ptr @J1.Qone, i64 0, i64 %5
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = fmul <2 x float> %7, %3
  %13 = fpext <2 x float> %12 to <2 x double>
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %15 = insertelement <2 x double> %14, double %9, i64 1
  %16 = fadd <2 x double> %15, %13
  %17 = fptrunc <2 x double> %16 to <2 x float>
  %18 = add nsw i64 %5, -1
  %19 = icmp eq i64 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !130

20:                                               ; preds = %4
  %21 = extractelement <2 x float> %17, i64 0
  %22 = extractelement <2 x float> %17, i64 1
  %23 = fdiv float %22, %21
  ret float %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @P1(float noundef %0) unnamed_addr #13 {
  %2 = fpext float %0 to double
  %3 = fdiv double 8.000000e+00, %2
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 4, %1 ], [ %19, %6 ]
  %8 = phi <2 x float> [ <float 1.000000e+00, float 0x3FF41D6020000000>, %1 ], [ %18, %6 ]
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = getelementptr inbounds [6 x double], ptr @P1.Pone, i64 0, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds [6 x double], ptr @P1.Qone, i64 0, i64 %7
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = fmul <2 x double> %5, %9
  %15 = insertelement <2 x double> poison, double %13, i64 0
  %16 = insertelement <2 x double> %15, double %11, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %5, <2 x double> %16)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = add nsw i64 %7, -1
  %20 = icmp eq i64 %7, 0
  br i1 %20, label %21, label %6, !llvm.loop !131

21:                                               ; preds = %6
  %22 = extractelement <2 x float> %18, i64 0
  %23 = extractelement <2 x float> %18, i64 1
  %24 = fdiv float %23, %22
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #21

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @Q1(float noundef %0) unnamed_addr #13 {
  %2 = fpext float %0 to double
  %3 = fdiv double 8.000000e+00, %2
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 4, %1 ], [ %19, %6 ]
  %8 = phi <2 x float> [ <float 1.000000e+00, float 0x3FA2169060000000>, %1 ], [ %18, %6 ]
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = getelementptr inbounds [6 x double], ptr @Q1.Pone, i64 0, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds [6 x double], ptr @Q1.Qone, i64 0, i64 %7
  %13 = load double, ptr %12, align 8, !tbaa !44
  %14 = fmul <2 x double> %5, %9
  %15 = insertelement <2 x double> poison, double %13, i64 0
  %16 = insertelement <2 x double> %15, double %11, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %5, <2 x double> %16)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = add nsw i64 %7, -1
  %20 = icmp eq i64 %7, 0
  br i1 %20, label %21, label %6, !llvm.loop !132

21:                                               ; preds = %6
  %22 = extractelement <2 x float> %18, i64 0
  %23 = extractelement <2 x float> %18, i64 1
  %24 = fdiv float %23, %22
  ret float %24
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #2 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireContributionThreadSet(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = shl i64 %2, 3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef %6) #24
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %19, label %12, !llvm.loop !133

12:                                               ; preds = %5, %9
  %13 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %14 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 16) #31
  %15 = getelementptr inbounds ptr, ptr %3, i64 %13
  store ptr %14, ptr %15, align 8, !tbaa !48
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @DestroyContributionThreadSet(ptr noundef nonnull %3) #29
  br label %19

19:                                               ; preds = %9, %5, %1, %17
  %20 = phi ptr [ %18, %17 ], [ null, %1 ], [ %3, %5 ], [ %3, %9 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #2 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyContributionThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %7) #24
  store ptr %10, ptr %6, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #24
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !134

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #24
  ret ptr %16
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { optsize }
attributes #30 = { hot nounwind optsize }
attributes #31 = { nounwind optsize allocsize(0,1) }
attributes #32 = { nounwind optsize willreturn memory(read) }

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
!24 = !{!7, !7, i64 0}
!25 = !{!26, !7, i64 0}
!26 = !{!"", !7, i64 0, !7, i64 4}
!27 = !{!26, !7, i64 4}
!28 = !{!29, !30, i64 28}
!29 = !{!"_ResizeFilter", !11, i64 0, !11, i64 8, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !8, i64 32, !7, i64 60, !7, i64 64, !10, i64 72}
!30 = !{!"float", !8, i64 0}
!31 = !{!32, !11, i64 0}
!32 = !{!"", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40}
!33 = !{!29, !11, i64 0}
!34 = !{!32, !14, i64 8}
!35 = !{!29, !30, i64 16}
!36 = !{!32, !7, i64 40}
!37 = !{!29, !7, i64 60}
!38 = !{!29, !11, i64 8}
!39 = !{!29, !7, i64 64}
!40 = !{!32, !14, i64 16}
!41 = !{!29, !30, i64 24}
!42 = !{!29, !10, i64 72}
!43 = !{!30, !30, i64 0}
!44 = !{!14, !14, i64 0}
!45 = !{!29, !30, i64 20}
!46 = !{!32, !14, i64 24}
!47 = !{!32, !14, i64 32}
!48 = !{!11, !11, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = !{!6, !10, i64 40}
!54 = !{!6, !10, i64 48}
!55 = distinct !{!55, !50}
!56 = !{!6, !11, i64 568}
!57 = distinct !{!57, !50}
!58 = !{!59, !30, i64 32}
!59 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !30, i64 48}
!60 = !{!12, !13, i64 4}
!61 = !{!59, !30, i64 36}
!62 = !{!12, !13, i64 2}
!63 = !{!59, !30, i64 40}
!64 = !{!12, !13, i64 0}
!65 = !{!59, !30, i64 44}
!66 = !{!12, !13, i64 6}
!67 = !{!6, !7, i64 4}
!68 = !{!6, !7, i64 0}
!69 = !{!59, !30, i64 48}
!70 = !{!13, !13, i64 0}
!71 = !{!6, !11, i64 576}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = !{!6, !7, i64 32}
!76 = !{!23, !23, i64 0}
!77 = !{i32 0, i32 2}
!78 = !{!6, !7, i64 13184}
!79 = !{!6, !14, i64 264}
!80 = !{!6, !14, i64 272}
!81 = !{!82, !10, i64 8}
!82 = !{!"_ContributionInfo", !30, i64 0, !10, i64 8}
!83 = !{!82, !30, i64 0}
!84 = distinct !{!84, !50}
!85 = distinct !{!85, !50}
!86 = !{i64 0, i64 4, !43}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, !50}
!93 = distinct !{!93, !50}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = distinct !{!96, !50}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = !{!102, !14, i64 0}
!102 = !{!"_GeometryInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!103 = !{!10, !10, i64 0}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = distinct !{!113, !50}
!114 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 16, i64 8, !44, i64 24, i64 8, !103, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 4, !43}
!115 = distinct !{!115, !50}
!116 = distinct !{!116, !50}
!117 = distinct !{!117, !50}
!118 = distinct !{!118, !50}
!119 = distinct !{!119, !50}
!120 = !{!6, !7, i64 400}
!121 = !{!6, !14, i64 384}
!122 = !{!6, !10, i64 56}
!123 = !{!6, !7, i64 404}
!124 = distinct !{!124, !50}
!125 = !{!126, !10, i64 88}
!126 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !127, i64 72, !127, i64 88, !127, i64 104, !8, i64 120}
!127 = !{!"timespec", !10, i64 0, !10, i64 8}
!128 = !{!6, !10, i64 12904}
!129 = !{!6, !10, i64 12912}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !50}
!132 = distinct !{!132, !50}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50}
