; ModuleID = 'magick/utility.c'
source_filename = "magick/utility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"magick/utility.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"wmz\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"svgz\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s.%s.%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@Base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CAPTION\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"PANGO\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"FilenameTruncated\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Command line: %s\00", align 1
@GetMagickPageSize.page_size = internal unnamed_addr global i1 false, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c"MAGICK_SHRED_PASSES\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AcquireUniqueFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AcquireUniqueFileResource(ptr noundef %0) #21
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @close(i32 noundef %2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AcquireUniqueSymbolicLink(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #22
  %4 = tail call i32 @AcquireUniqueFileResource(ptr noundef %1) #21
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @open_utf8(ptr noundef %0, i32 noundef 0, i32 noundef 0) #23
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @close(i32 noundef %4) #21
  %11 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #21
  br label %44

12:                                               ; preds = %6
  %13 = call i32 @fstat(i32 noundef %7, ptr noundef nonnull %3) #21
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call fastcc i64 @MagickMin(i64 noundef %16, i64 noundef 262142) #23
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i64 [ %20, %19 ], [ 262142, %12 ]
  %23 = tail call ptr @AcquireQuantumMemory(i64 noundef %22, i64 noundef 1) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = tail call i32 @close(i32 noundef %7) #21
  %27 = tail call i32 @close(i32 noundef %4) #21
  %28 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #21
  br label %44

29:                                               ; preds = %21, %32
  %30 = tail call i64 @read(i32 noundef %7, ptr noundef nonnull %23, i64 noundef %22) #21
  %31 = icmp slt i64 %30, 1
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @write(i32 noundef %4, ptr noundef nonnull %23, i64 noundef %30) #21
  %34 = icmp eq i64 %33, %30
  br i1 %34, label %29, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @close(i32 noundef %4) #21
  %37 = tail call i32 @close(i32 noundef %7) #21
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #21
  %39 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #21
  br label %44

40:                                               ; preds = %29
  %41 = tail call i32 @close(i32 noundef %4) #21
  %42 = tail call i32 @close(i32 noundef %7) #21
  %43 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #21
  br label %44

44:                                               ; preds = %2, %40, %35, %25, %9
  %45 = phi i32 [ 0, %9 ], [ 0, %25 ], [ 1, %40 ], [ 0, %35 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #22
  ret i32 %45
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AppendImageFormat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, ptr noundef nonnull @.str.2, ptr noundef %1) #21
  %7 = load i8, ptr %0, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  %16 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %17 = call i64 @CopyMagickString(ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef 4096) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  br label %38

18:                                               ; preds = %12
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 6, ptr noundef nonnull %3) #23
  %19 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24, %21, %18
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4) #23
  %34 = call i64 @CopyMagickString(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef 4096) #21
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4) #23
  %35 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %38

36:                                               ; preds = %30
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4) #23
  %37 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef nonnull %0) #21
  br label %38

38:                                               ; preds = %2, %9, %36, %33, %15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetPathComponent(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1210, ptr noundef nonnull @.str.2, ptr noundef %0) #21
  %7 = load i8, ptr %0, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i8 0, ptr %2, align 1, !tbaa !5
  br label %179

10:                                               ; preds = %3
  %11 = tail call i64 @CopyMagickString(ptr noundef %2, ptr noundef nonnull %0, i64 noundef 4096) #21
  store i8 0, ptr %4, align 16, !tbaa !5
  br label %12

12:                                               ; preds = %52, %10
  %13 = phi ptr [ %2, %10 ], [ %54, %52 ]
  %14 = load i8, ptr %13, align 1, !tbaa !5
  switch i8 %14, label %52 [
    i8 0, label %55
    i8 37, label %15
    i8 58, label %25
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 91
  br i1 %18, label %19, label %52

19:                                               ; preds = %15, %22
  %20 = phi i8 [ %24, %22 ], [ 91, %15 ]
  %21 = phi ptr [ %23, %22 ], [ %16, %15 ]
  switch i8 %20, label %22 [
    i8 0, label %55
    i8 93, label %52
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !5
  br label %19, !llvm.loop !8

25:                                               ; preds = %12
  %26 = tail call fastcc i32 @IsPathDirectory(ptr noundef nonnull %0) #23, !range !10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = tail call i32 @IsPathAccessible(ptr noundef nonnull %0) #23, !range !11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = ptrtoint ptr %13 to i64
  %33 = ptrtoint ptr %2 to i64
  %34 = sub i64 %32, %33
  %35 = add i64 %34, 1
  %36 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %35) #21
  %37 = call i32 @IsMagickConflict(ptr noundef nonnull %4) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i8, ptr %2, align 1, !tbaa !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  store i8 0, ptr %5, align 16, !tbaa !5
  br label %105

43:                                               ; preds = %31
  store i8 0, ptr %4, align 16, !tbaa !5
  br label %55

44:                                               ; preds = %39, %44
  %45 = phi ptr [ %47, %44 ], [ %13, %39 ]
  %46 = phi ptr [ %49, %44 ], [ %2, %39 ]
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !5
  store i8 %48, ptr %46, align 1, !tbaa !5
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %44, !llvm.loop !12

52:                                               ; preds = %19, %12, %15, %25, %28
  %53 = phi ptr [ %13, %25 ], [ %13, %28 ], [ %13, %15 ], [ %13, %12 ], [ %21, %19 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  br label %12, !llvm.loop !13

55:                                               ; preds = %12, %19, %44, %43
  %56 = load i8, ptr %2, align 1, !tbaa !5
  store i8 0, ptr %5, align 16, !tbaa !5
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %105, label %58

58:                                               ; preds = %55
  %59 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = icmp eq i8 %62, 93
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 91) #25
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %64
  %68 = call i32 @IsPathAccessible(ptr noundef nonnull %0) #23, !range !11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %67, %76
  %71 = phi ptr [ %72, %76 ], [ %61, %67 ]
  %72 = getelementptr inbounds i8, ptr %71, i64 -1
  %73 = icmp ugt ptr %72, %2
  %74 = load i8, ptr %72, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 91
  br i1 %73, label %76, label %77

76:                                               ; preds = %70
  br i1 %75, label %78, label %70, !llvm.loop !14

77:                                               ; preds = %70
  br i1 %75, label %78, label %92

78:                                               ; preds = %76, %77
  %79 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %71, i64 noundef 4096) #21
  %80 = ptrtoint ptr %61 to i64
  %81 = ptrtoint ptr %72 to i64
  %82 = xor i64 %81, -1
  %83 = add i64 %82, %80
  %84 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %83
  store i8 0, ptr %84, align 1, !tbaa !5
  %85 = call i32 @IsSceneGeometry(ptr noundef nonnull %5, i32 noundef 0) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = call i32 @IsGeometry(ptr noundef nonnull %5) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i8 0, ptr %5, align 16, !tbaa !5
  br label %92

91:                                               ; preds = %87, %78
  store i8 0, ptr %72, align 1, !tbaa !5
  br label %92

92:                                               ; preds = %77, %91, %90, %67, %64, %58
  %93 = load i8, ptr %2, align 1, !tbaa !5
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %97 = getelementptr inbounds i8, ptr %2, i64 %96
  br label %98

98:                                               ; preds = %102, %95
  %99 = phi ptr [ %97, %95 ], [ %100, %102 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 -1
  %101 = icmp ugt ptr %100, %2
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8, ptr %100, align 1, !tbaa !5
  %104 = icmp eq i8 %103, 47
  br i1 %104, label %105, label %98, !llvm.loop !15

105:                                              ; preds = %98, %102, %42, %55, %92
  %106 = phi i8 [ 0, %92 ], [ 0, %55 ], [ 0, %42 ], [ %93, %102 ], [ %93, %98 ]
  %107 = phi ptr [ %2, %92 ], [ %2, %55 ], [ %2, %42 ], [ %100, %102 ], [ %100, %98 ]
  switch i32 %1, label %179 [
    i32 1, label %108
    i32 2, label %110
    i32 3, label %124
    i32 4, label %125
    i32 5, label %133
    i32 6, label %150
    i32 7, label %177
  ]

108:                                              ; preds = %105
  %109 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 4096) #21
  br label %179

110:                                              ; preds = %105
  %111 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %112 = getelementptr i8, ptr %2, i64 %111
  br label %113

113:                                              ; preds = %113, %110
  %114 = phi ptr [ %112, %110 ], [ %115, %113 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 -1
  %116 = icmp ule ptr %115, %2
  %117 = load i8, ptr %115, align 1, !tbaa !5
  %118 = and i8 %117, -2
  %119 = icmp eq i8 %118, 46
  %120 = select i1 %116, i1 true, i1 %119
  br i1 %120, label %121, label %113

121:                                              ; preds = %113
  %122 = icmp eq i8 %117, 46
  br i1 %122, label %123, label %179

123:                                              ; preds = %121
  store i8 0, ptr %115, align 1, !tbaa !5
  br label %179

124:                                              ; preds = %105
  store i8 0, ptr %107, align 1, !tbaa !5
  br label %179

125:                                              ; preds = %105
  %126 = load i8, ptr %107, align 1, !tbaa !5
  %127 = icmp eq i8 %126, 47
  br i1 %127, label %128, label %179

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, ptr %107, i64 1
  %130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %129) #25
  %131 = add i64 %130, 1
  %132 = call ptr @CopyMagickMemory(ptr noundef nonnull %2, ptr noundef nonnull %129, i64 noundef %131) #21
  br label %179

133:                                              ; preds = %105
  %134 = load i8, ptr %107, align 1, !tbaa !5
  %135 = icmp eq i8 %134, 47
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = getelementptr inbounds i8, ptr %107, i64 1
  %138 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %137, i64 noundef 4096) #21
  br label %139

139:                                              ; preds = %136, %133
  %140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %141 = getelementptr i8, ptr %2, i64 %140
  br label %142

142:                                              ; preds = %146, %139
  %143 = phi ptr [ %141, %139 ], [ %144, %146 ]
  %144 = getelementptr inbounds i8, ptr %143, i64 -1
  %145 = icmp ugt ptr %144, %2
  br i1 %145, label %146, label %179

146:                                              ; preds = %142
  %147 = load i8, ptr %144, align 1, !tbaa !5
  %148 = icmp eq i8 %147, 46
  br i1 %148, label %149, label %142, !llvm.loop !16

149:                                              ; preds = %146
  store i8 0, ptr %144, align 1, !tbaa !5
  br label %179

150:                                              ; preds = %105
  %151 = load i8, ptr %107, align 1, !tbaa !5
  %152 = icmp eq i8 %151, 47
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = getelementptr inbounds i8, ptr %107, i64 1
  %155 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %154, i64 noundef 4096) #21
  %156 = load i8, ptr %2, align 1, !tbaa !5
  br label %157

157:                                              ; preds = %153, %150
  %158 = phi i8 [ %156, %153 ], [ %106, %150 ]
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %157
  %161 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %162 = getelementptr inbounds i8, ptr %2, i64 %161
  br label %163

163:                                              ; preds = %167, %160
  %164 = phi ptr [ %162, %160 ], [ %165, %167 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 -1
  %166 = icmp ugt ptr %165, %2
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8, ptr %165, align 1, !tbaa !5
  %169 = icmp eq i8 %168, 46
  br i1 %169, label %170, label %163, !llvm.loop !17

170:                                              ; preds = %163, %167, %157
  %171 = phi ptr [ %2, %157 ], [ %165, %167 ], [ %165, %163 ]
  store i8 0, ptr %2, align 1, !tbaa !5
  %172 = load i8, ptr %171, align 1, !tbaa !5
  %173 = icmp eq i8 %172, 46
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = getelementptr inbounds i8, ptr %171, i64 1
  %176 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %175, i64 noundef 4096) #21
  br label %179

177:                                              ; preds = %105
  %178 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 4096) #21
  br label %179

179:                                              ; preds = %142, %108, %124, %177, %105, %123, %121, %128, %125, %149, %174, %170, %9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Base64Decode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 352, ptr noundef nonnull @.str.12) #21
  store i64 0, ptr %1, align 8, !tbaa !18
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %5 = lshr i64 %4, 2
  %6 = add nuw nsw i64 %5, 4
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 3) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %143, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %0, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %141, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @__ctype_b_loc() #26
  br label %14

14:                                               ; preds = %72, %12
  %15 = phi i8 [ %10, %12 ], [ %73, %72 ]
  %16 = phi i64 [ 0, %12 ], [ %74, %72 ]
  %17 = phi ptr [ %0, %12 ], [ %75, %72 ]
  %18 = phi i32 [ 0, %12 ], [ %76, %72 ]
  %19 = sext i8 %15 to i32
  %20 = load ptr, ptr %13, align 8, !tbaa !20
  %21 = zext i8 %15 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !22
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %14
  %27 = icmp eq i8 %15, 61
  br i1 %27, label %92, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @Base64, i32 %19, i64 65)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

33:                                               ; preds = %28
  switch i32 %18, label %66 [
    i32 0, label %34
    i32 1, label %39
    i32 2, label %50
    i32 3, label %77
  ]

34:                                               ; preds = %33
  %35 = ptrtoint ptr %29 to i64
  %36 = trunc i64 %35 to i8
  %37 = sub i8 %36, ptrtoint (ptr @Base64 to i8)
  %38 = shl i8 %37, 2
  br label %61

39:                                               ; preds = %33
  %40 = ptrtoint ptr %29 to i64
  %41 = sub i64 %40, ptrtoint (ptr @Base64 to i64)
  %42 = lshr i64 %41, 4
  %43 = add i64 %16, 1
  %44 = getelementptr inbounds i8, ptr %7, i64 %16
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = trunc i64 %42 to i8
  %47 = or i8 %45, %46
  store i8 %47, ptr %44, align 1, !tbaa !5
  %48 = trunc i64 %40 to i8
  %49 = shl i8 %48, 4
  br label %61

50:                                               ; preds = %33
  %51 = ptrtoint ptr %29 to i64
  %52 = sub i64 %51, ptrtoint (ptr @Base64 to i64)
  %53 = lshr i64 %52, 2
  %54 = add i64 %16, 1
  %55 = getelementptr inbounds i8, ptr %7, i64 %16
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = trunc i64 %53 to i8
  %58 = or i8 %56, %57
  store i8 %58, ptr %55, align 1, !tbaa !5
  %59 = trunc i64 %51 to i8
  %60 = shl i8 %59, 6
  br label %61

61:                                               ; preds = %50, %39, %34
  %62 = phi i64 [ %16, %34 ], [ %43, %39 ], [ %54, %50 ]
  %63 = phi i8 [ %38, %34 ], [ %49, %39 ], [ %60, %50 ]
  %64 = phi i32 [ 1, %34 ], [ 2, %39 ], [ 3, %50 ]
  %65 = getelementptr inbounds i8, ptr %7, i64 %62
  store i8 %63, ptr %65, align 1, !tbaa !5
  br label %66

66:                                               ; preds = %61, %33, %14
  %67 = phi i32 [ %18, %14 ], [ %18, %33 ], [ %64, %61 ]
  %68 = phi i64 [ %16, %14 ], [ %16, %33 ], [ %62, %61 ]
  %69 = getelementptr inbounds i8, ptr %17, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %66, %77
  %73 = phi i8 [ %70, %66 ], [ %86, %77 ]
  %74 = phi i64 [ %68, %66 ], [ %79, %77 ]
  %75 = phi ptr [ %69, %66 ], [ %85, %77 ]
  %76 = phi i32 [ %67, %66 ], [ 0, %77 ]
  br label %14, !llvm.loop !24

77:                                               ; preds = %33
  %78 = ptrtoint ptr %29 to i64
  %79 = add i64 %16, 1
  %80 = getelementptr inbounds i8, ptr %7, i64 %16
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = trunc i64 %78 to i8
  %83 = sub i8 %82, ptrtoint (ptr @Base64 to i8)
  %84 = or i8 %81, %83
  store i8 %84, ptr %80, align 1, !tbaa !5
  %85 = getelementptr inbounds i8, ptr %17, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !5
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %141, label %72

88:                                               ; preds = %66
  %89 = icmp eq i32 %67, 0
  br i1 %89, label %141, label %90

90:                                               ; preds = %88
  %91 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

92:                                               ; preds = %26
  %93 = getelementptr inbounds i8, ptr %17, i64 1
  switch i32 %18, label %141 [
    i32 0, label %97
    i32 1, label %97
    i32 2, label %94
    i32 3, label %117
  ]

94:                                               ; preds = %92
  %95 = load i8, ptr %93, align 1, !tbaa !5
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %113, label %99

97:                                               ; preds = %92, %92
  %98 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

99:                                               ; preds = %94, %107
  %100 = phi i8 [ %109, %107 ], [ %95, %94 ]
  %101 = phi ptr [ %108, %107 ], [ %93, %94 ]
  %102 = zext i8 %100 to i64
  %103 = getelementptr inbounds i16, ptr %20, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !22
  %105 = and i16 %104, 8192
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds i8, ptr %101, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %113, label %99, !llvm.loop !25

111:                                              ; preds = %99
  %112 = icmp eq i8 %100, 61
  br i1 %112, label %115, label %113

113:                                              ; preds = %107, %94, %111
  %114 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %101, i64 1
  br label %117

117:                                              ; preds = %92, %115
  %118 = phi ptr [ %93, %92 ], [ %116, %115 ]
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %135, label %125

121:                                              ; preds = %125
  %122 = getelementptr inbounds i8, ptr %127, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %135, label %125, !llvm.loop !26

125:                                              ; preds = %117, %121
  %126 = phi i8 [ %123, %121 ], [ %119, %117 ]
  %127 = phi ptr [ %122, %121 ], [ %118, %117 ]
  %128 = zext i8 %126 to i64
  %129 = getelementptr inbounds i16, ptr %20, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !22
  %131 = and i16 %130, 8192
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %121

133:                                              ; preds = %125
  %134 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

135:                                              ; preds = %121, %117
  %136 = getelementptr inbounds i8, ptr %7, i64 %16
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %143

141:                                              ; preds = %77, %9, %92, %135, %88
  %142 = phi i64 [ %16, %92 ], [ %16, %135 ], [ %68, %88 ], [ 0, %9 ], [ %79, %77 ]
  store i64 %142, ptr %1, align 8, !tbaa !18
  br label %143

143:                                              ; preds = %2, %141, %139, %133, %113, %97, %90, %31
  %144 = phi ptr [ null, %90 ], [ %7, %141 ], [ null, %133 ], [ null, %139 ], [ null, %113 ], [ null, %97 ], [ null, %31 ], [ null, %2 ]
  ret ptr %144
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Base64Encode(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, ptr noundef nonnull @.str.12) #21
  store i64 0, ptr %2, align 8, !tbaa !18
  %6 = udiv i64 %1, 3
  %7 = urem i64 %1, 3
  %8 = add nuw nsw i64 %6, 4
  %9 = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 4) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %106, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -2
  %14 = icmp ugt ptr %13, %0
  br i1 %14, label %15, label %56

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %52, %15 ], [ 0, %11 ]
  %17 = phi ptr [ %54, %15 ], [ %0, %11 ]
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = lshr i8 %18, 2
  %20 = zext nneg i8 %19 to i64
  %21 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %9, i64 %16
  store i8 %22, ptr %23, align 1, !tbaa !5
  %24 = load i8, ptr %17, align 1, !tbaa !5
  %25 = shl i8 %24, 4
  %26 = and i8 %25, 48
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = lshr i8 %28, 4
  %30 = or disjoint i8 %26, %29
  %31 = zext nneg i8 %30 to i64
  %32 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = getelementptr i8, ptr %23, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !5
  %35 = load i8, ptr %27, align 1, !tbaa !5
  %36 = shl i8 %35, 2
  %37 = and i8 %36, 60
  %38 = getelementptr inbounds i8, ptr %17, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = lshr i8 %39, 6
  %41 = or disjoint i8 %37, %40
  %42 = zext nneg i8 %41 to i64
  %43 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = or disjoint i64 %16, 3
  %46 = getelementptr i8, ptr %23, i64 2
  store i8 %44, ptr %46, align 1, !tbaa !5
  %47 = load i8, ptr %38, align 1, !tbaa !5
  %48 = and i8 %47, 63
  %49 = zext nneg i8 %48 to i64
  %50 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = add i64 %16, 4
  %53 = getelementptr inbounds i8, ptr %9, i64 %45
  store i8 %51, ptr %53, align 1, !tbaa !5
  %54 = getelementptr inbounds i8, ptr %17, i64 3
  %55 = icmp ult ptr %54, %13
  br i1 %55, label %15, label %56, !llvm.loop !27

56:                                               ; preds = %15, %11
  %57 = phi ptr [ %0, %11 ], [ %54, %15 ]
  %58 = phi i64 [ 0, %11 ], [ %52, %15 ]
  %59 = icmp eq i64 %7, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #22
  store i8 0, ptr %4, align 1, !tbaa !5
  %61 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !5
  %62 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %62, align 1, !tbaa !5
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ 0, %60 ], [ %69, %63 ]
  %65 = phi ptr [ %57, %60 ], [ %66, %63 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %65, align 1, !tbaa !5
  %68 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 %64
  store i8 %67, ptr %68, align 1, !tbaa !5
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp ult i64 %69, %7
  br i1 %70, label %63, label %71, !llvm.loop !28

71:                                               ; preds = %63
  %72 = load i8, ptr %4, align 1, !tbaa !5
  %73 = lshr i8 %72, 2
  %74 = zext nneg i8 %73 to i64
  %75 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = getelementptr inbounds i8, ptr %9, i64 %58
  store i8 %76, ptr %77, align 1, !tbaa !5
  %78 = shl i8 %72, 4
  %79 = and i8 %78, 48
  %80 = load i8, ptr %61, align 1, !tbaa !5
  %81 = lshr i8 %80, 4
  %82 = or disjoint i8 %81, %79
  %83 = zext nneg i8 %82 to i64
  %84 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = or disjoint i64 %58, 2
  %87 = getelementptr i8, ptr %77, i64 1
  store i8 %85, ptr %87, align 1, !tbaa !5
  %88 = icmp eq i64 %7, 1
  br i1 %88, label %98, label %89

89:                                               ; preds = %71
  %90 = shl i8 %80, 2
  %91 = and i8 %90, 60
  %92 = load i8, ptr %62, align 1, !tbaa !5
  %93 = lshr i8 %92, 6
  %94 = or disjoint i8 %93, %91
  %95 = zext nneg i8 %94 to i64
  %96 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !5
  br label %98

98:                                               ; preds = %71, %89
  %99 = phi i8 [ %97, %89 ], [ 61, %71 ]
  %100 = getelementptr inbounds i8, ptr %9, i64 %86
  store i8 %99, ptr %100, align 1
  %101 = add i64 %58, 4
  %102 = getelementptr i8, ptr %77, i64 3
  store i8 61, ptr %102, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #22
  br label %103

103:                                              ; preds = %98, %56
  %104 = phi i64 [ %101, %98 ], [ %58, %56 ]
  store i64 %104, ptr %2, align 8, !tbaa !18
  %105 = getelementptr inbounds i8, ptr %9, i64 %104
  store i8 0, ptr %105, align 1, !tbaa !5
  br label %106

106:                                              ; preds = %3, %103
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ChopPathComponents(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ 0, %2 ]
  tail call void @GetPathComponent(ptr noundef %0, i32 noundef 3, ptr noundef %0) #23
  %6 = add nuw nsw i64 %5, 1
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !29

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ExpandFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 126
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %0, i64 noundef 4096) #21
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  switch i8 %11, label %25 [
    i8 47, label %12
    i8 0, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.14, i64 noundef 4096) #21
  %14 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #21
  %15 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %22 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %21, i64 noundef 4096) #21
  %23 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #21
  %24 = call ptr @DestroyString(ptr noundef nonnull %21) #21
  br label %42

25:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  %26 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4096) #21
  %27 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i8 0, ptr %27, align 1, !tbaa !5
  br label %30

30:                                               ; preds = %29, %25
  %31 = call ptr @getpwnam(ptr noundef nonnull %3) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.passwd, ptr %31, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  %36 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %35, i64 noundef 4096) #21
  br i1 %28, label %41, label %37

37:                                               ; preds = %33
  %38 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i64 noundef 4096) #21
  %39 = getelementptr inbounds i8, ptr %27, i64 1
  %40 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %39, i64 noundef 4096) #21
  br label %41

41:                                               ; preds = %33, %37
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  br label %42

42:                                               ; preds = %41, %17, %20
  %43 = call i64 @CopyMagickString(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4096) #21
  br label %45

44:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  br label %45

45:                                               ; preds = %44, %5, %1, %42
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ExpandFilenames(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct._ExceptionInfo, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca %struct._ExceptionInfo, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 747, ptr noundef nonnull @.str.12) #21
  %16 = load i32, ptr %0, align 4, !tbaa !33
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 8) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  call void @GetExceptionInfo(ptr noundef nonnull %5) #21
  %22 = tail call ptr @__errno_location() #26
  %23 = load i32, ptr %22, align 4, !tbaa !33
  %24 = call ptr @GetExceptionMessage(i32 noundef %23) #21
  %25 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 753, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %24) #21
  %26 = call ptr @DestroyString(ptr noundef %24) #21
  call void @CatchException(ptr noundef nonnull %5) #21
  %27 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #27
  unreachable

28:                                               ; preds = %2
  store i8 0, ptr %3, align 16, !tbaa !5
  %29 = load i32, ptr %0, align 4, !tbaa !33
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %261

31:                                               ; preds = %28, %253
  %32 = phi ptr [ %256, %253 ], [ %19, %28 ]
  %33 = phi i64 [ %257, %253 ], [ 0, %28 ]
  %34 = phi i64 [ %254, %253 ], [ 0, %28 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #22
  %35 = load ptr, ptr %1, align 8, !tbaa !20
  %36 = getelementptr inbounds ptr, ptr %35, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !20
  store i8 0, ptr %7, align 16, !tbaa !5
  store i8 0, ptr %8, align 16, !tbaa !5
  store i8 0, ptr %6, align 16, !tbaa !5
  store i8 0, ptr %9, align 16, !tbaa !5
  store i64 0, ptr %4, align 8, !tbaa !18
  %38 = call ptr @ConstantString(ptr noundef %37) #21
  %39 = add nsw i64 %34, 1
  %40 = getelementptr inbounds ptr, ptr %32, i64 %34
  store ptr %38, ptr %40, align 8, !tbaa !20
  %41 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %37) #21
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %31
  %44 = add i64 %41, %33
  br label %45

45:                                               ; preds = %43, %52
  %46 = phi i64 [ %48, %52 ], [ %33, %43 ]
  %47 = phi i64 [ %57, %52 ], [ %39, %43 ]
  %48 = add nsw i64 %46, 1
  %49 = load i32, ptr %0, align 4, !tbaa !33
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %253, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = getelementptr inbounds ptr, ptr %53, i64 %48
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = call ptr @ConstantString(ptr noundef %55) #21
  %57 = add nsw i64 %47, 1
  %58 = getelementptr inbounds ptr, ptr %32, i64 %47
  store ptr %56, ptr %58, align 8, !tbaa !20
  %59 = icmp eq i64 %48, %44
  br i1 %59, label %253, label %45, !llvm.loop !34

60:                                               ; preds = %31
  %61 = load i8, ptr %37, align 1, !tbaa !5
  switch i8 %61, label %62 [
    i8 34, label %253
    i8 39, label %253
  ]

62:                                               ; preds = %60
  call void @GetPathComponent(ptr noundef nonnull %37, i32 noundef 4, ptr noundef nonnull %6) #23
  call void @GetPathComponent(ptr noundef nonnull %37, i32 noundef 1, ptr noundef nonnull %7) #23
  %63 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.19) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %253, label %65

65:                                               ; preds = %62
  %66 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.20) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %253, label %68

68:                                               ; preds = %65
  %69 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.21) #21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %253, label %71

71:                                               ; preds = %68
  %72 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.22) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %253, label %74

74:                                               ; preds = %71
  %75 = call i32 @IsGlob(ptr noundef nonnull %6) #21
  %76 = icmp eq i32 %75, 0
  %77 = load i8, ptr %37, align 1, !tbaa !5
  %78 = icmp eq i8 %77, 64
  br i1 %76, label %79, label %80

79:                                               ; preds = %74
  br i1 %78, label %86, label %253

80:                                               ; preds = %74
  br i1 %78, label %86, label %81

81:                                               ; preds = %80
  call void @GetPathComponent(ptr noundef nonnull %37, i32 noundef 3, ptr noundef nonnull %8) #23
  call void @GetPathComponent(ptr noundef nonnull %37, i32 noundef 7, ptr noundef nonnull %9) #23
  call void @ExpandFilename(ptr noundef nonnull %8) #23
  %82 = load i8, ptr %3, align 16, !tbaa !5
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = call ptr @getcwd(ptr noundef nonnull %3, i64 noundef 4095) #21
  br label %110

86:                                               ; preds = %79, %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  %87 = call ptr @AcquireExceptionInfo() #21
  %88 = getelementptr inbounds i8, ptr %37, i64 1
  %89 = call ptr @FileToString(ptr noundef nonnull %88, i64 noundef -1, ptr noundef %87) #21
  %90 = call ptr @DestroyExceptionInfo(ptr noundef %87) #21
  %91 = icmp eq ptr %89, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %86
  %93 = call ptr @StringToArgv(ptr noundef nonnull %89, ptr noundef nonnull %10) #21
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = call ptr @DestroyString(ptr noundef nonnull %89) #21
  %97 = load ptr, ptr %93, align 8, !tbaa !20
  %98 = call ptr @DestroyString(ptr noundef %97) #21
  store ptr %98, ptr %93, align 8, !tbaa !20
  %99 = load i32, ptr %10, align 4, !tbaa !33
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = add nsw i32 %99, -1
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr i8, ptr %93, i64 8
  %105 = shl nuw nsw i64 %103, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %93, ptr align 8 %104, i64 %105, i1 false), !tbaa !20
  br label %107

106:                                              ; preds = %86, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  br label %253

107:                                              ; preds = %95, %101
  %108 = sext i32 %99 to i64
  %109 = add nsw i64 %108, -1
  store i64 %109, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  br label %118

110:                                              ; preds = %81, %84
  %111 = load i8, ptr %8, align 16, !tbaa !5
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, ptr %3, ptr %8
  %114 = call ptr @ListFiles(ptr noundef nonnull %113, ptr noundef nonnull %6, ptr noundef nonnull %4) #23
  %115 = icmp eq ptr %114, null
  br i1 %115, label %253, label %116

116:                                              ; preds = %110
  %117 = load i64, ptr %4, align 8, !tbaa !18
  br label %118

118:                                              ; preds = %116, %107
  %119 = phi i64 [ %117, %116 ], [ %109, %107 ]
  %120 = phi ptr [ %114, %116 ], [ %93, %107 ]
  %121 = icmp sgt i64 %119, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118, %128
  %123 = phi i64 [ %129, %128 ], [ 0, %118 ]
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !20
  %126 = call fastcc i32 @IsPathDirectory(ptr noundef %125) #23, !range !10
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = add nuw nsw i64 %123, 1
  %130 = icmp eq i64 %129, %119
  br i1 %130, label %134, label %122, !llvm.loop !35

131:                                              ; preds = %122, %118
  %132 = phi i64 [ 0, %118 ], [ %123, %122 ]
  %133 = icmp eq i64 %132, %119
  br i1 %133, label %134, label %144

134:                                              ; preds = %128, %131
  br i1 %121, label %135, label %142

135:                                              ; preds = %134, %135
  %136 = phi i64 [ %140, %135 ], [ 0, %134 ]
  %137 = getelementptr inbounds ptr, ptr %120, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !20
  %139 = call ptr @DestroyString(ptr noundef %138) #21
  store ptr %139, ptr %137, align 8, !tbaa !20
  %140 = add nuw nsw i64 %136, 1
  %141 = icmp eq i64 %140, %119
  br i1 %141, label %142, label %135, !llvm.loop !36

142:                                              ; preds = %135, %134
  %143 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %120) #21
  br label %253

144:                                              ; preds = %131
  %145 = load i32, ptr %0, align 4, !tbaa !33
  %146 = sext i32 %145 to i64
  %147 = add i64 %34, 2
  %148 = add i64 %147, %119
  %149 = add i64 %148, %146
  %150 = call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %149, i64 noundef 8) #28
  %151 = icmp eq ptr %150, null
  br i1 %151, label %252, label %152

152:                                              ; preds = %144
  %153 = load i64, ptr %4, align 8, !tbaa !18
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %249

155:                                              ; preds = %152, %243
  %156 = phi i32 [ %246, %243 ], [ 1, %152 ]
  %157 = phi i64 [ %245, %243 ], [ %39, %152 ]
  %158 = phi i64 [ %247, %243 ], [ 0, %152 ]
  %159 = getelementptr inbounds ptr, ptr %120, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !20
  %161 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %160) #21
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %155
  %164 = call ptr @ConstantString(ptr noundef %160) #21
  %165 = getelementptr inbounds ptr, ptr %150, i64 %157
  store ptr %164, ptr %165, align 8, !tbaa !20
  %166 = add nsw i64 %157, 1
  %167 = add i64 %161, %158
  br label %168

168:                                              ; preds = %163, %173
  %169 = phi i64 [ %166, %163 ], [ %178, %173 ]
  %170 = phi i64 [ %158, %163 ], [ %171, %173 ]
  %171 = add nsw i64 %170, 1
  %172 = icmp eq i64 %171, %153
  br i1 %172, label %243, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds ptr, ptr %120, i64 %171
  %175 = load ptr, ptr %174, align 8, !tbaa !20
  %176 = call ptr @ConstantString(ptr noundef %175) #21
  %177 = getelementptr inbounds ptr, ptr %150, i64 %169
  store ptr %176, ptr %177, align 8, !tbaa !20
  %178 = add nsw i64 %169, 1
  %179 = icmp eq i64 %171, %167
  br i1 %179, label %243, label %168, !llvm.loop !37

180:                                              ; preds = %155
  %181 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef 4096) #21
  %182 = load i8, ptr %8, align 16, !tbaa !5
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, i64 noundef 4096) #21
  br label %186

186:                                              ; preds = %184, %180
  %187 = load ptr, ptr %159, align 8, !tbaa !20
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull %187, i64 noundef 4096) #21
  %191 = load ptr, ptr %159, align 8, !tbaa !20
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi ptr [ %191, %189 ], [ null, %186 ]
  %194 = call ptr @DestroyString(ptr noundef %193) #21
  store ptr %194, ptr %159, align 8, !tbaa !20
  %195 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %196 = icmp ugt i64 %195, 4094
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #22
  call void @GetExceptionInfo(ptr noundef nonnull %11) #21
  %198 = tail call ptr @__errno_location() #26
  %199 = load i32, ptr %198, align 4, !tbaa !33
  %200 = call ptr @GetExceptionMessage(i32 noundef %199) #21
  %201 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %200) #21
  %202 = call ptr @DestroyString(ptr noundef %200) #21
  call void @CatchException(ptr noundef nonnull %11) #21
  %203 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %11) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 11) #27
  unreachable

204:                                              ; preds = %192
  %205 = call fastcc i32 @IsPathDirectory(ptr noundef nonnull %6) #23, !range !10
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %243

207:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #22
  store i8 0, ptr %12, align 16, !tbaa !5
  %208 = load i8, ptr %7, align 16, !tbaa !5
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull %7, i64 noundef 4096) #21
  %212 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.24, i64 noundef 4096) #21
  br label %213

213:                                              ; preds = %210, %207
  %214 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull %6, i64 noundef 4096) #21
  %215 = load i8, ptr %9, align 16, !tbaa !5
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.25, i64 noundef 4096) #21
  %219 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull %9, i64 noundef 4096) #21
  %220 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.26, i64 noundef 4096) #21
  br label %221

221:                                              ; preds = %217, %213
  %222 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #25
  %223 = icmp ugt i64 %222, 4094
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #22
  call void @GetExceptionInfo(ptr noundef nonnull %13) #21
  %225 = tail call ptr @__errno_location() #26
  %226 = load i32, ptr %225, align 4, !tbaa !33
  %227 = call ptr @GetExceptionMessage(i32 noundef %226) #21
  %228 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 919, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %227) #21
  %229 = call ptr @DestroyString(ptr noundef %227) #21
  call void @CatchException(ptr noundef nonnull %13) #21
  %230 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %13) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 11) #27
  unreachable

231:                                              ; preds = %221
  %232 = icmp eq i32 %156, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %231
  %234 = add nsw i64 %157, -1
  %235 = getelementptr inbounds ptr, ptr %150, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !20
  %237 = call ptr @DestroyString(ptr noundef %236) #21
  store ptr %237, ptr %235, align 8, !tbaa !20
  br label %238

238:                                              ; preds = %233, %231
  %239 = phi i64 [ %234, %233 ], [ %157, %231 ]
  %240 = call ptr @ConstantString(ptr noundef nonnull %12) #21
  %241 = add nsw i64 %239, 1
  %242 = getelementptr inbounds ptr, ptr %150, i64 %239
  store ptr %240, ptr %242, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #22
  br label %243

243:                                              ; preds = %173, %168, %204, %238
  %244 = phi i64 [ %158, %238 ], [ %158, %204 ], [ %167, %173 ], [ %153, %168 ]
  %245 = phi i64 [ %241, %238 ], [ %157, %204 ], [ %178, %173 ], [ %169, %168 ]
  %246 = phi i32 [ 0, %238 ], [ %156, %204 ], [ %156, %168 ], [ %156, %173 ]
  %247 = add nsw i64 %244, 1
  %248 = icmp slt i64 %247, %153
  br i1 %248, label %155, label %249, !llvm.loop !38

249:                                              ; preds = %243, %152
  %250 = phi i64 [ %39, %152 ], [ %245, %243 ]
  %251 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %120) #21
  br label %253

252:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  br label %289

253:                                              ; preds = %45, %52, %142, %249, %60, %60, %71, %68, %65, %62, %79, %110, %106
  %254 = phi i64 [ %39, %106 ], [ %39, %110 ], [ %39, %79 ], [ %39, %62 ], [ %39, %65 ], [ %39, %68 ], [ %39, %71 ], [ %39, %60 ], [ %39, %60 ], [ %250, %249 ], [ %39, %142 ], [ %47, %45 ], [ %57, %52 ]
  %255 = phi i64 [ %33, %106 ], [ %33, %110 ], [ %33, %79 ], [ %33, %62 ], [ %33, %65 ], [ %33, %68 ], [ %33, %71 ], [ %33, %60 ], [ %33, %60 ], [ %33, %249 ], [ %33, %142 ], [ %48, %45 ], [ %44, %52 ]
  %256 = phi ptr [ %32, %106 ], [ %32, %110 ], [ %32, %79 ], [ %32, %62 ], [ %32, %65 ], [ %32, %68 ], [ %32, %71 ], [ %32, %60 ], [ %32, %60 ], [ %150, %249 ], [ %32, %142 ], [ %32, %52 ], [ %32, %45 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  %257 = add nsw i64 %255, 1
  %258 = load i32, ptr %0, align 4, !tbaa !33
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %257, %259
  br i1 %260, label %31, label %261, !llvm.loop !39

261:                                              ; preds = %253, %28
  %262 = phi i64 [ 0, %28 ], [ %254, %253 ]
  %263 = phi ptr [ %19, %28 ], [ %256, %253 ]
  %264 = getelementptr inbounds ptr, ptr %263, i64 %262
  store ptr null, ptr %264, align 8, !tbaa !20
  %265 = call i32 @IsEventLogging() #21
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %287, label %267

267:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  %268 = load ptr, ptr %263, align 8, !tbaa !20
  %269 = call ptr @AcquireString(ptr noundef %268) #21
  store ptr %269, ptr %14, align 8, !tbaa !20
  %270 = icmp sgt i64 %262, 1
  br i1 %270, label %271, label %282

271:                                              ; preds = %267, %271
  %272 = phi i64 [ %278, %271 ], [ 1, %267 ]
  %273 = call i32 @ConcatenateString(ptr noundef nonnull %14, ptr noundef nonnull @.str.27) #21
  %274 = getelementptr inbounds ptr, ptr %263, i64 %272
  %275 = load ptr, ptr %274, align 8, !tbaa !20
  %276 = call i32 @ConcatenateString(ptr noundef nonnull %14, ptr noundef %275) #21
  %277 = call i32 @ConcatenateString(ptr noundef nonnull %14, ptr noundef nonnull @.str.28) #21
  %278 = add nuw nsw i64 %272, 1
  %279 = icmp eq i64 %278, %262
  br i1 %279, label %280, label %271, !llvm.loop !40

280:                                              ; preds = %271
  %281 = load ptr, ptr %14, align 8, !tbaa !20
  br label %282

282:                                              ; preds = %280, %267
  %283 = phi ptr [ %281, %280 ], [ %269, %267 ]
  %284 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 944, ptr noundef nonnull @.str.29, ptr noundef %283) #21
  %285 = load ptr, ptr %14, align 8, !tbaa !20
  %286 = call ptr @DestroyString(ptr noundef %285) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  br label %287

287:                                              ; preds = %282, %261
  %288 = trunc i64 %262 to i32
  store i32 %288, ptr %0, align 4, !tbaa !33
  store ptr %263, ptr %1, align 8, !tbaa !20
  br label %289

289:                                              ; preds = %252, %287
  %290 = phi i32 [ 0, %252 ], [ 1, %287 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #22
  ret i32 %290
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsGlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ListFiles(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1582, ptr noundef nonnull @.str.2, ptr noundef %0) #21
  store i64 0, ptr %2, align 8, !tbaa !18
  %7 = tail call ptr @opendir(ptr noundef %0) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %3
  %10 = tail call dereferenceable_or_null(16384) ptr @AcquireQuantumMemory(i64 noundef 2048, i64 noundef 8) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @closedir(ptr noundef nonnull %7) #23
  br label %66

14:                                               ; preds = %9
  %15 = tail call dereferenceable_or_null(4377) ptr @AcquireMagickMemory(i64 noundef 4377) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  call void @GetExceptionInfo(ptr noundef nonnull %5) #21
  %18 = tail call ptr @__errno_location() #26
  %19 = load i32, ptr %18, align 4, !tbaa !33
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #21
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %20) #21
  %22 = call ptr @DestroyString(ptr noundef %20) #21
  call void @CatchException(ptr noundef nonnull %5) #21
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #27
  unreachable

24:                                               ; preds = %58, %30
  %25 = call fastcc i32 @MagickReadDirectory(ptr noundef nonnull %7, ptr noundef nonnull %4) #23
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %4, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dirent, ptr %27, i64 0, i32 4
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 46
  br i1 %33, label %24, label %34, !llvm.loop !41

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dirent, ptr %27, i64 0, i32 4
  %36 = tail call fastcc i32 @IsPathDirectory(ptr noundef nonnull %35) #23, !range !10
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @GlobExpression(ptr noundef nonnull %35, ptr noundef %1, i32 noundef 0) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41, !llvm.loop !41

41:                                               ; preds = %38, %34
  %42 = load i64, ptr %2, align 8, !tbaa !18
  %43 = icmp ult i64 %42, %57
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = shl i64 %57, 1
  %46 = tail call ptr @ResizeQuantumMemory(ptr noundef %56, i64 noundef %45, i64 noundef 8) #28
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %44, %41
  %49 = phi ptr [ %46, %44 ], [ %56, %41 ]
  %50 = phi i64 [ %45, %44 ], [ %57, %41 ]
  %51 = tail call ptr @AcquireString(ptr noundef nonnull %35) #21
  %52 = load i64, ptr %2, align 8, !tbaa !18
  %53 = getelementptr inbounds ptr, ptr %49, i64 %52
  store ptr %51, ptr %53, align 8, !tbaa !20
  %54 = add i64 %52, 1
  store i64 %54, ptr %2, align 8, !tbaa !18
  br label %55, !llvm.loop !41

55:                                               ; preds = %14, %48
  %56 = phi ptr [ %49, %48 ], [ %10, %14 ]
  %57 = phi i64 [ %50, %48 ], [ 2048, %14 ]
  br label %58

58:                                               ; preds = %55, %38
  br label %24

59:                                               ; preds = %44, %24
  %60 = phi ptr [ %56, %24 ], [ null, %44 ]
  %61 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #21
  %62 = tail call i32 @closedir(ptr noundef nonnull %7) #23
  %63 = icmp eq ptr %60, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %2, align 8, !tbaa !18
  tail call void @qsort(ptr noundef nonnull %60, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @FileCompare) #21
  br label %66

66:                                               ; preds = %59, %3, %64, %12
  %67 = phi ptr [ null, %12 ], [ %60, %64 ], [ null, %3 ], [ null, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %67
}

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @IsPathDirectory(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = call i32 @GetPathAttributes(ptr noundef nonnull %0, ptr noundef nonnull %2) #23, !range !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 16384
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %10, %7, %1, %4
  %17 = phi i32 [ 0, %4 ], [ 0, %1 ], [ -1, %7 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  ret i32 %17
}

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetExecutionPath(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  store i8 0, ptr %0, align 1, !tbaa !5
  %3 = tail call ptr @getcwd(ptr noundef nonnull %0, i64 noundef %1) #21
  %4 = tail call i32 @IsPathAccessible(ptr noundef nonnull %0) #23, !range !11
  ret i32 %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @IsPathAccessible(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = call i32 @GetPathAttributes(ptr noundef nonnull %0, ptr noundef nonnull %2) #23, !range !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 32768
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @access_utf8(ptr noundef nonnull %0) #23
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %15, %10, %7, %1, %4
  %20 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %7 ], [ 0, %10 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @GetMagickPageSize() local_unnamed_addr #13 {
  %1 = load i1, ptr @GetMagickPageSize.page_size, align 8
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i1 true, ptr @GetMagickPageSize.page_size, align 8
  br label %3

3:                                                ; preds = %0, %2
  ret i64 16384
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @GetPathAttributes(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @__errno_location() #26
  store i32 22, ptr %5, align 4, !tbaa !33
  br label %10

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @stat_utf8(ptr noundef nonnull %0, ptr noundef %1) #23
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %4 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stat_utf8(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @stat(ptr noundef %0, ptr noundef %1) #21
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsGeometry(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetPathComponents(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  store i64 1, ptr %1, align 8, !tbaa !18
  br label %7

7:                                                ; preds = %13, %6
  %8 = phi i64 [ 1, %6 ], [ %14, %13 ]
  %9 = phi ptr [ %0, %6 ], [ %15, %13 ]
  %10 = load i8, ptr %9, align 1, !tbaa !5
  switch i8 %10, label %13 [
    i8 0, label %16
    i8 47, label %11
  ]

11:                                               ; preds = %7
  %12 = add i64 %8, 1
  store i64 %12, ptr %1, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i64 [ %8, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  br label %7, !llvm.loop !45

16:                                               ; preds = %7
  %17 = add i64 %8, 1
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %1, align 8, !tbaa !18
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %30, label %60

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @GetExceptionInfo(ptr noundef nonnull %3) #21
  %24 = tail call ptr @__errno_location() #26
  %25 = load i32, ptr %24, align 4, !tbaa !33
  %26 = call ptr @GetExceptionMessage(i32 noundef %25) #21
  %27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1393, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %26) #21
  %28 = call ptr @DestroyString(ptr noundef %26) #21
  call void @CatchException(ptr noundef nonnull %3) #21
  %29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #27
  unreachable

30:                                               ; preds = %20, %53
  %31 = phi ptr [ %56, %53 ], [ %0, %20 ]
  %32 = phi i64 [ %57, %53 ], [ 0, %20 ]
  br label %33

33:                                               ; preds = %30, %36
  %34 = phi ptr [ %37, %36 ], [ %31, %30 ]
  %35 = load i8, ptr %34, align 1, !tbaa !5
  switch i8 %35, label %36 [
    i8 0, label %38
    i8 47, label %38
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br label %33, !llvm.loop !46

38:                                               ; preds = %33, %33
  %39 = ptrtoint ptr %34 to i64
  %40 = ptrtoint ptr %31 to i64
  %41 = sub i64 %39, %40
  %42 = add i64 %41, 4096
  %43 = tail call ptr @AcquireQuantumMemory(i64 noundef %42, i64 noundef 1) #24
  %44 = getelementptr inbounds ptr, ptr %18, i64 %32
  store ptr %43, ptr %44, align 8, !tbaa !20
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @GetExceptionInfo(ptr noundef nonnull %4) #21
  %47 = tail call ptr @__errno_location() #26
  %48 = load i32, ptr %47, align 4, !tbaa !33
  %49 = call ptr @GetExceptionMessage(i32 noundef %48) #21
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1403, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %49) #21
  %51 = call ptr @DestroyString(ptr noundef %49) #21
  call void @CatchException(ptr noundef nonnull %4) #21
  %52 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #27
  unreachable

53:                                               ; preds = %38
  %54 = add nsw i64 %41, 1
  %55 = tail call i64 @CopyMagickString(ptr noundef nonnull %43, ptr noundef nonnull %31, i64 noundef %54) #21
  %56 = getelementptr inbounds i8, ptr %34, i64 1
  %57 = add nuw nsw i64 %32, 1
  %58 = load i64, ptr %1, align 8, !tbaa !18
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %30, label %60, !llvm.loop !47

60:                                               ; preds = %53, %20
  %61 = phi i64 [ 0, %20 ], [ %57, %53 ]
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  store ptr null, ptr %62, align 8, !tbaa !20
  br label %63

63:                                               ; preds = %2, %60
  %64 = phi ptr [ %18, %60 ], [ null, %2 ]
  ret ptr %64
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @access_utf8(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call i32 @access(ptr noundef %0, i32 noundef 0) #21
  ret i32 %2
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @MagickReadDirectory(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @__errno_location() #26
  store i32 0, ptr %3, align 4, !tbaa !33
  %4 = tail call ptr @readdir(ptr noundef %0) #21
  store ptr %4, ptr %1, align 8, !tbaa !20
  %5 = load i32, ptr %3, align 4, !tbaa !33
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @FileCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !20
  %4 = load ptr, ptr %1, align 8, !tbaa !20
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @MagickDelay(i64 noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @MultilineCensus(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %5 = phi i64 [ %10, %9 ], [ 1, %1 ]
  %6 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %6, label %9 [
    i8 0, label %12
    i8 10, label %7
  ]

7:                                                ; preds = %3
  %8 = add i64 %5, 1
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i64 [ %8, %7 ], [ %5, %3 ]
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !48

12:                                               ; preds = %3, %1
  %13 = phi i64 [ 0, %1 ], [ %5, %3 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define hidden i32 @ShredFile(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %77, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.30) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @remove_utf8(ptr noundef nonnull %0) #23
  %12 = icmp ne i32 %11, -1
  br label %77

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %0, i32 noundef 129, i32 noundef 384) #23
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @remove_utf8(ptr noundef nonnull %0) #23
  br label %77

18:                                               ; preds = %13
  %19 = call i32 @fstat(i32 noundef %14, ptr noundef nonnull %2) #21
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call fastcc i64 @MagickMin(i64 noundef %22, i64 noundef 262142) #23
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i64 [ %26, %25 ], [ 262142, %18 ]
  %29 = tail call fastcc i32 @StringToInteger(ptr noundef nonnull %8) #23
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = icmp sgt i64 %22, 0
  br label %33

33:                                               ; preds = %31, %62
  %34 = phi i64 [ 0, %31 ], [ %64, %62 ]
  %35 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #21
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @AcquireRandomInfo() #21
  br i1 %32, label %39, label %62

39:                                               ; preds = %37
  %40 = icmp eq i64 %34, 0
  br label %41

41:                                               ; preds = %39, %56
  %42 = phi i64 [ 0, %39 ], [ %58, %56 ]
  %43 = tail call ptr @GetRandomKey(ptr noundef %38, i64 noundef %28) #21
  br i1 %40, label %44, label %45

44:                                               ; preds = %41
  tail call void @ResetStringInfo(ptr noundef %43) #21
  br label %45

45:                                               ; preds = %44, %41
  %46 = tail call ptr @GetStringInfoDatum(ptr noundef %43) #21
  %47 = sub nsw i64 %22, %42
  %48 = tail call fastcc i64 @MagickMin(i64 noundef %28, i64 noundef %47) #23
  %49 = tail call i64 @write(i32 noundef %14, ptr noundef %46, i64 noundef %48) #21
  %50 = tail call ptr @DestroyStringInfo(ptr noundef %43) #21
  %51 = icmp slt i64 %49, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = tail call ptr @__errno_location() #26
  %54 = load i32, ptr %53, align 4, !tbaa !33
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %45
  %57 = phi i64 [ %49, %45 ], [ 0, %52 ]
  %58 = add nuw nsw i64 %57, %42
  %59 = icmp slt i64 %58, %22
  br i1 %59, label %41, label %62, !llvm.loop !49

60:                                               ; preds = %52
  %61 = tail call ptr @DestroyRandomInfo(ptr noundef %38) #21
  br label %68

62:                                               ; preds = %56, %37
  %63 = tail call ptr @DestroyRandomInfo(ptr noundef %38) #21
  %64 = add nuw nsw i64 %34, 1
  %65 = tail call fastcc i32 @StringToInteger(ptr noundef nonnull %8) #23
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %33, label %68, !llvm.loop !50

68:                                               ; preds = %62, %33, %27, %60
  %69 = phi i64 [ %34, %60 ], [ 0, %27 ], [ %64, %62 ], [ %34, %33 ]
  %70 = tail call i32 @close(i32 noundef %14) #21
  %71 = tail call fastcc i32 @remove_utf8(ptr noundef nonnull %0) #23
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = tail call fastcc i32 @StringToInteger(ptr noundef nonnull %8) #23
  %75 = sext i32 %74 to i64
  %76 = icmp sge i64 %69, %75
  br label %77

77:                                               ; preds = %68, %10, %1, %4, %73, %16
  %78 = phi i1 [ false, %16 ], [ %76, %73 ], [ false, %4 ], [ false, %1 ], [ %12, %10 ], [ false, %68 ]
  %79 = zext i1 %78 to i32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  ret i32 %79
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @remove_utf8(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call i32 @unlink(ptr noundef %0) #21
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i32 @StringToInteger(ptr noalias nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #21
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @SystemCommand(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  ret i32 -1
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize allocsize(0,1) }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize willreturn memory(none) }
attributes #27 = { noreturn nounwind optsize }
attributes #28 = { nounwind optsize allocsize(1,2) }
attributes #29 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i32 -1, i32 2}
!11 = !{i32 0, i32 2}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = !{!31, !21, i64 32}
!31 = !{!"passwd", !21, i64 0, !21, i64 8, !32, i64 16, !32, i64 20, !21, i64 24, !21, i64 32, !21, i64 40}
!32 = !{!"int", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!43, !32, i64 24}
!43 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !44, i64 72, !44, i64 88, !44, i64 104, !6, i64 120}
!44 = !{!"timespec", !19, i64 0, !19, i64 8}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
