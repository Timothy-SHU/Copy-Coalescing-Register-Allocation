; ModuleID = 'ldecod_src/img_io.c'
source_filename = "ldecod_src/img_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_size = type { ptr, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str.2 = private unnamed_addr constant [3 x i8] c"_.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@VideoRes = internal unnamed_addr constant [12 x %struct.video_size] [%struct.video_size { ptr @.str.15, i32 176, i32 144 }, %struct.video_size { ptr @.str.16, i32 160, i32 128 }, %struct.video_size { ptr @.str.17, i32 320, i32 240 }, %struct.video_size { ptr @.str.18, i32 352, i32 240 }, %struct.video_size { ptr @.str.19, i32 352, i32 288 }, %struct.video_size { ptr @.str.20, i32 640, i32 480 }, %struct.video_size { ptr @.str.21, i32 720, i32 480 }, %struct.video_size { ptr @.str.22, i32 704, i32 576 }, %struct.video_size { ptr @.str.23, i32 720, i32 576 }, %struct.video_size { ptr @.str.24, i32 1280, i32 720 }, %struct.video_size { ptr @.str.25, i32 1920, i32 1080 }, %struct.video_size zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"OpenFrameFile: cannot open file %s\0A\00", align 1
@errortext = external global [300 x i8], align 16
@.str.9 = private unnamed_addr constant [60 x i8] c"No input sequence name was provided. Please check settings.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"qcif\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"qqvga\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"qvga\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"sif\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"cif\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"720p\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"1080p\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @ParseSizeFromString(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i32 -1, ptr %2, align 4, !tbaa !5
  store i32 -1, ptr %1, align 4, !tbaa !5
  %6 = icmp eq ptr %0, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 95)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %7, %26
  %11 = phi i1 [ %29, %26 ], [ %9, %7 ]
  %12 = phi ptr [ %28, %26 ], [ %8, %7 ]
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 120)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  store i8 0, ptr %13, align 1, !tbaa !9
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = call i64 @strtol(ptr noundef nonnull %16, ptr noundef nonnull %5, i32 noundef 10) #13
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %1, align 4, !tbaa !5
  %19 = load ptr, ptr %5, align 8, !tbaa !10
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i8, ptr %16, align 1, !tbaa !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %15
  store i8 120, ptr %13, align 1, !tbaa !9
  br label %26

26:                                               ; preds = %25, %44, %58, %30
  %27 = phi ptr [ %19, %25 ], [ %38, %44 ], [ %52, %58 ], [ %31, %30 ]
  %28 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 95)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %10

30:                                               ; preds = %22
  store i8 120, ptr %13, align 1, !tbaa !9
  %31 = getelementptr inbounds i8, ptr %13, i64 1
  %32 = tail call ptr @strpbrk(ptr noundef nonnull %31, ptr noundef nonnull @.str.2) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %26, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %32, align 1, !tbaa !9
  store i8 0, ptr %32, align 1, !tbaa !9
  %36 = call i64 @strtol(ptr noundef nonnull %31, ptr noundef nonnull %5, i32 noundef 10) #13
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %2, align 4, !tbaa !5
  %38 = load ptr, ptr %5, align 8, !tbaa !10
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8, ptr %31, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %34
  store i8 %35, ptr %32, align 1, !tbaa !9
  br label %26

45:                                               ; preds = %41
  store i8 %35, ptr %32, align 1, !tbaa !9
  %46 = getelementptr inbounds i8, ptr %32, i64 1
  %47 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @.str.3) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %47, align 1, !tbaa !9
  store i8 0, ptr %47, align 1, !tbaa !9
  %51 = call double @strtod(ptr noundef nonnull %46, ptr noundef nonnull %5) #13
  store double %51, ptr %3, align 8, !tbaa !12
  %52 = load ptr, ptr %5, align 8, !tbaa !10
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8, ptr %46, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %49
  store i8 %50, ptr %47, align 1, !tbaa !9
  br label %26

59:                                               ; preds = %55
  store i8 %50, ptr %47, align 1, !tbaa !9
  br label %63

60:                                               ; preds = %26, %10, %45, %7
  %61 = phi i1 [ %9, %7 ], [ %29, %26 ], [ %11, %10 ], [ %11, %45 ]
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i1 [ %11, %59 ], [ %61, %60 ]
  %65 = phi i1 [ false, %59 ], [ %62, %60 ]
  %66 = or i1 %65, %64
  br i1 %66, label %67, label %83

67:                                               ; preds = %4, %63
  br label %73

68:                                               ; preds = %73
  %69 = add nuw nsw i64 %74, 1
  %70 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 16, !tbaa !14
  %72 = icmp eq i64 %69, 11
  br i1 %72, label %83, label %73, !llvm.loop !16

73:                                               ; preds = %67, %68
  %74 = phi i64 [ %69, %68 ], [ 0, %67 ]
  %75 = phi ptr [ %71, %68 ], [ @.str.15, %67 ]
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %75) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %68, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %74, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !18
  store i32 %80, ptr %1, align 4, !tbaa !5
  %81 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %74, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !19
  store i32 %82, ptr %2, align 4, !tbaa !5
  br label %83

83:                                               ; preds = %68, %78, %63
  %84 = load i32, ptr %1, align 4, !tbaa !5
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %2, align 4, !tbaa !5
  %88 = icmp ne i32 %87, -1
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ 0, %83 ], [ %89, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ParseFrameNoFormatFromString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !5
  store i32 -1, ptr %6, align 4, !tbaa !5
  %7 = ptrtoint ptr %0 to i64
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 37)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %1, %31
  %11 = phi ptr [ %32, %31 ], [ %8, %1 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %7
  %14 = tail call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %13) #13
  %15 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %11, i32 100)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %10
  store i8 0, ptr %15, align 1, !tbaa !9
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 48
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, ptr %5, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %21, %17
  %23 = call i64 @strtol(ptr noundef nonnull %18, ptr noundef nonnull %2, i32 noundef 10) #13
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %6, align 4, !tbaa !5
  %25 = load ptr, ptr %2, align 8, !tbaa !10
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8, ptr %18, align 1, !tbaa !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  store i8 100, ptr %15, align 1, !tbaa !9
  %32 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %25, i32 37)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %10, !llvm.loop !20

34:                                               ; preds = %28
  store i8 100, ptr %15, align 1, !tbaa !9
  %35 = getelementptr inbounds i8, ptr %25, i64 1
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #14
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = tail call ptr @strncpy(ptr noundef nonnull %4, ptr noundef nonnull %35, i64 noundef %38) #13
  br label %40

40:                                               ; preds = %10, %31, %1, %34
  %41 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !21
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4, !tbaa !5
  %46 = icmp eq i32 %45, -1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %40, %44
  %49 = phi i32 [ %47, %44 ], [ 0, %40 ]
  %50 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 6
  store i32 %49, ptr %50, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OpenFrameFile(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca [255 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  store i8 0, ptr %4, align 16, !tbaa !9
  %5 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %7 = shl i64 %6, 32
  %8 = ashr exact i64 %7, 32
  %9 = call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %8) #13
  %10 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %8
  store i8 0, ptr %10, align 1, !tbaa !9
  %11 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !25
  %16 = select i1 %13, ptr @.str.7, ptr @.str.6
  %17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 16, ptr noundef nonnull %16, i32 noundef %15, i32 noundef %1) #13
  %18 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4, i64 noundef 16) #13
  %19 = trunc i64 %6 to i32
  %20 = add i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !9
  %23 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 2
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #14
  %25 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %23, i64 noundef %24) #13
  %26 = trunc i64 %24 to i32
  %27 = add nsw i32 %20, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !9
  %30 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 0) #13
  %31 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  store i32 %30, ptr %31, align 8, !tbaa !26
  %32 = icmp eq i32 %30, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %3) #15
  call void @report_stats_on_error() #13
  br label %35

35:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @report_stats_on_error() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OpenFiles(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %7 = and i64 %6, 4294967295
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i64 60, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 8, !tbaa !26
  %13 = icmp eq i32 %11, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) #13
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #13
  br label %16

16:                                               ; preds = %10, %14, %1
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CloseFiles(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #13
  br label %7

7:                                                ; preds = %5, %1
  store i32 -1, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ParseVideoType(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %3 = shl i64 %2, 32
  %4 = ashr exact i64 %3, 32
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = getelementptr inbounds i8, ptr %5, i64 -3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.11) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !21
  %11 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %12, align 8, !tbaa !29
  br label %34

13:                                               ; preds = %1
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.12) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !21
  %18 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 3, ptr %18, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %19, align 8, !tbaa !29
  br label %34

20:                                               ; preds = %13
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.13) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 3, ptr %24, align 4, !tbaa !21
  %25 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %25, align 8, !tbaa !29
  br label %34

26:                                               ; preds = %20
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.14) #14
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  br i1 %28, label %30, label %31

30:                                               ; preds = %26
  store i32 4, ptr %29, align 4, !tbaa !21
  br label %34

31:                                               ; preds = %26
  store i32 0, ptr %29, align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 1, ptr %32, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %33, align 8, !tbaa !29
  br label %34

34:                                               ; preds = %16, %30, %31, %23, %9
  %35 = phi i32 [ 1, %16 ], [ 4, %30 ], [ 0, %31 ], [ 3, %23 ], [ 0, %9 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"video_size", !11, i64 0, !6, i64 8, !6, i64 12}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!15, !6, i64 8}
!19 = !{!15, !6, i64 12}
!20 = distinct !{!20, !17}
!21 = !{!22, !6, i64 772}
!22 = !{!"video_data_file", !7, i64 0, !7, i64 255, !7, i64 510, !6, i64 768, !6, i64 772, !23, i64 776, !6, i64 912, !6, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !6, i64 940, !6, i64 944, !6, i64 948, !6, i64 952, !11, i64 960}
!23 = !{!"frame_format", !6, i64 0, !6, i64 4, !13, i64 8, !7, i64 16, !7, i64 28, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !7, i64 72, !6, i64 84, !7, i64 88, !7, i64 100, !7, i64 112, !6, i64 124, !6, i64 128}
!24 = !{!22, !6, i64 920}
!25 = !{!22, !6, i64 924}
!26 = !{!22, !6, i64 768}
!27 = !{!22, !6, i64 912}
!28 = !{!22, !6, i64 776}
!29 = !{!22, !11, i64 960}
