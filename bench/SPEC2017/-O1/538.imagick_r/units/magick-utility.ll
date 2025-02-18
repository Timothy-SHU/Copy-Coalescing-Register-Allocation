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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AcquireUniqueFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AcquireUniqueFileResource(ptr noundef %0) #20
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @close(i32 noundef %2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AcquireUniqueSymbolicLink(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #20
  %4 = tail call i32 @AcquireUniqueFileResource(ptr noundef %1) #20
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #20
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @close(i32 noundef %4) #20
  %11 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #20
  br label %42

12:                                               ; preds = %6
  %13 = call i32 @fstat(i32 noundef %7, ptr noundef nonnull %3) #20
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = select i1 %14, i1 %17, i1 false
  %19 = tail call i64 @llvm.umin.i64(i64 %16, i64 262142)
  %20 = select i1 %18, i64 %19, i64 262142
  %21 = tail call ptr @AcquireQuantumMemory(i64 noundef %20, i64 noundef 1) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = tail call i32 @close(i32 noundef %7) #20
  %25 = tail call i32 @close(i32 noundef %4) #20
  %26 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #20
  br label %42

27:                                               ; preds = %12, %30
  %28 = tail call i64 @read(i32 noundef %7, ptr noundef nonnull %21, i64 noundef %20) #20
  %29 = icmp slt i64 %28, 1
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @write(i32 noundef %4, ptr noundef nonnull %21, i64 noundef %28) #20
  %32 = icmp eq i64 %31, %28
  br i1 %32, label %27, label %33, !llvm.loop !34

33:                                               ; preds = %30
  %34 = tail call i32 @close(i32 noundef %4) #20
  %35 = tail call i32 @close(i32 noundef %7) #20
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #20
  %37 = tail call i32 @RelinquishUniqueFileResource(ptr noundef %1) #20
  br label %42

38:                                               ; preds = %27
  %39 = tail call i32 @close(i32 noundef %4) #20
  %40 = tail call i32 @close(i32 noundef %7) #20
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #20
  br label %42

42:                                               ; preds = %2, %38, %33, %23, %9
  %43 = phi i32 [ 0, %9 ], [ 0, %23 ], [ 1, %38 ], [ 0, %33 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #20
  ret i32 %43
}

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AppendImageFormat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #20
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, ptr noundef nonnull @.str.2, ptr noundef %1) #20
  %7 = load i8, ptr %0, align 1, !tbaa !36
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1, !tbaa !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #20
  %16 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %17 = call i64 @CopyMagickString(ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef 4096) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #20
  br label %38

18:                                               ; preds = %12
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 6, ptr noundef nonnull %3)
  %19 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 @LocaleCompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24, %21, %18
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4)
  %34 = call i64 @CopyMagickString(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef 4096) #20
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4)
  %35 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  br label %38

36:                                               ; preds = %30
  call void @GetPathComponent(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %4)
  %37 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %1, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef nonnull %0) #20
  br label %38

38:                                               ; preds = %2, %9, %36, %33, %15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #20
  ret void
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GetPathComponent(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #20
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1210, ptr noundef nonnull @.str.2, ptr noundef %0) #20
  %10 = load i8, ptr %0, align 1, !tbaa !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, ptr %2, align 1, !tbaa !36
  br label %220

13:                                               ; preds = %3
  %14 = tail call i64 @CopyMagickString(ptr noundef %2, ptr noundef nonnull %0, i64 noundef 4096) #20
  store i8 0, ptr %7, align 16, !tbaa !36
  %15 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  br label %16

16:                                               ; preds = %76, %13
  %17 = phi ptr [ %2, %13 ], [ %77, %76 ]
  %18 = load i8, ptr %17, align 1, !tbaa !36
  switch i8 %18, label %28 [
    i8 0, label %78
    i8 37, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !36
  %22 = icmp eq i8 %21, 91
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %26
  %24 = phi ptr [ %27, %26 ], [ %20, %19 ]
  %25 = load i8, ptr %24, align 1, !tbaa !36
  switch i8 %25, label %26 [
    i8 0, label %78
    i8 93, label %28
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  br label %23, !llvm.loop !39

28:                                               ; preds = %23, %16, %19
  %29 = phi ptr [ %17, %19 ], [ %17, %16 ], [ %24, %23 ]
  %30 = load i8, ptr %29, align 1, !tbaa !36
  %31 = icmp eq i8 %30, 58
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #20
  %33 = load i8, ptr %0, align 1, !tbaa !36
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %32
  %36 = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %6) #20
  %37 = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #20
  br i1 %37, label %76, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #20
  %39 = load i8, ptr %0, align 1, !tbaa !36
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %5) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, ptr %15, align 8, !tbaa !41
  %46 = and i32 %45, 61440
  %47 = icmp eq i32 %46, 32768
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #20
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %38, %41, %44, %48
  %53 = phi i32 [ 0, %38 ], [ 0, %41 ], [ 0, %44 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = ptrtoint ptr %29 to i64
  %57 = ptrtoint ptr %2 to i64
  %58 = sub i64 %56, %57
  %59 = add i64 %58, 1
  %60 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %59) #20
  %61 = call i32 @IsMagickConflict(ptr noundef nonnull %7) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8, ptr %2, align 1, !tbaa !36
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %78, label %67

66:                                               ; preds = %55
  store i8 0, ptr %7, align 16, !tbaa !36
  br label %78

67:                                               ; preds = %63, %67
  %68 = phi ptr [ %70, %67 ], [ %29, %63 ]
  %69 = phi ptr [ %72, %67 ], [ %2, %63 ]
  %70 = getelementptr inbounds i8, ptr %68, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !36
  store i8 %71, ptr %69, align 1, !tbaa !36
  %72 = getelementptr inbounds i8, ptr %69, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !36
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %67, !llvm.loop !46

75:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #20
  br label %76

76:                                               ; preds = %75, %28, %35, %52
  %77 = getelementptr inbounds i8, ptr %29, i64 1
  br label %16, !llvm.loop !47

78:                                               ; preds = %16, %23, %67, %63, %66
  store i8 0, ptr %8, align 16, !tbaa !36
  %79 = load i8, ptr %2, align 1, !tbaa !36
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %83 = getelementptr inbounds i8, ptr %2, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 -1
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi ptr [ %84, %81 ], [ %2, %78 ]
  %87 = load i8, ptr %86, align 1, !tbaa !36
  %88 = icmp eq i8 %87, 93
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 91) #22
  %91 = icmp eq ptr %90, null
  br i1 %91, label %134, label %92

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #20
  %93 = load i8, ptr %0, align 1, !tbaa !36
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !41
  %101 = and i32 %100, 61440
  %102 = icmp eq i32 %101, 32768
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #20
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  br label %107

107:                                              ; preds = %92, %95, %98, %103
  %108 = phi i32 [ 0, %92 ], [ 0, %95 ], [ 0, %98 ], [ %106, %103 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %107, %114
  %111 = phi ptr [ %112, %114 ], [ %86, %107 ]
  %112 = getelementptr inbounds i8, ptr %111, i64 -1
  %113 = icmp ugt ptr %112, %2
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i8, ptr %112, align 1, !tbaa !36
  %116 = icmp eq i8 %115, 91
  br i1 %116, label %117, label %110, !llvm.loop !48

117:                                              ; preds = %114, %110
  %118 = load i8, ptr %112, align 1, !tbaa !36
  %119 = icmp eq i8 %118, 91
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %111, i64 noundef 4096) #20
  %122 = ptrtoint ptr %86 to i64
  %123 = ptrtoint ptr %112 to i64
  %124 = xor i64 %123, -1
  %125 = add i64 %124, %122
  %126 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 %125
  store i8 0, ptr %126, align 1, !tbaa !36
  %127 = call i32 @IsSceneGeometry(ptr noundef nonnull %8, i32 noundef 0) #20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = call i32 @IsGeometry(ptr noundef nonnull %8) #20
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i8 0, ptr %8, align 16, !tbaa !36
  br label %134

133:                                              ; preds = %129, %120
  store i8 0, ptr %112, align 1, !tbaa !36
  br label %134

134:                                              ; preds = %117, %133, %132, %107, %89, %85
  %135 = load i8, ptr %2, align 1, !tbaa !36
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %139 = getelementptr inbounds i8, ptr %2, i64 %138
  br label %140

140:                                              ; preds = %144, %137
  %141 = phi ptr [ %139, %137 ], [ %142, %144 ]
  %142 = getelementptr inbounds i8, ptr %141, i64 -1
  %143 = icmp ugt ptr %142, %2
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8, ptr %142, align 1, !tbaa !36
  %146 = icmp eq i8 %145, 47
  br i1 %146, label %147, label %140, !llvm.loop !49

147:                                              ; preds = %140, %144, %134
  %148 = phi ptr [ %2, %134 ], [ %142, %144 ], [ %142, %140 ]
  switch i32 %1, label %220 [
    i32 1, label %149
    i32 2, label %151
    i32 3, label %166
    i32 4, label %167
    i32 5, label %175
    i32 6, label %192
    i32 7, label %218
  ]

149:                                              ; preds = %147
  %150 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %7, i64 noundef 4096) #20
  br label %220

151:                                              ; preds = %147
  %152 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %153 = getelementptr i8, ptr %2, i64 %152
  br label %154

154:                                              ; preds = %158, %151
  %155 = phi ptr [ %153, %151 ], [ %156, %158 ]
  %156 = getelementptr inbounds i8, ptr %155, i64 -1
  %157 = icmp ugt ptr %156, %2
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i8, ptr %156, align 1, !tbaa !36
  %160 = and i8 %159, -2
  %161 = icmp eq i8 %160, 46
  br i1 %161, label %162, label %154

162:                                              ; preds = %158, %154
  %163 = load i8, ptr %156, align 1, !tbaa !36
  %164 = icmp eq i8 %163, 46
  br i1 %164, label %165, label %220

165:                                              ; preds = %162
  store i8 0, ptr %156, align 1, !tbaa !36
  br label %220

166:                                              ; preds = %147
  store i8 0, ptr %148, align 1, !tbaa !36
  br label %220

167:                                              ; preds = %147
  %168 = load i8, ptr %148, align 1, !tbaa !36
  %169 = icmp eq i8 %168, 47
  br i1 %169, label %170, label %220

170:                                              ; preds = %167
  %171 = getelementptr inbounds i8, ptr %148, i64 1
  %172 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %171) #22
  %173 = add i64 %172, 1
  %174 = call ptr @CopyMagickMemory(ptr noundef nonnull %2, ptr noundef nonnull %171, i64 noundef %173) #20
  br label %220

175:                                              ; preds = %147
  %176 = load i8, ptr %148, align 1, !tbaa !36
  %177 = icmp eq i8 %176, 47
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = getelementptr inbounds i8, ptr %148, i64 1
  %180 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %179, i64 noundef 4096) #20
  br label %181

181:                                              ; preds = %178, %175
  %182 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %183 = getelementptr i8, ptr %2, i64 %182
  br label %184

184:                                              ; preds = %188, %181
  %185 = phi ptr [ %183, %181 ], [ %186, %188 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 -1
  %187 = icmp ugt ptr %186, %2
  br i1 %187, label %188, label %220

188:                                              ; preds = %184
  %189 = load i8, ptr %186, align 1, !tbaa !36
  %190 = icmp eq i8 %189, 46
  br i1 %190, label %191, label %184, !llvm.loop !50

191:                                              ; preds = %188
  store i8 0, ptr %186, align 1, !tbaa !36
  br label %220

192:                                              ; preds = %147
  %193 = load i8, ptr %148, align 1, !tbaa !36
  %194 = icmp eq i8 %193, 47
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = getelementptr inbounds i8, ptr %148, i64 1
  %197 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %196, i64 noundef 4096) #20
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i8, ptr %2, align 1, !tbaa !36
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %198
  %202 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %203 = getelementptr inbounds i8, ptr %2, i64 %202
  br label %204

204:                                              ; preds = %208, %201
  %205 = phi ptr [ %203, %201 ], [ %206, %208 ]
  %206 = getelementptr inbounds i8, ptr %205, i64 -1
  %207 = icmp ugt ptr %206, %2
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i8, ptr %206, align 1, !tbaa !36
  %210 = icmp eq i8 %209, 46
  br i1 %210, label %211, label %204, !llvm.loop !51

211:                                              ; preds = %204, %208, %198
  %212 = phi ptr [ %2, %198 ], [ %206, %208 ], [ %206, %204 ]
  store i8 0, ptr %2, align 1, !tbaa !36
  %213 = load i8, ptr %212, align 1, !tbaa !36
  %214 = icmp eq i8 %213, 46
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = getelementptr inbounds i8, ptr %212, i64 1
  %217 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %216, i64 noundef 4096) #20
  br label %220

218:                                              ; preds = %147
  %219 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %8, i64 noundef 4096) #20
  br label %220

220:                                              ; preds = %184, %149, %166, %218, %147, %165, %162, %170, %167, %191, %215, %211, %12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Base64Decode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 352, ptr noundef nonnull @.str.12) #20
  store i64 0, ptr %1, align 8, !tbaa !52
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %5 = lshr i64 %4, 2
  %6 = add nuw nsw i64 %5, 4
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 3) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %142, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %0, align 1, !tbaa !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %80, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @__ctype_b_loc() #23
  br label %14

14:                                               ; preds = %12, %72
  %15 = phi i8 [ %10, %12 ], [ %76, %72 ]
  %16 = phi i64 [ 0, %12 ], [ %74, %72 ]
  %17 = phi ptr [ %0, %12 ], [ %75, %72 ]
  %18 = phi i32 [ 0, %12 ], [ %73, %72 ]
  %19 = sext i8 %15 to i32
  %20 = load ptr, ptr %13, align 8, !tbaa !53
  %21 = zext i8 %15 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !55
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %14
  %27 = icmp eq i8 %15, 61
  br i1 %27, label %85, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @Base64, i32 %19, i64 65)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

33:                                               ; preds = %28
  switch i32 %18, label %72 [
    i32 0, label %34
    i32 1, label %40
    i32 2, label %52
    i32 3, label %64
  ]

34:                                               ; preds = %33
  %35 = ptrtoint ptr %29 to i64
  %36 = trunc i64 %35 to i8
  %37 = sub i8 %36, ptrtoint (ptr @Base64 to i8)
  %38 = shl i8 %37, 2
  %39 = getelementptr inbounds i8, ptr %7, i64 %16
  store i8 %38, ptr %39, align 1, !tbaa !36
  br label %72

40:                                               ; preds = %33
  %41 = ptrtoint ptr %29 to i64
  %42 = sub i64 %41, ptrtoint (ptr @Base64 to i64)
  %43 = lshr i64 %42, 4
  %44 = add i64 %16, 1
  %45 = getelementptr inbounds i8, ptr %7, i64 %16
  %46 = load i8, ptr %45, align 1, !tbaa !36
  %47 = trunc i64 %43 to i8
  %48 = or i8 %46, %47
  store i8 %48, ptr %45, align 1, !tbaa !36
  %49 = trunc i64 %41 to i8
  %50 = shl i8 %49, 4
  %51 = getelementptr inbounds i8, ptr %7, i64 %44
  store i8 %50, ptr %51, align 1, !tbaa !36
  br label %72

52:                                               ; preds = %33
  %53 = ptrtoint ptr %29 to i64
  %54 = sub i64 %53, ptrtoint (ptr @Base64 to i64)
  %55 = lshr i64 %54, 2
  %56 = add i64 %16, 1
  %57 = getelementptr inbounds i8, ptr %7, i64 %16
  %58 = load i8, ptr %57, align 1, !tbaa !36
  %59 = trunc i64 %55 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %57, align 1, !tbaa !36
  %61 = trunc i64 %53 to i8
  %62 = shl i8 %61, 6
  %63 = getelementptr inbounds i8, ptr %7, i64 %56
  store i8 %62, ptr %63, align 1, !tbaa !36
  br label %72

64:                                               ; preds = %33
  %65 = ptrtoint ptr %29 to i64
  %66 = add i64 %16, 1
  %67 = getelementptr inbounds i8, ptr %7, i64 %16
  %68 = load i8, ptr %67, align 1, !tbaa !36
  %69 = trunc i64 %65 to i8
  %70 = sub i8 %69, ptrtoint (ptr @Base64 to i8)
  %71 = or i8 %68, %70
  store i8 %71, ptr %67, align 1, !tbaa !36
  br label %72

72:                                               ; preds = %34, %40, %52, %64, %33, %14
  %73 = phi i32 [ %18, %14 ], [ %18, %33 ], [ 0, %64 ], [ 3, %52 ], [ 2, %40 ], [ 1, %34 ]
  %74 = phi i64 [ %16, %14 ], [ %16, %33 ], [ %66, %64 ], [ %56, %52 ], [ %44, %40 ], [ %16, %34 ]
  %75 = getelementptr inbounds i8, ptr %17, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !36
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %14, !llvm.loop !57

78:                                               ; preds = %72
  %79 = icmp eq i32 %73, 0
  br label %80

80:                                               ; preds = %78, %9
  %81 = phi i1 [ true, %9 ], [ %79, %78 ]
  %82 = phi i64 [ 0, %9 ], [ %74, %78 ]
  br i1 %81, label %140, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

85:                                               ; preds = %26
  %86 = getelementptr inbounds i8, ptr %17, i64 1
  switch i32 %18, label %140 [
    i32 0, label %93
    i32 1, label %93
    i32 2, label %87
    i32 3, label %113
  ]

87:                                               ; preds = %85
  %88 = load i8, ptr %86, align 1, !tbaa !36
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %87
  %91 = tail call ptr @__ctype_b_loc() #23
  %92 = load ptr, ptr %91, align 8, !tbaa !53
  br label %95

93:                                               ; preds = %85, %85
  %94 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

95:                                               ; preds = %90, %103
  %96 = phi i8 [ %88, %90 ], [ %105, %103 ]
  %97 = phi ptr [ %86, %90 ], [ %104, %103 ]
  %98 = zext i8 %96 to i64
  %99 = getelementptr inbounds i16, ptr %92, i64 %98
  %100 = load i16, ptr %99, align 2, !tbaa !55
  %101 = and i16 %100, 8192
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds i8, ptr %97, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !36
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %95, !llvm.loop !58

107:                                              ; preds = %95
  %108 = icmp eq i8 %96, 61
  br i1 %108, label %111, label %109

109:                                              ; preds = %103, %87, %107
  %110 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %97, i64 1
  br label %113

113:                                              ; preds = %85, %111
  %114 = phi ptr [ %86, %85 ], [ %112, %111 ]
  %115 = load i8, ptr %114, align 1, !tbaa !36
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %113
  %118 = tail call ptr @__ctype_b_loc() #23
  %119 = load ptr, ptr %118, align 8, !tbaa !53
  br label %124

120:                                              ; preds = %124
  %121 = getelementptr inbounds i8, ptr %126, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !36
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %134, label %124, !llvm.loop !59

124:                                              ; preds = %117, %120
  %125 = phi i8 [ %115, %117 ], [ %122, %120 ]
  %126 = phi ptr [ %114, %117 ], [ %121, %120 ]
  %127 = zext i8 %125 to i64
  %128 = getelementptr inbounds i16, ptr %119, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !55
  %130 = and i16 %129, 8192
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %120

132:                                              ; preds = %124
  %133 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

134:                                              ; preds = %120, %113
  %135 = getelementptr inbounds i8, ptr %7, i64 %16
  %136 = load i8, ptr %135, align 1, !tbaa !36
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #20
  br label %142

140:                                              ; preds = %85, %134, %80
  %141 = phi i64 [ %16, %85 ], [ %16, %134 ], [ %82, %80 ]
  store i64 %141, ptr %1, align 8, !tbaa !52
  br label %142

142:                                              ; preds = %2, %140, %138, %132, %109, %93, %83, %31
  %143 = phi ptr [ null, %83 ], [ %7, %140 ], [ null, %132 ], [ null, %138 ], [ null, %109 ], [ null, %93 ], [ null, %31 ], [ null, %2 ]
  ret ptr %143
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @Base64Encode(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, ptr noundef nonnull @.str.12) #20
  store i64 0, ptr %2, align 8, !tbaa !52
  %6 = udiv i64 %1, 3
  %7 = urem i64 %1, 3
  %8 = add nuw nsw i64 %6, 4
  %9 = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 4) #21
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
  %18 = load i8, ptr %17, align 1, !tbaa !36
  %19 = lshr i8 %18, 2
  %20 = zext nneg i8 %19 to i64
  %21 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !36
  %23 = getelementptr inbounds i8, ptr %9, i64 %16
  store i8 %22, ptr %23, align 1, !tbaa !36
  %24 = load i8, ptr %17, align 1, !tbaa !36
  %25 = shl i8 %24, 4
  %26 = and i8 %25, 48
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !36
  %29 = lshr i8 %28, 4
  %30 = or disjoint i8 %26, %29
  %31 = zext nneg i8 %30 to i64
  %32 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !36
  %34 = getelementptr i8, ptr %23, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !36
  %35 = load i8, ptr %27, align 1, !tbaa !36
  %36 = shl i8 %35, 2
  %37 = and i8 %36, 60
  %38 = getelementptr inbounds i8, ptr %17, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !36
  %40 = lshr i8 %39, 6
  %41 = or disjoint i8 %37, %40
  %42 = zext nneg i8 %41 to i64
  %43 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !36
  %45 = or disjoint i64 %16, 3
  %46 = getelementptr i8, ptr %23, i64 2
  store i8 %44, ptr %46, align 1, !tbaa !36
  %47 = load i8, ptr %38, align 1, !tbaa !36
  %48 = and i8 %47, 63
  %49 = zext nneg i8 %48 to i64
  %50 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !36
  %52 = add i64 %16, 4
  %53 = getelementptr inbounds i8, ptr %9, i64 %45
  store i8 %51, ptr %53, align 1, !tbaa !36
  %54 = getelementptr inbounds i8, ptr %17, i64 3
  %55 = icmp ult ptr %54, %13
  br i1 %55, label %15, label %56, !llvm.loop !60

56:                                               ; preds = %15, %11
  %57 = phi ptr [ %0, %11 ], [ %54, %15 ]
  %58 = phi i64 [ 0, %11 ], [ %52, %15 ]
  %59 = icmp eq i64 %7, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #20
  store i8 0, ptr %4, align 1, !tbaa !36
  %61 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !36
  %62 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %62, align 1, !tbaa !36
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ 0, %60 ], [ %69, %63 ]
  %65 = phi ptr [ %57, %60 ], [ %66, %63 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %65, align 1, !tbaa !36
  %68 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 %64
  store i8 %67, ptr %68, align 1, !tbaa !36
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp ult i64 %69, %7
  br i1 %70, label %63, label %71, !llvm.loop !61

71:                                               ; preds = %63
  %72 = load i8, ptr %4, align 1, !tbaa !36
  %73 = lshr i8 %72, 2
  %74 = zext nneg i8 %73 to i64
  %75 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !36
  %77 = getelementptr inbounds i8, ptr %9, i64 %58
  store i8 %76, ptr %77, align 1, !tbaa !36
  %78 = shl i8 %72, 4
  %79 = and i8 %78, 48
  %80 = load i8, ptr %61, align 1, !tbaa !36
  %81 = lshr i8 %80, 4
  %82 = or disjoint i8 %81, %79
  %83 = zext nneg i8 %82 to i64
  %84 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !36
  %86 = or disjoint i64 %58, 2
  %87 = getelementptr i8, ptr %77, i64 1
  store i8 %85, ptr %87, align 1, !tbaa !36
  %88 = icmp eq i64 %7, 1
  br i1 %88, label %98, label %89

89:                                               ; preds = %71
  %90 = shl i8 %80, 2
  %91 = and i8 %90, 60
  %92 = load i8, ptr %62, align 1, !tbaa !36
  %93 = lshr i8 %92, 6
  %94 = or disjoint i8 %93, %91
  %95 = zext nneg i8 %94 to i64
  %96 = getelementptr inbounds [65 x i8], ptr @Base64, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !36
  br label %98

98:                                               ; preds = %71, %89
  %99 = phi i8 [ %97, %89 ], [ 61, %71 ]
  %100 = getelementptr inbounds i8, ptr %9, i64 %86
  store i8 %99, ptr %100, align 1, !tbaa !36
  %101 = add i64 %58, 4
  %102 = getelementptr i8, ptr %77, i64 3
  store i8 61, ptr %102, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #20
  br label %103

103:                                              ; preds = %98, %56
  %104 = phi i64 [ %101, %98 ], [ %58, %56 ]
  store i64 %104, ptr %2, align 8, !tbaa !52
  %105 = getelementptr inbounds i8, ptr %9, i64 %104
  store i8 0, ptr %105, align 1, !tbaa !36
  br label %106

106:                                              ; preds = %3, %103
  %107 = phi ptr [ %9, %103 ], [ null, %3 ]
  ret ptr %107
}

; Function Attrs: nounwind uwtable
define dso_local void @ChopPathComponents(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ 0, %2 ]
  tail call void @GetPathComponent(ptr noundef %0, i32 noundef 3, ptr noundef %0)
  %6 = add nuw nsw i64 %5, 1
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !62

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExpandFilename(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1, !tbaa !36
  %7 = icmp eq i8 %6, 126
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %0, i64 noundef 4096) #20
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !36
  switch i8 %11, label %26 [
    i8 47, label %12
    i8 0, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.14, i64 noundef 4096) #20
  %14 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #20
  %15 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #20
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef nonnull %20, i64 noundef 4096) #20
  %24 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 4096) #20
  %25 = call ptr @DestroyString(ptr noundef nonnull %20) #20
  br label %43

26:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef nonnull %10, i64 noundef 4096) #20
  %28 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i8 0, ptr %28, align 1, !tbaa !36
  br label %31

31:                                               ; preds = %30, %26
  %32 = call ptr @getpwnam(ptr noundef nonnull %3)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.passwd, ptr %32, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = call i64 @CopyMagickString(ptr noundef nonnull %2, ptr noundef %36, i64 noundef 4096) #20
  br i1 %29, label %42, label %38

38:                                               ; preds = %34
  %39 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i64 noundef 4096) #20
  %40 = getelementptr inbounds i8, ptr %28, i64 1
  %41 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %40, i64 noundef 4096) #20
  br label %42

42:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #20
  br label %43

43:                                               ; preds = %42, %19, %22
  %44 = call i64 @CopyMagickString(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4096) #20
  br label %46

45:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #20
  br label %46

46:                                               ; preds = %45, %5, %1, %43
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #20
  ret void
}

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ExpandFilenames(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct._ExceptionInfo, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca %struct._ExceptionInfo, align 8
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 747, ptr noundef nonnull @.str.12) #20
  %18 = load i32, ptr %0, align 4, !tbaa !65
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = tail call ptr @AcquireQuantumMemory(i64 noundef %20, i64 noundef 8) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #20
  call void @GetExceptionInfo(ptr noundef nonnull %7) #20
  %24 = tail call ptr @__errno_location() #23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = call ptr @GetExceptionMessage(i32 noundef %25) #20
  %27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 753, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %26) #20
  %28 = call ptr @DestroyString(ptr noundef %26) #20
  call void @CatchException(ptr noundef nonnull %7) #20
  %29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

30:                                               ; preds = %2
  store i8 0, ptr %5, align 16, !tbaa !36
  %31 = load i32, ptr %0, align 4, !tbaa !65
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %297

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %35 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  br label %36

36:                                               ; preds = %33, %292
  %37 = phi ptr [ %21, %33 ], [ %291, %292 ]
  %38 = phi ptr [ undef, %33 ], [ %289, %292 ]
  %39 = phi i64 [ 0, %33 ], [ %293, %292 ]
  %40 = phi i64 [ 0, %33 ], [ %287, %292 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #20
  %41 = load ptr, ptr %1, align 8, !tbaa !53
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  store i8 0, ptr %9, align 16, !tbaa !36
  store i8 0, ptr %10, align 16, !tbaa !36
  store i8 0, ptr %8, align 16, !tbaa !36
  store i8 0, ptr %11, align 16, !tbaa !36
  store i64 0, ptr %6, align 8, !tbaa !52
  %44 = call ptr @ConstantString(ptr noundef %43) #20
  %45 = add nsw i64 %40, 1
  %46 = getelementptr inbounds ptr, ptr %37, i64 %40
  store ptr %44, ptr %46, align 8, !tbaa !53
  %47 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %43) #20
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %36
  %50 = add i64 %47, %39
  br label %51

51:                                               ; preds = %49, %58
  %52 = phi i64 [ %54, %58 ], [ %39, %49 ]
  %53 = phi i64 [ %63, %58 ], [ %45, %49 ]
  %54 = add nsw i64 %52, 1
  %55 = load i32, ptr %0, align 4, !tbaa !65
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %286, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %1, align 8, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %59, i64 %54
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = call ptr @ConstantString(ptr noundef %61) #20
  %63 = add nsw i64 %53, 1
  %64 = getelementptr inbounds ptr, ptr %37, i64 %53
  store ptr %62, ptr %64, align 8, !tbaa !53
  %65 = icmp eq i64 %54, %50
  br i1 %65, label %286, label %51, !llvm.loop !66

66:                                               ; preds = %36
  %67 = load i8, ptr %43, align 1, !tbaa !36
  switch i8 %67, label %68 [
    i8 34, label %286
    i8 39, label %286
  ]

68:                                               ; preds = %66
  call void @GetPathComponent(ptr noundef nonnull %43, i32 noundef 4, ptr noundef nonnull %8)
  call void @GetPathComponent(ptr noundef nonnull %43, i32 noundef 1, ptr noundef nonnull %9)
  %69 = call i32 @LocaleCompare(ptr noundef nonnull %9, ptr noundef nonnull @.str.19) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %286, label %71

71:                                               ; preds = %68
  %72 = call i32 @LocaleCompare(ptr noundef nonnull %9, ptr noundef nonnull @.str.20) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %286, label %74

74:                                               ; preds = %71
  %75 = call i32 @LocaleCompare(ptr noundef nonnull %9, ptr noundef nonnull @.str.21) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %286, label %77

77:                                               ; preds = %74
  %78 = call i32 @LocaleCompare(ptr noundef nonnull %9, ptr noundef nonnull @.str.22) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %286, label %80

80:                                               ; preds = %77
  %81 = call i32 @IsGlob(ptr noundef nonnull %8) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8, ptr %43, align 1, !tbaa !36
  %85 = icmp eq i8 %84, 64
  br i1 %85, label %86, label %286

86:                                               ; preds = %83, %80
  %87 = load i8, ptr %43, align 1, !tbaa !36
  %88 = icmp eq i8 %87, 64
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  call void @GetPathComponent(ptr noundef nonnull %43, i32 noundef 3, ptr noundef nonnull %10)
  call void @GetPathComponent(ptr noundef nonnull %43, i32 noundef 7, ptr noundef nonnull %11)
  call void @ExpandFilename(ptr noundef nonnull %10)
  %90 = load i8, ptr %5, align 16, !tbaa !36
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call ptr @getcwd(ptr noundef nonnull %5, i64 noundef 4095) #20
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i8, ptr %10, align 16, !tbaa !36
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, ptr %5, ptr %10
  %98 = call ptr @ListFiles(ptr noundef nonnull %97, ptr noundef nonnull %8, ptr noundef nonnull %6)
  br label %126

99:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  %100 = call ptr @AcquireExceptionInfo() #20
  %101 = getelementptr inbounds i8, ptr %43, i64 1
  %102 = call ptr @FileToString(ptr noundef nonnull %101, i64 noundef -1, ptr noundef %100) #20
  %103 = call ptr @DestroyExceptionInfo(ptr noundef %100) #20
  %104 = icmp eq ptr %102, null
  br i1 %104, label %122, label %105

105:                                              ; preds = %99
  %106 = call ptr @StringToArgv(ptr noundef nonnull %102, ptr noundef nonnull %12) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = call ptr @DestroyString(ptr noundef nonnull %102) #20
  %110 = load ptr, ptr %106, align 8, !tbaa !53
  %111 = call ptr @DestroyString(ptr noundef %110) #20
  store ptr %111, ptr %106, align 8, !tbaa !53
  %112 = load i32, ptr %12, align 4, !tbaa !65
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = add nsw i32 %112, -1
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, ptr %106, i64 8
  %118 = shl nuw nsw i64 %116, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %106, ptr align 8 %117, i64 %118, i1 false), !tbaa !53
  br label %119

119:                                              ; preds = %114, %108
  %120 = sext i32 %112 to i64
  %121 = add nsw i64 %120, -1
  store i64 %121, ptr %6, align 8, !tbaa !52
  br label %122

122:                                              ; preds = %105, %99, %119
  %123 = phi ptr [ %106, %119 ], [ %38, %99 ], [ null, %105 ]
  %124 = phi i1 [ true, %119 ], [ false, %99 ], [ false, %105 ]
  %125 = phi i32 [ 0, %119 ], [ 4, %99 ], [ 4, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  br i1 %124, label %126, label %286

126:                                              ; preds = %122, %94
  %127 = phi ptr [ %98, %94 ], [ %123, %122 ]
  %128 = icmp eq ptr %127, null
  br i1 %128, label %286, label %129

129:                                              ; preds = %126
  %130 = load i64, ptr %6, align 8, !tbaa !52
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129, %151
  %133 = phi i64 [ %152, %151 ], [ 0, %129 ]
  %134 = getelementptr inbounds ptr, ptr %127, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #20
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %132
  %138 = load i8, ptr %135, align 1, !tbaa !36
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %137
  %141 = call i32 @stat(ptr noundef nonnull %135, ptr noundef nonnull %4) #20
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, ptr %34, align 8, !tbaa !41
  %145 = and i32 %144, 61440
  %146 = icmp eq i32 %145, 16384
  %147 = zext i1 %146 to i32
  br label %148

148:                                              ; preds = %132, %137, %140, %143
  %149 = phi i32 [ 0, %137 ], [ 0, %132 ], [ -1, %140 ], [ %147, %143 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #20
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = add nuw nsw i64 %133, 1
  %153 = icmp eq i64 %152, %130
  br i1 %153, label %154, label %132, !llvm.loop !67

154:                                              ; preds = %151, %148, %129
  %155 = phi i64 [ 0, %129 ], [ %130, %151 ], [ %133, %148 ]
  %156 = icmp eq i64 %155, %130
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = icmp sgt i64 %130, 0
  br i1 %158, label %159, label %281

159:                                              ; preds = %157, %159
  %160 = phi i64 [ %164, %159 ], [ 0, %157 ]
  %161 = getelementptr inbounds ptr, ptr %127, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !53
  %163 = call ptr @DestroyString(ptr noundef %162) #20
  store ptr %163, ptr %161, align 8, !tbaa !53
  %164 = add nuw nsw i64 %160, 1
  %165 = icmp eq i64 %164, %130
  br i1 %165, label %281, label %159, !llvm.loop !68

166:                                              ; preds = %154
  %167 = load i32, ptr %0, align 4, !tbaa !65
  %168 = sext i32 %167 to i64
  %169 = add i64 %40, 2
  %170 = add i64 %169, %130
  %171 = add i64 %170, %168
  %172 = call ptr @ResizeQuantumMemory(ptr noundef %37, i64 noundef %171, i64 noundef 8) #25
  %173 = icmp eq ptr %172, null
  br i1 %173, label %286, label %174

174:                                              ; preds = %166
  %175 = load i64, ptr %6, align 8, !tbaa !52
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %281

177:                                              ; preds = %174, %275
  %178 = phi i32 [ %278, %275 ], [ 1, %174 ]
  %179 = phi i64 [ %277, %275 ], [ %45, %174 ]
  %180 = phi i64 [ %279, %275 ], [ 0, %174 ]
  %181 = getelementptr inbounds ptr, ptr %127, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !53
  %183 = call i64 @ParseCommandOption(i32 noundef 10, i32 noundef 0, ptr noundef %182) #20
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %177
  %186 = call ptr @ConstantString(ptr noundef %182) #20
  %187 = getelementptr inbounds ptr, ptr %172, i64 %179
  store ptr %186, ptr %187, align 8, !tbaa !53
  %188 = add nsw i64 %179, 1
  %189 = add i64 %183, %180
  br label %190

190:                                              ; preds = %185, %195
  %191 = phi i64 [ %188, %185 ], [ %200, %195 ]
  %192 = phi i64 [ %180, %185 ], [ %193, %195 ]
  %193 = add nsw i64 %192, 1
  %194 = icmp eq i64 %193, %175
  br i1 %194, label %275, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds ptr, ptr %127, i64 %193
  %197 = load ptr, ptr %196, align 8, !tbaa !53
  %198 = call ptr @ConstantString(ptr noundef %197) #20
  %199 = getelementptr inbounds ptr, ptr %172, i64 %191
  store ptr %198, ptr %199, align 8, !tbaa !53
  %200 = add nsw i64 %191, 1
  %201 = icmp eq i64 %193, %189
  br i1 %201, label %275, label %190, !llvm.loop !69

202:                                              ; preds = %177
  %203 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 4096) #20
  %204 = load i8, ptr %10, align 16, !tbaa !36
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.13, i64 noundef 4096) #20
  br label %208

208:                                              ; preds = %206, %202
  %209 = load ptr, ptr %181, align 8, !tbaa !53
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %209, i64 noundef 4096) #20
  br label %213

213:                                              ; preds = %211, %208
  %214 = load ptr, ptr %181, align 8, !tbaa !53
  %215 = call ptr @DestroyString(ptr noundef %214) #20
  store ptr %215, ptr %181, align 8, !tbaa !53
  %216 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #22
  %217 = icmp ugt i64 %216, 4094
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #20
  call void @GetExceptionInfo(ptr noundef nonnull %13) #20
  %219 = tail call ptr @__errno_location() #23
  %220 = load i32, ptr %219, align 4, !tbaa !65
  %221 = call ptr @GetExceptionMessage(i32 noundef %220) #20
  %222 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %221) #20
  %223 = call ptr @DestroyString(ptr noundef %221) #20
  call void @CatchException(ptr noundef nonnull %13) #20
  %224 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %13) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 11) #24
  unreachable

225:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #20
  %226 = load i8, ptr %8, align 16, !tbaa !36
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %225
  %229 = call i32 @stat(ptr noundef nonnull %8, ptr noundef nonnull %3) #20
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i32, ptr %35, align 8, !tbaa !41
  %233 = and i32 %232, 61440
  %234 = icmp eq i32 %233, 16384
  %235 = zext i1 %234 to i32
  br label %236

236:                                              ; preds = %225, %228, %231
  %237 = phi i32 [ 0, %225 ], [ -1, %228 ], [ %235, %231 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #20
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %239, label %275

239:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %14) #20
  store i8 0, ptr %14, align 16, !tbaa !36
  %240 = load i8, ptr %9, align 16, !tbaa !36
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull %9, i64 noundef 4096) #20
  %244 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.24, i64 noundef 4096) #20
  br label %245

245:                                              ; preds = %242, %239
  %246 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull %8, i64 noundef 4096) #20
  %247 = load i8, ptr %11, align 16, !tbaa !36
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.25, i64 noundef 4096) #20
  %251 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull %11, i64 noundef 4096) #20
  %252 = call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.26, i64 noundef 4096) #20
  br label %253

253:                                              ; preds = %249, %245
  %254 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #22
  %255 = icmp ugt i64 %254, 4094
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #20
  call void @GetExceptionInfo(ptr noundef nonnull %15) #20
  %257 = tail call ptr @__errno_location() #23
  %258 = load i32, ptr %257, align 4, !tbaa !65
  %259 = call ptr @GetExceptionMessage(i32 noundef %258) #20
  %260 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 919, i32 noundef 710, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef %259) #20
  %261 = call ptr @DestroyString(ptr noundef %259) #20
  call void @CatchException(ptr noundef nonnull %15) #20
  %262 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %15) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 11) #24
  unreachable

263:                                              ; preds = %253
  %264 = icmp eq i32 %178, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %263
  %266 = add nsw i64 %179, -1
  %267 = getelementptr inbounds ptr, ptr %172, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !53
  %269 = call ptr @DestroyString(ptr noundef %268) #20
  store ptr %269, ptr %267, align 8, !tbaa !53
  br label %270

270:                                              ; preds = %265, %263
  %271 = phi i64 [ %266, %265 ], [ %179, %263 ]
  %272 = call ptr @ConstantString(ptr noundef nonnull %14) #20
  %273 = add nsw i64 %271, 1
  %274 = getelementptr inbounds ptr, ptr %172, i64 %271
  store ptr %272, ptr %274, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %14) #20
  br label %275

275:                                              ; preds = %195, %190, %236, %270
  %276 = phi i64 [ %180, %270 ], [ %180, %236 ], [ %193, %190 ], [ %193, %195 ]
  %277 = phi i64 [ %273, %270 ], [ %179, %236 ], [ %200, %195 ], [ %191, %190 ]
  %278 = phi i32 [ 0, %270 ], [ %178, %236 ], [ %178, %190 ], [ %178, %195 ]
  %279 = add nsw i64 %276, 1
  %280 = icmp slt i64 %279, %175
  br i1 %280, label %177, label %281, !llvm.loop !70

281:                                              ; preds = %275, %159, %174, %157
  %282 = phi i64 [ %45, %157 ], [ %45, %174 ], [ %45, %159 ], [ %277, %275 ]
  %283 = phi i32 [ 4, %157 ], [ 0, %174 ], [ 4, %159 ], [ 0, %275 ]
  %284 = phi ptr [ %37, %157 ], [ %172, %174 ], [ %37, %159 ], [ %172, %275 ]
  %285 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %127) #20
  br label %286

286:                                              ; preds = %58, %51, %281, %166, %126, %83, %68, %71, %74, %77, %66, %66, %122
  %287 = phi i64 [ %45, %122 ], [ %45, %66 ], [ %45, %66 ], [ %45, %77 ], [ %45, %74 ], [ %45, %71 ], [ %45, %68 ], [ %45, %83 ], [ %45, %126 ], [ %45, %166 ], [ %282, %281 ], [ %63, %58 ], [ %53, %51 ]
  %288 = phi i64 [ %39, %122 ], [ %39, %66 ], [ %39, %66 ], [ %39, %77 ], [ %39, %74 ], [ %39, %71 ], [ %39, %68 ], [ %39, %83 ], [ %39, %126 ], [ %39, %166 ], [ %39, %281 ], [ %54, %51 ], [ %54, %58 ]
  %289 = phi ptr [ %123, %122 ], [ %38, %66 ], [ %38, %66 ], [ %38, %77 ], [ %38, %74 ], [ %38, %71 ], [ %38, %68 ], [ %38, %83 ], [ null, %126 ], [ %127, %166 ], [ %285, %281 ], [ %38, %51 ], [ %38, %58 ]
  %290 = phi i32 [ %125, %122 ], [ 4, %66 ], [ 4, %66 ], [ 4, %77 ], [ 4, %74 ], [ 4, %71 ], [ 4, %68 ], [ 4, %83 ], [ 4, %126 ], [ 1, %166 ], [ %283, %281 ], [ 4, %51 ], [ 4, %58 ]
  %291 = phi ptr [ %37, %122 ], [ %37, %66 ], [ %37, %66 ], [ %37, %77 ], [ %37, %74 ], [ %37, %71 ], [ %37, %68 ], [ %37, %83 ], [ %37, %126 ], [ null, %166 ], [ %284, %281 ], [ %37, %51 ], [ %37, %58 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #20
  switch i32 %290, label %323 [
    i32 0, label %292
    i32 4, label %292
  ]

292:                                              ; preds = %286, %286
  %293 = add nsw i64 %288, 1
  %294 = load i32, ptr %0, align 4, !tbaa !65
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %36, label %297, !llvm.loop !71

297:                                              ; preds = %292, %30
  %298 = phi i64 [ 0, %30 ], [ %287, %292 ]
  %299 = phi ptr [ %21, %30 ], [ %291, %292 ]
  %300 = getelementptr inbounds ptr, ptr %299, i64 %298
  store ptr null, ptr %300, align 8, !tbaa !53
  %301 = call i32 @IsEventLogging() #20
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %321, label %303

303:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #20
  %304 = load ptr, ptr %299, align 8, !tbaa !53
  %305 = call ptr @AcquireString(ptr noundef %304) #20
  store ptr %305, ptr %16, align 8, !tbaa !53
  %306 = icmp sgt i64 %298, 1
  br i1 %306, label %307, label %316

307:                                              ; preds = %303, %307
  %308 = phi i64 [ %314, %307 ], [ 1, %303 ]
  %309 = call i32 @ConcatenateString(ptr noundef nonnull %16, ptr noundef nonnull @.str.27) #20
  %310 = getelementptr inbounds ptr, ptr %299, i64 %308
  %311 = load ptr, ptr %310, align 8, !tbaa !53
  %312 = call i32 @ConcatenateString(ptr noundef nonnull %16, ptr noundef %311) #20
  %313 = call i32 @ConcatenateString(ptr noundef nonnull %16, ptr noundef nonnull @.str.28) #20
  %314 = add nuw nsw i64 %308, 1
  %315 = icmp eq i64 %314, %298
  br i1 %315, label %316, label %307, !llvm.loop !72

316:                                              ; preds = %307, %303
  %317 = load ptr, ptr %16, align 8, !tbaa !53
  %318 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 944, ptr noundef nonnull @.str.29, ptr noundef %317) #20
  %319 = load ptr, ptr %16, align 8, !tbaa !53
  %320 = call ptr @DestroyString(ptr noundef %319) #20
  store ptr %320, ptr %16, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #20
  br label %321

321:                                              ; preds = %316, %297
  %322 = trunc i64 %298 to i32
  store i32 %322, ptr %0, align 4, !tbaa !65
  store ptr %299, ptr %1, align 8, !tbaa !53
  br label %323

323:                                              ; preds = %286, %321
  %324 = phi i32 [ 1, %321 ], [ 0, %286 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #20
  ret i32 %324
}

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsGlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @ListFiles(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1582, ptr noundef nonnull @.str.2, ptr noundef %0) #20
  store i64 0, ptr %2, align 8, !tbaa !52
  %7 = tail call ptr @opendir(ptr noundef %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %3
  %10 = tail call dereferenceable_or_null(16384) ptr @AcquireQuantumMemory(i64 noundef 2048, i64 noundef 8) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @closedir(ptr noundef nonnull %7)
  br label %76

14:                                               ; preds = %9
  %15 = tail call dereferenceable_or_null(4377) ptr @AcquireMagickMemory(i64 noundef 4377) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @__errno_location() #23
  %19 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  br label %65

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  call void @GetExceptionInfo(ptr noundef nonnull %5) #20
  %21 = tail call ptr @__errno_location() #23
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = call ptr @GetExceptionMessage(i32 noundef %22) #20
  %24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %23) #20
  %25 = call ptr @DestroyString(ptr noundef %23) #20
  call void @CatchException(ptr noundef nonnull %5) #20
  %26 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

27:                                               ; preds = %68, %33
  store i32 0, ptr %18, align 4, !tbaa !65
  %28 = tail call ptr @readdir(ptr noundef nonnull %7) #20
  %29 = load i32, ptr %18, align 4, !tbaa !65
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dirent, ptr %28, i64 0, i32 4
  %35 = load i8, ptr %34, align 1, !tbaa !36
  %36 = icmp eq i8 %35, 46
  br i1 %36, label %27, label %37, !llvm.loop !73

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dirent, ptr %28, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #20
  %39 = icmp eq i8 %35, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = call i32 @stat(ptr noundef nonnull %38, ptr noundef nonnull %4) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, ptr %19, align 8, !tbaa !41
  %45 = and i32 %44, 61440
  %46 = icmp eq i32 %45, 16384
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #20
  br i1 %46, label %51, label %48

47:                                               ; preds = %40, %37
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #20
  br label %48

48:                                               ; preds = %47, %43
  %49 = tail call i32 @GlobExpression(ptr noundef nonnull %38, ptr noundef %1, i32 noundef 0) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51, !llvm.loop !73

51:                                               ; preds = %48, %43
  %52 = load i64, ptr %2, align 8, !tbaa !52
  %53 = icmp ult i64 %52, %67
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = shl i64 %67, 1
  %56 = tail call ptr @ResizeQuantumMemory(ptr noundef %66, i64 noundef %55, i64 noundef 8) #25
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %56, %54 ], [ %66, %51 ]
  %60 = phi i64 [ %55, %54 ], [ %67, %51 ]
  %61 = tail call ptr @AcquireString(ptr noundef nonnull %38) #20
  %62 = load i64, ptr %2, align 8, !tbaa !52
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  store ptr %61, ptr %63, align 8, !tbaa !53
  %64 = add i64 %62, 1
  store i64 %64, ptr %2, align 8, !tbaa !52
  br label %65, !llvm.loop !73

65:                                               ; preds = %58, %17
  %66 = phi ptr [ %59, %58 ], [ %10, %17 ]
  %67 = phi i64 [ %60, %58 ], [ 2048, %17 ]
  br label %68

68:                                               ; preds = %65, %48
  br label %27

69:                                               ; preds = %54, %27
  %70 = phi ptr [ %66, %27 ], [ null, %54 ]
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #20
  %72 = tail call i32 @closedir(ptr noundef nonnull %7)
  %73 = icmp eq ptr %70, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i64, ptr %2, align 8, !tbaa !52
  tail call void @qsort(ptr noundef nonnull %70, i64 noundef %75, i64 noundef 8, ptr noundef nonnull @FileCompare) #20
  br label %76

76:                                               ; preds = %69, %3, %74, %12
  %77 = phi ptr [ null, %12 ], [ %70, %74 ], [ null, %3 ], [ null, %69 ]
  ret ptr %77
}

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @IsEventLogging() local_unnamed_addr #2

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetExecutionPath(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  store i8 0, ptr %0, align 1, !tbaa !36
  %4 = tail call ptr @getcwd(ptr noundef nonnull %0, i64 noundef %1) #20
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #20
  %5 = load i8, ptr %0, align 1, !tbaa !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 32768
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #20
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %2, %7, %10, %15
  %20 = phi i32 [ 0, %2 ], [ 0, %7 ], [ 0, %10 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #20
  ret i32 %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @IsPathAccessible(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #20
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 32768
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 0) #20
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %15, %10, %7, %1, %4
  %20 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %7 ], [ 0, %10 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #20
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @GetMagickPageSize() local_unnamed_addr #12 {
  %1 = load i1, ptr @GetMagickPageSize.page_size, align 8
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i1 true, ptr @GetMagickPageSize.page_size, align 8
  br label %3

3:                                                ; preds = %0, %2
  ret i64 16384
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @GetPathAttributes(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @__errno_location() #23
  store i32 22, ptr %5, align 4, !tbaa !65
  br label %10

6:                                                ; preds = %2
  %7 = tail call i32 @stat(ptr noundef nonnull %0, ptr noundef %1) #20
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %4 ], [ %9, %6 ]
  ret i32 %11
}

declare i32 @IsMagickConflict(ptr noundef) local_unnamed_addr #2

declare i32 @IsSceneGeometry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IsGeometry(ptr noundef) local_unnamed_addr #2

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPathComponents(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  store i64 1, ptr %1, align 8, !tbaa !52
  br label %7

7:                                                ; preds = %13, %6
  %8 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %9 = load i8, ptr %8, align 1, !tbaa !36
  switch i8 %9, label %13 [
    i8 0, label %15
    i8 47, label %10
  ]

10:                                               ; preds = %7
  %11 = load i64, ptr %1, align 8, !tbaa !52
  %12 = add i64 %11, 1
  store i64 %12, ptr %1, align 8, !tbaa !52
  br label %13

13:                                               ; preds = %7, %10
  %14 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !74

15:                                               ; preds = %7
  %16 = load i64, ptr %1, align 8, !tbaa !52
  %17 = add i64 %16, 1
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 8) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i64, ptr %1, align 8, !tbaa !52
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %30, label %60

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #20
  call void @GetExceptionInfo(ptr noundef nonnull %3) #20
  %24 = tail call ptr @__errno_location() #23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = call ptr @GetExceptionMessage(i32 noundef %25) #20
  %27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1393, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %26) #20
  %28 = call ptr @DestroyString(ptr noundef %26) #20
  call void @CatchException(ptr noundef nonnull %3) #20
  %29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

30:                                               ; preds = %20, %53
  %31 = phi ptr [ %56, %53 ], [ %0, %20 ]
  %32 = phi i64 [ %57, %53 ], [ 0, %20 ]
  br label %33

33:                                               ; preds = %30, %36
  %34 = phi ptr [ %37, %36 ], [ %31, %30 ]
  %35 = load i8, ptr %34, align 1, !tbaa !36
  switch i8 %35, label %36 [
    i8 0, label %38
    i8 47, label %38
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br label %33, !llvm.loop !75

38:                                               ; preds = %33, %33
  %39 = ptrtoint ptr %34 to i64
  %40 = ptrtoint ptr %31 to i64
  %41 = sub i64 %39, %40
  %42 = add i64 %41, 4096
  %43 = tail call ptr @AcquireQuantumMemory(i64 noundef %42, i64 noundef 1) #21
  %44 = getelementptr inbounds ptr, ptr %18, i64 %32
  store ptr %43, ptr %44, align 8, !tbaa !53
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  call void @GetExceptionInfo(ptr noundef nonnull %4) #20
  %47 = tail call ptr @__errno_location() #23
  %48 = load i32, ptr %47, align 4, !tbaa !65
  %49 = call ptr @GetExceptionMessage(i32 noundef %48) #20
  %50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1403, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %49) #20
  %51 = call ptr @DestroyString(ptr noundef %49) #20
  call void @CatchException(ptr noundef nonnull %4) #20
  %52 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #20
  call void @MagickCoreTerminus() #20
  call void @_exit(i32 noundef 1) #24
  unreachable

53:                                               ; preds = %38
  %54 = add nsw i64 %41, 1
  %55 = tail call i64 @CopyMagickString(ptr noundef nonnull %43, ptr noundef nonnull %31, i64 noundef %54) #20
  %56 = getelementptr inbounds i8, ptr %34, i64 1
  %57 = add nuw nsw i64 %32, 1
  %58 = load i64, ptr %1, align 8, !tbaa !52
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %30, label %60, !llvm.loop !76

60:                                               ; preds = %53, %20
  %61 = phi i64 [ 0, %20 ], [ %57, %53 ]
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  store ptr null, ptr %62, align 8, !tbaa !53
  br label %63

63:                                               ; preds = %2, %60
  %64 = phi ptr [ %18, %60 ], [ null, %2 ]
  ret ptr %64
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #13

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @FileCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #20
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @MagickDelay(i64 noundef %0) local_unnamed_addr #14 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @MultilineCensus(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %5 = phi i64 [ %10, %9 ], [ 1, %1 ]
  %6 = load i8, ptr %4, align 1, !tbaa !36
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
  br label %3, !llvm.loop !77

12:                                               ; preds = %3, %1
  %13 = phi i64 [ 0, %1 ], [ %5, %3 ]
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define hidden i32 @ShredFile(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #20
  %3 = icmp eq ptr %0, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.30) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 @unlink(ptr noundef nonnull %0) #20
  %12 = icmp ne i32 %11, -1
  br label %83

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 129, i32 noundef 384) #20
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @unlink(ptr noundef nonnull %0) #20
  br label %83

18:                                               ; preds = %13
  %19 = call i32 @fstat(i32 noundef %14, ptr noundef nonnull %2) #20
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = select i1 %20, i1 %23, i1 false
  %25 = tail call i64 @llvm.umin.i64(i64 %22, i64 262142)
  %26 = select i1 %24, i64 %25, i64 262142
  %27 = tail call i64 @strtol(ptr nocapture noundef nonnull %8, ptr noundef null, i32 noundef 10) #20
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %18
  %31 = icmp sgt i64 %22, 0
  br label %32

32:                                               ; preds = %30, %67
  %33 = phi i64 [ 0, %30 ], [ %68, %67 ]
  %34 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #20
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @AcquireRandomInfo() #20
  br i1 %31, label %38, label %61

38:                                               ; preds = %36
  %39 = icmp eq i64 %33, 0
  br label %43

40:                                               ; preds = %58
  %41 = add nuw nsw i64 %60, %44
  %42 = icmp slt i64 %41, %22
  br i1 %42, label %43, label %61, !llvm.loop !78

43:                                               ; preds = %38, %40
  %44 = phi i64 [ 0, %38 ], [ %41, %40 ]
  %45 = tail call ptr @GetRandomKey(ptr noundef %37, i64 noundef %26) #20
  br i1 %39, label %46, label %47

46:                                               ; preds = %43
  tail call void @ResetStringInfo(ptr noundef %45) #20
  br label %47

47:                                               ; preds = %46, %43
  %48 = tail call ptr @GetStringInfoDatum(ptr noundef %45) #20
  %49 = sub nsw i64 %22, %44
  %50 = tail call i64 @llvm.umin.i64(i64 %26, i64 %49)
  %51 = tail call i64 @write(i32 noundef %14, ptr noundef %48, i64 noundef %50) #20
  %52 = tail call ptr @DestroyStringInfo(ptr noundef %45) #20
  %53 = icmp slt i64 %51, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = tail call ptr @__errno_location() #23
  %56 = load i32, ptr %55, align 4, !tbaa !65
  %57 = icmp eq i32 %56, 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi i1 [ true, %47 ], [ %57, %54 ]
  %60 = phi i64 [ %51, %47 ], [ 0, %54 ]
  br i1 %59, label %40, label %61

61:                                               ; preds = %40, %58, %36
  %62 = phi i32 [ 0, %36 ], [ 0, %40 ], [ 2, %58 ]
  %63 = tail call ptr @DestroyRandomInfo(ptr noundef %37) #20
  br label %64

64:                                               ; preds = %61, %32
  %65 = phi i32 [ 2, %32 ], [ %62, %61 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %33, 1
  %69 = tail call i64 @strtol(ptr nocapture noundef nonnull %8, ptr noundef null, i32 noundef 10) #20
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %32, label %73, !llvm.loop !79

73:                                               ; preds = %67, %64, %18
  %74 = phi i64 [ 0, %18 ], [ %68, %67 ], [ %33, %64 ]
  %75 = tail call i32 @close(i32 noundef %14) #20
  %76 = tail call i32 @unlink(ptr noundef nonnull %0) #20
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = tail call i64 @strtol(ptr nocapture noundef nonnull %8, ptr noundef null, i32 noundef 10) #20
  %80 = shl i64 %79, 32
  %81 = ashr exact i64 %80, 32
  %82 = icmp sge i64 %74, %81
  br label %83

83:                                               ; preds = %73, %10, %1, %4, %78, %16
  %84 = phi i1 [ false, %16 ], [ %82, %78 ], [ false, %4 ], [ false, %1 ], [ %12, %10 ], [ false, %73 ]
  %85 = zext i1 %84 to i32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #20
  ret i32 %85
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare ptr @AcquireRandomInfo() local_unnamed_addr #2

declare ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ResetStringInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @SystemCommand(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #14 {
  ret i32 -1
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(1,2) }
attributes #26 = { nounwind allocsize(0) }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40, !35}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42, !44, i64 24}
!42 = !{!"stat", !43, i64 0, !43, i64 8, !43, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !45, i64 72, !45, i64 88, !45, i64 104, !37, i64 120}
!43 = !{!"long", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = !{!"timespec", !43, i64 0, !43, i64 8}
!46 = distinct !{!46, !40, !35}
!47 = distinct !{!47, !40, !35}
!48 = distinct !{!48, !40, !35}
!49 = distinct !{!49, !40, !35}
!50 = distinct !{!50, !40, !35}
!51 = distinct !{!51, !40, !35}
!52 = !{!43, !43, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !37, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !37, i64 0}
!57 = distinct !{!57, !40, !35}
!58 = distinct !{!58, !40, !35}
!59 = distinct !{!59, !40, !35}
!60 = distinct !{!60, !40, !35}
!61 = distinct !{!61, !40, !35}
!62 = distinct !{!62, !40, !35}
!63 = !{!64, !54, i64 32}
!64 = !{!"passwd", !54, i64 0, !54, i64 8, !44, i64 16, !44, i64 20, !54, i64 24, !54, i64 32, !54, i64 40}
!65 = !{!44, !44, i64 0}
!66 = distinct !{!66, !40, !35}
!67 = distinct !{!67, !40, !35}
!68 = distinct !{!68, !40, !35}
!69 = distinct !{!69, !40, !35}
!70 = distinct !{!70, !40, !35}
!71 = distinct !{!71, !40, !35}
!72 = distinct !{!72, !40, !35}
!73 = distinct !{!73, !40, !35}
!74 = distinct !{!74, !40, !35}
!75 = distinct !{!75, !40, !35}
!76 = distinct !{!76, !40, !35}
!77 = distinct !{!77, !40, !35}
!78 = distinct !{!78, !40, !35}
!79 = distinct !{!79, !40, !35}
