; ModuleID = 'src/tif_compress.c'
source_filename = "src/tif_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFCodec = type { ptr, i16, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct._codec = type { ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"scanline\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Compression algorithm does not support random access\00", align 1
@registeredCODECS = internal unnamed_addr global ptr null, align 8
@_TIFFBuiltinCODECS = external global [0 x %struct.TIFFCodec], align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"TIFFRegisterCODEC\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"No space to register compression scheme %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TIFFUnRegisterCODEC\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Cannot remove compression scheme %s; not registered\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s %s encoding is no longer implemented due to Unisys patent enforcement\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s %s encoding is not implemented\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Compression scheme %u %s encoding is not implemented\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s %s decoding is not implemented\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Compression scheme %u %s decoding is not implemented\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoRowEncode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  tail call fastcc void @TIFFNoEncode(ptr noundef %0, ptr noundef nonnull @.str)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFNoEncode(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %12, %2
  %6 = phi ptr [ @registeredCODECS, %2 ], [ %7, %12 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._codec, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.TIFFCodec, ptr %14, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !21
  %17 = icmp eq i16 %16, %4
  br i1 %17, label %27, label %5, !llvm.loop !22

18:                                               ; preds = %9, %23
  %19 = phi ptr [ %24, %23 ], [ @_TIFFBuiltinCODECS, %9 ]
  %20 = getelementptr inbounds %struct.TIFFCodec, ptr %19, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !21
  %22 = icmp eq i16 %21, %4
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TIFFCodec, ptr %19, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !24

27:                                               ; preds = %12, %18, %23, %9
  %28 = phi ptr [ null, %9 ], [ null, %23 ], [ %19, %18 ], [ %14, %12 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !17
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(4) @.str.8, i64 noundef 3) #7
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %0, align 8, !tbaa !25
  br i1 %33, label %35, label %36

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %34, ptr noundef nonnull @.str.9, ptr noundef %31, ptr noundef %1) #8
  br label %40

36:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %34, ptr noundef nonnull @.str.10, ptr noundef %31, ptr noundef %1) #8
  br label %40

37:                                               ; preds = %27
  %38 = load ptr, ptr %0, align 8, !tbaa !25
  %39 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef %39, ptr noundef %1) #8
  br label %40

40:                                               ; preds = %35, %36, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoStripEncode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  tail call fastcc void @TIFFNoEncode(ptr noundef %0, ptr noundef nonnull @.str.1)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoTileEncode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  tail call fastcc void @TIFFNoEncode(ptr noundef %0, ptr noundef nonnull @.str.2)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoRowDecode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %6 = load i16, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ @registeredCODECS, %4 ], [ %9, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._codec, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.TIFFCodec, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !21
  %19 = icmp eq i16 %18, %6
  br i1 %19, label %29, label %7, !llvm.loop !22

20:                                               ; preds = %11, %25
  %21 = phi ptr [ %26, %25 ], [ @_TIFFBuiltinCODECS, %11 ]
  %22 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 0, i32 1
  %23 = load i16, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i16 %23, %6
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !24

29:                                               ; preds = %14, %25, %20, %11
  %30 = phi ptr [ null, %11 ], [ null, %25 ], [ %21, %20 ], [ %16, %14 ]
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %0, align 8, !tbaa !25
  br i1 %31, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %30, align 8, !tbaa !17
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %34, ptr noundef nonnull @.str) #8
  br label %37

35:                                               ; preds = %29
  %36 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %36, ptr noundef nonnull @.str) #8
  br label %37

37:                                               ; preds = %33, %35
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoStripDecode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %6 = load i16, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ @registeredCODECS, %4 ], [ %9, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._codec, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.TIFFCodec, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !21
  %19 = icmp eq i16 %18, %6
  br i1 %19, label %29, label %7, !llvm.loop !22

20:                                               ; preds = %11, %25
  %21 = phi ptr [ %26, %25 ], [ @_TIFFBuiltinCODECS, %11 ]
  %22 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 0, i32 1
  %23 = load i16, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i16 %23, %6
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !24

29:                                               ; preds = %14, %25, %20, %11
  %30 = phi ptr [ null, %11 ], [ null, %25 ], [ %21, %20 ], [ %16, %14 ]
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %0, align 8, !tbaa !25
  br i1 %31, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %30, align 8, !tbaa !17
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %34, ptr noundef nonnull @.str.1) #8
  br label %37

35:                                               ; preds = %29
  %36 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %36, ptr noundef nonnull @.str.1) #8
  br label %37

37:                                               ; preds = %33, %35
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoTileDecode(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %6 = load i16, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %14, %4
  %8 = phi ptr [ @registeredCODECS, %4 ], [ %9, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._codec, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.TIFFCodec, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !21
  %19 = icmp eq i16 %18, %6
  br i1 %19, label %29, label %7, !llvm.loop !22

20:                                               ; preds = %11, %25
  %21 = phi ptr [ %26, %25 ], [ @_TIFFBuiltinCODECS, %11 ]
  %22 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 0, i32 1
  %23 = load i16, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i16 %23, %6
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TIFFCodec, ptr %21, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !24

29:                                               ; preds = %14, %25, %20, %11
  %30 = phi ptr [ null, %11 ], [ null, %25 ], [ %21, %20 ], [ %16, %14 ]
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %0, align 8, !tbaa !25
  br i1 %31, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %30, align 8, !tbaa !17
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %34, ptr noundef nonnull @.str.2) #8
  br label %37

35:                                               ; preds = %29
  %36 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %36, ptr noundef nonnull @.str.2) #8
  br label %37

37:                                               ; preds = %33, %35
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_TIFFNoSeek(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  ret i32 0
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_TIFFNoPreCode(ptr nocapture readnone %0, i16 zeroext %1) #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_TIFFSetDefaultCompressionState(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @_TIFFtrue, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  store ptr @_TIFFNoPreCode, ptr %3, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @_TIFFNoRowDecode, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @_TIFFNoStripDecode, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @_TIFFNoTileDecode, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @_TIFFtrue, ptr %7, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %8, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  store ptr @_TIFFtrue, ptr %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %11, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %12, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 32
  store ptr @_TIFFvoid, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 33
  store ptr @_TIFFNoSeek, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  store ptr @_TIFFvoid, ptr %15, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 35
  store ptr @_TIFFDefaultStripSize, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 36
  store ptr @_TIFFDefaultTileSize, ptr %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = and i32 %19, -257
  store i32 %20, ptr %18, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_TIFFtrue(ptr nocapture readnone %0) #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_TIFFvoid(ptr nocapture readnone %0) #2 {
  ret void
}

declare i32 @_TIFFDefaultStripSize(ptr noundef, i32 noundef) #1

declare void @_TIFFDefaultTileSize(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFSetCompressionScheme(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i16
  br label %4

4:                                                ; preds = %11, %2
  %5 = phi ptr [ @registeredCODECS, %2 ], [ %6, %11 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._codec, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.TIFFCodec, ptr %13, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !21
  %16 = icmp eq i16 %15, %3
  br i1 %16, label %26, label %4, !llvm.loop !22

17:                                               ; preds = %8, %22
  %18 = phi ptr [ %23, %22 ], [ @_TIFFBuiltinCODECS, %8 ]
  %19 = getelementptr inbounds %struct.TIFFCodec, ptr %18, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !21
  %21 = icmp eq i16 %20, %3
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TIFFCodec, ptr %18, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !24

26:                                               ; preds = %11, %17, %22, %8
  %27 = phi ptr [ null, %8 ], [ null, %22 ], [ %18, %17 ], [ %13, %11 ]
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @_TIFFtrue, ptr %28, align 8, !tbaa !26
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  store ptr @_TIFFNoPreCode, ptr %29, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @_TIFFNoRowDecode, ptr %30, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @_TIFFNoStripDecode, ptr %31, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @_TIFFNoTileDecode, ptr %32, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @_TIFFtrue, ptr %33, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %34, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  store ptr @_TIFFtrue, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %38, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 32
  store ptr @_TIFFvoid, ptr %39, align 8, !tbaa !37
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 33
  store ptr @_TIFFNoSeek, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  store ptr @_TIFFvoid, ptr %41, align 8, !tbaa !39
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 35
  store ptr @_TIFFDefaultStripSize, ptr %42, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 36
  store ptr @_TIFFDefaultTileSize, ptr %43, align 8, !tbaa !41
  %44 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = and i32 %45, -257
  store i32 %46, ptr %44, align 8, !tbaa !42
  %47 = icmp eq ptr %27, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.TIFFCodec, ptr %27, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = tail call i32 %50(ptr noundef %0, i32 noundef %1) #8
  br label %52

52:                                               ; preds = %26, %48
  %53 = phi i32 [ %51, %48 ], [ 1, %26 ]
  ret i32 %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @TIFFFindCODEC(i16 noundef zeroext %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi ptr [ @registeredCODECS, %1 ], [ %4, %9 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @_TIFFBuiltinCODECS, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._codec, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.TIFFCodec, ptr %11, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !21
  %14 = icmp eq i16 %13, %0
  br i1 %14, label %24, label %2, !llvm.loop !22

15:                                               ; preds = %6, %20
  %16 = phi ptr [ %21, %20 ], [ @_TIFFBuiltinCODECS, %6 ]
  %17 = getelementptr inbounds %struct.TIFFCodec, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !21
  %19 = icmp eq i16 %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TIFFCodec, ptr %16, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !24

24:                                               ; preds = %9, %15, %20, %6
  %25 = phi ptr [ null, %6 ], [ null, %20 ], [ %16, %15 ], [ %11, %9 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TIFFRegisterCODEC(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 41
  %7 = tail call ptr @_TIFFmalloc(i32 noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %7, i64 16
  %11 = getelementptr inbounds %struct._codec, ptr %7, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds i8, ptr %7, i64 40
  store ptr %12, ptr %10, align 8, !tbaa !17
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #8
  %14 = getelementptr inbounds i8, ptr %7, i64 24
  store i16 %0, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds i8, ptr %7, i64 32
  store ptr %2, ptr %15, align 8, !tbaa !43
  %16 = load ptr, ptr @registeredCODECS, align 8, !tbaa !16
  store ptr %16, ptr %7, align 8, !tbaa !44
  store ptr %7, ptr @registeredCODECS, align 8, !tbaa !16
  br label %18

17:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1) #8
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds %struct._codec, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  ret ptr %20
}

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @TIFFUnRegisterCODEC(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @registeredCODECS, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._codec, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2, !llvm.loop !45

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !44
  store ptr %11, ptr %3, align 8, !tbaa !16
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !17
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 88}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !7, i64 0, !12, i64 8, !7, i64 16}
!19 = !{!20, !7, i64 8}
!20 = !{!"_codec", !7, i64 0, !7, i64 8}
!21 = !{!18, !12, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !23}
!25 = !{!6, !7, i64 0}
!26 = !{!6, !7, i64 576}
!27 = !{!6, !7, i64 584}
!28 = !{!6, !7, i64 616}
!29 = !{!6, !7, i64 632}
!30 = !{!6, !7, i64 648}
!31 = !{!6, !7, i64 592}
!32 = !{!6, !7, i64 600}
!33 = !{!6, !7, i64 608}
!34 = !{!6, !7, i64 624}
!35 = !{!6, !7, i64 640}
!36 = !{!6, !7, i64 656}
!37 = !{!6, !7, i64 664}
!38 = !{!6, !7, i64 672}
!39 = !{!6, !7, i64 680}
!40 = !{!6, !7, i64 688}
!41 = !{!6, !7, i64 696}
!42 = !{!6, !10, i64 16}
!43 = !{!18, !7, i64 16}
!44 = !{!20, !7, i64 0}
!45 = distinct !{!45, !23}
