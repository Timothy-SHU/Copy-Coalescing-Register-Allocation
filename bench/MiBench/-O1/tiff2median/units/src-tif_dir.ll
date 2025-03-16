; ModuleID = 'src/tif_dir.c'
source_filename = "src/tif_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }

@_TIFFextender = internal unnamed_addr global ptr null, align 8
@TIFFUnlinkDirectory.module = internal constant [20 x i8] c"TIFFUnlinkDirectory\00", align 16
@.str = private unnamed_addr constant [43 x i8] c"Can not unlink directory in read-only file\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Directory %d does not exist\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@TIFFReassignTagToIgnore.TIFFignoretags = internal unnamed_addr global [95 x i32] zeroinitializer, align 16
@TIFFReassignTagToIgnore.tagcount = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"TIFFSetField\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: Unknown %stag %u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pseudo-\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: Cannot modify tag \22%s\22 while writing\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"LZW compression no longer supported due to Unisys patent enforcement\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Bad value %ld for \22%s\22 tag ignored\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Nonstandard tile width %d, convert file\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Nonstandard tile length %d, convert file\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Sorry, cannot nest SubIFDs\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"%s: Invalid %stag \22%s\22 (not supported by codec)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pseduo-\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%d: Bad value for \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"%ld: Bad value for \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%f: Bad value for \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"%s: Invalid InkNames value; expecting %d names, found %d\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"TIFFGetField\00", align 1
@TIFFAdvanceDirectory.module = internal constant [21 x i8] c"TIFFAdvanceDirectory\00", align 16
@.str.20 = private unnamed_addr constant [35 x i8] c"%s: Error fetching directory count\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: Error fetching directory link\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetByteArray(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = tail call ptr @_TIFFmalloc(i32 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %11, ptr noundef nonnull %1, i32 noundef %10) #8
  br label %14

14:                                               ; preds = %13, %9, %7
  ret void
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetString(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %3 to i32
  %11 = add i32 %10, 1
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %7, %9, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetNString(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = tail call ptr @_TIFFmalloc(i32 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %11, ptr noundef nonnull %1, i32 noundef %10) #8
  br label %14

14:                                               ; preds = %7, %9, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetShortArray(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = shl i32 %10, 1
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %7, %9, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetLongArray(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = shl i32 %10, 2
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %7, %9, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetFloatArray(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = shl i32 %10, 2
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %7, %9, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_TIFFsetDoubleArray(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = trunc i64 %2 to i32
  %11 = shl i32 %10, 3
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @_TIFFmemcpy(ptr noundef nonnull %12, ptr noundef nonnull %1, i32 noundef %11) #8
  br label %15

15:                                               ; preds = %7, %9, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFSetField(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call ptr @_TIFFFindFieldInfo(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = icmp ugt i32 %1, 65535
  %9 = select i1 %8, ptr @.str.5, ptr @.str.6
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef nonnull %9, i32 noundef %1) #8
  br label %29

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 257
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef %22, ptr noundef %24) #8
  br label %29

25:                                               ; preds = %17, %12, %10
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = call i32 %27(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #8
  br label %29

29:                                               ; preds = %6, %21, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %6 ], [ 0, %21 ]
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @_TIFFFindFieldInfo(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = icmp ugt i32 %1, 65535
  %9 = select i1 %8, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef nonnull %9, i32 noundef %1) #8
  br label %29

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 257
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef %22, ptr noundef %24) #8
  br label %29

25:                                               ; preds = %17, %12, %10
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %29

29:                                               ; preds = %21, %6, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %6 ], [ 0, %21 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFGetField(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call ptr @_TIFFFindFieldInfo(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 65535
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !22
  %12 = zext i16 %11 to i32
  %13 = lshr i32 %12, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [3 x i64], ptr %9, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !23
  %17 = and i32 %12, 31
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw nsw i64 1, %18
  %20 = and i64 %19, %16
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %8, %6
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = call i32 %24(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #8
  br label %26

26:                                               ; preds = %2, %8, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %8 ], [ 0, %2 ]
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @_TIFFFindFieldInfo(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = icmp ugt i32 %1, 65535
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %4, i64 0, i32 4
  %11 = load i16, ptr %10, align 4, !tbaa !22
  %12 = zext i16 %11 to i32
  %13 = lshr i32 %12, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [3 x i64], ptr %9, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !23
  %17 = and i32 %12, 31
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw nsw i64 1, %18
  %20 = and i64 %19, %16
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %8, %6
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %26

26:                                               ; preds = %3, %8, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %8 ], [ 0, %3 ]
  ret i32 %27
}

declare ptr @_TIFFFindFieldInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @TIFFFreeDirectory(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_TIFFfree(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_TIFFfree(ptr noundef nonnull %8) #8
  store ptr null, ptr %7, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_TIFFfree(ptr noundef nonnull %13) #8
  store ptr null, ptr %12, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_TIFFfree(ptr noundef nonnull %18) #8
  store ptr null, ptr %17, align 8, !tbaa !26
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 34
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_TIFFfree(ptr noundef nonnull %23) #8
  store ptr null, ptr %22, align 8, !tbaa !27
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @_TIFFfree(ptr noundef nonnull %28) #8
  store ptr null, ptr %27, align 8, !tbaa !28
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 36
  %33 = load ptr, ptr %32, align 8, !tbaa !29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_TIFFfree(ptr noundef nonnull %33) #8
  store ptr null, ptr %32, align 8, !tbaa !29
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 37
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @_TIFFfree(ptr noundef nonnull %38) #8
  store ptr null, ptr %37, align 8, !tbaa !30
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 38
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @_TIFFfree(ptr noundef nonnull %43) #8
  store ptr null, ptr %42, align 8, !tbaa !31
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 39
  %48 = load ptr, ptr %47, align 8, !tbaa !32
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @_TIFFfree(ptr noundef nonnull %48) #8
  store ptr null, ptr %47, align 8, !tbaa !32
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 40
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @_TIFFfree(ptr noundef nonnull %53) #8
  store ptr null, ptr %52, align 8, !tbaa !33
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 41
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @_TIFFfree(ptr noundef nonnull %58) #8
  store ptr null, ptr %57, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @_TIFFfree(ptr noundef nonnull %63) #8
  store ptr null, ptr %62, align 8, !tbaa !35
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 47
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @_TIFFfree(ptr noundef nonnull %68) #8
  store ptr null, ptr %67, align 8, !tbaa !36
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 48
  %73 = load ptr, ptr %72, align 8, !tbaa !37
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @_TIFFfree(ptr noundef nonnull %73) #8
  store ptr null, ptr %72, align 8, !tbaa !37
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 59
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @_TIFFfree(ptr noundef nonnull %78) #8
  store ptr null, ptr %77, align 8, !tbaa !38
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 60
  %83 = load ptr, ptr %82, align 8, !tbaa !39
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @_TIFFfree(ptr noundef nonnull %83) #8
  store ptr null, ptr %82, align 8, !tbaa !39
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 51
  %88 = load ptr, ptr %87, align 8, !tbaa !40
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void @_TIFFfree(ptr noundef nonnull %88) #8
  store ptr null, ptr %87, align 8, !tbaa !40
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 52
  %93 = load ptr, ptr %92, align 8, !tbaa !41
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @_TIFFfree(ptr noundef nonnull %93) #8
  store ptr null, ptr %92, align 8, !tbaa !41
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 53
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @_TIFFfree(ptr noundef nonnull %98) #8
  store ptr null, ptr %97, align 8, !tbaa !42
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @_TIFFfree(ptr noundef nonnull %103) #8
  store ptr null, ptr %102, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @_TIFFfree(ptr noundef nonnull %108) #8
  store ptr null, ptr %107, align 8, !tbaa !5
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void @_TIFFfree(ptr noundef nonnull %113) #8
  store ptr null, ptr %112, align 8, !tbaa !5
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 62
  %118 = load ptr, ptr %117, align 8, !tbaa !43
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void @_TIFFfree(ptr noundef nonnull %118) #8
  store ptr null, ptr %117, align 8, !tbaa !43
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 64
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call void @_TIFFfree(ptr noundef nonnull %123) #8
  store ptr null, ptr %122, align 8, !tbaa !44
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 66
  %128 = load ptr, ptr %127, align 8, !tbaa !45
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void @_TIFFfree(ptr noundef nonnull %128) #8
  store ptr null, ptr %127, align 8, !tbaa !45
  br label %131

131:                                              ; preds = %130, %126
  %132 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @_TIFFfree(ptr noundef nonnull %133) #8
  store ptr null, ptr %132, align 8, !tbaa !46
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %138 = load ptr, ptr %137, align 8, !tbaa !47
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @_TIFFfree(ptr noundef nonnull %138) #8
  store ptr null, ptr %137, align 8, !tbaa !47
  br label %141

141:                                              ; preds = %140, %136
  %142 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 69
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  tail call void @_TIFFfree(ptr noundef nonnull %143) #8
  store ptr null, ptr %142, align 8, !tbaa !48
  br label %146

146:                                              ; preds = %145, %141
  %147 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 70
  %148 = load ptr, ptr %147, align 8, !tbaa !49
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @_TIFFfree(ptr noundef nonnull %148) #8
  store ptr null, ptr %147, align 8, !tbaa !49
  br label %151

151:                                              ; preds = %150, %146
  %152 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 72
  %153 = load ptr, ptr %152, align 8, !tbaa !50
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  tail call void @_TIFFfree(ptr noundef nonnull %153) #8
  store ptr null, ptr %152, align 8, !tbaa !50
  br label %156

156:                                              ; preds = %155, %151
  %157 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 73
  %158 = load ptr, ptr %157, align 8, !tbaa !51
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void @_TIFFfree(ptr noundef nonnull %158) #8
  store ptr null, ptr %157, align 8, !tbaa !51
  br label %161

161:                                              ; preds = %160, %156
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @TIFFSetTagExtender(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @_TIFFextender, align 8, !tbaa !5
  store ptr %0, ptr @_TIFFextender, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFDefaultDirectory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  tail call void @_TIFFSetupFieldInfo(ptr noundef %0) #8
  tail call void @_TIFFmemset(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 472) #8
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  store i16 1, ptr %3, align 2, !tbaa !52
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  store i16 1, ptr %4, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 12
  store i16 1, ptr %5, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 14
  store i16 1, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  store i16 1, ptr %7, align 2, !tbaa !56
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  store i32 -1, ptr %8, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  store i32 -1, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  store i32 -1, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  store i32 1, ptr %11, align 4, !tbaa !60
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  store i16 2, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  store i16 4, ptr %13, align 2, !tbaa !62
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  store i32 1, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  store i16 2, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  store i16 2, ptr %16, align 2, !tbaa !64
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 50
  store i16 1, ptr %17, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  store i16 1, ptr %18, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 56
  store i16 4, ptr %19, align 2, !tbaa !67
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  store ptr @_TIFFVSetField, ptr %21, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  store ptr @_TIFFVGetField, ptr %22, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 59
  store ptr null, ptr %23, align 8, !tbaa !69
  %24 = load ptr, ptr @_TIFFextender, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  tail call void %24(ptr noundef %0) #8
  br label %27

27:                                               ; preds = %26, %1
  %28 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 259, i32 noundef 1)
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !17
  %31 = and i32 %30, -9
  store i32 %31, ptr %29, align 8, !tbaa !17
  ret i32 1
}

declare void @_TIFFSetupFieldInfo(ptr noundef) local_unnamed_addr #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @_TIFFVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  switch i32 %1, label %1477 [
    i32 254, label %7
    i32 256, label %24
    i32 257, label %41
    i32 258, label %58
    i32 259, label %88
    i32 262, label %134
    i32 263, label %152
    i32 266, label %170
    i32 269, label %191
    i32 315, label %208
    i32 306, label %225
    i32 316, label %242
    i32 270, label %259
    i32 271, label %276
    i32 272, label %293
    i32 305, label %310
    i32 274, label %327
    i32 277, label %353
    i32 278, label %373
    i32 280, label %400
    i32 281, label %418
    i32 340, label %436
    i32 341, label %454
    i32 282, label %472
    i32 283, label %491
    i32 284, label %510
    i32 285, label %531
    i32 286, label %548
    i32 287, label %567
    i32 296, label %586
    i32 297, label %607
    i32 321, label %642
    i32 320, label %677
    i32 338, label %731
    i32 32995, label %734
    i32 322, label %755
    i32 323, label %784
    i32 32998, label %813
    i32 32996, label %832
    i32 339, label %856
    i32 32997, label %877
    i32 37439, label %894
    i32 33300, label %914
    i32 33301, label %931
    i32 33302, label %948
    i32 33303, label %965
    i32 33304, label %982
    i32 33305, label %1001
    i32 33306, label %1018
    i32 330, label %1035
    i32 529, label %1078
    i32 531, label %1095
    i32 530, label %1113
    i32 318, label %1148
    i32 319, label %1165
    i32 301, label %1182
    i32 532, label %1229
    i32 332, label %1246
    i32 336, label %1264
    i32 333, label %1299
    i32 334, label %1337
    i32 337, label %1355
    i32 34675, label %1372
    i32 34377, label %1407
    i32 33723, label %1442
  ]

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %8, 8
  store i32 %15, ptr %2, align 8
  br label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %14, %10 ], [ %18, %16 ]
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 7
  store i32 %22, ptr %23, align 8, !tbaa !70
  br label %1484

24:                                               ; preds = %3
  %25 = load i32, ptr %2, align 8
  %26 = icmp ult i32 %25, 41
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = zext nneg i32 %25 to i64
  %31 = getelementptr i8, ptr %29, i64 %30
  %32 = add nuw nsw i32 %25, 8
  store i32 %32, ptr %2, align 8
  br label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i64 8
  store ptr %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi ptr [ %31, %27 ], [ %35, %33 ]
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  store i32 %39, ptr %40, align 8, !tbaa !71
  br label %1484

41:                                               ; preds = %3
  %42 = load i32, ptr %2, align 8
  %43 = icmp ult i32 %42, 41
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = zext nneg i32 %42 to i64
  %48 = getelementptr i8, ptr %46, i64 %47
  %49 = add nuw nsw i32 %42, 8
  store i32 %49, ptr %2, align 8
  br label %54

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %52, i64 8
  store ptr %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi ptr [ %48, %44 ], [ %52, %50 ]
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  store i32 %56, ptr %57, align 4, !tbaa !72
  br label %1484

58:                                               ; preds = %3
  %59 = load i32, ptr %2, align 8
  %60 = icmp ult i32 %59, 41
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = zext nneg i32 %59 to i64
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = add nuw nsw i32 %59, 8
  store i32 %66, ptr %2, align 8
  br label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %69, i64 8
  store ptr %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi ptr [ %65, %61 ], [ %69, %67 ]
  %73 = load i32, ptr %72, align 4
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  store i16 %74, ptr %75, align 4, !tbaa !53
  %76 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !17
  %78 = and i32 %77, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %1484, label %80

80:                                               ; preds = %71
  %81 = trunc i32 %73 to i16
  switch i16 %81, label %1484 [
    i16 16, label %82
    i16 32, label %84
    i16 64, label %86
  ]

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFSwab16BitData, ptr %83, align 8, !tbaa !68
  br label %1484

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFSwab32BitData, ptr %85, align 8, !tbaa !68
  br label %1484

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFSwab64BitData, ptr %87, align 8, !tbaa !68
  br label %1484

88:                                               ; preds = %3
  %89 = load i32, ptr %2, align 8
  %90 = icmp ult i32 %89, 41
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = zext nneg i32 %89 to i64
  %95 = getelementptr i8, ptr %93, i64 %94
  %96 = add nuw nsw i32 %89, 8
  store i32 %96, ptr %2, align 8
  br label %101

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %99, i64 8
  store ptr %100, ptr %98, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi ptr [ %95, %91 ], [ %99, %97 ]
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 65535
  store i32 %104, ptr %4, align 4, !tbaa !73
  %105 = load i64, ptr %6, align 8, !tbaa !23
  %106 = and i64 %105, 128
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %110 = load i16, ptr %109, align 8, !tbaa !74
  %111 = trunc i32 %103 to i16
  %112 = icmp eq i16 %110, %111
  br i1 %112, label %1484, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  %115 = load ptr, ptr %114, align 8, !tbaa !75
  tail call void %115(ptr noundef %0) #8
  %116 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !17
  %118 = and i32 %117, -33
  store i32 %118, ptr %116, align 8, !tbaa !17
  br label %119

119:                                              ; preds = %113, %101
  %120 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !76
  %122 = icmp ne i32 %121, 0
  %123 = icmp eq i32 %104, 5
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %126, ptr noundef nonnull @.str.8) #8
  store i32 1, ptr %4, align 4, !tbaa !73
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i32, ptr %4, align 4, !tbaa !73
  %129 = tail call i32 @TIFFSetCompressionScheme(ptr noundef %0, i32 noundef %128) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %1484, label %131

131:                                              ; preds = %127
  %132 = trunc i32 %128 to i16
  %133 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  store i16 %132, ptr %133, align 8, !tbaa !74
  br label %1484

134:                                              ; preds = %3
  %135 = load i32, ptr %2, align 8
  %136 = icmp ult i32 %135, 41
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = zext nneg i32 %135 to i64
  %141 = getelementptr i8, ptr %139, i64 %140
  %142 = add nuw nsw i32 %135, 8
  store i32 %142, ptr %2, align 8
  br label %147

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr i8, ptr %145, i64 8
  store ptr %146, ptr %144, align 8
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi ptr [ %141, %137 ], [ %145, %143 ]
  %149 = load i32, ptr %148, align 4
  %150 = trunc i32 %149 to i16
  %151 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  store i16 %150, ptr %151, align 2, !tbaa !77
  br label %1484

152:                                              ; preds = %3
  %153 = load i32, ptr %2, align 8
  %154 = icmp ult i32 %153, 41
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = zext nneg i32 %153 to i64
  %159 = getelementptr i8, ptr %157, i64 %158
  %160 = add nuw nsw i32 %153, 8
  store i32 %160, ptr %2, align 8
  br label %165

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr i8, ptr %163, i64 8
  store ptr %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi ptr [ %159, %155 ], [ %163, %161 ]
  %167 = load i32, ptr %166, align 4
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 12
  store i16 %168, ptr %169, align 4, !tbaa !54
  br label %1484

170:                                              ; preds = %3
  %171 = load i32, ptr %2, align 8
  %172 = icmp ult i32 %171, 41
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8
  %176 = zext nneg i32 %171 to i64
  %177 = getelementptr i8, ptr %175, i64 %176
  %178 = add nuw nsw i32 %171, 8
  store i32 %178, ptr %2, align 8
  br label %183

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr i8, ptr %181, i64 8
  store ptr %182, ptr %180, align 8
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi ptr [ %177, %173 ], [ %181, %179 ]
  %185 = load i32, ptr %184, align 4
  store i32 %185, ptr %4, align 4, !tbaa !73
  %186 = add i32 %185, -3
  %187 = icmp ult i32 %186, -2
  br i1 %187, label %1505, label %188

188:                                              ; preds = %183
  %189 = trunc i32 %185 to i16
  %190 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  store i16 %189, ptr %190, align 2, !tbaa !52
  br label %1484

191:                                              ; preds = %3
  %192 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 33
  %193 = load i32, ptr %2, align 8
  %194 = icmp ult i32 %193, 41
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = zext nneg i32 %193 to i64
  %199 = getelementptr i8, ptr %197, i64 %198
  %200 = add nuw nsw i32 %193, 8
  store i32 %200, ptr %2, align 8
  br label %205

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr i8, ptr %203, i64 8
  store ptr %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %201, %195
  %206 = phi ptr [ %199, %195 ], [ %203, %201 ]
  %207 = load ptr, ptr %206, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %192, ptr noundef %207)
  br label %1484

208:                                              ; preds = %3
  %209 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 34
  %210 = load i32, ptr %2, align 8
  %211 = icmp ult i32 %210, 41
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8
  %215 = zext nneg i32 %210 to i64
  %216 = getelementptr i8, ptr %214, i64 %215
  %217 = add nuw nsw i32 %210, 8
  store i32 %217, ptr %2, align 8
  br label %222

218:                                              ; preds = %208
  %219 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr i8, ptr %220, i64 8
  store ptr %221, ptr %219, align 8
  br label %222

222:                                              ; preds = %218, %212
  %223 = phi ptr [ %216, %212 ], [ %220, %218 ]
  %224 = load ptr, ptr %223, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %209, ptr noundef %224)
  br label %1484

225:                                              ; preds = %3
  %226 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 35
  %227 = load i32, ptr %2, align 8
  %228 = icmp ult i32 %227, 41
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8
  %232 = zext nneg i32 %227 to i64
  %233 = getelementptr i8, ptr %231, i64 %232
  %234 = add nuw nsw i32 %227, 8
  store i32 %234, ptr %2, align 8
  br label %239

235:                                              ; preds = %225
  %236 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr i8, ptr %237, i64 8
  store ptr %238, ptr %236, align 8
  br label %239

239:                                              ; preds = %235, %229
  %240 = phi ptr [ %233, %229 ], [ %237, %235 ]
  %241 = load ptr, ptr %240, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %226, ptr noundef %241)
  br label %1484

242:                                              ; preds = %3
  %243 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 36
  %244 = load i32, ptr %2, align 8
  %245 = icmp ult i32 %244, 41
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8
  %249 = zext nneg i32 %244 to i64
  %250 = getelementptr i8, ptr %248, i64 %249
  %251 = add nuw nsw i32 %244, 8
  store i32 %251, ptr %2, align 8
  br label %256

252:                                              ; preds = %242
  %253 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr i8, ptr %254, i64 8
  store ptr %255, ptr %253, align 8
  br label %256

256:                                              ; preds = %252, %246
  %257 = phi ptr [ %250, %246 ], [ %254, %252 ]
  %258 = load ptr, ptr %257, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %243, ptr noundef %258)
  br label %1484

259:                                              ; preds = %3
  %260 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 37
  %261 = load i32, ptr %2, align 8
  %262 = icmp ult i32 %261, 41
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8
  %266 = zext nneg i32 %261 to i64
  %267 = getelementptr i8, ptr %265, i64 %266
  %268 = add nuw nsw i32 %261, 8
  store i32 %268, ptr %2, align 8
  br label %273

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr i8, ptr %271, i64 8
  store ptr %272, ptr %270, align 8
  br label %273

273:                                              ; preds = %269, %263
  %274 = phi ptr [ %267, %263 ], [ %271, %269 ]
  %275 = load ptr, ptr %274, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %260, ptr noundef %275)
  br label %1484

276:                                              ; preds = %3
  %277 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 38
  %278 = load i32, ptr %2, align 8
  %279 = icmp ult i32 %278, 41
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8
  %283 = zext nneg i32 %278 to i64
  %284 = getelementptr i8, ptr %282, i64 %283
  %285 = add nuw nsw i32 %278, 8
  store i32 %285, ptr %2, align 8
  br label %290

286:                                              ; preds = %276
  %287 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr i8, ptr %288, i64 8
  store ptr %289, ptr %287, align 8
  br label %290

290:                                              ; preds = %286, %280
  %291 = phi ptr [ %284, %280 ], [ %288, %286 ]
  %292 = load ptr, ptr %291, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %277, ptr noundef %292)
  br label %1484

293:                                              ; preds = %3
  %294 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 39
  %295 = load i32, ptr %2, align 8
  %296 = icmp ult i32 %295, 41
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8
  %300 = zext nneg i32 %295 to i64
  %301 = getelementptr i8, ptr %299, i64 %300
  %302 = add nuw nsw i32 %295, 8
  store i32 %302, ptr %2, align 8
  br label %307

303:                                              ; preds = %293
  %304 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8
  %306 = getelementptr i8, ptr %305, i64 8
  store ptr %306, ptr %304, align 8
  br label %307

307:                                              ; preds = %303, %297
  %308 = phi ptr [ %301, %297 ], [ %305, %303 ]
  %309 = load ptr, ptr %308, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %294, ptr noundef %309)
  br label %1484

310:                                              ; preds = %3
  %311 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 40
  %312 = load i32, ptr %2, align 8
  %313 = icmp ult i32 %312, 41
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8
  %317 = zext nneg i32 %312 to i64
  %318 = getelementptr i8, ptr %316, i64 %317
  %319 = add nuw nsw i32 %312, 8
  store i32 %319, ptr %2, align 8
  br label %324

320:                                              ; preds = %310
  %321 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8
  %323 = getelementptr i8, ptr %322, i64 8
  store ptr %323, ptr %321, align 8
  br label %324

324:                                              ; preds = %320, %314
  %325 = phi ptr [ %318, %314 ], [ %322, %320 ]
  %326 = load ptr, ptr %325, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %311, ptr noundef %326)
  br label %1484

327:                                              ; preds = %3
  %328 = load i32, ptr %2, align 8
  %329 = icmp ult i32 %328, 41
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8
  %333 = zext nneg i32 %328 to i64
  %334 = getelementptr i8, ptr %332, i64 %333
  %335 = add nuw nsw i32 %328, 8
  store i32 %335, ptr %2, align 8
  br label %340

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8
  %339 = getelementptr i8, ptr %338, i64 8
  store ptr %339, ptr %337, align 8
  br label %340

340:                                              ; preds = %336, %330
  %341 = phi ptr [ %334, %330 ], [ %338, %336 ]
  %342 = load i32, ptr %341, align 4
  store i32 %342, ptr %4, align 4, !tbaa !73
  %343 = add i32 %342, -9
  %344 = icmp ult i32 %343, -8
  br i1 %344, label %345, label %350

345:                                              ; preds = %340
  %346 = load ptr, ptr %0, align 8, !tbaa !9
  %347 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef 274) #8
  %348 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %347, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %346, ptr noundef nonnull @.str.9, i32 noundef %342, ptr noundef %349) #8
  br label %1484

350:                                              ; preds = %340
  %351 = trunc i32 %342 to i16
  %352 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 14
  store i16 %351, ptr %352, align 8, !tbaa !55
  br label %1484

353:                                              ; preds = %3
  %354 = load i32, ptr %2, align 8
  %355 = icmp ult i32 %354, 41
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8
  %359 = zext nneg i32 %354 to i64
  %360 = getelementptr i8, ptr %358, i64 %359
  %361 = add nuw nsw i32 %354, 8
  store i32 %361, ptr %2, align 8
  br label %366

362:                                              ; preds = %353
  %363 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8
  %365 = getelementptr i8, ptr %364, i64 8
  store ptr %365, ptr %363, align 8
  br label %366

366:                                              ; preds = %362, %356
  %367 = phi ptr [ %360, %356 ], [ %364, %362 ]
  %368 = load i32, ptr %367, align 4
  store i32 %368, ptr %4, align 4, !tbaa !73
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %1505, label %370

370:                                              ; preds = %366
  %371 = trunc i32 %368 to i16
  %372 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  store i16 %371, ptr %372, align 2, !tbaa !56
  br label %1484

373:                                              ; preds = %3
  %374 = load i32, ptr %2, align 8
  %375 = icmp ult i32 %374, 41
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8
  %379 = zext nneg i32 %374 to i64
  %380 = getelementptr i8, ptr %378, i64 %379
  %381 = add nuw nsw i32 %374, 8
  store i32 %381, ptr %2, align 8
  br label %386

382:                                              ; preds = %373
  %383 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8
  %385 = getelementptr i8, ptr %384, i64 8
  store ptr %385, ptr %383, align 8
  br label %386

386:                                              ; preds = %382, %376
  %387 = phi ptr [ %380, %376 ], [ %384, %382 ]
  %388 = load i32, ptr %387, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %1511, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  store i32 %388, ptr %391, align 4, !tbaa !57
  %392 = load i64, ptr %6, align 8, !tbaa !23
  %393 = and i64 %392, 4
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %1484

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  store i32 %388, ptr %396, align 8, !tbaa !59
  %397 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %398 = load i32, ptr %397, align 8, !tbaa !71
  %399 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  store i32 %398, ptr %399, align 4, !tbaa !58
  br label %1484

400:                                              ; preds = %3
  %401 = load i32, ptr %2, align 8
  %402 = icmp ult i32 %401, 41
  br i1 %402, label %403, label %409

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %405 = load ptr, ptr %404, align 8
  %406 = zext nneg i32 %401 to i64
  %407 = getelementptr i8, ptr %405, i64 %406
  %408 = add nuw nsw i32 %401, 8
  store i32 %408, ptr %2, align 8
  br label %413

409:                                              ; preds = %400
  %410 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8
  %412 = getelementptr i8, ptr %411, i64 8
  store ptr %412, ptr %410, align 8
  br label %413

413:                                              ; preds = %409, %403
  %414 = phi ptr [ %407, %403 ], [ %411, %409 ]
  %415 = load i32, ptr %414, align 4
  %416 = trunc i32 %415 to i16
  %417 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 17
  store i16 %416, ptr %417, align 8, !tbaa !78
  br label %1484

418:                                              ; preds = %3
  %419 = load i32, ptr %2, align 8
  %420 = icmp ult i32 %419, 41
  br i1 %420, label %421, label %427

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8
  %424 = zext nneg i32 %419 to i64
  %425 = getelementptr i8, ptr %423, i64 %424
  %426 = add nuw nsw i32 %419, 8
  store i32 %426, ptr %2, align 8
  br label %431

427:                                              ; preds = %418
  %428 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr i8, ptr %429, i64 8
  store ptr %430, ptr %428, align 8
  br label %431

431:                                              ; preds = %427, %421
  %432 = phi ptr [ %425, %421 ], [ %429, %427 ]
  %433 = load i32, ptr %432, align 4
  %434 = trunc i32 %433 to i16
  %435 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 18
  store i16 %434, ptr %435, align 2, !tbaa !79
  br label %1484

436:                                              ; preds = %3
  %437 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = icmp ult i32 %438, 161
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8
  %443 = zext nneg i32 %438 to i64
  %444 = getelementptr i8, ptr %442, i64 %443
  %445 = add nuw nsw i32 %438, 16
  store i32 %445, ptr %437, align 4
  br label %450

446:                                              ; preds = %436
  %447 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8
  %449 = getelementptr i8, ptr %448, i64 8
  store ptr %449, ptr %447, align 8
  br label %450

450:                                              ; preds = %446, %440
  %451 = phi ptr [ %444, %440 ], [ %448, %446 ]
  %452 = load double, ptr %451, align 8
  %453 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 19
  store double %452, ptr %453, align 8, !tbaa !80
  br label %1484

454:                                              ; preds = %3
  %455 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %456 = load i32, ptr %455, align 4
  %457 = icmp ult i32 %456, 161
  br i1 %457, label %458, label %464

458:                                              ; preds = %454
  %459 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8
  %461 = zext nneg i32 %456 to i64
  %462 = getelementptr i8, ptr %460, i64 %461
  %463 = add nuw nsw i32 %456, 16
  store i32 %463, ptr %455, align 4
  br label %468

464:                                              ; preds = %454
  %465 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %466 = load ptr, ptr %465, align 8
  %467 = getelementptr i8, ptr %466, i64 8
  store ptr %467, ptr %465, align 8
  br label %468

468:                                              ; preds = %464, %458
  %469 = phi ptr [ %462, %458 ], [ %466, %464 ]
  %470 = load double, ptr %469, align 8
  %471 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 20
  store double %470, ptr %471, align 8, !tbaa !81
  br label %1484

472:                                              ; preds = %3
  %473 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %474 = load i32, ptr %473, align 4
  %475 = icmp ult i32 %474, 161
  br i1 %475, label %476, label %482

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8
  %479 = zext nneg i32 %474 to i64
  %480 = getelementptr i8, ptr %478, i64 %479
  %481 = add nuw nsw i32 %474, 16
  store i32 %481, ptr %473, align 4
  br label %486

482:                                              ; preds = %472
  %483 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %484 = load ptr, ptr %483, align 8
  %485 = getelementptr i8, ptr %484, i64 8
  store ptr %485, ptr %483, align 8
  br label %486

486:                                              ; preds = %482, %476
  %487 = phi ptr [ %480, %476 ], [ %484, %482 ]
  %488 = load double, ptr %487, align 8
  %489 = fptrunc double %488 to float
  %490 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 21
  store float %489, ptr %490, align 8, !tbaa !82
  br label %1484

491:                                              ; preds = %3
  %492 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %493 = load i32, ptr %492, align 4
  %494 = icmp ult i32 %493, 161
  br i1 %494, label %495, label %501

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8
  %498 = zext nneg i32 %493 to i64
  %499 = getelementptr i8, ptr %497, i64 %498
  %500 = add nuw nsw i32 %493, 16
  store i32 %500, ptr %492, align 4
  br label %505

501:                                              ; preds = %491
  %502 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8
  %504 = getelementptr i8, ptr %503, i64 8
  store ptr %504, ptr %502, align 8
  br label %505

505:                                              ; preds = %501, %495
  %506 = phi ptr [ %499, %495 ], [ %503, %501 ]
  %507 = load double, ptr %506, align 8
  %508 = fptrunc double %507 to float
  %509 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 22
  store float %508, ptr %509, align 4, !tbaa !83
  br label %1484

510:                                              ; preds = %3
  %511 = load i32, ptr %2, align 8
  %512 = icmp ult i32 %511, 41
  br i1 %512, label %513, label %519

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8
  %516 = zext nneg i32 %511 to i64
  %517 = getelementptr i8, ptr %515, i64 %516
  %518 = add nuw nsw i32 %511, 8
  store i32 %518, ptr %2, align 8
  br label %523

519:                                              ; preds = %510
  %520 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8
  %522 = getelementptr i8, ptr %521, i64 8
  store ptr %522, ptr %520, align 8
  br label %523

523:                                              ; preds = %519, %513
  %524 = phi ptr [ %517, %513 ], [ %521, %519 ]
  %525 = load i32, ptr %524, align 4
  store i32 %525, ptr %4, align 4, !tbaa !73
  %526 = add i32 %525, -3
  %527 = icmp ult i32 %526, -2
  br i1 %527, label %1505, label %528

528:                                              ; preds = %523
  %529 = trunc i32 %525 to i16
  %530 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  store i16 %529, ptr %530, align 2, !tbaa !84
  br label %1484

531:                                              ; preds = %3
  %532 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 41
  %533 = load i32, ptr %2, align 8
  %534 = icmp ult i32 %533, 41
  br i1 %534, label %535, label %541

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %537 = load ptr, ptr %536, align 8
  %538 = zext nneg i32 %533 to i64
  %539 = getelementptr i8, ptr %537, i64 %538
  %540 = add nuw nsw i32 %533, 8
  store i32 %540, ptr %2, align 8
  br label %545

541:                                              ; preds = %531
  %542 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8
  %544 = getelementptr i8, ptr %543, i64 8
  store ptr %544, ptr %542, align 8
  br label %545

545:                                              ; preds = %541, %535
  %546 = phi ptr [ %539, %535 ], [ %543, %541 ]
  %547 = load ptr, ptr %546, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %532, ptr noundef %547)
  br label %1484

548:                                              ; preds = %3
  %549 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %550 = load i32, ptr %549, align 4
  %551 = icmp ult i32 %550, 161
  br i1 %551, label %552, label %558

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %554 = load ptr, ptr %553, align 8
  %555 = zext nneg i32 %550 to i64
  %556 = getelementptr i8, ptr %554, i64 %555
  %557 = add nuw nsw i32 %550, 16
  store i32 %557, ptr %549, align 4
  br label %562

558:                                              ; preds = %548
  %559 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %560 = load ptr, ptr %559, align 8
  %561 = getelementptr i8, ptr %560, i64 8
  store ptr %561, ptr %559, align 8
  br label %562

562:                                              ; preds = %558, %552
  %563 = phi ptr [ %556, %552 ], [ %560, %558 ]
  %564 = load double, ptr %563, align 8
  %565 = fptrunc double %564 to float
  %566 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 25
  store float %565, ptr %566, align 4, !tbaa !85
  br label %1484

567:                                              ; preds = %3
  %568 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %569 = load i32, ptr %568, align 4
  %570 = icmp ult i32 %569, 161
  br i1 %570, label %571, label %577

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %573 = load ptr, ptr %572, align 8
  %574 = zext nneg i32 %569 to i64
  %575 = getelementptr i8, ptr %573, i64 %574
  %576 = add nuw nsw i32 %569, 16
  store i32 %576, ptr %568, align 4
  br label %581

577:                                              ; preds = %567
  %578 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8
  %580 = getelementptr i8, ptr %579, i64 8
  store ptr %580, ptr %578, align 8
  br label %581

581:                                              ; preds = %577, %571
  %582 = phi ptr [ %575, %571 ], [ %579, %577 ]
  %583 = load double, ptr %582, align 8
  %584 = fptrunc double %583 to float
  %585 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 26
  store float %584, ptr %585, align 8, !tbaa !86
  br label %1484

586:                                              ; preds = %3
  %587 = load i32, ptr %2, align 8
  %588 = icmp ult i32 %587, 41
  br i1 %588, label %589, label %595

589:                                              ; preds = %586
  %590 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %591 = load ptr, ptr %590, align 8
  %592 = zext nneg i32 %587 to i64
  %593 = getelementptr i8, ptr %591, i64 %592
  %594 = add nuw nsw i32 %587, 8
  store i32 %594, ptr %2, align 8
  br label %599

595:                                              ; preds = %586
  %596 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8
  %598 = getelementptr i8, ptr %597, i64 8
  store ptr %598, ptr %596, align 8
  br label %599

599:                                              ; preds = %595, %589
  %600 = phi ptr [ %593, %589 ], [ %597, %595 ]
  %601 = load i32, ptr %600, align 4
  store i32 %601, ptr %4, align 4, !tbaa !73
  %602 = add i32 %601, -4
  %603 = icmp ult i32 %602, -3
  br i1 %603, label %1505, label %604

604:                                              ; preds = %599
  %605 = trunc i32 %601 to i16
  %606 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  store i16 %605, ptr %606, align 8, !tbaa !61
  br label %1484

607:                                              ; preds = %3
  %608 = load i32, ptr %2, align 8
  %609 = icmp ult i32 %608, 41
  br i1 %609, label %610, label %616

610:                                              ; preds = %607
  %611 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %612 = load ptr, ptr %611, align 8
  %613 = zext nneg i32 %608 to i64
  %614 = getelementptr i8, ptr %612, i64 %613
  %615 = add nuw nsw i32 %608, 8
  store i32 %615, ptr %2, align 8
  br label %620

616:                                              ; preds = %607
  %617 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %618 = load ptr, ptr %617, align 8
  %619 = getelementptr i8, ptr %618, i64 8
  store ptr %619, ptr %617, align 8
  br label %620

620:                                              ; preds = %616, %610
  %621 = phi ptr [ %614, %610 ], [ %618, %616 ]
  %622 = load i32, ptr %621, align 4
  %623 = trunc i32 %622 to i16
  %624 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27
  store i16 %623, ptr %624, align 4, !tbaa !64
  %625 = load i32, ptr %2, align 8
  %626 = icmp ult i32 %625, 41
  br i1 %626, label %627, label %633

627:                                              ; preds = %620
  %628 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %629 = load ptr, ptr %628, align 8
  %630 = zext nneg i32 %625 to i64
  %631 = getelementptr i8, ptr %629, i64 %630
  %632 = add nuw nsw i32 %625, 8
  store i32 %632, ptr %2, align 8
  br label %637

633:                                              ; preds = %620
  %634 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %635 = load ptr, ptr %634, align 8
  %636 = getelementptr i8, ptr %635, i64 8
  store ptr %636, ptr %634, align 8
  br label %637

637:                                              ; preds = %633, %627
  %638 = phi ptr [ %631, %627 ], [ %635, %633 ]
  %639 = load i32, ptr %638, align 4
  %640 = trunc i32 %639 to i16
  %641 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27, i64 1
  store i16 %640, ptr %641, align 2, !tbaa !64
  br label %1484

642:                                              ; preds = %3
  %643 = load i32, ptr %2, align 8
  %644 = icmp ult i32 %643, 41
  br i1 %644, label %645, label %651

645:                                              ; preds = %642
  %646 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %647 = load ptr, ptr %646, align 8
  %648 = zext nneg i32 %643 to i64
  %649 = getelementptr i8, ptr %647, i64 %648
  %650 = add nuw nsw i32 %643, 8
  store i32 %650, ptr %2, align 8
  br label %655

651:                                              ; preds = %642
  %652 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %653 = load ptr, ptr %652, align 8
  %654 = getelementptr i8, ptr %653, i64 8
  store ptr %654, ptr %652, align 8
  br label %655

655:                                              ; preds = %651, %645
  %656 = phi ptr [ %649, %645 ], [ %653, %651 ]
  %657 = load i32, ptr %656, align 4
  %658 = trunc i32 %657 to i16
  %659 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29
  store i16 %658, ptr %659, align 8, !tbaa !64
  %660 = load i32, ptr %2, align 8
  %661 = icmp ult i32 %660, 41
  br i1 %661, label %662, label %668

662:                                              ; preds = %655
  %663 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %664 = load ptr, ptr %663, align 8
  %665 = zext nneg i32 %660 to i64
  %666 = getelementptr i8, ptr %664, i64 %665
  %667 = add nuw nsw i32 %660, 8
  store i32 %667, ptr %2, align 8
  br label %672

668:                                              ; preds = %655
  %669 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8
  %671 = getelementptr i8, ptr %670, i64 8
  store ptr %671, ptr %669, align 8
  br label %672

672:                                              ; preds = %668, %662
  %673 = phi ptr [ %666, %662 ], [ %670, %668 ]
  %674 = load i32, ptr %673, align 4
  %675 = trunc i32 %674 to i16
  %676 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29, i64 1
  store i16 %675, ptr %676, align 2, !tbaa !64
  br label %1484

677:                                              ; preds = %3
  %678 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %679 = load i16, ptr %678, align 4, !tbaa !53
  %680 = zext nneg i16 %679 to i64
  %681 = shl nuw i64 1, %680
  %682 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28
  %683 = load i32, ptr %2, align 8
  %684 = icmp ult i32 %683, 41
  br i1 %684, label %685, label %691

685:                                              ; preds = %677
  %686 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %687 = load ptr, ptr %686, align 8
  %688 = zext nneg i32 %683 to i64
  %689 = getelementptr i8, ptr %687, i64 %688
  %690 = add nuw nsw i32 %683, 8
  store i32 %690, ptr %2, align 8
  br label %695

691:                                              ; preds = %677
  %692 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %693 = load ptr, ptr %692, align 8
  %694 = getelementptr i8, ptr %693, i64 8
  store ptr %694, ptr %692, align 8
  br label %695

695:                                              ; preds = %691, %685
  %696 = phi ptr [ %689, %685 ], [ %693, %691 ]
  %697 = load ptr, ptr %696, align 8
  %698 = and i64 %681, 4294967295
  tail call void @_TIFFsetShortArray(ptr noundef nonnull %682, ptr noundef %697, i64 noundef %698)
  %699 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 1
  %700 = load i32, ptr %2, align 8
  %701 = icmp ult i32 %700, 41
  br i1 %701, label %702, label %708

702:                                              ; preds = %695
  %703 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %704 = load ptr, ptr %703, align 8
  %705 = zext nneg i32 %700 to i64
  %706 = getelementptr i8, ptr %704, i64 %705
  %707 = add nuw nsw i32 %700, 8
  store i32 %707, ptr %2, align 8
  br label %712

708:                                              ; preds = %695
  %709 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %710 = load ptr, ptr %709, align 8
  %711 = getelementptr i8, ptr %710, i64 8
  store ptr %711, ptr %709, align 8
  br label %712

712:                                              ; preds = %708, %702
  %713 = phi ptr [ %706, %702 ], [ %710, %708 ]
  %714 = load ptr, ptr %713, align 8
  tail call void @_TIFFsetShortArray(ptr noundef nonnull %699, ptr noundef %714, i64 noundef %698)
  %715 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 2
  %716 = load i32, ptr %2, align 8
  %717 = icmp ult i32 %716, 41
  br i1 %717, label %718, label %724

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %720 = load ptr, ptr %719, align 8
  %721 = zext nneg i32 %716 to i64
  %722 = getelementptr i8, ptr %720, i64 %721
  %723 = add nuw nsw i32 %716, 8
  store i32 %723, ptr %2, align 8
  br label %728

724:                                              ; preds = %712
  %725 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %726 = load ptr, ptr %725, align 8
  %727 = getelementptr i8, ptr %726, i64 8
  store ptr %727, ptr %725, align 8
  br label %728

728:                                              ; preds = %724, %718
  %729 = phi ptr [ %722, %718 ], [ %726, %724 ]
  %730 = load ptr, ptr %729, align 8
  tail call void @_TIFFsetShortArray(ptr noundef nonnull %715, ptr noundef %730, i64 noundef %698)
  br label %1484

731:                                              ; preds = %3
  %732 = call fastcc i32 @setExtraSamples(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %4), !range !87
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %1505, label %1484

734:                                              ; preds = %3
  %735 = load i32, ptr %2, align 8
  %736 = icmp ult i32 %735, 41
  br i1 %736, label %737, label %743

737:                                              ; preds = %734
  %738 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %739 = load ptr, ptr %738, align 8
  %740 = zext nneg i32 %735 to i64
  %741 = getelementptr i8, ptr %739, i64 %740
  %742 = add nuw nsw i32 %735, 8
  store i32 %742, ptr %2, align 8
  br label %747

743:                                              ; preds = %734
  %744 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %745 = load ptr, ptr %744, align 8
  %746 = getelementptr i8, ptr %745, i64 8
  store ptr %746, ptr %744, align 8
  br label %747

747:                                              ; preds = %743, %737
  %748 = phi ptr [ %741, %737 ], [ %745, %743 ]
  %749 = load i32, ptr %748, align 4
  %750 = icmp ne i32 %749, 0
  %751 = zext i1 %750 to i16
  %752 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  store i16 %751, ptr %752, align 4, !tbaa !88
  br i1 %750, label %753, label %1484

753:                                              ; preds = %747
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i16 1, ptr %5, align 2, !tbaa !64
  %754 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  call void @_TIFFsetShortArray(ptr noundef nonnull %754, ptr noundef nonnull %5, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %1484

755:                                              ; preds = %3
  %756 = load i32, ptr %2, align 8
  %757 = icmp ult i32 %756, 41
  br i1 %757, label %758, label %764

758:                                              ; preds = %755
  %759 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %760 = load ptr, ptr %759, align 8
  %761 = zext nneg i32 %756 to i64
  %762 = getelementptr i8, ptr %760, i64 %761
  %763 = add nuw nsw i32 %756, 8
  store i32 %763, ptr %2, align 8
  br label %768

764:                                              ; preds = %755
  %765 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %766 = load ptr, ptr %765, align 8
  %767 = getelementptr i8, ptr %766, i64 8
  store ptr %767, ptr %765, align 8
  br label %768

768:                                              ; preds = %764, %758
  %769 = phi ptr [ %762, %758 ], [ %766, %764 ]
  %770 = load i32, ptr %769, align 4
  %771 = and i32 %770, 15
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %779, label %773

773:                                              ; preds = %768
  %774 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %775 = load i32, ptr %774, align 4, !tbaa !76
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %1511

777:                                              ; preds = %773
  %778 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %778, ptr noundef nonnull @.str.10, i32 noundef %770) #8
  br label %779

779:                                              ; preds = %777, %768
  %780 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  store i32 %770, ptr %780, align 4, !tbaa !58
  %781 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %782 = load i32, ptr %781, align 8, !tbaa !17
  %783 = or i32 %782, 1024
  store i32 %783, ptr %781, align 8, !tbaa !17
  br label %1484

784:                                              ; preds = %3
  %785 = load i32, ptr %2, align 8
  %786 = icmp ult i32 %785, 41
  br i1 %786, label %787, label %793

787:                                              ; preds = %784
  %788 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %789 = load ptr, ptr %788, align 8
  %790 = zext nneg i32 %785 to i64
  %791 = getelementptr i8, ptr %789, i64 %790
  %792 = add nuw nsw i32 %785, 8
  store i32 %792, ptr %2, align 8
  br label %797

793:                                              ; preds = %784
  %794 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %795 = load ptr, ptr %794, align 8
  %796 = getelementptr i8, ptr %795, i64 8
  store ptr %796, ptr %794, align 8
  br label %797

797:                                              ; preds = %793, %787
  %798 = phi ptr [ %791, %787 ], [ %795, %793 ]
  %799 = load i32, ptr %798, align 4
  %800 = and i32 %799, 15
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %808, label %802

802:                                              ; preds = %797
  %803 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %804 = load i32, ptr %803, align 4, !tbaa !76
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %1511

806:                                              ; preds = %802
  %807 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %807, ptr noundef nonnull @.str.11, i32 noundef %799) #8
  br label %808

808:                                              ; preds = %806, %797
  %809 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  store i32 %799, ptr %809, align 8, !tbaa !59
  %810 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %811 = load i32, ptr %810, align 8, !tbaa !17
  %812 = or i32 %811, 1024
  store i32 %812, ptr %810, align 8, !tbaa !17
  br label %1484

813:                                              ; preds = %3
  %814 = load i32, ptr %2, align 8
  %815 = icmp ult i32 %814, 41
  br i1 %815, label %816, label %822

816:                                              ; preds = %813
  %817 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %818 = load ptr, ptr %817, align 8
  %819 = zext nneg i32 %814 to i64
  %820 = getelementptr i8, ptr %818, i64 %819
  %821 = add nuw nsw i32 %814, 8
  store i32 %821, ptr %2, align 8
  br label %826

822:                                              ; preds = %813
  %823 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %824 = load ptr, ptr %823, align 8
  %825 = getelementptr i8, ptr %824, i64 8
  store ptr %825, ptr %823, align 8
  br label %826

826:                                              ; preds = %822, %816
  %827 = phi ptr [ %820, %816 ], [ %824, %822 ]
  %828 = load i32, ptr %827, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %1511, label %830

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  store i32 %828, ptr %831, align 4, !tbaa !60
  br label %1484

832:                                              ; preds = %3
  %833 = load i32, ptr %2, align 8
  %834 = icmp ult i32 %833, 41
  br i1 %834, label %835, label %841

835:                                              ; preds = %832
  %836 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %837 = load ptr, ptr %836, align 8
  %838 = zext nneg i32 %833 to i64
  %839 = getelementptr i8, ptr %837, i64 %838
  %840 = add nuw nsw i32 %833, 8
  store i32 %840, ptr %2, align 8
  br label %845

841:                                              ; preds = %832
  %842 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %843 = load ptr, ptr %842, align 8
  %844 = getelementptr i8, ptr %843, i64 8
  store ptr %844, ptr %842, align 8
  br label %845

845:                                              ; preds = %841, %835
  %846 = phi ptr [ %839, %835 ], [ %843, %841 ]
  %847 = load i32, ptr %846, align 4
  store i32 %847, ptr %4, align 4, !tbaa !73
  switch i32 %847, label %1505 [
    i32 0, label %848
    i32 1, label %849
    i32 2, label %850
    i32 3, label %851
  ]

848:                                              ; preds = %845
  store i32 4, ptr %4, align 4, !tbaa !73
  br label %852

849:                                              ; preds = %845
  store i32 2, ptr %4, align 4, !tbaa !73
  br label %852

850:                                              ; preds = %845
  store i32 1, ptr %4, align 4, !tbaa !73
  br label %852

851:                                              ; preds = %845
  store i32 3, ptr %4, align 4, !tbaa !73
  br label %852

852:                                              ; preds = %851, %850, %849, %848
  %853 = load i32, ptr %4, align 4, !tbaa !73
  %854 = trunc i32 %853 to i16
  %855 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  store i16 %854, ptr %855, align 2, !tbaa !62
  br label %1484

856:                                              ; preds = %3
  %857 = load i32, ptr %2, align 8
  %858 = icmp ult i32 %857, 41
  br i1 %858, label %859, label %865

859:                                              ; preds = %856
  %860 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %861 = load ptr, ptr %860, align 8
  %862 = zext nneg i32 %857 to i64
  %863 = getelementptr i8, ptr %861, i64 %862
  %864 = add nuw nsw i32 %857, 8
  store i32 %864, ptr %2, align 8
  br label %869

865:                                              ; preds = %856
  %866 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %867 = load ptr, ptr %866, align 8
  %868 = getelementptr i8, ptr %867, i64 8
  store ptr %868, ptr %866, align 8
  br label %869

869:                                              ; preds = %865, %859
  %870 = phi ptr [ %863, %859 ], [ %867, %865 ]
  %871 = load i32, ptr %870, align 4
  store i32 %871, ptr %4, align 4, !tbaa !73
  %872 = add i32 %871, -5
  %873 = icmp ult i32 %872, -4
  br i1 %873, label %1505, label %874

874:                                              ; preds = %869
  %875 = trunc i32 %871 to i16
  %876 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  store i16 %875, ptr %876, align 2, !tbaa !62
  br label %1484

877:                                              ; preds = %3
  %878 = load i32, ptr %2, align 8
  %879 = icmp ult i32 %878, 41
  br i1 %879, label %880, label %886

880:                                              ; preds = %877
  %881 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %882 = load ptr, ptr %881, align 8
  %883 = zext nneg i32 %878 to i64
  %884 = getelementptr i8, ptr %882, i64 %883
  %885 = add nuw nsw i32 %878, 8
  store i32 %885, ptr %2, align 8
  br label %890

886:                                              ; preds = %877
  %887 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %888 = load ptr, ptr %887, align 8
  %889 = getelementptr i8, ptr %888, i64 8
  store ptr %889, ptr %887, align 8
  br label %890

890:                                              ; preds = %886, %880
  %891 = phi ptr [ %884, %880 ], [ %888, %886 ]
  %892 = load i32, ptr %891, align 4
  %893 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  store i32 %892, ptr %893, align 8, !tbaa !63
  br label %1484

894:                                              ; preds = %3
  %895 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %896 = load i32, ptr %895, align 4
  %897 = icmp ult i32 %896, 161
  br i1 %897, label %898, label %904

898:                                              ; preds = %894
  %899 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %900 = load ptr, ptr %899, align 8
  %901 = zext nneg i32 %896 to i64
  %902 = getelementptr i8, ptr %900, i64 %901
  %903 = add nuw nsw i32 %896, 16
  store i32 %903, ptr %895, align 4
  br label %908

904:                                              ; preds = %894
  %905 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %906 = load ptr, ptr %905, align 8
  %907 = getelementptr i8, ptr %906, i64 8
  store ptr %907, ptr %905, align 8
  br label %908

908:                                              ; preds = %904, %898
  %909 = phi ptr [ %902, %898 ], [ %906, %904 ]
  %910 = load double, ptr %909, align 8
  %911 = fcmp ugt double %910, 0.000000e+00
  br i1 %911, label %912, label %1517

912:                                              ; preds = %908
  %913 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 32
  store double %910, ptr %913, align 8, !tbaa !89
  br label %1484

914:                                              ; preds = %3
  %915 = load i32, ptr %2, align 8
  %916 = icmp ult i32 %915, 41
  br i1 %916, label %917, label %923

917:                                              ; preds = %914
  %918 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %919 = load ptr, ptr %918, align 8
  %920 = zext nneg i32 %915 to i64
  %921 = getelementptr i8, ptr %919, i64 %920
  %922 = add nuw nsw i32 %915, 8
  store i32 %922, ptr %2, align 8
  br label %927

923:                                              ; preds = %914
  %924 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %925 = load ptr, ptr %924, align 8
  %926 = getelementptr i8, ptr %925, i64 8
  store ptr %926, ptr %924, align 8
  br label %927

927:                                              ; preds = %923, %917
  %928 = phi ptr [ %921, %917 ], [ %925, %923 ]
  %929 = load i32, ptr %928, align 4
  %930 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 67
  store i32 %929, ptr %930, align 8, !tbaa !90
  br label %1484

931:                                              ; preds = %3
  %932 = load i32, ptr %2, align 8
  %933 = icmp ult i32 %932, 41
  br i1 %933, label %934, label %940

934:                                              ; preds = %931
  %935 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %936 = load ptr, ptr %935, align 8
  %937 = zext nneg i32 %932 to i64
  %938 = getelementptr i8, ptr %936, i64 %937
  %939 = add nuw nsw i32 %932, 8
  store i32 %939, ptr %2, align 8
  br label %944

940:                                              ; preds = %931
  %941 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %942 = load ptr, ptr %941, align 8
  %943 = getelementptr i8, ptr %942, i64 8
  store ptr %943, ptr %941, align 8
  br label %944

944:                                              ; preds = %940, %934
  %945 = phi ptr [ %938, %934 ], [ %942, %940 ]
  %946 = load i32, ptr %945, align 4
  %947 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 68
  store i32 %946, ptr %947, align 4, !tbaa !91
  br label %1484

948:                                              ; preds = %3
  %949 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 69
  %950 = load i32, ptr %2, align 8
  %951 = icmp ult i32 %950, 41
  br i1 %951, label %952, label %958

952:                                              ; preds = %948
  %953 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %954 = load ptr, ptr %953, align 8
  %955 = zext nneg i32 %950 to i64
  %956 = getelementptr i8, ptr %954, i64 %955
  %957 = add nuw nsw i32 %950, 8
  store i32 %957, ptr %2, align 8
  br label %962

958:                                              ; preds = %948
  %959 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %960 = load ptr, ptr %959, align 8
  %961 = getelementptr i8, ptr %960, i64 8
  store ptr %961, ptr %959, align 8
  br label %962

962:                                              ; preds = %958, %952
  %963 = phi ptr [ %956, %952 ], [ %960, %958 ]
  %964 = load ptr, ptr %963, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %949, ptr noundef %964)
  br label %1484

965:                                              ; preds = %3
  %966 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 70
  %967 = load i32, ptr %2, align 8
  %968 = icmp ult i32 %967, 41
  br i1 %968, label %969, label %975

969:                                              ; preds = %965
  %970 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %971 = load ptr, ptr %970, align 8
  %972 = zext nneg i32 %967 to i64
  %973 = getelementptr i8, ptr %971, i64 %972
  %974 = add nuw nsw i32 %967, 8
  store i32 %974, ptr %2, align 8
  br label %979

975:                                              ; preds = %965
  %976 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %977 = load ptr, ptr %976, align 8
  %978 = getelementptr i8, ptr %977, i64 8
  store ptr %978, ptr %976, align 8
  br label %979

979:                                              ; preds = %975, %969
  %980 = phi ptr [ %973, %969 ], [ %977, %975 ]
  %981 = load ptr, ptr %980, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %966, ptr noundef %981)
  br label %1484

982:                                              ; preds = %3
  %983 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 1
  %984 = load i32, ptr %983, align 4
  %985 = icmp ult i32 %984, 161
  br i1 %985, label %986, label %992

986:                                              ; preds = %982
  %987 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %988 = load ptr, ptr %987, align 8
  %989 = zext nneg i32 %984 to i64
  %990 = getelementptr i8, ptr %988, i64 %989
  %991 = add nuw nsw i32 %984, 16
  store i32 %991, ptr %983, align 4
  br label %996

992:                                              ; preds = %982
  %993 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %994 = load ptr, ptr %993, align 8
  %995 = getelementptr i8, ptr %994, i64 8
  store ptr %995, ptr %993, align 8
  br label %996

996:                                              ; preds = %992, %986
  %997 = phi ptr [ %990, %986 ], [ %994, %992 ]
  %998 = load double, ptr %997, align 8
  %999 = fptrunc double %998 to float
  %1000 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 71
  store float %999, ptr %1000, align 8, !tbaa !92
  br label %1484

1001:                                             ; preds = %3
  %1002 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 72
  %1003 = load i32, ptr %2, align 8
  %1004 = icmp ult i32 %1003, 41
  br i1 %1004, label %1005, label %1011

1005:                                             ; preds = %1001
  %1006 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1007 = load ptr, ptr %1006, align 8
  %1008 = zext nneg i32 %1003 to i64
  %1009 = getelementptr i8, ptr %1007, i64 %1008
  %1010 = add nuw nsw i32 %1003, 8
  store i32 %1010, ptr %2, align 8
  br label %1015

1011:                                             ; preds = %1001
  %1012 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1013 = load ptr, ptr %1012, align 8
  %1014 = getelementptr i8, ptr %1013, i64 8
  store ptr %1014, ptr %1012, align 8
  br label %1015

1015:                                             ; preds = %1011, %1005
  %1016 = phi ptr [ %1009, %1005 ], [ %1013, %1011 ]
  %1017 = load ptr, ptr %1016, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1002, ptr noundef %1017, i64 noundef 16)
  br label %1484

1018:                                             ; preds = %3
  %1019 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 73
  %1020 = load i32, ptr %2, align 8
  %1021 = icmp ult i32 %1020, 41
  br i1 %1021, label %1022, label %1028

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8
  %1025 = zext nneg i32 %1020 to i64
  %1026 = getelementptr i8, ptr %1024, i64 %1025
  %1027 = add nuw nsw i32 %1020, 8
  store i32 %1027, ptr %2, align 8
  br label %1032

1028:                                             ; preds = %1018
  %1029 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1030 = load ptr, ptr %1029, align 8
  %1031 = getelementptr i8, ptr %1030, i64 8
  store ptr %1031, ptr %1029, align 8
  br label %1032

1032:                                             ; preds = %1028, %1022
  %1033 = phi ptr [ %1026, %1022 ], [ %1030, %1028 ]
  %1034 = load ptr, ptr %1033, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1019, ptr noundef %1034, i64 noundef 16)
  br label %1484

1035:                                             ; preds = %3
  %1036 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %1037 = load i32, ptr %1036, align 8, !tbaa !17
  %1038 = and i32 %1037, 8192
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1040, label %1076

1040:                                             ; preds = %1035
  %1041 = load i32, ptr %2, align 8
  %1042 = icmp ult i32 %1041, 41
  br i1 %1042, label %1043, label %1049

1043:                                             ; preds = %1040
  %1044 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1045 = load ptr, ptr %1044, align 8
  %1046 = zext nneg i32 %1041 to i64
  %1047 = getelementptr i8, ptr %1045, i64 %1046
  %1048 = add nuw nsw i32 %1041, 8
  store i32 %1048, ptr %2, align 8
  br label %1053

1049:                                             ; preds = %1040
  %1050 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1051 = load ptr, ptr %1050, align 8
  %1052 = getelementptr i8, ptr %1051, i64 8
  store ptr %1052, ptr %1050, align 8
  br label %1053

1053:                                             ; preds = %1049, %1043
  %1054 = phi ptr [ %1047, %1043 ], [ %1051, %1049 ]
  %1055 = load i32, ptr %1054, align 4
  %1056 = trunc i32 %1055 to i16
  %1057 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 46
  store i16 %1056, ptr %1057, align 8, !tbaa !93
  %1058 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 47
  %1059 = load i32, ptr %2, align 8
  %1060 = icmp ult i32 %1059, 41
  br i1 %1060, label %1061, label %1067

1061:                                             ; preds = %1053
  %1062 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1063 = load ptr, ptr %1062, align 8
  %1064 = zext nneg i32 %1059 to i64
  %1065 = getelementptr i8, ptr %1063, i64 %1064
  %1066 = add nuw nsw i32 %1059, 8
  store i32 %1066, ptr %2, align 8
  br label %1071

1067:                                             ; preds = %1053
  %1068 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1069 = load ptr, ptr %1068, align 8
  %1070 = getelementptr i8, ptr %1069, i64 8
  store ptr %1070, ptr %1068, align 8
  br label %1071

1071:                                             ; preds = %1067, %1061
  %1072 = phi ptr [ %1065, %1061 ], [ %1069, %1067 ]
  %1073 = load ptr, ptr %1072, align 8
  %1074 = load i16, ptr %1057, align 8, !tbaa !93
  %1075 = zext i16 %1074 to i64
  tail call void @_TIFFsetLongArray(ptr noundef nonnull %1058, ptr noundef %1073, i64 noundef %1075)
  br label %1484

1076:                                             ; preds = %1035
  %1077 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1077, ptr noundef nonnull @.str.12) #8
  br label %1484

1078:                                             ; preds = %3
  %1079 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 48
  %1080 = load i32, ptr %2, align 8
  %1081 = icmp ult i32 %1080, 41
  br i1 %1081, label %1082, label %1088

1082:                                             ; preds = %1078
  %1083 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1084 = load ptr, ptr %1083, align 8
  %1085 = zext nneg i32 %1080 to i64
  %1086 = getelementptr i8, ptr %1084, i64 %1085
  %1087 = add nuw nsw i32 %1080, 8
  store i32 %1087, ptr %2, align 8
  br label %1092

1088:                                             ; preds = %1078
  %1089 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1090 = load ptr, ptr %1089, align 8
  %1091 = getelementptr i8, ptr %1090, i64 8
  store ptr %1091, ptr %1089, align 8
  br label %1092

1092:                                             ; preds = %1088, %1082
  %1093 = phi ptr [ %1086, %1082 ], [ %1090, %1088 ]
  %1094 = load ptr, ptr %1093, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1079, ptr noundef %1094, i64 noundef 3)
  br label %1484

1095:                                             ; preds = %3
  %1096 = load i32, ptr %2, align 8
  %1097 = icmp ult i32 %1096, 41
  br i1 %1097, label %1098, label %1104

1098:                                             ; preds = %1095
  %1099 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1100 = load ptr, ptr %1099, align 8
  %1101 = zext nneg i32 %1096 to i64
  %1102 = getelementptr i8, ptr %1100, i64 %1101
  %1103 = add nuw nsw i32 %1096, 8
  store i32 %1103, ptr %2, align 8
  br label %1108

1104:                                             ; preds = %1095
  %1105 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1106 = load ptr, ptr %1105, align 8
  %1107 = getelementptr i8, ptr %1106, i64 8
  store ptr %1107, ptr %1105, align 8
  br label %1108

1108:                                             ; preds = %1104, %1098
  %1109 = phi ptr [ %1102, %1098 ], [ %1106, %1104 ]
  %1110 = load i32, ptr %1109, align 4
  %1111 = trunc i32 %1110 to i16
  %1112 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 50
  store i16 %1111, ptr %1112, align 4, !tbaa !65
  br label %1484

1113:                                             ; preds = %3
  %1114 = load i32, ptr %2, align 8
  %1115 = icmp ult i32 %1114, 41
  br i1 %1115, label %1116, label %1122

1116:                                             ; preds = %1113
  %1117 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1118 = load ptr, ptr %1117, align 8
  %1119 = zext nneg i32 %1114 to i64
  %1120 = getelementptr i8, ptr %1118, i64 %1119
  %1121 = add nuw nsw i32 %1114, 8
  store i32 %1121, ptr %2, align 8
  br label %1126

1122:                                             ; preds = %1113
  %1123 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1124 = load ptr, ptr %1123, align 8
  %1125 = getelementptr i8, ptr %1124, i64 8
  store ptr %1125, ptr %1123, align 8
  br label %1126

1126:                                             ; preds = %1122, %1116
  %1127 = phi ptr [ %1120, %1116 ], [ %1124, %1122 ]
  %1128 = load i32, ptr %1127, align 4
  %1129 = trunc i32 %1128 to i16
  %1130 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  store i16 %1129, ptr %1130, align 8, !tbaa !64
  %1131 = load i32, ptr %2, align 8
  %1132 = icmp ult i32 %1131, 41
  br i1 %1132, label %1133, label %1139

1133:                                             ; preds = %1126
  %1134 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1135 = load ptr, ptr %1134, align 8
  %1136 = zext nneg i32 %1131 to i64
  %1137 = getelementptr i8, ptr %1135, i64 %1136
  %1138 = add nuw nsw i32 %1131, 8
  store i32 %1138, ptr %2, align 8
  br label %1143

1139:                                             ; preds = %1126
  %1140 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1141 = load ptr, ptr %1140, align 8
  %1142 = getelementptr i8, ptr %1141, i64 8
  store ptr %1142, ptr %1140, align 8
  br label %1143

1143:                                             ; preds = %1139, %1133
  %1144 = phi ptr [ %1137, %1133 ], [ %1141, %1139 ]
  %1145 = load i32, ptr %1144, align 4
  %1146 = trunc i32 %1145 to i16
  %1147 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  store i16 %1146, ptr %1147, align 2, !tbaa !64
  br label %1484

1148:                                             ; preds = %3
  %1149 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 51
  %1150 = load i32, ptr %2, align 8
  %1151 = icmp ult i32 %1150, 41
  br i1 %1151, label %1152, label %1158

1152:                                             ; preds = %1148
  %1153 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1154 = load ptr, ptr %1153, align 8
  %1155 = zext nneg i32 %1150 to i64
  %1156 = getelementptr i8, ptr %1154, i64 %1155
  %1157 = add nuw nsw i32 %1150, 8
  store i32 %1157, ptr %2, align 8
  br label %1162

1158:                                             ; preds = %1148
  %1159 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1160 = load ptr, ptr %1159, align 8
  %1161 = getelementptr i8, ptr %1160, i64 8
  store ptr %1161, ptr %1159, align 8
  br label %1162

1162:                                             ; preds = %1158, %1152
  %1163 = phi ptr [ %1156, %1152 ], [ %1160, %1158 ]
  %1164 = load ptr, ptr %1163, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1149, ptr noundef %1164, i64 noundef 2)
  br label %1484

1165:                                             ; preds = %3
  %1166 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 52
  %1167 = load i32, ptr %2, align 8
  %1168 = icmp ult i32 %1167, 41
  br i1 %1168, label %1169, label %1175

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1171 = load ptr, ptr %1170, align 8
  %1172 = zext nneg i32 %1167 to i64
  %1173 = getelementptr i8, ptr %1171, i64 %1172
  %1174 = add nuw nsw i32 %1167, 8
  store i32 %1174, ptr %2, align 8
  br label %1179

1175:                                             ; preds = %1165
  %1176 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1177 = load ptr, ptr %1176, align 8
  %1178 = getelementptr i8, ptr %1177, i64 8
  store ptr %1178, ptr %1176, align 8
  br label %1179

1179:                                             ; preds = %1175, %1169
  %1180 = phi ptr [ %1173, %1169 ], [ %1177, %1175 ]
  %1181 = load ptr, ptr %1180, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1166, ptr noundef %1181, i64 noundef 6)
  br label %1484

1182:                                             ; preds = %3
  %1183 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %1184 = load i16, ptr %1183, align 2, !tbaa !56
  %1185 = zext i16 %1184 to i32
  %1186 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %1187 = load i16, ptr %1186, align 4, !tbaa !88
  %1188 = zext i16 %1187 to i32
  %1189 = sub nsw i32 %1185, %1188
  %1190 = icmp sgt i32 %1189, 1
  %1191 = select i1 %1190, i32 3, i32 1
  store i32 %1191, ptr %4, align 4, !tbaa !73
  %1192 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %1193 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1194 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1195 = zext nneg i32 %1191 to i64
  br label %1196

1196:                                             ; preds = %1182, %1226
  %1197 = phi i64 [ 0, %1182 ], [ %1227, %1226 ]
  %1198 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 %1197
  %1199 = load i32, ptr %2, align 8
  %1200 = icmp ult i32 %1199, 41
  br i1 %1200, label %1201, label %1206

1201:                                             ; preds = %1196
  %1202 = load ptr, ptr %1194, align 8
  %1203 = zext nneg i32 %1199 to i64
  %1204 = getelementptr i8, ptr %1202, i64 %1203
  %1205 = add nuw nsw i32 %1199, 8
  store i32 %1205, ptr %2, align 8
  br label %1209

1206:                                             ; preds = %1196
  %1207 = load ptr, ptr %1193, align 8
  %1208 = getelementptr i8, ptr %1207, i64 8
  store ptr %1208, ptr %1193, align 8
  br label %1209

1209:                                             ; preds = %1206, %1201
  %1210 = phi ptr [ %1204, %1201 ], [ %1207, %1206 ]
  %1211 = load ptr, ptr %1210, align 8
  %1212 = load i16, ptr %1192, align 4, !tbaa !53
  %1213 = zext nneg i16 %1212 to i64
  %1214 = shl nuw i64 1, %1213
  %1215 = load ptr, ptr %1198, align 8, !tbaa !5
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1218, label %1217

1217:                                             ; preds = %1209
  tail call void @_TIFFfree(ptr noundef nonnull %1215) #8
  store ptr null, ptr %1198, align 8, !tbaa !5
  br label %1218

1218:                                             ; preds = %1217, %1209
  %1219 = icmp eq ptr %1211, null
  br i1 %1219, label %1226, label %1220

1220:                                             ; preds = %1218
  %1221 = trunc i64 %1214 to i32
  %1222 = shl i32 %1221, 1
  %1223 = tail call ptr @_TIFFmalloc(i32 noundef %1222) #8
  store ptr %1223, ptr %1198, align 8, !tbaa !5
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1226, label %1225

1225:                                             ; preds = %1220
  tail call void @_TIFFmemcpy(ptr noundef nonnull %1223, ptr noundef nonnull %1211, i32 noundef %1222) #8
  br label %1226

1226:                                             ; preds = %1218, %1220, %1225
  %1227 = add nuw nsw i64 %1197, 1
  %1228 = icmp eq i64 %1227, %1195
  br i1 %1228, label %1484, label %1196, !llvm.loop !94

1229:                                             ; preds = %3
  %1230 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 53
  %1231 = load i32, ptr %2, align 8
  %1232 = icmp ult i32 %1231, 41
  br i1 %1232, label %1233, label %1239

1233:                                             ; preds = %1229
  %1234 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1235 = load ptr, ptr %1234, align 8
  %1236 = zext nneg i32 %1231 to i64
  %1237 = getelementptr i8, ptr %1235, i64 %1236
  %1238 = add nuw nsw i32 %1231, 8
  store i32 %1238, ptr %2, align 8
  br label %1243

1239:                                             ; preds = %1229
  %1240 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1241 = load ptr, ptr %1240, align 8
  %1242 = getelementptr i8, ptr %1241, i64 8
  store ptr %1242, ptr %1240, align 8
  br label %1243

1243:                                             ; preds = %1239, %1233
  %1244 = phi ptr [ %1237, %1233 ], [ %1241, %1239 ]
  %1245 = load ptr, ptr %1244, align 8
  tail call void @_TIFFsetFloatArray(ptr noundef nonnull %1230, ptr noundef %1245, i64 noundef 6)
  br label %1484

1246:                                             ; preds = %3
  %1247 = load i32, ptr %2, align 8
  %1248 = icmp ult i32 %1247, 41
  br i1 %1248, label %1249, label %1255

1249:                                             ; preds = %1246
  %1250 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1251 = load ptr, ptr %1250, align 8
  %1252 = zext nneg i32 %1247 to i64
  %1253 = getelementptr i8, ptr %1251, i64 %1252
  %1254 = add nuw nsw i32 %1247, 8
  store i32 %1254, ptr %2, align 8
  br label %1259

1255:                                             ; preds = %1246
  %1256 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1257 = load ptr, ptr %1256, align 8
  %1258 = getelementptr i8, ptr %1257, i64 8
  store ptr %1258, ptr %1256, align 8
  br label %1259

1259:                                             ; preds = %1255, %1249
  %1260 = phi ptr [ %1253, %1249 ], [ %1257, %1255 ]
  %1261 = load i32, ptr %1260, align 4
  %1262 = trunc i32 %1261 to i16
  %1263 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  store i16 %1262, ptr %1263, align 8, !tbaa !66
  br label %1484

1264:                                             ; preds = %3
  %1265 = load i32, ptr %2, align 8
  %1266 = icmp ult i32 %1265, 41
  br i1 %1266, label %1267, label %1273

1267:                                             ; preds = %1264
  %1268 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1269 = load ptr, ptr %1268, align 8
  %1270 = zext nneg i32 %1265 to i64
  %1271 = getelementptr i8, ptr %1269, i64 %1270
  %1272 = add nuw nsw i32 %1265, 8
  store i32 %1272, ptr %2, align 8
  br label %1277

1273:                                             ; preds = %1264
  %1274 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1275 = load ptr, ptr %1274, align 8
  %1276 = getelementptr i8, ptr %1275, i64 8
  store ptr %1276, ptr %1274, align 8
  br label %1277

1277:                                             ; preds = %1273, %1267
  %1278 = phi ptr [ %1271, %1267 ], [ %1275, %1273 ]
  %1279 = load i32, ptr %1278, align 4
  %1280 = trunc i32 %1279 to i16
  %1281 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57
  store i16 %1280, ptr %1281, align 4, !tbaa !64
  %1282 = load i32, ptr %2, align 8
  %1283 = icmp ult i32 %1282, 41
  br i1 %1283, label %1284, label %1290

1284:                                             ; preds = %1277
  %1285 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1286 = load ptr, ptr %1285, align 8
  %1287 = zext nneg i32 %1282 to i64
  %1288 = getelementptr i8, ptr %1286, i64 %1287
  %1289 = add nuw nsw i32 %1282, 8
  store i32 %1289, ptr %2, align 8
  br label %1294

1290:                                             ; preds = %1277
  %1291 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1292 = load ptr, ptr %1291, align 8
  %1293 = getelementptr i8, ptr %1292, i64 8
  store ptr %1293, ptr %1291, align 8
  br label %1294

1294:                                             ; preds = %1290, %1284
  %1295 = phi ptr [ %1288, %1284 ], [ %1292, %1290 ]
  %1296 = load i32, ptr %1295, align 4
  %1297 = trunc i32 %1296 to i16
  %1298 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57, i64 1
  store i16 %1297, ptr %1298, align 2, !tbaa !64
  br label %1484

1299:                                             ; preds = %3
  %1300 = load i32, ptr %2, align 8
  %1301 = icmp ult i32 %1300, 41
  br i1 %1301, label %1302, label %1308

1302:                                             ; preds = %1299
  %1303 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1304 = load ptr, ptr %1303, align 8
  %1305 = zext nneg i32 %1300 to i64
  %1306 = getelementptr i8, ptr %1304, i64 %1305
  %1307 = add nuw nsw i32 %1300, 8
  store i32 %1307, ptr %2, align 8
  br label %1312

1308:                                             ; preds = %1299
  %1309 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1310 = load ptr, ptr %1309, align 8
  %1311 = getelementptr i8, ptr %1310, i64 8
  store ptr %1311, ptr %1309, align 8
  br label %1312

1312:                                             ; preds = %1308, %1302
  %1313 = phi ptr [ %1306, %1302 ], [ %1310, %1308 ]
  %1314 = load i32, ptr %1313, align 4
  %1315 = load i32, ptr %2, align 8
  %1316 = icmp ult i32 %1315, 41
  br i1 %1316, label %1317, label %1323

1317:                                             ; preds = %1312
  %1318 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1319 = load ptr, ptr %1318, align 8
  %1320 = zext nneg i32 %1315 to i64
  %1321 = getelementptr i8, ptr %1319, i64 %1320
  %1322 = add nuw nsw i32 %1315, 8
  store i32 %1322, ptr %2, align 8
  br label %1327

1323:                                             ; preds = %1312
  %1324 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1325 = load ptr, ptr %1324, align 8
  %1326 = getelementptr i8, ptr %1325, i64 8
  store ptr %1326, ptr %1324, align 8
  br label %1327

1327:                                             ; preds = %1323, %1317
  %1328 = phi ptr [ %1321, %1317 ], [ %1325, %1323 ]
  %1329 = load ptr, ptr %1328, align 8
  %1330 = tail call fastcc i32 @checkInkNamesString(ptr noundef %0, i32 noundef %1314, ptr noundef %1329)
  %1331 = icmp sgt i32 %1330, 0
  %1332 = zext i1 %1331 to i32
  br i1 %1331, label %1333, label %1484

1333:                                             ; preds = %1327
  %1334 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 59
  %1335 = zext nneg i32 %1330 to i64
  tail call void @_TIFFsetNString(ptr noundef nonnull %1334, ptr noundef %1329, i64 noundef %1335)
  %1336 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 58
  store i32 %1330, ptr %1336, align 8, !tbaa !96
  br label %1484

1337:                                             ; preds = %3
  %1338 = load i32, ptr %2, align 8
  %1339 = icmp ult i32 %1338, 41
  br i1 %1339, label %1340, label %1346

1340:                                             ; preds = %1337
  %1341 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1342 = load ptr, ptr %1341, align 8
  %1343 = zext nneg i32 %1338 to i64
  %1344 = getelementptr i8, ptr %1342, i64 %1343
  %1345 = add nuw nsw i32 %1338, 8
  store i32 %1345, ptr %2, align 8
  br label %1350

1346:                                             ; preds = %1337
  %1347 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1348 = load ptr, ptr %1347, align 8
  %1349 = getelementptr i8, ptr %1348, i64 8
  store ptr %1349, ptr %1347, align 8
  br label %1350

1350:                                             ; preds = %1346, %1340
  %1351 = phi ptr [ %1344, %1340 ], [ %1348, %1346 ]
  %1352 = load i32, ptr %1351, align 4
  %1353 = trunc i32 %1352 to i16
  %1354 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 56
  store i16 %1353, ptr %1354, align 2, !tbaa !67
  br label %1484

1355:                                             ; preds = %3
  %1356 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 60
  %1357 = load i32, ptr %2, align 8
  %1358 = icmp ult i32 %1357, 41
  br i1 %1358, label %1359, label %1365

1359:                                             ; preds = %1355
  %1360 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1361 = load ptr, ptr %1360, align 8
  %1362 = zext nneg i32 %1357 to i64
  %1363 = getelementptr i8, ptr %1361, i64 %1362
  %1364 = add nuw nsw i32 %1357, 8
  store i32 %1364, ptr %2, align 8
  br label %1369

1365:                                             ; preds = %1355
  %1366 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1367 = load ptr, ptr %1366, align 8
  %1368 = getelementptr i8, ptr %1367, i64 8
  store ptr %1368, ptr %1366, align 8
  br label %1369

1369:                                             ; preds = %1365, %1359
  %1370 = phi ptr [ %1363, %1359 ], [ %1367, %1365 ]
  %1371 = load ptr, ptr %1370, align 8
  tail call void @_TIFFsetString(ptr noundef nonnull %1356, ptr noundef %1371)
  br label %1484

1372:                                             ; preds = %3
  %1373 = load i32, ptr %2, align 8
  %1374 = icmp ult i32 %1373, 41
  br i1 %1374, label %1375, label %1381

1375:                                             ; preds = %1372
  %1376 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1377 = load ptr, ptr %1376, align 8
  %1378 = zext nneg i32 %1373 to i64
  %1379 = getelementptr i8, ptr %1377, i64 %1378
  %1380 = add nuw nsw i32 %1373, 8
  store i32 %1380, ptr %2, align 8
  br label %1385

1381:                                             ; preds = %1372
  %1382 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1383 = load ptr, ptr %1382, align 8
  %1384 = getelementptr i8, ptr %1383, i64 8
  store ptr %1384, ptr %1382, align 8
  br label %1385

1385:                                             ; preds = %1381, %1375
  %1386 = phi ptr [ %1379, %1375 ], [ %1383, %1381 ]
  %1387 = load i32, ptr %1386, align 4
  %1388 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 61
  store i32 %1387, ptr %1388, align 8, !tbaa !97
  %1389 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 62
  %1390 = load i32, ptr %2, align 8
  %1391 = icmp ult i32 %1390, 41
  br i1 %1391, label %1392, label %1398

1392:                                             ; preds = %1385
  %1393 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1394 = load ptr, ptr %1393, align 8
  %1395 = zext nneg i32 %1390 to i64
  %1396 = getelementptr i8, ptr %1394, i64 %1395
  %1397 = add nuw nsw i32 %1390, 8
  store i32 %1397, ptr %2, align 8
  br label %1402

1398:                                             ; preds = %1385
  %1399 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1400 = load ptr, ptr %1399, align 8
  %1401 = getelementptr i8, ptr %1400, i64 8
  store ptr %1401, ptr %1399, align 8
  br label %1402

1402:                                             ; preds = %1398, %1392
  %1403 = phi ptr [ %1396, %1392 ], [ %1400, %1398 ]
  %1404 = load ptr, ptr %1403, align 8
  %1405 = load i32, ptr %1388, align 8, !tbaa !97
  %1406 = zext i32 %1405 to i64
  tail call void @_TIFFsetByteArray(ptr noundef nonnull %1389, ptr noundef %1404, i64 noundef %1406)
  br label %1484

1407:                                             ; preds = %3
  %1408 = load i32, ptr %2, align 8
  %1409 = icmp ult i32 %1408, 41
  br i1 %1409, label %1410, label %1416

1410:                                             ; preds = %1407
  %1411 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1412 = load ptr, ptr %1411, align 8
  %1413 = zext nneg i32 %1408 to i64
  %1414 = getelementptr i8, ptr %1412, i64 %1413
  %1415 = add nuw nsw i32 %1408, 8
  store i32 %1415, ptr %2, align 8
  br label %1420

1416:                                             ; preds = %1407
  %1417 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1418 = load ptr, ptr %1417, align 8
  %1419 = getelementptr i8, ptr %1418, i64 8
  store ptr %1419, ptr %1417, align 8
  br label %1420

1420:                                             ; preds = %1416, %1410
  %1421 = phi ptr [ %1414, %1410 ], [ %1418, %1416 ]
  %1422 = load i32, ptr %1421, align 4
  %1423 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 63
  store i32 %1422, ptr %1423, align 8, !tbaa !98
  %1424 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 64
  %1425 = load i32, ptr %2, align 8
  %1426 = icmp ult i32 %1425, 41
  br i1 %1426, label %1427, label %1433

1427:                                             ; preds = %1420
  %1428 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1429 = load ptr, ptr %1428, align 8
  %1430 = zext nneg i32 %1425 to i64
  %1431 = getelementptr i8, ptr %1429, i64 %1430
  %1432 = add nuw nsw i32 %1425, 8
  store i32 %1432, ptr %2, align 8
  br label %1437

1433:                                             ; preds = %1420
  %1434 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1435 = load ptr, ptr %1434, align 8
  %1436 = getelementptr i8, ptr %1435, i64 8
  store ptr %1436, ptr %1434, align 8
  br label %1437

1437:                                             ; preds = %1433, %1427
  %1438 = phi ptr [ %1431, %1427 ], [ %1435, %1433 ]
  %1439 = load ptr, ptr %1438, align 8
  %1440 = load i32, ptr %1423, align 8, !tbaa !98
  %1441 = zext i32 %1440 to i64
  tail call void @_TIFFsetByteArray(ptr noundef nonnull %1424, ptr noundef %1439, i64 noundef %1441)
  br label %1484

1442:                                             ; preds = %3
  %1443 = load i32, ptr %2, align 8
  %1444 = icmp ult i32 %1443, 41
  br i1 %1444, label %1445, label %1451

1445:                                             ; preds = %1442
  %1446 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1447 = load ptr, ptr %1446, align 8
  %1448 = zext nneg i32 %1443 to i64
  %1449 = getelementptr i8, ptr %1447, i64 %1448
  %1450 = add nuw nsw i32 %1443, 8
  store i32 %1450, ptr %2, align 8
  br label %1455

1451:                                             ; preds = %1442
  %1452 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1453 = load ptr, ptr %1452, align 8
  %1454 = getelementptr i8, ptr %1453, i64 8
  store ptr %1454, ptr %1452, align 8
  br label %1455

1455:                                             ; preds = %1451, %1445
  %1456 = phi ptr [ %1449, %1445 ], [ %1453, %1451 ]
  %1457 = load i32, ptr %1456, align 4
  %1458 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 65
  store i32 %1457, ptr %1458, align 8, !tbaa !99
  %1459 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 66
  %1460 = load i32, ptr %2, align 8
  %1461 = icmp ult i32 %1460, 41
  br i1 %1461, label %1462, label %1468

1462:                                             ; preds = %1455
  %1463 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1464 = load ptr, ptr %1463, align 8
  %1465 = zext nneg i32 %1460 to i64
  %1466 = getelementptr i8, ptr %1464, i64 %1465
  %1467 = add nuw nsw i32 %1460, 8
  store i32 %1467, ptr %2, align 8
  br label %1472

1468:                                             ; preds = %1455
  %1469 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1470 = load ptr, ptr %1469, align 8
  %1471 = getelementptr i8, ptr %1470, i64 8
  store ptr %1471, ptr %1469, align 8
  br label %1472

1472:                                             ; preds = %1468, %1462
  %1473 = phi ptr [ %1466, %1462 ], [ %1470, %1468 ]
  %1474 = load ptr, ptr %1473, align 8
  %1475 = load i32, ptr %1458, align 8, !tbaa !99
  %1476 = zext i32 %1475 to i64
  tail call void @_TIFFsetLongArray(ptr noundef nonnull %1459, ptr noundef %1474, i64 noundef %1476)
  br label %1484

1477:                                             ; preds = %3
  %1478 = load ptr, ptr %0, align 8, !tbaa !9
  %1479 = icmp ugt i32 %1, 65535
  %1480 = select i1 %1479, ptr @.str.14, ptr @.str.6
  %1481 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1482 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1481, i64 0, i32 7
  %1483 = load ptr, ptr %1482, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %1478, ptr noundef nonnull %1480, ptr noundef %1483) #8
  br label %1484

1484:                                             ; preds = %1226, %80, %1327, %1333, %1071, %1076, %747, %753, %731, %390, %395, %345, %350, %127, %131, %108, %71, %84, %86, %82, %1477, %1472, %1437, %1402, %1369, %1350, %1294, %1259, %1243, %1179, %1162, %1143, %1108, %1092, %1032, %1015, %996, %979, %962, %944, %927, %912, %890, %874, %852, %830, %808, %779, %728, %672, %637, %604, %581, %562, %545, %528, %505, %486, %468, %450, %431, %413, %370, %324, %307, %290, %273, %256, %239, %222, %205, %188, %165, %147, %54, %37, %20
  %1485 = phi i32 [ 0, %1477 ], [ 1, %1472 ], [ 1, %1437 ], [ 1, %1402 ], [ 1, %1369 ], [ 1, %1350 ], [ %1332, %1333 ], [ %1332, %1327 ], [ 1, %1294 ], [ 1, %1259 ], [ 1, %1243 ], [ 1, %1179 ], [ 1, %1162 ], [ 1, %1143 ], [ 1, %1108 ], [ 1, %1092 ], [ 1, %1071 ], [ 0, %1076 ], [ 1, %1032 ], [ 1, %1015 ], [ 1, %996 ], [ 1, %979 ], [ 1, %962 ], [ 1, %944 ], [ 1, %927 ], [ 1, %912 ], [ 1, %890 ], [ 1, %874 ], [ 1, %852 ], [ 1, %830 ], [ 1, %808 ], [ 1, %779 ], [ 1, %753 ], [ 1, %747 ], [ 1, %731 ], [ 1, %728 ], [ 1, %672 ], [ 1, %637 ], [ 1, %604 ], [ 1, %581 ], [ 1, %562 ], [ 1, %545 ], [ 1, %528 ], [ 1, %505 ], [ 1, %486 ], [ 1, %468 ], [ 1, %450 ], [ 1, %431 ], [ 1, %413 ], [ 1, %390 ], [ 1, %395 ], [ 1, %370 ], [ 1, %345 ], [ 1, %350 ], [ 1, %324 ], [ 1, %307 ], [ 1, %290 ], [ 1, %273 ], [ 1, %256 ], [ 1, %239 ], [ 1, %222 ], [ 1, %205 ], [ 1, %188 ], [ 1, %165 ], [ 1, %147 ], [ 1, %108 ], [ %129, %131 ], [ 0, %127 ], [ 1, %82 ], [ 1, %84 ], [ 1, %86 ], [ 1, %71 ], [ 1, %54 ], [ 1, %37 ], [ 1, %20 ], [ 1, %80 ], [ 1, %1226 ]
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1522, label %1487

1487:                                             ; preds = %1484
  %1488 = call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1489 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1488, i64 0, i32 4
  %1490 = load i16, ptr %1489, align 4, !tbaa !22
  %1491 = and i16 %1490, 31
  %1492 = zext nneg i16 %1491 to i64
  %1493 = shl nuw nsw i64 1, %1492
  %1494 = call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1495 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1494, i64 0, i32 4
  %1496 = load i16, ptr %1495, align 4, !tbaa !22
  %1497 = lshr i16 %1496, 5
  %1498 = zext nneg i16 %1497 to i64
  %1499 = getelementptr inbounds [3 x i64], ptr %6, i64 0, i64 %1498
  %1500 = load i64, ptr %1499, align 8, !tbaa !23
  %1501 = or i64 %1500, %1493
  store i64 %1501, ptr %1499, align 8, !tbaa !23
  %1502 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %1503 = load i32, ptr %1502, align 8, !tbaa !17
  %1504 = or i32 %1503, 8
  store i32 %1504, ptr %1502, align 8, !tbaa !17
  br label %1522

1505:                                             ; preds = %869, %845, %731, %599, %523, %366, %183
  %1506 = load ptr, ptr %0, align 8, !tbaa !9
  %1507 = load i32, ptr %4, align 4, !tbaa !73
  %1508 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1509 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1508, i64 0, i32 7
  %1510 = load ptr, ptr %1509, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1506, ptr noundef nonnull @.str.15, i32 noundef %1507, ptr noundef %1510) #8
  br label %1522

1511:                                             ; preds = %826, %802, %773, %386
  %1512 = phi i32 [ 0, %826 ], [ %799, %802 ], [ %770, %773 ], [ 0, %386 ]
  %1513 = load ptr, ptr %0, align 8, !tbaa !9
  %1514 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1515 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1514, i64 0, i32 7
  %1516 = load ptr, ptr %1515, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1513, ptr noundef nonnull @.str.16, i32 noundef %1512, ptr noundef %1516) #8
  br label %1522

1517:                                             ; preds = %908
  %1518 = load ptr, ptr %0, align 8, !tbaa !9
  %1519 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef 37439) #8
  %1520 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1519, i64 0, i32 7
  %1521 = load ptr, ptr %1520, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %1518, ptr noundef nonnull @.str.17, double noundef %910, ptr noundef %1521) #8
  br label %1522

1522:                                             ; preds = %1484, %1487, %1517, %1511, %1505
  %1523 = phi i32 [ 0, %1517 ], [ 0, %1505 ], [ 0, %1511 ], [ %1485, %1487 ], [ %1485, %1484 ]
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %1523
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_TIFFVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %1498 [
    i32 254, label %4
    i32 256, label %22
    i32 257, label %40
    i32 258, label %58
    i32 259, label %76
    i32 262, label %94
    i32 263, label %112
    i32 266, label %130
    i32 269, label %148
    i32 315, label %166
    i32 306, label %184
    i32 316, label %202
    i32 270, label %220
    i32 271, label %238
    i32 272, label %256
    i32 305, label %274
    i32 274, label %292
    i32 277, label %310
    i32 278, label %328
    i32 280, label %346
    i32 281, label %364
    i32 340, label %382
    i32 341, label %400
    i32 282, label %418
    i32 283, label %436
    i32 284, label %454
    i32 286, label %472
    i32 287, label %490
    i32 285, label %508
    i32 296, label %526
    i32 297, label %544
    i32 321, label %579
    i32 320, label %614
    i32 273, label %666
    i32 324, label %666
    i32 279, label %684
    i32 325, label %684
    i32 32995, label %702
    i32 338, label %729
    i32 322, label %764
    i32 323, label %782
    i32 32998, label %800
    i32 32996, label %818
    i32 339, label %885
    i32 32997, label %903
    i32 37439, label %921
    i32 330, label %939
    i32 529, label %974
    i32 531, label %992
    i32 530, label %1010
    i32 318, label %1045
    i32 319, label %1063
    i32 301, label %1081
    i32 532, label %1142
    i32 332, label %1160
    i32 336, label %1178
    i32 333, label %1213
    i32 334, label %1231
    i32 337, label %1249
    i32 34675, label %1267
    i32 34377, label %1302
    i32 33723, label %1337
    i32 33300, label %1372
    i32 33301, label %1390
    i32 33302, label %1408
    i32 33303, label %1426
    i32 33304, label %1444
    i32 33305, label %1462
    i32 33306, label %1480
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = load i32, ptr %2, align 8
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = zext nneg i32 %7 to i64
  %13 = getelementptr i8, ptr %11, i64 %12
  %14 = add nuw nsw i32 %7, 8
  store i32 %14, ptr %2, align 8
  br label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i64 8
  store ptr %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8
  store i32 %6, ptr %21, align 4, !tbaa !73
  br label %1505

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = load i32, ptr %2, align 8
  %26 = icmp ult i32 %25, 41
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = zext nneg i32 %25 to i64
  %31 = getelementptr i8, ptr %29, i64 %30
  %32 = add nuw nsw i32 %25, 8
  store i32 %32, ptr %2, align 8
  br label %37

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i64 8
  store ptr %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi ptr [ %31, %27 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 8
  store i32 %24, ptr %39, align 4, !tbaa !73
  br label %1505

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !72
  %43 = load i32, ptr %2, align 8
  %44 = icmp ult i32 %43, 41
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = zext nneg i32 %43 to i64
  %49 = getelementptr i8, ptr %47, i64 %48
  %50 = add nuw nsw i32 %43, 8
  store i32 %50, ptr %2, align 8
  br label %55

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i64 8
  store ptr %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi ptr [ %49, %45 ], [ %53, %51 ]
  %57 = load ptr, ptr %56, align 8
  store i32 %42, ptr %57, align 4, !tbaa !73
  br label %1505

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %60 = load i16, ptr %59, align 4, !tbaa !53
  %61 = load i32, ptr %2, align 8
  %62 = icmp ult i32 %61, 41
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = zext nneg i32 %61 to i64
  %67 = getelementptr i8, ptr %65, i64 %66
  %68 = add nuw nsw i32 %61, 8
  store i32 %68, ptr %2, align 8
  br label %73

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i64 8
  store ptr %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi ptr [ %67, %63 ], [ %71, %69 ]
  %75 = load ptr, ptr %74, align 8
  store i16 %60, ptr %75, align 2, !tbaa !64
  br label %1505

76:                                               ; preds = %3
  %77 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %78 = load i16, ptr %77, align 8, !tbaa !74
  %79 = load i32, ptr %2, align 8
  %80 = icmp ult i32 %79, 41
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = zext nneg i32 %79 to i64
  %85 = getelementptr i8, ptr %83, i64 %84
  %86 = add nuw nsw i32 %79, 8
  store i32 %86, ptr %2, align 8
  br label %91

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr i8, ptr %89, i64 8
  store ptr %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi ptr [ %85, %81 ], [ %89, %87 ]
  %93 = load ptr, ptr %92, align 8
  store i16 %78, ptr %93, align 2, !tbaa !64
  br label %1505

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %96 = load i16, ptr %95, align 2, !tbaa !77
  %97 = load i32, ptr %2, align 8
  %98 = icmp ult i32 %97, 41
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = zext nneg i32 %97 to i64
  %103 = getelementptr i8, ptr %101, i64 %102
  %104 = add nuw nsw i32 %97, 8
  store i32 %104, ptr %2, align 8
  br label %109

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr i8, ptr %107, i64 8
  store ptr %108, ptr %106, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = phi ptr [ %103, %99 ], [ %107, %105 ]
  %111 = load ptr, ptr %110, align 8
  store i16 %96, ptr %111, align 2, !tbaa !64
  br label %1505

112:                                              ; preds = %3
  %113 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 12
  %114 = load i16, ptr %113, align 4, !tbaa !54
  %115 = load i32, ptr %2, align 8
  %116 = icmp ult i32 %115, 41
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = zext nneg i32 %115 to i64
  %121 = getelementptr i8, ptr %119, i64 %120
  %122 = add nuw nsw i32 %115, 8
  store i32 %122, ptr %2, align 8
  br label %127

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr i8, ptr %125, i64 8
  store ptr %126, ptr %124, align 8
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi ptr [ %121, %117 ], [ %125, %123 ]
  %129 = load ptr, ptr %128, align 8
  store i16 %114, ptr %129, align 2, !tbaa !64
  br label %1505

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %132 = load i16, ptr %131, align 2, !tbaa !52
  %133 = load i32, ptr %2, align 8
  %134 = icmp ult i32 %133, 41
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = zext nneg i32 %133 to i64
  %139 = getelementptr i8, ptr %137, i64 %138
  %140 = add nuw nsw i32 %133, 8
  store i32 %140, ptr %2, align 8
  br label %145

141:                                              ; preds = %130
  %142 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr i8, ptr %143, i64 8
  store ptr %144, ptr %142, align 8
  br label %145

145:                                              ; preds = %141, %135
  %146 = phi ptr [ %139, %135 ], [ %143, %141 ]
  %147 = load ptr, ptr %146, align 8
  store i16 %132, ptr %147, align 2, !tbaa !64
  br label %1505

148:                                              ; preds = %3
  %149 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 33
  %150 = load ptr, ptr %149, align 8, !tbaa !26
  %151 = load i32, ptr %2, align 8
  %152 = icmp ult i32 %151, 41
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = zext nneg i32 %151 to i64
  %157 = getelementptr i8, ptr %155, i64 %156
  %158 = add nuw nsw i32 %151, 8
  store i32 %158, ptr %2, align 8
  br label %163

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr i8, ptr %161, i64 8
  store ptr %162, ptr %160, align 8
  br label %163

163:                                              ; preds = %159, %153
  %164 = phi ptr [ %157, %153 ], [ %161, %159 ]
  %165 = load ptr, ptr %164, align 8
  store ptr %150, ptr %165, align 8, !tbaa !5
  br label %1505

166:                                              ; preds = %3
  %167 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 34
  %168 = load ptr, ptr %167, align 8, !tbaa !27
  %169 = load i32, ptr %2, align 8
  %170 = icmp ult i32 %169, 41
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8
  %174 = zext nneg i32 %169 to i64
  %175 = getelementptr i8, ptr %173, i64 %174
  %176 = add nuw nsw i32 %169, 8
  store i32 %176, ptr %2, align 8
  br label %181

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr i8, ptr %179, i64 8
  store ptr %180, ptr %178, align 8
  br label %181

181:                                              ; preds = %177, %171
  %182 = phi ptr [ %175, %171 ], [ %179, %177 ]
  %183 = load ptr, ptr %182, align 8
  store ptr %168, ptr %183, align 8, !tbaa !5
  br label %1505

184:                                              ; preds = %3
  %185 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 35
  %186 = load ptr, ptr %185, align 8, !tbaa !28
  %187 = load i32, ptr %2, align 8
  %188 = icmp ult i32 %187, 41
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8
  %192 = zext nneg i32 %187 to i64
  %193 = getelementptr i8, ptr %191, i64 %192
  %194 = add nuw nsw i32 %187, 8
  store i32 %194, ptr %2, align 8
  br label %199

195:                                              ; preds = %184
  %196 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr i8, ptr %197, i64 8
  store ptr %198, ptr %196, align 8
  br label %199

199:                                              ; preds = %195, %189
  %200 = phi ptr [ %193, %189 ], [ %197, %195 ]
  %201 = load ptr, ptr %200, align 8
  store ptr %186, ptr %201, align 8, !tbaa !5
  br label %1505

202:                                              ; preds = %3
  %203 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 36
  %204 = load ptr, ptr %203, align 8, !tbaa !29
  %205 = load i32, ptr %2, align 8
  %206 = icmp ult i32 %205, 41
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8
  %210 = zext nneg i32 %205 to i64
  %211 = getelementptr i8, ptr %209, i64 %210
  %212 = add nuw nsw i32 %205, 8
  store i32 %212, ptr %2, align 8
  br label %217

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr i8, ptr %215, i64 8
  store ptr %216, ptr %214, align 8
  br label %217

217:                                              ; preds = %213, %207
  %218 = phi ptr [ %211, %207 ], [ %215, %213 ]
  %219 = load ptr, ptr %218, align 8
  store ptr %204, ptr %219, align 8, !tbaa !5
  br label %1505

220:                                              ; preds = %3
  %221 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 37
  %222 = load ptr, ptr %221, align 8, !tbaa !30
  %223 = load i32, ptr %2, align 8
  %224 = icmp ult i32 %223, 41
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8
  %228 = zext nneg i32 %223 to i64
  %229 = getelementptr i8, ptr %227, i64 %228
  %230 = add nuw nsw i32 %223, 8
  store i32 %230, ptr %2, align 8
  br label %235

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr i8, ptr %233, i64 8
  store ptr %234, ptr %232, align 8
  br label %235

235:                                              ; preds = %231, %225
  %236 = phi ptr [ %229, %225 ], [ %233, %231 ]
  %237 = load ptr, ptr %236, align 8
  store ptr %222, ptr %237, align 8, !tbaa !5
  br label %1505

238:                                              ; preds = %3
  %239 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 38
  %240 = load ptr, ptr %239, align 8, !tbaa !31
  %241 = load i32, ptr %2, align 8
  %242 = icmp ult i32 %241, 41
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8
  %246 = zext nneg i32 %241 to i64
  %247 = getelementptr i8, ptr %245, i64 %246
  %248 = add nuw nsw i32 %241, 8
  store i32 %248, ptr %2, align 8
  br label %253

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8
  %252 = getelementptr i8, ptr %251, i64 8
  store ptr %252, ptr %250, align 8
  br label %253

253:                                              ; preds = %249, %243
  %254 = phi ptr [ %247, %243 ], [ %251, %249 ]
  %255 = load ptr, ptr %254, align 8
  store ptr %240, ptr %255, align 8, !tbaa !5
  br label %1505

256:                                              ; preds = %3
  %257 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 39
  %258 = load ptr, ptr %257, align 8, !tbaa !32
  %259 = load i32, ptr %2, align 8
  %260 = icmp ult i32 %259, 41
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8
  %264 = zext nneg i32 %259 to i64
  %265 = getelementptr i8, ptr %263, i64 %264
  %266 = add nuw nsw i32 %259, 8
  store i32 %266, ptr %2, align 8
  br label %271

267:                                              ; preds = %256
  %268 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr i8, ptr %269, i64 8
  store ptr %270, ptr %268, align 8
  br label %271

271:                                              ; preds = %267, %261
  %272 = phi ptr [ %265, %261 ], [ %269, %267 ]
  %273 = load ptr, ptr %272, align 8
  store ptr %258, ptr %273, align 8, !tbaa !5
  br label %1505

274:                                              ; preds = %3
  %275 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 40
  %276 = load ptr, ptr %275, align 8, !tbaa !33
  %277 = load i32, ptr %2, align 8
  %278 = icmp ult i32 %277, 41
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8
  %282 = zext nneg i32 %277 to i64
  %283 = getelementptr i8, ptr %281, i64 %282
  %284 = add nuw nsw i32 %277, 8
  store i32 %284, ptr %2, align 8
  br label %289

285:                                              ; preds = %274
  %286 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr i8, ptr %287, i64 8
  store ptr %288, ptr %286, align 8
  br label %289

289:                                              ; preds = %285, %279
  %290 = phi ptr [ %283, %279 ], [ %287, %285 ]
  %291 = load ptr, ptr %290, align 8
  store ptr %276, ptr %291, align 8, !tbaa !5
  br label %1505

292:                                              ; preds = %3
  %293 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 14
  %294 = load i16, ptr %293, align 8, !tbaa !55
  %295 = load i32, ptr %2, align 8
  %296 = icmp ult i32 %295, 41
  br i1 %296, label %297, label %303

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8
  %300 = zext nneg i32 %295 to i64
  %301 = getelementptr i8, ptr %299, i64 %300
  %302 = add nuw nsw i32 %295, 8
  store i32 %302, ptr %2, align 8
  br label %307

303:                                              ; preds = %292
  %304 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8
  %306 = getelementptr i8, ptr %305, i64 8
  store ptr %306, ptr %304, align 8
  br label %307

307:                                              ; preds = %303, %297
  %308 = phi ptr [ %301, %297 ], [ %305, %303 ]
  %309 = load ptr, ptr %308, align 8
  store i16 %294, ptr %309, align 2, !tbaa !64
  br label %1505

310:                                              ; preds = %3
  %311 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %312 = load i16, ptr %311, align 2, !tbaa !56
  %313 = load i32, ptr %2, align 8
  %314 = icmp ult i32 %313, 41
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8
  %318 = zext nneg i32 %313 to i64
  %319 = getelementptr i8, ptr %317, i64 %318
  %320 = add nuw nsw i32 %313, 8
  store i32 %320, ptr %2, align 8
  br label %325

321:                                              ; preds = %310
  %322 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8
  %324 = getelementptr i8, ptr %323, i64 8
  store ptr %324, ptr %322, align 8
  br label %325

325:                                              ; preds = %321, %315
  %326 = phi ptr [ %319, %315 ], [ %323, %321 ]
  %327 = load ptr, ptr %326, align 8
  store i16 %312, ptr %327, align 2, !tbaa !64
  br label %1505

328:                                              ; preds = %3
  %329 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %330 = load i32, ptr %329, align 4, !tbaa !57
  %331 = load i32, ptr %2, align 8
  %332 = icmp ult i32 %331, 41
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %335 = load ptr, ptr %334, align 8
  %336 = zext nneg i32 %331 to i64
  %337 = getelementptr i8, ptr %335, i64 %336
  %338 = add nuw nsw i32 %331, 8
  store i32 %338, ptr %2, align 8
  br label %343

339:                                              ; preds = %328
  %340 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8
  %342 = getelementptr i8, ptr %341, i64 8
  store ptr %342, ptr %340, align 8
  br label %343

343:                                              ; preds = %339, %333
  %344 = phi ptr [ %337, %333 ], [ %341, %339 ]
  %345 = load ptr, ptr %344, align 8
  store i32 %330, ptr %345, align 4, !tbaa !73
  br label %1505

346:                                              ; preds = %3
  %347 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 17
  %348 = load i16, ptr %347, align 8, !tbaa !78
  %349 = load i32, ptr %2, align 8
  %350 = icmp ult i32 %349, 41
  br i1 %350, label %351, label %357

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8
  %354 = zext nneg i32 %349 to i64
  %355 = getelementptr i8, ptr %353, i64 %354
  %356 = add nuw nsw i32 %349, 8
  store i32 %356, ptr %2, align 8
  br label %361

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8
  %360 = getelementptr i8, ptr %359, i64 8
  store ptr %360, ptr %358, align 8
  br label %361

361:                                              ; preds = %357, %351
  %362 = phi ptr [ %355, %351 ], [ %359, %357 ]
  %363 = load ptr, ptr %362, align 8
  store i16 %348, ptr %363, align 2, !tbaa !64
  br label %1505

364:                                              ; preds = %3
  %365 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 18
  %366 = load i16, ptr %365, align 2, !tbaa !79
  %367 = load i32, ptr %2, align 8
  %368 = icmp ult i32 %367, 41
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8
  %372 = zext nneg i32 %367 to i64
  %373 = getelementptr i8, ptr %371, i64 %372
  %374 = add nuw nsw i32 %367, 8
  store i32 %374, ptr %2, align 8
  br label %379

375:                                              ; preds = %364
  %376 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8
  %378 = getelementptr i8, ptr %377, i64 8
  store ptr %378, ptr %376, align 8
  br label %379

379:                                              ; preds = %375, %369
  %380 = phi ptr [ %373, %369 ], [ %377, %375 ]
  %381 = load ptr, ptr %380, align 8
  store i16 %366, ptr %381, align 2, !tbaa !64
  br label %1505

382:                                              ; preds = %3
  %383 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 19
  %384 = load double, ptr %383, align 8, !tbaa !80
  %385 = load i32, ptr %2, align 8
  %386 = icmp ult i32 %385, 41
  br i1 %386, label %387, label %393

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8
  %390 = zext nneg i32 %385 to i64
  %391 = getelementptr i8, ptr %389, i64 %390
  %392 = add nuw nsw i32 %385, 8
  store i32 %392, ptr %2, align 8
  br label %397

393:                                              ; preds = %382
  %394 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr i8, ptr %395, i64 8
  store ptr %396, ptr %394, align 8
  br label %397

397:                                              ; preds = %393, %387
  %398 = phi ptr [ %391, %387 ], [ %395, %393 ]
  %399 = load ptr, ptr %398, align 8
  store double %384, ptr %399, align 8, !tbaa !100
  br label %1505

400:                                              ; preds = %3
  %401 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 20
  %402 = load double, ptr %401, align 8, !tbaa !81
  %403 = load i32, ptr %2, align 8
  %404 = icmp ult i32 %403, 41
  br i1 %404, label %405, label %411

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8
  %408 = zext nneg i32 %403 to i64
  %409 = getelementptr i8, ptr %407, i64 %408
  %410 = add nuw nsw i32 %403, 8
  store i32 %410, ptr %2, align 8
  br label %415

411:                                              ; preds = %400
  %412 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8
  %414 = getelementptr i8, ptr %413, i64 8
  store ptr %414, ptr %412, align 8
  br label %415

415:                                              ; preds = %411, %405
  %416 = phi ptr [ %409, %405 ], [ %413, %411 ]
  %417 = load ptr, ptr %416, align 8
  store double %402, ptr %417, align 8, !tbaa !100
  br label %1505

418:                                              ; preds = %3
  %419 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 21
  %420 = load float, ptr %419, align 8, !tbaa !82
  %421 = load i32, ptr %2, align 8
  %422 = icmp ult i32 %421, 41
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8
  %426 = zext nneg i32 %421 to i64
  %427 = getelementptr i8, ptr %425, i64 %426
  %428 = add nuw nsw i32 %421, 8
  store i32 %428, ptr %2, align 8
  br label %433

429:                                              ; preds = %418
  %430 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8
  %432 = getelementptr i8, ptr %431, i64 8
  store ptr %432, ptr %430, align 8
  br label %433

433:                                              ; preds = %429, %423
  %434 = phi ptr [ %427, %423 ], [ %431, %429 ]
  %435 = load ptr, ptr %434, align 8
  store float %420, ptr %435, align 4, !tbaa !101
  br label %1505

436:                                              ; preds = %3
  %437 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 22
  %438 = load float, ptr %437, align 4, !tbaa !83
  %439 = load i32, ptr %2, align 8
  %440 = icmp ult i32 %439, 41
  br i1 %440, label %441, label %447

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8
  %444 = zext nneg i32 %439 to i64
  %445 = getelementptr i8, ptr %443, i64 %444
  %446 = add nuw nsw i32 %439, 8
  store i32 %446, ptr %2, align 8
  br label %451

447:                                              ; preds = %436
  %448 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8
  %450 = getelementptr i8, ptr %449, i64 8
  store ptr %450, ptr %448, align 8
  br label %451

451:                                              ; preds = %447, %441
  %452 = phi ptr [ %445, %441 ], [ %449, %447 ]
  %453 = load ptr, ptr %452, align 8
  store float %438, ptr %453, align 4, !tbaa !101
  br label %1505

454:                                              ; preds = %3
  %455 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %456 = load i16, ptr %455, align 2, !tbaa !84
  %457 = load i32, ptr %2, align 8
  %458 = icmp ult i32 %457, 41
  br i1 %458, label %459, label %465

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8
  %462 = zext nneg i32 %457 to i64
  %463 = getelementptr i8, ptr %461, i64 %462
  %464 = add nuw nsw i32 %457, 8
  store i32 %464, ptr %2, align 8
  br label %469

465:                                              ; preds = %454
  %466 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8
  %468 = getelementptr i8, ptr %467, i64 8
  store ptr %468, ptr %466, align 8
  br label %469

469:                                              ; preds = %465, %459
  %470 = phi ptr [ %463, %459 ], [ %467, %465 ]
  %471 = load ptr, ptr %470, align 8
  store i16 %456, ptr %471, align 2, !tbaa !64
  br label %1505

472:                                              ; preds = %3
  %473 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 25
  %474 = load float, ptr %473, align 4, !tbaa !85
  %475 = load i32, ptr %2, align 8
  %476 = icmp ult i32 %475, 41
  br i1 %476, label %477, label %483

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %479 = load ptr, ptr %478, align 8
  %480 = zext nneg i32 %475 to i64
  %481 = getelementptr i8, ptr %479, i64 %480
  %482 = add nuw nsw i32 %475, 8
  store i32 %482, ptr %2, align 8
  br label %487

483:                                              ; preds = %472
  %484 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8
  %486 = getelementptr i8, ptr %485, i64 8
  store ptr %486, ptr %484, align 8
  br label %487

487:                                              ; preds = %483, %477
  %488 = phi ptr [ %481, %477 ], [ %485, %483 ]
  %489 = load ptr, ptr %488, align 8
  store float %474, ptr %489, align 4, !tbaa !101
  br label %1505

490:                                              ; preds = %3
  %491 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 26
  %492 = load float, ptr %491, align 8, !tbaa !86
  %493 = load i32, ptr %2, align 8
  %494 = icmp ult i32 %493, 41
  br i1 %494, label %495, label %501

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8
  %498 = zext nneg i32 %493 to i64
  %499 = getelementptr i8, ptr %497, i64 %498
  %500 = add nuw nsw i32 %493, 8
  store i32 %500, ptr %2, align 8
  br label %505

501:                                              ; preds = %490
  %502 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8
  %504 = getelementptr i8, ptr %503, i64 8
  store ptr %504, ptr %502, align 8
  br label %505

505:                                              ; preds = %501, %495
  %506 = phi ptr [ %499, %495 ], [ %503, %501 ]
  %507 = load ptr, ptr %506, align 8
  store float %492, ptr %507, align 4, !tbaa !101
  br label %1505

508:                                              ; preds = %3
  %509 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 41
  %510 = load ptr, ptr %509, align 8, !tbaa !34
  %511 = load i32, ptr %2, align 8
  %512 = icmp ult i32 %511, 41
  br i1 %512, label %513, label %519

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8
  %516 = zext nneg i32 %511 to i64
  %517 = getelementptr i8, ptr %515, i64 %516
  %518 = add nuw nsw i32 %511, 8
  store i32 %518, ptr %2, align 8
  br label %523

519:                                              ; preds = %508
  %520 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8
  %522 = getelementptr i8, ptr %521, i64 8
  store ptr %522, ptr %520, align 8
  br label %523

523:                                              ; preds = %519, %513
  %524 = phi ptr [ %517, %513 ], [ %521, %519 ]
  %525 = load ptr, ptr %524, align 8
  store ptr %510, ptr %525, align 8, !tbaa !5
  br label %1505

526:                                              ; preds = %3
  %527 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  %528 = load i16, ptr %527, align 8, !tbaa !61
  %529 = load i32, ptr %2, align 8
  %530 = icmp ult i32 %529, 41
  br i1 %530, label %531, label %537

531:                                              ; preds = %526
  %532 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %533 = load ptr, ptr %532, align 8
  %534 = zext nneg i32 %529 to i64
  %535 = getelementptr i8, ptr %533, i64 %534
  %536 = add nuw nsw i32 %529, 8
  store i32 %536, ptr %2, align 8
  br label %541

537:                                              ; preds = %526
  %538 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8
  %540 = getelementptr i8, ptr %539, i64 8
  store ptr %540, ptr %538, align 8
  br label %541

541:                                              ; preds = %537, %531
  %542 = phi ptr [ %535, %531 ], [ %539, %537 ]
  %543 = load ptr, ptr %542, align 8
  store i16 %528, ptr %543, align 2, !tbaa !64
  br label %1505

544:                                              ; preds = %3
  %545 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27
  %546 = load i16, ptr %545, align 4, !tbaa !64
  %547 = load i32, ptr %2, align 8
  %548 = icmp ult i32 %547, 41
  br i1 %548, label %549, label %555

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8
  %552 = zext nneg i32 %547 to i64
  %553 = getelementptr i8, ptr %551, i64 %552
  %554 = add nuw nsw i32 %547, 8
  store i32 %554, ptr %2, align 8
  br label %559

555:                                              ; preds = %544
  %556 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %557 = load ptr, ptr %556, align 8
  %558 = getelementptr i8, ptr %557, i64 8
  store ptr %558, ptr %556, align 8
  br label %559

559:                                              ; preds = %555, %549
  %560 = phi ptr [ %553, %549 ], [ %557, %555 ]
  %561 = load ptr, ptr %560, align 8
  store i16 %546, ptr %561, align 2, !tbaa !64
  %562 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 27, i64 1
  %563 = load i16, ptr %562, align 2, !tbaa !64
  %564 = load i32, ptr %2, align 8
  %565 = icmp ult i32 %564, 41
  br i1 %565, label %566, label %572

566:                                              ; preds = %559
  %567 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %568 = load ptr, ptr %567, align 8
  %569 = zext nneg i32 %564 to i64
  %570 = getelementptr i8, ptr %568, i64 %569
  %571 = add nuw nsw i32 %564, 8
  store i32 %571, ptr %2, align 8
  br label %576

572:                                              ; preds = %559
  %573 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8
  %575 = getelementptr i8, ptr %574, i64 8
  store ptr %575, ptr %573, align 8
  br label %576

576:                                              ; preds = %572, %566
  %577 = phi ptr [ %570, %566 ], [ %574, %572 ]
  %578 = load ptr, ptr %577, align 8
  store i16 %563, ptr %578, align 2, !tbaa !64
  br label %1505

579:                                              ; preds = %3
  %580 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29
  %581 = load i16, ptr %580, align 8, !tbaa !64
  %582 = load i32, ptr %2, align 8
  %583 = icmp ult i32 %582, 41
  br i1 %583, label %584, label %590

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %586 = load ptr, ptr %585, align 8
  %587 = zext nneg i32 %582 to i64
  %588 = getelementptr i8, ptr %586, i64 %587
  %589 = add nuw nsw i32 %582, 8
  store i32 %589, ptr %2, align 8
  br label %594

590:                                              ; preds = %579
  %591 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %592 = load ptr, ptr %591, align 8
  %593 = getelementptr i8, ptr %592, i64 8
  store ptr %593, ptr %591, align 8
  br label %594

594:                                              ; preds = %590, %584
  %595 = phi ptr [ %588, %584 ], [ %592, %590 ]
  %596 = load ptr, ptr %595, align 8
  store i16 %581, ptr %596, align 2, !tbaa !64
  %597 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 29, i64 1
  %598 = load i16, ptr %597, align 2, !tbaa !64
  %599 = load i32, ptr %2, align 8
  %600 = icmp ult i32 %599, 41
  br i1 %600, label %601, label %607

601:                                              ; preds = %594
  %602 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %603 = load ptr, ptr %602, align 8
  %604 = zext nneg i32 %599 to i64
  %605 = getelementptr i8, ptr %603, i64 %604
  %606 = add nuw nsw i32 %599, 8
  store i32 %606, ptr %2, align 8
  br label %611

607:                                              ; preds = %594
  %608 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8
  %610 = getelementptr i8, ptr %609, i64 8
  store ptr %610, ptr %608, align 8
  br label %611

611:                                              ; preds = %607, %601
  %612 = phi ptr [ %605, %601 ], [ %609, %607 ]
  %613 = load ptr, ptr %612, align 8
  store i16 %598, ptr %613, align 2, !tbaa !64
  br label %1505

614:                                              ; preds = %3
  %615 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28
  %616 = load ptr, ptr %615, align 8, !tbaa !5
  %617 = load i32, ptr %2, align 8
  %618 = icmp ult i32 %617, 41
  br i1 %618, label %619, label %625

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %621 = load ptr, ptr %620, align 8
  %622 = zext nneg i32 %617 to i64
  %623 = getelementptr i8, ptr %621, i64 %622
  %624 = add nuw nsw i32 %617, 8
  store i32 %624, ptr %2, align 8
  br label %629

625:                                              ; preds = %614
  %626 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %627 = load ptr, ptr %626, align 8
  %628 = getelementptr i8, ptr %627, i64 8
  store ptr %628, ptr %626, align 8
  br label %629

629:                                              ; preds = %625, %619
  %630 = phi ptr [ %623, %619 ], [ %627, %625 ]
  %631 = load ptr, ptr %630, align 8
  store ptr %616, ptr %631, align 8, !tbaa !5
  %632 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 1
  %633 = load ptr, ptr %632, align 8, !tbaa !5
  %634 = load i32, ptr %2, align 8
  %635 = icmp ult i32 %634, 41
  br i1 %635, label %636, label %642

636:                                              ; preds = %629
  %637 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %638 = load ptr, ptr %637, align 8
  %639 = zext nneg i32 %634 to i64
  %640 = getelementptr i8, ptr %638, i64 %639
  %641 = add nuw nsw i32 %634, 8
  store i32 %641, ptr %2, align 8
  br label %646

642:                                              ; preds = %629
  %643 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %644 = load ptr, ptr %643, align 8
  %645 = getelementptr i8, ptr %644, i64 8
  store ptr %645, ptr %643, align 8
  br label %646

646:                                              ; preds = %642, %636
  %647 = phi ptr [ %640, %636 ], [ %644, %642 ]
  %648 = load ptr, ptr %647, align 8
  store ptr %633, ptr %648, align 8, !tbaa !5
  %649 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28, i64 2
  %650 = load ptr, ptr %649, align 8, !tbaa !5
  %651 = load i32, ptr %2, align 8
  %652 = icmp ult i32 %651, 41
  br i1 %652, label %653, label %659

653:                                              ; preds = %646
  %654 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %655 = load ptr, ptr %654, align 8
  %656 = zext nneg i32 %651 to i64
  %657 = getelementptr i8, ptr %655, i64 %656
  %658 = add nuw nsw i32 %651, 8
  store i32 %658, ptr %2, align 8
  br label %663

659:                                              ; preds = %646
  %660 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8
  %662 = getelementptr i8, ptr %661, i64 8
  store ptr %662, ptr %660, align 8
  br label %663

663:                                              ; preds = %659, %653
  %664 = phi ptr [ %657, %653 ], [ %661, %659 ]
  %665 = load ptr, ptr %664, align 8
  store ptr %650, ptr %665, align 8, !tbaa !5
  br label %1505

666:                                              ; preds = %3, %3
  %667 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %668 = load ptr, ptr %667, align 8, !tbaa !46
  %669 = load i32, ptr %2, align 8
  %670 = icmp ult i32 %669, 41
  br i1 %670, label %671, label %677

671:                                              ; preds = %666
  %672 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %673 = load ptr, ptr %672, align 8
  %674 = zext nneg i32 %669 to i64
  %675 = getelementptr i8, ptr %673, i64 %674
  %676 = add nuw nsw i32 %669, 8
  store i32 %676, ptr %2, align 8
  br label %681

677:                                              ; preds = %666
  %678 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8
  %680 = getelementptr i8, ptr %679, i64 8
  store ptr %680, ptr %678, align 8
  br label %681

681:                                              ; preds = %677, %671
  %682 = phi ptr [ %675, %671 ], [ %679, %677 ]
  %683 = load ptr, ptr %682, align 8
  store ptr %668, ptr %683, align 8, !tbaa !5
  br label %1505

684:                                              ; preds = %3, %3
  %685 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %686 = load ptr, ptr %685, align 8, !tbaa !47
  %687 = load i32, ptr %2, align 8
  %688 = icmp ult i32 %687, 41
  br i1 %688, label %689, label %695

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %691 = load ptr, ptr %690, align 8
  %692 = zext nneg i32 %687 to i64
  %693 = getelementptr i8, ptr %691, i64 %692
  %694 = add nuw nsw i32 %687, 8
  store i32 %694, ptr %2, align 8
  br label %699

695:                                              ; preds = %684
  %696 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %697 = load ptr, ptr %696, align 8
  %698 = getelementptr i8, ptr %697, i64 8
  store ptr %698, ptr %696, align 8
  br label %699

699:                                              ; preds = %695, %689
  %700 = phi ptr [ %693, %689 ], [ %697, %695 ]
  %701 = load ptr, ptr %700, align 8
  store ptr %686, ptr %701, align 8, !tbaa !5
  br label %1505

702:                                              ; preds = %3
  %703 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %704 = load i16, ptr %703, align 4, !tbaa !88
  %705 = icmp eq i16 %704, 1
  br i1 %705, label %706, label %712

706:                                              ; preds = %702
  %707 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  %708 = load ptr, ptr %707, align 8, !tbaa !35
  %709 = load i16, ptr %708, align 2, !tbaa !64
  %710 = icmp eq i16 %709, 1
  %711 = zext i1 %710 to i16
  br label %712

712:                                              ; preds = %706, %702
  %713 = phi i16 [ 0, %702 ], [ %711, %706 ]
  %714 = load i32, ptr %2, align 8
  %715 = icmp ult i32 %714, 41
  br i1 %715, label %716, label %722

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %718 = load ptr, ptr %717, align 8
  %719 = zext nneg i32 %714 to i64
  %720 = getelementptr i8, ptr %718, i64 %719
  %721 = add nuw nsw i32 %714, 8
  store i32 %721, ptr %2, align 8
  br label %726

722:                                              ; preds = %712
  %723 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %724 = load ptr, ptr %723, align 8
  %725 = getelementptr i8, ptr %724, i64 8
  store ptr %725, ptr %723, align 8
  br label %726

726:                                              ; preds = %722, %716
  %727 = phi ptr [ %720, %716 ], [ %724, %722 ]
  %728 = load ptr, ptr %727, align 8
  store i16 %713, ptr %728, align 2, !tbaa !64
  br label %1505

729:                                              ; preds = %3
  %730 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %731 = load i16, ptr %730, align 4, !tbaa !88
  %732 = load i32, ptr %2, align 8
  %733 = icmp ult i32 %732, 41
  br i1 %733, label %734, label %740

734:                                              ; preds = %729
  %735 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %736 = load ptr, ptr %735, align 8
  %737 = zext nneg i32 %732 to i64
  %738 = getelementptr i8, ptr %736, i64 %737
  %739 = add nuw nsw i32 %732, 8
  store i32 %739, ptr %2, align 8
  br label %744

740:                                              ; preds = %729
  %741 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %742 = load ptr, ptr %741, align 8
  %743 = getelementptr i8, ptr %742, i64 8
  store ptr %743, ptr %741, align 8
  br label %744

744:                                              ; preds = %740, %734
  %745 = phi ptr [ %738, %734 ], [ %742, %740 ]
  %746 = load ptr, ptr %745, align 8
  store i16 %731, ptr %746, align 2, !tbaa !64
  %747 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  %748 = load ptr, ptr %747, align 8, !tbaa !35
  %749 = load i32, ptr %2, align 8
  %750 = icmp ult i32 %749, 41
  br i1 %750, label %751, label %757

751:                                              ; preds = %744
  %752 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %753 = load ptr, ptr %752, align 8
  %754 = zext nneg i32 %749 to i64
  %755 = getelementptr i8, ptr %753, i64 %754
  %756 = add nuw nsw i32 %749, 8
  store i32 %756, ptr %2, align 8
  br label %761

757:                                              ; preds = %744
  %758 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8
  %760 = getelementptr i8, ptr %759, i64 8
  store ptr %760, ptr %758, align 8
  br label %761

761:                                              ; preds = %757, %751
  %762 = phi ptr [ %755, %751 ], [ %759, %757 ]
  %763 = load ptr, ptr %762, align 8
  store ptr %748, ptr %763, align 8, !tbaa !5
  br label %1505

764:                                              ; preds = %3
  %765 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %766 = load i32, ptr %765, align 4, !tbaa !58
  %767 = load i32, ptr %2, align 8
  %768 = icmp ult i32 %767, 41
  br i1 %768, label %769, label %775

769:                                              ; preds = %764
  %770 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %771 = load ptr, ptr %770, align 8
  %772 = zext nneg i32 %767 to i64
  %773 = getelementptr i8, ptr %771, i64 %772
  %774 = add nuw nsw i32 %767, 8
  store i32 %774, ptr %2, align 8
  br label %779

775:                                              ; preds = %764
  %776 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8
  %778 = getelementptr i8, ptr %777, i64 8
  store ptr %778, ptr %776, align 8
  br label %779

779:                                              ; preds = %775, %769
  %780 = phi ptr [ %773, %769 ], [ %777, %775 ]
  %781 = load ptr, ptr %780, align 8
  store i32 %766, ptr %781, align 4, !tbaa !73
  br label %1505

782:                                              ; preds = %3
  %783 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %784 = load i32, ptr %783, align 8, !tbaa !59
  %785 = load i32, ptr %2, align 8
  %786 = icmp ult i32 %785, 41
  br i1 %786, label %787, label %793

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %789 = load ptr, ptr %788, align 8
  %790 = zext nneg i32 %785 to i64
  %791 = getelementptr i8, ptr %789, i64 %790
  %792 = add nuw nsw i32 %785, 8
  store i32 %792, ptr %2, align 8
  br label %797

793:                                              ; preds = %782
  %794 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %795 = load ptr, ptr %794, align 8
  %796 = getelementptr i8, ptr %795, i64 8
  store ptr %796, ptr %794, align 8
  br label %797

797:                                              ; preds = %793, %787
  %798 = phi ptr [ %791, %787 ], [ %795, %793 ]
  %799 = load ptr, ptr %798, align 8
  store i32 %784, ptr %799, align 4, !tbaa !73
  br label %1505

800:                                              ; preds = %3
  %801 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %802 = load i32, ptr %801, align 4, !tbaa !60
  %803 = load i32, ptr %2, align 8
  %804 = icmp ult i32 %803, 41
  br i1 %804, label %805, label %811

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8
  %808 = zext nneg i32 %803 to i64
  %809 = getelementptr i8, ptr %807, i64 %808
  %810 = add nuw nsw i32 %803, 8
  store i32 %810, ptr %2, align 8
  br label %815

811:                                              ; preds = %800
  %812 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %813 = load ptr, ptr %812, align 8
  %814 = getelementptr i8, ptr %813, i64 8
  store ptr %814, ptr %812, align 8
  br label %815

815:                                              ; preds = %811, %805
  %816 = phi ptr [ %809, %805 ], [ %813, %811 ]
  %817 = load ptr, ptr %816, align 8
  store i32 %802, ptr %817, align 4, !tbaa !73
  br label %1505

818:                                              ; preds = %3
  %819 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %820 = load i16, ptr %819, align 2, !tbaa !62
  switch i16 %820, label %1505 [
    i16 1, label %821
    i16 2, label %837
    i16 3, label %853
    i16 4, label %869
  ]

821:                                              ; preds = %818
  %822 = load i32, ptr %2, align 8
  %823 = icmp ult i32 %822, 41
  br i1 %823, label %824, label %830

824:                                              ; preds = %821
  %825 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %826 = load ptr, ptr %825, align 8
  %827 = zext nneg i32 %822 to i64
  %828 = getelementptr i8, ptr %826, i64 %827
  %829 = add nuw nsw i32 %822, 8
  store i32 %829, ptr %2, align 8
  br label %834

830:                                              ; preds = %821
  %831 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %832 = load ptr, ptr %831, align 8
  %833 = getelementptr i8, ptr %832, i64 8
  store ptr %833, ptr %831, align 8
  br label %834

834:                                              ; preds = %830, %824
  %835 = phi ptr [ %828, %824 ], [ %832, %830 ]
  %836 = load ptr, ptr %835, align 8
  store i16 2, ptr %836, align 2, !tbaa !64
  br label %1505

837:                                              ; preds = %818
  %838 = load i32, ptr %2, align 8
  %839 = icmp ult i32 %838, 41
  br i1 %839, label %840, label %846

840:                                              ; preds = %837
  %841 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %842 = load ptr, ptr %841, align 8
  %843 = zext nneg i32 %838 to i64
  %844 = getelementptr i8, ptr %842, i64 %843
  %845 = add nuw nsw i32 %838, 8
  store i32 %845, ptr %2, align 8
  br label %850

846:                                              ; preds = %837
  %847 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %848 = load ptr, ptr %847, align 8
  %849 = getelementptr i8, ptr %848, i64 8
  store ptr %849, ptr %847, align 8
  br label %850

850:                                              ; preds = %846, %840
  %851 = phi ptr [ %844, %840 ], [ %848, %846 ]
  %852 = load ptr, ptr %851, align 8
  store i16 1, ptr %852, align 2, !tbaa !64
  br label %1505

853:                                              ; preds = %818
  %854 = load i32, ptr %2, align 8
  %855 = icmp ult i32 %854, 41
  br i1 %855, label %856, label %862

856:                                              ; preds = %853
  %857 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %858 = load ptr, ptr %857, align 8
  %859 = zext nneg i32 %854 to i64
  %860 = getelementptr i8, ptr %858, i64 %859
  %861 = add nuw nsw i32 %854, 8
  store i32 %861, ptr %2, align 8
  br label %866

862:                                              ; preds = %853
  %863 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %864 = load ptr, ptr %863, align 8
  %865 = getelementptr i8, ptr %864, i64 8
  store ptr %865, ptr %863, align 8
  br label %866

866:                                              ; preds = %862, %856
  %867 = phi ptr [ %860, %856 ], [ %864, %862 ]
  %868 = load ptr, ptr %867, align 8
  store i16 3, ptr %868, align 2, !tbaa !64
  br label %1505

869:                                              ; preds = %818
  %870 = load i32, ptr %2, align 8
  %871 = icmp ult i32 %870, 41
  br i1 %871, label %872, label %878

872:                                              ; preds = %869
  %873 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %874 = load ptr, ptr %873, align 8
  %875 = zext nneg i32 %870 to i64
  %876 = getelementptr i8, ptr %874, i64 %875
  %877 = add nuw nsw i32 %870, 8
  store i32 %877, ptr %2, align 8
  br label %882

878:                                              ; preds = %869
  %879 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %880 = load ptr, ptr %879, align 8
  %881 = getelementptr i8, ptr %880, i64 8
  store ptr %881, ptr %879, align 8
  br label %882

882:                                              ; preds = %878, %872
  %883 = phi ptr [ %876, %872 ], [ %880, %878 ]
  %884 = load ptr, ptr %883, align 8
  store i16 0, ptr %884, align 2, !tbaa !64
  br label %1505

885:                                              ; preds = %3
  %886 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %887 = load i16, ptr %886, align 2, !tbaa !62
  %888 = load i32, ptr %2, align 8
  %889 = icmp ult i32 %888, 41
  br i1 %889, label %890, label %896

890:                                              ; preds = %885
  %891 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %892 = load ptr, ptr %891, align 8
  %893 = zext nneg i32 %888 to i64
  %894 = getelementptr i8, ptr %892, i64 %893
  %895 = add nuw nsw i32 %888, 8
  store i32 %895, ptr %2, align 8
  br label %900

896:                                              ; preds = %885
  %897 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %898 = load ptr, ptr %897, align 8
  %899 = getelementptr i8, ptr %898, i64 8
  store ptr %899, ptr %897, align 8
  br label %900

900:                                              ; preds = %896, %890
  %901 = phi ptr [ %894, %890 ], [ %898, %896 ]
  %902 = load ptr, ptr %901, align 8
  store i16 %887, ptr %902, align 2, !tbaa !64
  br label %1505

903:                                              ; preds = %3
  %904 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %905 = load i32, ptr %904, align 8, !tbaa !63
  %906 = load i32, ptr %2, align 8
  %907 = icmp ult i32 %906, 41
  br i1 %907, label %908, label %914

908:                                              ; preds = %903
  %909 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %910 = load ptr, ptr %909, align 8
  %911 = zext nneg i32 %906 to i64
  %912 = getelementptr i8, ptr %910, i64 %911
  %913 = add nuw nsw i32 %906, 8
  store i32 %913, ptr %2, align 8
  br label %918

914:                                              ; preds = %903
  %915 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %916 = load ptr, ptr %915, align 8
  %917 = getelementptr i8, ptr %916, i64 8
  store ptr %917, ptr %915, align 8
  br label %918

918:                                              ; preds = %914, %908
  %919 = phi ptr [ %912, %908 ], [ %916, %914 ]
  %920 = load ptr, ptr %919, align 8
  store i32 %905, ptr %920, align 4, !tbaa !73
  br label %1505

921:                                              ; preds = %3
  %922 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 32
  %923 = load double, ptr %922, align 8, !tbaa !89
  %924 = load i32, ptr %2, align 8
  %925 = icmp ult i32 %924, 41
  br i1 %925, label %926, label %932

926:                                              ; preds = %921
  %927 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %928 = load ptr, ptr %927, align 8
  %929 = zext nneg i32 %924 to i64
  %930 = getelementptr i8, ptr %928, i64 %929
  %931 = add nuw nsw i32 %924, 8
  store i32 %931, ptr %2, align 8
  br label %936

932:                                              ; preds = %921
  %933 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8
  %935 = getelementptr i8, ptr %934, i64 8
  store ptr %935, ptr %933, align 8
  br label %936

936:                                              ; preds = %932, %926
  %937 = phi ptr [ %930, %926 ], [ %934, %932 ]
  %938 = load ptr, ptr %937, align 8
  store double %923, ptr %938, align 8, !tbaa !100
  br label %1505

939:                                              ; preds = %3
  %940 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 46
  %941 = load i16, ptr %940, align 8, !tbaa !93
  %942 = load i32, ptr %2, align 8
  %943 = icmp ult i32 %942, 41
  br i1 %943, label %944, label %950

944:                                              ; preds = %939
  %945 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %946 = load ptr, ptr %945, align 8
  %947 = zext nneg i32 %942 to i64
  %948 = getelementptr i8, ptr %946, i64 %947
  %949 = add nuw nsw i32 %942, 8
  store i32 %949, ptr %2, align 8
  br label %954

950:                                              ; preds = %939
  %951 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %952 = load ptr, ptr %951, align 8
  %953 = getelementptr i8, ptr %952, i64 8
  store ptr %953, ptr %951, align 8
  br label %954

954:                                              ; preds = %950, %944
  %955 = phi ptr [ %948, %944 ], [ %952, %950 ]
  %956 = load ptr, ptr %955, align 8
  store i16 %941, ptr %956, align 2, !tbaa !64
  %957 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 47
  %958 = load ptr, ptr %957, align 8, !tbaa !36
  %959 = load i32, ptr %2, align 8
  %960 = icmp ult i32 %959, 41
  br i1 %960, label %961, label %967

961:                                              ; preds = %954
  %962 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %963 = load ptr, ptr %962, align 8
  %964 = zext nneg i32 %959 to i64
  %965 = getelementptr i8, ptr %963, i64 %964
  %966 = add nuw nsw i32 %959, 8
  store i32 %966, ptr %2, align 8
  br label %971

967:                                              ; preds = %954
  %968 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %969 = load ptr, ptr %968, align 8
  %970 = getelementptr i8, ptr %969, i64 8
  store ptr %970, ptr %968, align 8
  br label %971

971:                                              ; preds = %967, %961
  %972 = phi ptr [ %965, %961 ], [ %969, %967 ]
  %973 = load ptr, ptr %972, align 8
  store ptr %958, ptr %973, align 8, !tbaa !5
  br label %1505

974:                                              ; preds = %3
  %975 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 48
  %976 = load ptr, ptr %975, align 8, !tbaa !37
  %977 = load i32, ptr %2, align 8
  %978 = icmp ult i32 %977, 41
  br i1 %978, label %979, label %985

979:                                              ; preds = %974
  %980 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %981 = load ptr, ptr %980, align 8
  %982 = zext nneg i32 %977 to i64
  %983 = getelementptr i8, ptr %981, i64 %982
  %984 = add nuw nsw i32 %977, 8
  store i32 %984, ptr %2, align 8
  br label %989

985:                                              ; preds = %974
  %986 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %987 = load ptr, ptr %986, align 8
  %988 = getelementptr i8, ptr %987, i64 8
  store ptr %988, ptr %986, align 8
  br label %989

989:                                              ; preds = %985, %979
  %990 = phi ptr [ %983, %979 ], [ %987, %985 ]
  %991 = load ptr, ptr %990, align 8
  store ptr %976, ptr %991, align 8, !tbaa !5
  br label %1505

992:                                              ; preds = %3
  %993 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 50
  %994 = load i16, ptr %993, align 4, !tbaa !65
  %995 = load i32, ptr %2, align 8
  %996 = icmp ult i32 %995, 41
  br i1 %996, label %997, label %1003

997:                                              ; preds = %992
  %998 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %999 = load ptr, ptr %998, align 8
  %1000 = zext nneg i32 %995 to i64
  %1001 = getelementptr i8, ptr %999, i64 %1000
  %1002 = add nuw nsw i32 %995, 8
  store i32 %1002, ptr %2, align 8
  br label %1007

1003:                                             ; preds = %992
  %1004 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1005 = load ptr, ptr %1004, align 8
  %1006 = getelementptr i8, ptr %1005, i64 8
  store ptr %1006, ptr %1004, align 8
  br label %1007

1007:                                             ; preds = %1003, %997
  %1008 = phi ptr [ %1001, %997 ], [ %1005, %1003 ]
  %1009 = load ptr, ptr %1008, align 8
  store i16 %994, ptr %1009, align 2, !tbaa !64
  br label %1505

1010:                                             ; preds = %3
  %1011 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %1012 = load i16, ptr %1011, align 8, !tbaa !64
  %1013 = load i32, ptr %2, align 8
  %1014 = icmp ult i32 %1013, 41
  br i1 %1014, label %1015, label %1021

1015:                                             ; preds = %1010
  %1016 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1017 = load ptr, ptr %1016, align 8
  %1018 = zext nneg i32 %1013 to i64
  %1019 = getelementptr i8, ptr %1017, i64 %1018
  %1020 = add nuw nsw i32 %1013, 8
  store i32 %1020, ptr %2, align 8
  br label %1025

1021:                                             ; preds = %1010
  %1022 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1023 = load ptr, ptr %1022, align 8
  %1024 = getelementptr i8, ptr %1023, i64 8
  store ptr %1024, ptr %1022, align 8
  br label %1025

1025:                                             ; preds = %1021, %1015
  %1026 = phi ptr [ %1019, %1015 ], [ %1023, %1021 ]
  %1027 = load ptr, ptr %1026, align 8
  store i16 %1012, ptr %1027, align 2, !tbaa !64
  %1028 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %1029 = load i16, ptr %1028, align 2, !tbaa !64
  %1030 = load i32, ptr %2, align 8
  %1031 = icmp ult i32 %1030, 41
  br i1 %1031, label %1032, label %1038

1032:                                             ; preds = %1025
  %1033 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1034 = load ptr, ptr %1033, align 8
  %1035 = zext nneg i32 %1030 to i64
  %1036 = getelementptr i8, ptr %1034, i64 %1035
  %1037 = add nuw nsw i32 %1030, 8
  store i32 %1037, ptr %2, align 8
  br label %1042

1038:                                             ; preds = %1025
  %1039 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1040 = load ptr, ptr %1039, align 8
  %1041 = getelementptr i8, ptr %1040, i64 8
  store ptr %1041, ptr %1039, align 8
  br label %1042

1042:                                             ; preds = %1038, %1032
  %1043 = phi ptr [ %1036, %1032 ], [ %1040, %1038 ]
  %1044 = load ptr, ptr %1043, align 8
  store i16 %1029, ptr %1044, align 2, !tbaa !64
  br label %1505

1045:                                             ; preds = %3
  %1046 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 51
  %1047 = load ptr, ptr %1046, align 8, !tbaa !40
  %1048 = load i32, ptr %2, align 8
  %1049 = icmp ult i32 %1048, 41
  br i1 %1049, label %1050, label %1056

1050:                                             ; preds = %1045
  %1051 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1052 = load ptr, ptr %1051, align 8
  %1053 = zext nneg i32 %1048 to i64
  %1054 = getelementptr i8, ptr %1052, i64 %1053
  %1055 = add nuw nsw i32 %1048, 8
  store i32 %1055, ptr %2, align 8
  br label %1060

1056:                                             ; preds = %1045
  %1057 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1058 = load ptr, ptr %1057, align 8
  %1059 = getelementptr i8, ptr %1058, i64 8
  store ptr %1059, ptr %1057, align 8
  br label %1060

1060:                                             ; preds = %1056, %1050
  %1061 = phi ptr [ %1054, %1050 ], [ %1058, %1056 ]
  %1062 = load ptr, ptr %1061, align 8
  store ptr %1047, ptr %1062, align 8, !tbaa !5
  br label %1505

1063:                                             ; preds = %3
  %1064 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 52
  %1065 = load ptr, ptr %1064, align 8, !tbaa !41
  %1066 = load i32, ptr %2, align 8
  %1067 = icmp ult i32 %1066, 41
  br i1 %1067, label %1068, label %1074

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1070 = load ptr, ptr %1069, align 8
  %1071 = zext nneg i32 %1066 to i64
  %1072 = getelementptr i8, ptr %1070, i64 %1071
  %1073 = add nuw nsw i32 %1066, 8
  store i32 %1073, ptr %2, align 8
  br label %1078

1074:                                             ; preds = %1063
  %1075 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1076 = load ptr, ptr %1075, align 8
  %1077 = getelementptr i8, ptr %1076, i64 8
  store ptr %1077, ptr %1075, align 8
  br label %1078

1078:                                             ; preds = %1074, %1068
  %1079 = phi ptr [ %1072, %1068 ], [ %1076, %1074 ]
  %1080 = load ptr, ptr %1079, align 8
  store ptr %1065, ptr %1080, align 8, !tbaa !5
  br label %1505

1081:                                             ; preds = %3
  %1082 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54
  %1083 = load ptr, ptr %1082, align 8, !tbaa !5
  %1084 = load i32, ptr %2, align 8
  %1085 = icmp ult i32 %1084, 41
  br i1 %1085, label %1086, label %1092

1086:                                             ; preds = %1081
  %1087 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1088 = load ptr, ptr %1087, align 8
  %1089 = zext nneg i32 %1084 to i64
  %1090 = getelementptr i8, ptr %1088, i64 %1089
  %1091 = add nuw nsw i32 %1084, 8
  store i32 %1091, ptr %2, align 8
  br label %1096

1092:                                             ; preds = %1081
  %1093 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1094 = load ptr, ptr %1093, align 8
  %1095 = getelementptr i8, ptr %1094, i64 8
  store ptr %1095, ptr %1093, align 8
  br label %1096

1096:                                             ; preds = %1092, %1086
  %1097 = phi ptr [ %1090, %1086 ], [ %1094, %1092 ]
  %1098 = load ptr, ptr %1097, align 8
  store ptr %1083, ptr %1098, align 8, !tbaa !5
  %1099 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %1100 = load i16, ptr %1099, align 2, !tbaa !56
  %1101 = zext i16 %1100 to i32
  %1102 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %1103 = load i16, ptr %1102, align 4, !tbaa !88
  %1104 = zext i16 %1103 to i32
  %1105 = sub nsw i32 %1101, %1104
  %1106 = icmp sgt i32 %1105, 1
  br i1 %1106, label %1107, label %1505

1107:                                             ; preds = %1096
  %1108 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !5
  %1110 = load i32, ptr %2, align 8
  %1111 = icmp ult i32 %1110, 41
  br i1 %1111, label %1112, label %1118

1112:                                             ; preds = %1107
  %1113 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1114 = load ptr, ptr %1113, align 8
  %1115 = zext nneg i32 %1110 to i64
  %1116 = getelementptr i8, ptr %1114, i64 %1115
  %1117 = add nuw nsw i32 %1110, 8
  store i32 %1117, ptr %2, align 8
  br label %1122

1118:                                             ; preds = %1107
  %1119 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1120 = load ptr, ptr %1119, align 8
  %1121 = getelementptr i8, ptr %1120, i64 8
  store ptr %1121, ptr %1119, align 8
  br label %1122

1122:                                             ; preds = %1118, %1112
  %1123 = phi ptr [ %1116, %1112 ], [ %1120, %1118 ]
  %1124 = load ptr, ptr %1123, align 8
  store ptr %1109, ptr %1124, align 8, !tbaa !5
  %1125 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 2
  %1126 = load ptr, ptr %1125, align 8, !tbaa !5
  %1127 = load i32, ptr %2, align 8
  %1128 = icmp ult i32 %1127, 41
  br i1 %1128, label %1129, label %1135

1129:                                             ; preds = %1122
  %1130 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1131 = load ptr, ptr %1130, align 8
  %1132 = zext nneg i32 %1127 to i64
  %1133 = getelementptr i8, ptr %1131, i64 %1132
  %1134 = add nuw nsw i32 %1127, 8
  store i32 %1134, ptr %2, align 8
  br label %1139

1135:                                             ; preds = %1122
  %1136 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1137 = load ptr, ptr %1136, align 8
  %1138 = getelementptr i8, ptr %1137, i64 8
  store ptr %1138, ptr %1136, align 8
  br label %1139

1139:                                             ; preds = %1135, %1129
  %1140 = phi ptr [ %1133, %1129 ], [ %1137, %1135 ]
  %1141 = load ptr, ptr %1140, align 8
  store ptr %1126, ptr %1141, align 8, !tbaa !5
  br label %1505

1142:                                             ; preds = %3
  %1143 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 53
  %1144 = load ptr, ptr %1143, align 8, !tbaa !42
  %1145 = load i32, ptr %2, align 8
  %1146 = icmp ult i32 %1145, 41
  br i1 %1146, label %1147, label %1153

1147:                                             ; preds = %1142
  %1148 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1149 = load ptr, ptr %1148, align 8
  %1150 = zext nneg i32 %1145 to i64
  %1151 = getelementptr i8, ptr %1149, i64 %1150
  %1152 = add nuw nsw i32 %1145, 8
  store i32 %1152, ptr %2, align 8
  br label %1157

1153:                                             ; preds = %1142
  %1154 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1155 = load ptr, ptr %1154, align 8
  %1156 = getelementptr i8, ptr %1155, i64 8
  store ptr %1156, ptr %1154, align 8
  br label %1157

1157:                                             ; preds = %1153, %1147
  %1158 = phi ptr [ %1151, %1147 ], [ %1155, %1153 ]
  %1159 = load ptr, ptr %1158, align 8
  store ptr %1144, ptr %1159, align 8, !tbaa !5
  br label %1505

1160:                                             ; preds = %3
  %1161 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  %1162 = load i16, ptr %1161, align 8, !tbaa !66
  %1163 = load i32, ptr %2, align 8
  %1164 = icmp ult i32 %1163, 41
  br i1 %1164, label %1165, label %1171

1165:                                             ; preds = %1160
  %1166 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1167 = load ptr, ptr %1166, align 8
  %1168 = zext nneg i32 %1163 to i64
  %1169 = getelementptr i8, ptr %1167, i64 %1168
  %1170 = add nuw nsw i32 %1163, 8
  store i32 %1170, ptr %2, align 8
  br label %1175

1171:                                             ; preds = %1160
  %1172 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1173 = load ptr, ptr %1172, align 8
  %1174 = getelementptr i8, ptr %1173, i64 8
  store ptr %1174, ptr %1172, align 8
  br label %1175

1175:                                             ; preds = %1171, %1165
  %1176 = phi ptr [ %1169, %1165 ], [ %1173, %1171 ]
  %1177 = load ptr, ptr %1176, align 8
  store i16 %1162, ptr %1177, align 2, !tbaa !64
  br label %1505

1178:                                             ; preds = %3
  %1179 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57
  %1180 = load i16, ptr %1179, align 4, !tbaa !64
  %1181 = load i32, ptr %2, align 8
  %1182 = icmp ult i32 %1181, 41
  br i1 %1182, label %1183, label %1189

1183:                                             ; preds = %1178
  %1184 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1185 = load ptr, ptr %1184, align 8
  %1186 = zext nneg i32 %1181 to i64
  %1187 = getelementptr i8, ptr %1185, i64 %1186
  %1188 = add nuw nsw i32 %1181, 8
  store i32 %1188, ptr %2, align 8
  br label %1193

1189:                                             ; preds = %1178
  %1190 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1191 = load ptr, ptr %1190, align 8
  %1192 = getelementptr i8, ptr %1191, i64 8
  store ptr %1192, ptr %1190, align 8
  br label %1193

1193:                                             ; preds = %1189, %1183
  %1194 = phi ptr [ %1187, %1183 ], [ %1191, %1189 ]
  %1195 = load ptr, ptr %1194, align 8
  store i16 %1180, ptr %1195, align 2, !tbaa !64
  %1196 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 57, i64 1
  %1197 = load i16, ptr %1196, align 2, !tbaa !64
  %1198 = load i32, ptr %2, align 8
  %1199 = icmp ult i32 %1198, 41
  br i1 %1199, label %1200, label %1206

1200:                                             ; preds = %1193
  %1201 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1202 = load ptr, ptr %1201, align 8
  %1203 = zext nneg i32 %1198 to i64
  %1204 = getelementptr i8, ptr %1202, i64 %1203
  %1205 = add nuw nsw i32 %1198, 8
  store i32 %1205, ptr %2, align 8
  br label %1210

1206:                                             ; preds = %1193
  %1207 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1208 = load ptr, ptr %1207, align 8
  %1209 = getelementptr i8, ptr %1208, i64 8
  store ptr %1209, ptr %1207, align 8
  br label %1210

1210:                                             ; preds = %1206, %1200
  %1211 = phi ptr [ %1204, %1200 ], [ %1208, %1206 ]
  %1212 = load ptr, ptr %1211, align 8
  store i16 %1197, ptr %1212, align 2, !tbaa !64
  br label %1505

1213:                                             ; preds = %3
  %1214 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 59
  %1215 = load ptr, ptr %1214, align 8, !tbaa !38
  %1216 = load i32, ptr %2, align 8
  %1217 = icmp ult i32 %1216, 41
  br i1 %1217, label %1218, label %1224

1218:                                             ; preds = %1213
  %1219 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1220 = load ptr, ptr %1219, align 8
  %1221 = zext nneg i32 %1216 to i64
  %1222 = getelementptr i8, ptr %1220, i64 %1221
  %1223 = add nuw nsw i32 %1216, 8
  store i32 %1223, ptr %2, align 8
  br label %1228

1224:                                             ; preds = %1213
  %1225 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1226 = load ptr, ptr %1225, align 8
  %1227 = getelementptr i8, ptr %1226, i64 8
  store ptr %1227, ptr %1225, align 8
  br label %1228

1228:                                             ; preds = %1224, %1218
  %1229 = phi ptr [ %1222, %1218 ], [ %1226, %1224 ]
  %1230 = load ptr, ptr %1229, align 8
  store ptr %1215, ptr %1230, align 8, !tbaa !5
  br label %1505

1231:                                             ; preds = %3
  %1232 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 56
  %1233 = load i16, ptr %1232, align 2, !tbaa !67
  %1234 = load i32, ptr %2, align 8
  %1235 = icmp ult i32 %1234, 41
  br i1 %1235, label %1236, label %1242

1236:                                             ; preds = %1231
  %1237 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1238 = load ptr, ptr %1237, align 8
  %1239 = zext nneg i32 %1234 to i64
  %1240 = getelementptr i8, ptr %1238, i64 %1239
  %1241 = add nuw nsw i32 %1234, 8
  store i32 %1241, ptr %2, align 8
  br label %1246

1242:                                             ; preds = %1231
  %1243 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1244 = load ptr, ptr %1243, align 8
  %1245 = getelementptr i8, ptr %1244, i64 8
  store ptr %1245, ptr %1243, align 8
  br label %1246

1246:                                             ; preds = %1242, %1236
  %1247 = phi ptr [ %1240, %1236 ], [ %1244, %1242 ]
  %1248 = load ptr, ptr %1247, align 8
  store i16 %1233, ptr %1248, align 2, !tbaa !64
  br label %1505

1249:                                             ; preds = %3
  %1250 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 60
  %1251 = load ptr, ptr %1250, align 8, !tbaa !39
  %1252 = load i32, ptr %2, align 8
  %1253 = icmp ult i32 %1252, 41
  br i1 %1253, label %1254, label %1260

1254:                                             ; preds = %1249
  %1255 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1256 = load ptr, ptr %1255, align 8
  %1257 = zext nneg i32 %1252 to i64
  %1258 = getelementptr i8, ptr %1256, i64 %1257
  %1259 = add nuw nsw i32 %1252, 8
  store i32 %1259, ptr %2, align 8
  br label %1264

1260:                                             ; preds = %1249
  %1261 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1262 = load ptr, ptr %1261, align 8
  %1263 = getelementptr i8, ptr %1262, i64 8
  store ptr %1263, ptr %1261, align 8
  br label %1264

1264:                                             ; preds = %1260, %1254
  %1265 = phi ptr [ %1258, %1254 ], [ %1262, %1260 ]
  %1266 = load ptr, ptr %1265, align 8
  store ptr %1251, ptr %1266, align 8, !tbaa !5
  br label %1505

1267:                                             ; preds = %3
  %1268 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 61
  %1269 = load i32, ptr %1268, align 8, !tbaa !97
  %1270 = load i32, ptr %2, align 8
  %1271 = icmp ult i32 %1270, 41
  br i1 %1271, label %1272, label %1278

1272:                                             ; preds = %1267
  %1273 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1274 = load ptr, ptr %1273, align 8
  %1275 = zext nneg i32 %1270 to i64
  %1276 = getelementptr i8, ptr %1274, i64 %1275
  %1277 = add nuw nsw i32 %1270, 8
  store i32 %1277, ptr %2, align 8
  br label %1282

1278:                                             ; preds = %1267
  %1279 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1280 = load ptr, ptr %1279, align 8
  %1281 = getelementptr i8, ptr %1280, i64 8
  store ptr %1281, ptr %1279, align 8
  br label %1282

1282:                                             ; preds = %1278, %1272
  %1283 = phi ptr [ %1276, %1272 ], [ %1280, %1278 ]
  %1284 = load ptr, ptr %1283, align 8
  store i32 %1269, ptr %1284, align 4, !tbaa !73
  %1285 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 62
  %1286 = load ptr, ptr %1285, align 8, !tbaa !43
  %1287 = load i32, ptr %2, align 8
  %1288 = icmp ult i32 %1287, 41
  br i1 %1288, label %1289, label %1295

1289:                                             ; preds = %1282
  %1290 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1291 = load ptr, ptr %1290, align 8
  %1292 = zext nneg i32 %1287 to i64
  %1293 = getelementptr i8, ptr %1291, i64 %1292
  %1294 = add nuw nsw i32 %1287, 8
  store i32 %1294, ptr %2, align 8
  br label %1299

1295:                                             ; preds = %1282
  %1296 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1297 = load ptr, ptr %1296, align 8
  %1298 = getelementptr i8, ptr %1297, i64 8
  store ptr %1298, ptr %1296, align 8
  br label %1299

1299:                                             ; preds = %1295, %1289
  %1300 = phi ptr [ %1293, %1289 ], [ %1297, %1295 ]
  %1301 = load ptr, ptr %1300, align 8
  store ptr %1286, ptr %1301, align 8, !tbaa !5
  br label %1505

1302:                                             ; preds = %3
  %1303 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 63
  %1304 = load i32, ptr %1303, align 8, !tbaa !98
  %1305 = load i32, ptr %2, align 8
  %1306 = icmp ult i32 %1305, 41
  br i1 %1306, label %1307, label %1313

1307:                                             ; preds = %1302
  %1308 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1309 = load ptr, ptr %1308, align 8
  %1310 = zext nneg i32 %1305 to i64
  %1311 = getelementptr i8, ptr %1309, i64 %1310
  %1312 = add nuw nsw i32 %1305, 8
  store i32 %1312, ptr %2, align 8
  br label %1317

1313:                                             ; preds = %1302
  %1314 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1315 = load ptr, ptr %1314, align 8
  %1316 = getelementptr i8, ptr %1315, i64 8
  store ptr %1316, ptr %1314, align 8
  br label %1317

1317:                                             ; preds = %1313, %1307
  %1318 = phi ptr [ %1311, %1307 ], [ %1315, %1313 ]
  %1319 = load ptr, ptr %1318, align 8
  store i32 %1304, ptr %1319, align 4, !tbaa !73
  %1320 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 64
  %1321 = load ptr, ptr %1320, align 8, !tbaa !44
  %1322 = load i32, ptr %2, align 8
  %1323 = icmp ult i32 %1322, 41
  br i1 %1323, label %1324, label %1330

1324:                                             ; preds = %1317
  %1325 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1326 = load ptr, ptr %1325, align 8
  %1327 = zext nneg i32 %1322 to i64
  %1328 = getelementptr i8, ptr %1326, i64 %1327
  %1329 = add nuw nsw i32 %1322, 8
  store i32 %1329, ptr %2, align 8
  br label %1334

1330:                                             ; preds = %1317
  %1331 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1332 = load ptr, ptr %1331, align 8
  %1333 = getelementptr i8, ptr %1332, i64 8
  store ptr %1333, ptr %1331, align 8
  br label %1334

1334:                                             ; preds = %1330, %1324
  %1335 = phi ptr [ %1328, %1324 ], [ %1332, %1330 ]
  %1336 = load ptr, ptr %1335, align 8
  store ptr %1321, ptr %1336, align 8, !tbaa !5
  br label %1505

1337:                                             ; preds = %3
  %1338 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 65
  %1339 = load i32, ptr %1338, align 8, !tbaa !99
  %1340 = load i32, ptr %2, align 8
  %1341 = icmp ult i32 %1340, 41
  br i1 %1341, label %1342, label %1348

1342:                                             ; preds = %1337
  %1343 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1344 = load ptr, ptr %1343, align 8
  %1345 = zext nneg i32 %1340 to i64
  %1346 = getelementptr i8, ptr %1344, i64 %1345
  %1347 = add nuw nsw i32 %1340, 8
  store i32 %1347, ptr %2, align 8
  br label %1352

1348:                                             ; preds = %1337
  %1349 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1350 = load ptr, ptr %1349, align 8
  %1351 = getelementptr i8, ptr %1350, i64 8
  store ptr %1351, ptr %1349, align 8
  br label %1352

1352:                                             ; preds = %1348, %1342
  %1353 = phi ptr [ %1346, %1342 ], [ %1350, %1348 ]
  %1354 = load ptr, ptr %1353, align 8
  store i32 %1339, ptr %1354, align 4, !tbaa !73
  %1355 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 66
  %1356 = load ptr, ptr %1355, align 8, !tbaa !45
  %1357 = load i32, ptr %2, align 8
  %1358 = icmp ult i32 %1357, 41
  br i1 %1358, label %1359, label %1365

1359:                                             ; preds = %1352
  %1360 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1361 = load ptr, ptr %1360, align 8
  %1362 = zext nneg i32 %1357 to i64
  %1363 = getelementptr i8, ptr %1361, i64 %1362
  %1364 = add nuw nsw i32 %1357, 8
  store i32 %1364, ptr %2, align 8
  br label %1369

1365:                                             ; preds = %1352
  %1366 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1367 = load ptr, ptr %1366, align 8
  %1368 = getelementptr i8, ptr %1367, i64 8
  store ptr %1368, ptr %1366, align 8
  br label %1369

1369:                                             ; preds = %1365, %1359
  %1370 = phi ptr [ %1363, %1359 ], [ %1367, %1365 ]
  %1371 = load ptr, ptr %1370, align 8
  store ptr %1356, ptr %1371, align 8, !tbaa !5
  br label %1505

1372:                                             ; preds = %3
  %1373 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 67
  %1374 = load i32, ptr %1373, align 8, !tbaa !90
  %1375 = load i32, ptr %2, align 8
  %1376 = icmp ult i32 %1375, 41
  br i1 %1376, label %1377, label %1383

1377:                                             ; preds = %1372
  %1378 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1379 = load ptr, ptr %1378, align 8
  %1380 = zext nneg i32 %1375 to i64
  %1381 = getelementptr i8, ptr %1379, i64 %1380
  %1382 = add nuw nsw i32 %1375, 8
  store i32 %1382, ptr %2, align 8
  br label %1387

1383:                                             ; preds = %1372
  %1384 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1385 = load ptr, ptr %1384, align 8
  %1386 = getelementptr i8, ptr %1385, i64 8
  store ptr %1386, ptr %1384, align 8
  br label %1387

1387:                                             ; preds = %1383, %1377
  %1388 = phi ptr [ %1381, %1377 ], [ %1385, %1383 ]
  %1389 = load ptr, ptr %1388, align 8
  store i32 %1374, ptr %1389, align 4, !tbaa !73
  br label %1505

1390:                                             ; preds = %3
  %1391 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 68
  %1392 = load i32, ptr %1391, align 4, !tbaa !91
  %1393 = load i32, ptr %2, align 8
  %1394 = icmp ult i32 %1393, 41
  br i1 %1394, label %1395, label %1401

1395:                                             ; preds = %1390
  %1396 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1397 = load ptr, ptr %1396, align 8
  %1398 = zext nneg i32 %1393 to i64
  %1399 = getelementptr i8, ptr %1397, i64 %1398
  %1400 = add nuw nsw i32 %1393, 8
  store i32 %1400, ptr %2, align 8
  br label %1405

1401:                                             ; preds = %1390
  %1402 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1403 = load ptr, ptr %1402, align 8
  %1404 = getelementptr i8, ptr %1403, i64 8
  store ptr %1404, ptr %1402, align 8
  br label %1405

1405:                                             ; preds = %1401, %1395
  %1406 = phi ptr [ %1399, %1395 ], [ %1403, %1401 ]
  %1407 = load ptr, ptr %1406, align 8
  store i32 %1392, ptr %1407, align 4, !tbaa !73
  br label %1505

1408:                                             ; preds = %3
  %1409 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 69
  %1410 = load ptr, ptr %1409, align 8, !tbaa !48
  %1411 = load i32, ptr %2, align 8
  %1412 = icmp ult i32 %1411, 41
  br i1 %1412, label %1413, label %1419

1413:                                             ; preds = %1408
  %1414 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1415 = load ptr, ptr %1414, align 8
  %1416 = zext nneg i32 %1411 to i64
  %1417 = getelementptr i8, ptr %1415, i64 %1416
  %1418 = add nuw nsw i32 %1411, 8
  store i32 %1418, ptr %2, align 8
  br label %1423

1419:                                             ; preds = %1408
  %1420 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1421 = load ptr, ptr %1420, align 8
  %1422 = getelementptr i8, ptr %1421, i64 8
  store ptr %1422, ptr %1420, align 8
  br label %1423

1423:                                             ; preds = %1419, %1413
  %1424 = phi ptr [ %1417, %1413 ], [ %1421, %1419 ]
  %1425 = load ptr, ptr %1424, align 8
  store ptr %1410, ptr %1425, align 8, !tbaa !5
  br label %1505

1426:                                             ; preds = %3
  %1427 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 70
  %1428 = load ptr, ptr %1427, align 8, !tbaa !49
  %1429 = load i32, ptr %2, align 8
  %1430 = icmp ult i32 %1429, 41
  br i1 %1430, label %1431, label %1437

1431:                                             ; preds = %1426
  %1432 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1433 = load ptr, ptr %1432, align 8
  %1434 = zext nneg i32 %1429 to i64
  %1435 = getelementptr i8, ptr %1433, i64 %1434
  %1436 = add nuw nsw i32 %1429, 8
  store i32 %1436, ptr %2, align 8
  br label %1441

1437:                                             ; preds = %1426
  %1438 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1439 = load ptr, ptr %1438, align 8
  %1440 = getelementptr i8, ptr %1439, i64 8
  store ptr %1440, ptr %1438, align 8
  br label %1441

1441:                                             ; preds = %1437, %1431
  %1442 = phi ptr [ %1435, %1431 ], [ %1439, %1437 ]
  %1443 = load ptr, ptr %1442, align 8
  store ptr %1428, ptr %1443, align 8, !tbaa !5
  br label %1505

1444:                                             ; preds = %3
  %1445 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 71
  %1446 = load float, ptr %1445, align 8, !tbaa !92
  %1447 = load i32, ptr %2, align 8
  %1448 = icmp ult i32 %1447, 41
  br i1 %1448, label %1449, label %1455

1449:                                             ; preds = %1444
  %1450 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1451 = load ptr, ptr %1450, align 8
  %1452 = zext nneg i32 %1447 to i64
  %1453 = getelementptr i8, ptr %1451, i64 %1452
  %1454 = add nuw nsw i32 %1447, 8
  store i32 %1454, ptr %2, align 8
  br label %1459

1455:                                             ; preds = %1444
  %1456 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1457 = load ptr, ptr %1456, align 8
  %1458 = getelementptr i8, ptr %1457, i64 8
  store ptr %1458, ptr %1456, align 8
  br label %1459

1459:                                             ; preds = %1455, %1449
  %1460 = phi ptr [ %1453, %1449 ], [ %1457, %1455 ]
  %1461 = load ptr, ptr %1460, align 8
  store float %1446, ptr %1461, align 4, !tbaa !101
  br label %1505

1462:                                             ; preds = %3
  %1463 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 72
  %1464 = load ptr, ptr %1463, align 8, !tbaa !50
  %1465 = load i32, ptr %2, align 8
  %1466 = icmp ult i32 %1465, 41
  br i1 %1466, label %1467, label %1473

1467:                                             ; preds = %1462
  %1468 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1469 = load ptr, ptr %1468, align 8
  %1470 = zext nneg i32 %1465 to i64
  %1471 = getelementptr i8, ptr %1469, i64 %1470
  %1472 = add nuw nsw i32 %1465, 8
  store i32 %1472, ptr %2, align 8
  br label %1477

1473:                                             ; preds = %1462
  %1474 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1475 = load ptr, ptr %1474, align 8
  %1476 = getelementptr i8, ptr %1475, i64 8
  store ptr %1476, ptr %1474, align 8
  br label %1477

1477:                                             ; preds = %1473, %1467
  %1478 = phi ptr [ %1471, %1467 ], [ %1475, %1473 ]
  %1479 = load ptr, ptr %1478, align 8
  store ptr %1464, ptr %1479, align 8, !tbaa !5
  br label %1505

1480:                                             ; preds = %3
  %1481 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 73
  %1482 = load ptr, ptr %1481, align 8, !tbaa !51
  %1483 = load i32, ptr %2, align 8
  %1484 = icmp ult i32 %1483, 41
  br i1 %1484, label %1485, label %1491

1485:                                             ; preds = %1480
  %1486 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %1487 = load ptr, ptr %1486, align 8
  %1488 = zext nneg i32 %1483 to i64
  %1489 = getelementptr i8, ptr %1487, i64 %1488
  %1490 = add nuw nsw i32 %1483, 8
  store i32 %1490, ptr %2, align 8
  br label %1495

1491:                                             ; preds = %1480
  %1492 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %1493 = load ptr, ptr %1492, align 8
  %1494 = getelementptr i8, ptr %1493, i64 8
  store ptr %1494, ptr %1492, align 8
  br label %1495

1495:                                             ; preds = %1491, %1485
  %1496 = phi ptr [ %1489, %1485 ], [ %1493, %1491 ]
  %1497 = load ptr, ptr %1496, align 8
  store ptr %1482, ptr %1497, align 8, !tbaa !5
  br label %1505

1498:                                             ; preds = %3
  %1499 = load ptr, ptr %0, align 8, !tbaa !9
  %1500 = icmp ugt i32 %1, 65535
  %1501 = select i1 %1500, ptr @.str.5, ptr @.str.6
  %1502 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #8
  %1503 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %1502, i64 0, i32 7
  %1504 = load ptr, ptr %1503, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13, ptr noundef %1499, ptr noundef nonnull %1501, ptr noundef %1504) #8
  br label %1505

1505:                                             ; preds = %1096, %1139, %834, %850, %866, %882, %818, %1498, %1495, %1477, %1459, %1441, %1423, %1405, %1387, %1369, %1334, %1299, %1264, %1246, %1228, %1210, %1175, %1157, %1078, %1060, %1042, %1007, %989, %971, %936, %918, %900, %815, %797, %779, %761, %726, %699, %681, %663, %611, %576, %541, %523, %505, %487, %469, %451, %433, %415, %397, %379, %361, %343, %325, %307, %289, %271, %253, %235, %217, %199, %181, %163, %145, %127, %109, %91, %73, %55, %37, %19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @TIFFNumberOfDirectories(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !102
  store i32 %4, ptr %2, align 4, !tbaa !73
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %10
  %7 = phi i16 [ %11, %10 ], [ 0, %1 ]
  %8 = call fastcc i32 @TIFFAdvanceDirectory(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null), !range !87
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = add i16 %7, 1
  %12 = load i32, ptr %2, align 4, !tbaa !73
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6, !llvm.loop !103

14:                                               ; preds = %6, %10, %1
  %15 = phi i16 [ 0, %1 ], [ %7, %6 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFAdvanceDirectory(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 4, !tbaa !73
  %11 = add i32 %10, 2
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %13 = load i32, ptr %12, align 8, !tbaa !104
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.20, ptr noundef %16) #8
  br label %91

17:                                               ; preds = %9
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds i8, ptr %20, i64 %18
  call void @_TIFFmemcpy(ptr noundef nonnull %4, ptr noundef %21, i32 noundef 2) #8
  %22 = load i32, ptr %5, align 8, !tbaa !17
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  call void @TIFFSwabShort(ptr noundef nonnull %4) #8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i16, ptr %4, align 2, !tbaa !64
  %28 = zext i16 %27 to i32
  %29 = mul nuw nsw i32 %28, 12
  %30 = add i32 %10, 2
  %31 = add i32 %30, %29
  %32 = icmp eq ptr %2, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 %31, ptr %2, align 4, !tbaa !73
  br label %34

34:                                               ; preds = %33, %26
  %35 = add i32 %31, 4
  %36 = load i32, ptr %12, align 8, !tbaa !104
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 8, !tbaa !9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.21, ptr noundef %39) #8
  br label %91

40:                                               ; preds = %34
  %41 = sext i32 %31 to i64
  %42 = load ptr, ptr %19, align 8, !tbaa !105
  %43 = getelementptr inbounds i8, ptr %42, i64 %41
  call void @_TIFFmemcpy(ptr noundef nonnull %1, ptr noundef %43, i32 noundef 4) #8
  %44 = load i32, ptr %5, align 8, !tbaa !17
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %91, label %47

47:                                               ; preds = %40
  call void @TIFFSwabLong(ptr noundef nonnull %1) #8
  br label %91

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %50 = load ptr, ptr %49, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %52 = load ptr, ptr %51, align 8, !tbaa !107
  %53 = load i32, ptr %1, align 4, !tbaa !73
  %54 = tail call i32 %50(ptr noundef %52, i32 noundef %53, i32 noundef 0) #8
  %55 = load i32, ptr %1, align 4, !tbaa !73
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  %59 = load ptr, ptr %58, align 8, !tbaa !108
  %60 = load ptr, ptr %51, align 8, !tbaa !107
  %61 = call i32 %59(ptr noundef %60, ptr noundef nonnull %4, i32 noundef 2) #8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %65, label %63

63:                                               ; preds = %57, %48
  %64 = load ptr, ptr %0, align 8, !tbaa !9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.20, ptr noundef %64) #8
  br label %91

65:                                               ; preds = %57
  %66 = load i32, ptr %5, align 8, !tbaa !17
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void @TIFFSwabShort(ptr noundef nonnull %4) #8
  br label %70

70:                                               ; preds = %69, %65
  %71 = icmp eq ptr %2, null
  %72 = load ptr, ptr %49, align 8, !tbaa !106
  %73 = load ptr, ptr %51, align 8, !tbaa !107
  %74 = load i16, ptr %4, align 2, !tbaa !64
  %75 = zext i16 %74 to i32
  %76 = mul nuw nsw i32 %75, 12
  %77 = call i32 %72(ptr noundef %73, i32 noundef %76, i32 noundef 1) #8
  br i1 %71, label %79, label %78

78:                                               ; preds = %70
  store i32 %77, ptr %2, align 4, !tbaa !73
  br label %79

79:                                               ; preds = %70, %78
  %80 = load ptr, ptr %58, align 8, !tbaa !108
  %81 = load ptr, ptr %51, align 8, !tbaa !107
  %82 = call i32 %80(ptr noundef %81, ptr noundef nonnull %1, i32 noundef 4) #8
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %0, align 8, !tbaa !9
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFAdvanceDirectory.module, ptr noundef nonnull @.str.21, ptr noundef %85) #8
  br label %91

86:                                               ; preds = %79
  %87 = load i32, ptr %5, align 8, !tbaa !17
  %88 = and i32 %87, 128
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @TIFFSwabLong(ptr noundef nonnull %1) #8
  br label %91

91:                                               ; preds = %86, %90, %15, %38, %47, %40, %84, %63
  %92 = phi i32 [ 0, %84 ], [ 0, %63 ], [ 0, %15 ], [ 0, %38 ], [ 1, %47 ], [ 1, %40 ], [ 1, %90 ], [ 1, %86 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFSetDirectory(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !102
  store i32 %5, ptr %3, align 4, !tbaa !73
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %19

9:                                                ; preds = %2, %13
  %10 = phi i16 [ %14, %13 ], [ %1, %2 ]
  %11 = call fastcc i32 @TIFFAdvanceDirectory(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null), !range !87
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = add i16 %10, -1
  %15 = icmp ne i16 %14, 0
  %16 = load i32, ptr %3, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %9, label %19, !llvm.loop !109

19:                                               ; preds = %13, %2
  %20 = phi i16 [ %1, %2 ], [ %14, %13 ]
  %21 = phi i32 [ %5, %2 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  store i32 %21, ptr %22, align 8, !tbaa !110
  %23 = xor i16 %20, -1
  %24 = add i16 %23, %1
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 12
  store i16 %24, ptr %25, align 4, !tbaa !111
  %26 = call i32 @TIFFReadDirectory(ptr noundef %0) #8
  br label %27

27:                                               ; preds = %9, %19
  %28 = phi i32 [ %26, %19 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %28
}

declare i32 @TIFFReadDirectory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFSetSubDirectory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  store i32 %1, ptr %3, align 8, !tbaa !110
  %4 = tail call i32 @TIFFReadDirectory(ptr noundef %0) #8
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFCurrentDirOffset(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !112
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @TIFFLastDirectory(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !110
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFUnlinkDirectory(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str) #8
  br label %67

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !102
  store i32 %11, ptr %3, align 4, !tbaa !73
  store i32 4, ptr %4, align 4, !tbaa !73
  %12 = zext i16 %1 to i32
  br label %13

13:                                               ; preds = %21, %9
  %14 = phi i16 [ %1, %9 ], [ %15, %21 ]
  %15 = add i16 %14, -1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4, !tbaa !73
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str.1, i32 noundef %12) #8
  br label %67

21:                                               ; preds = %17
  %22 = call fastcc i32 @TIFFAdvanceDirectory(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !87
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %13, !llvm.loop !113

24:                                               ; preds = %13
  %25 = call fastcc i32 @TIFFAdvanceDirectory(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null), !range !87
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  %32 = load i32, ptr %4, align 4, !tbaa !73
  %33 = call i32 %29(ptr noundef %31, i32 noundef %32, i32 noundef 0) #8
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !17
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  call void @TIFFSwabLong(ptr noundef nonnull %3) #8
  br label %39

39:                                               ; preds = %38, %27
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %41 = load ptr, ptr %40, align 8, !tbaa !114
  %42 = load ptr, ptr %30, align 8, !tbaa !107
  %43 = call i32 %41(ptr noundef %42, ptr noundef nonnull %3, i32 noundef 4) #8
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFUnlinkDirectory.module, ptr noundef nonnull @.str.2) #8
  br label %67

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  call void %48(ptr noundef %0) #8
  %49 = load i32, ptr %34, align 8, !tbaa !17
  %50 = and i32 %49, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %54 = load ptr, ptr %53, align 8, !tbaa !115
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  call void @_TIFFfree(ptr noundef nonnull %54) #8
  store ptr null, ptr %53, align 8, !tbaa !115
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  store i32 0, ptr %57, align 8, !tbaa !116
  br label %58

58:                                               ; preds = %56, %52, %46
  %59 = load i32, ptr %34, align 8, !tbaa !17
  %60 = and i32 %59, -4177
  store i32 %60, ptr %34, align 8, !tbaa !17
  call void @TIFFFreeDirectory(ptr noundef %0)
  %61 = call i32 @TIFFDefaultDirectory(ptr noundef %0)
  %62 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 4
  store i32 0, ptr %62, align 4, !tbaa !112
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  store i32 0, ptr %63, align 8, !tbaa !110
  %64 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  store i32 0, ptr %64, align 4, !tbaa !117
  %65 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 -1, ptr %65, align 8, !tbaa !118
  %66 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 -1, ptr %66, align 8, !tbaa !119
  br label %67

67:                                               ; preds = %21, %24, %58, %45, %20, %8
  %68 = phi i32 [ 0, %8 ], [ 0, %20 ], [ 1, %58 ], [ 0, %45 ], [ 0, %24 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %68
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @TIFFReassignTagToIgnore(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  switch i32 %0, label %36 [
    i32 0, label %8
    i32 1, label %3
    i32 2, label %35
  ]

3:                                                ; preds = %2
  %4 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4, !tbaa !73
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  br label %30

8:                                                ; preds = %2
  %9 = load i32, ptr @TIFFReassignTagToIgnore.tagcount, align 4, !tbaa !73
  %10 = icmp slt i32 %9, 94
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = zext nneg i32 %9 to i64
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %23, label %18, !llvm.loop !120

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %36, label %15

23:                                               ; preds = %15, %11
  %24 = add nsw i32 %9, 1
  store i32 %24, ptr @TIFFReassignTagToIgnore.tagcount, align 4, !tbaa !73
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %25
  store i32 %1, ptr %26, align 4, !tbaa !73
  br label %36

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %36, label %30, !llvm.loop !121

30:                                               ; preds = %6, %27
  %31 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %32 = getelementptr inbounds [95 x i32], ptr @TIFFReassignTagToIgnore.TIFFignoretags, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !73
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %36, label %27

35:                                               ; preds = %2
  store i32 0, ptr @TIFFReassignTagToIgnore.tagcount, align 4, !tbaa !73
  br label %36

36:                                               ; preds = %30, %27, %18, %3, %8, %2, %35, %23
  %37 = phi i32 [ 1, %35 ], [ 1, %23 ], [ 0, %2 ], [ 0, %8 ], [ 0, %3 ], [ 1, %18 ], [ 0, %27 ], [ 1, %30 ]
  ret i32 %37
}

declare void @_TIFFSwab16BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare void @_TIFFSwab32BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare void @_TIFFSwab64BitData(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @TIFFSetCompressionScheme(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @setExtraSamples(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp ult i32 %4, 41
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr i8, ptr %8, i64 %9
  %11 = add nuw nsw i32 %4, 8
  store i32 %11, ptr %1, align 8
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i64 8
  store ptr %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %10, %6 ], [ %14, %12 ]
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4, !tbaa !73
  %19 = and i32 %18, 65535
  %20 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 15
  %21 = load i16, ptr %20, align 2, !tbaa !56
  %22 = zext i16 %21 to i32
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %70, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %1, align 8
  %26 = icmp ult i32 %25, 41
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = zext nneg i32 %25 to i64
  %31 = getelementptr i8, ptr %29, i64 %30
  %32 = add nuw nsw i32 %25, 8
  store i32 %32, ptr %1, align 8
  br label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.__va_list_tag, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i64 8
  store ptr %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi ptr [ %31, %27 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %2, align 4, !tbaa !73
  %41 = icmp sgt i32 %40, 0
  %42 = icmp eq ptr %39, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %70, label %44

44:                                               ; preds = %37
  %45 = icmp sgt i32 %40, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = zext nneg i32 %40 to i64
  br label %51

48:                                               ; preds = %51
  %49 = add nuw nsw i64 %52, 1
  %50 = icmp eq i64 %49, %47
  br i1 %50, label %56, label %51, !llvm.loop !122

51:                                               ; preds = %46, %48
  %52 = phi i64 [ 0, %46 ], [ %49, %48 ]
  %53 = getelementptr inbounds i16, ptr %39, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !64
  %55 = icmp ugt i16 %54, 2
  br i1 %55, label %70, label %48

56:                                               ; preds = %48, %44
  %57 = trunc i32 %40 to i16
  %58 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 30
  store i16 %57, ptr %58, align 4, !tbaa !88
  %59 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 31
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void @_TIFFfree(ptr noundef nonnull %60) #8
  store ptr null, ptr %59, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %62, %56
  br i1 %42, label %70, label %64

64:                                               ; preds = %63
  %65 = shl i32 %40, 1
  %66 = and i32 %65, 131070
  %67 = tail call ptr @_TIFFmalloc(i32 noundef %66) #8
  store ptr %67, ptr %59, align 8, !tbaa !5
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void @_TIFFmemcpy(ptr noundef nonnull %67, ptr noundef nonnull %39, i32 noundef %66) #8
  br label %70

70:                                               ; preds = %51, %69, %64, %63, %37, %16
  %71 = phi i32 [ 0, %16 ], [ 0, %37 ], [ 1, %63 ], [ 1, %64 ], [ 1, %69 ], [ 0, %51 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @checkInkNamesString(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !56
  %6 = zext i16 %5 to i32
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %3
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = icmp ne i16 %5, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8, %25
  %13 = phi i1 [ %29, %25 ], [ %11, %8 ]
  %14 = phi ptr [ %27, %25 ], [ %2, %8 ]
  %15 = phi i32 [ %28, %25 ], [ %6, %8 ]
  %16 = load i8, ptr %14, align 1, !tbaa !123
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %21
  %19 = phi ptr [ %22, %21 ], [ %14, %12 ]
  %20 = icmp ult ptr %19, %10
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !123
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %18, !llvm.loop !124

25:                                               ; preds = %21, %12
  %26 = phi ptr [ %14, %12 ], [ %22, %21 ]
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = add nsw i32 %15, -1
  %29 = icmp sgt i32 %15, 1
  br i1 %29, label %12, label %30, !llvm.loop !125

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %6, %8 ], [ 0, %25 ]
  %32 = phi ptr [ %2, %8 ], [ %27, %25 ]
  %33 = phi i1 [ %11, %8 ], [ %29, %25 ]
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %2 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %18, %30
  %39 = phi i32 [ %31, %30 ], [ %15, %18 ]
  %40 = phi i1 [ %33, %30 ], [ %13, %18 ]
  %41 = phi i32 [ %37, %30 ], [ undef, %18 ]
  br i1 %40, label %42, label %46

42:                                               ; preds = %3, %38
  %43 = phi i32 [ %39, %38 ], [ %6, %3 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !9
  %45 = sub nsw i32 %6, %43
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %44, i32 noundef %6, i32 noundef %45) #8
  br label %46

46:                                               ; preds = %38, %42
  %47 = phi i32 [ 0, %42 ], [ %41, %38 ]
  ret i32 %47
}

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"tiff", !6, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !12, i64 32, !16, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !11, i64 536, !13, i64 540, !11, i64 544, !11, i64 548, !11, i64 552, !13, i64 556, !11, i64 560, !11, i64 564, !11, i64 568, !11, i64 572, !6, i64 576, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !6, i64 696, !6, i64 704, !11, i64 712, !11, i64 716, !6, i64 720, !11, i64 728, !6, i64 736, !11, i64 744, !6, i64 752, !11, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !11, i64 848, !6, i64 856, !6, i64 864, !6, i64 872}
!11 = !{!"int", !7, i64 0}
!12 = !{!"", !7, i64 0, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !11, i64 68, !13, i64 72, !13, i64 74, !14, i64 80, !14, i64 88, !15, i64 96, !15, i64 100, !13, i64 104, !13, i64 106, !15, i64 108, !15, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !13, i64 148, !6, i64 152, !14, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !11, i64 240, !11, i64 244, !6, i64 248, !6, i64 256, !13, i64 264, !6, i64 272, !6, i64 280, !7, i64 288, !13, i64 292, !6, i64 296, !6, i64 304, !6, i64 312, !7, i64 320, !13, i64 344, !13, i64 346, !7, i64 348, !11, i64 352, !6, i64 360, !6, i64 368, !11, i64 376, !6, i64 384, !11, i64 392, !6, i64 400, !11, i64 408, !6, i64 416, !11, i64 424, !11, i64 428, !6, i64 432, !6, i64 440, !15, i64 448, !6, i64 456, !6, i64 464}
!13 = !{!"short", !7, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!"", !13, i64 0, !13, i64 2, !11, i64 4}
!17 = !{!10, !11, i64 16}
!18 = !{!19, !7, i64 14}
!19 = !{!"", !11, i64 0, !13, i64 4, !13, i64 6, !11, i64 8, !13, i64 12, !7, i64 14, !7, i64 15, !6, i64 16}
!20 = !{!19, !6, i64 16}
!21 = !{!10, !6, i64 856}
!22 = !{!19, !13, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!10, !6, i64 864}
!26 = !{!12, !6, i64 168}
!27 = !{!12, !6, i64 176}
!28 = !{!12, !6, i64 184}
!29 = !{!12, !6, i64 192}
!30 = !{!12, !6, i64 200}
!31 = !{!12, !6, i64 208}
!32 = !{!12, !6, i64 216}
!33 = !{!12, !6, i64 224}
!34 = !{!12, !6, i64 232}
!35 = !{!12, !6, i64 152}
!36 = !{!12, !6, i64 272}
!37 = !{!12, !6, i64 280}
!38 = !{!12, !6, i64 360}
!39 = !{!12, !6, i64 368}
!40 = !{!12, !6, i64 296}
!41 = !{!12, !6, i64 304}
!42 = !{!12, !6, i64 312}
!43 = !{!12, !6, i64 384}
!44 = !{!12, !6, i64 400}
!45 = !{!12, !6, i64 416}
!46 = !{!12, !6, i64 248}
!47 = !{!12, !6, i64 256}
!48 = !{!12, !6, i64 432}
!49 = !{!12, !6, i64 440}
!50 = !{!12, !6, i64 456}
!51 = !{!12, !6, i64 464}
!52 = !{!12, !13, i64 62}
!53 = !{!12, !13, i64 52}
!54 = !{!12, !13, i64 60}
!55 = !{!12, !13, i64 64}
!56 = !{!12, !13, i64 66}
!57 = !{!12, !11, i64 68}
!58 = !{!12, !11, i64 36}
!59 = !{!12, !11, i64 40}
!60 = !{!12, !11, i64 44}
!61 = !{!12, !13, i64 104}
!62 = !{!12, !13, i64 54}
!63 = !{!12, !11, i64 32}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !13, i64 292}
!66 = !{!12, !13, i64 344}
!67 = !{!12, !13, i64 346}
!68 = !{!10, !6, i64 832}
!69 = !{!10, !6, i64 872}
!70 = !{!12, !11, i64 48}
!71 = !{!12, !11, i64 24}
!72 = !{!12, !11, i64 28}
!73 = !{!11, !11, i64 0}
!74 = !{!12, !13, i64 56}
!75 = !{!10, !6, i64 680}
!76 = !{!10, !11, i64 12}
!77 = !{!12, !13, i64 58}
!78 = !{!12, !13, i64 72}
!79 = !{!12, !13, i64 74}
!80 = !{!12, !14, i64 80}
!81 = !{!12, !14, i64 88}
!82 = !{!12, !15, i64 96}
!83 = !{!12, !15, i64 100}
!84 = !{!12, !13, i64 106}
!85 = !{!12, !15, i64 108}
!86 = !{!12, !15, i64 112}
!87 = !{i32 0, i32 2}
!88 = !{!12, !13, i64 148}
!89 = !{!12, !14, i64 160}
!90 = !{!12, !11, i64 424}
!91 = !{!12, !11, i64 428}
!92 = !{!12, !15, i64 448}
!93 = !{!12, !13, i64 264}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!12, !11, i64 352}
!97 = !{!12, !11, i64 376}
!98 = !{!12, !11, i64 392}
!99 = !{!12, !11, i64 408}
!100 = !{!14, !14, i64 0}
!101 = !{!15, !15, i64 0}
!102 = !{!10, !11, i64 508}
!103 = distinct !{!103, !95}
!104 = !{!10, !11, i64 760}
!105 = !{!10, !6, i64 752}
!106 = !{!10, !6, i64 808}
!107 = !{!10, !6, i64 784}
!108 = !{!10, !6, i64 792}
!109 = distinct !{!109, !95}
!110 = !{!10, !11, i64 24}
!111 = !{!10, !13, i64 540}
!112 = !{!10, !11, i64 20}
!113 = distinct !{!113, !95}
!114 = !{!10, !6, i64 800}
!115 = !{!10, !6, i64 720}
!116 = !{!10, !11, i64 744}
!117 = !{!10, !11, i64 548}
!118 = !{!10, !11, i64 536}
!119 = !{!10, !11, i64 544}
!120 = distinct !{!120, !95}
!121 = distinct !{!121, !95}
!122 = distinct !{!122, !95}
!123 = !{!7, !7, i64 0}
!124 = distinct !{!124, !95}
!125 = distinct !{!125, !95}
