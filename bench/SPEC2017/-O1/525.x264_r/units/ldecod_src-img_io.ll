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

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ParseSizeFromString(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i32 -1, ptr %2, align 4, !tbaa !34
  store i32 -1, ptr %1, align 4, !tbaa !34
  %6 = icmp eq ptr %0, null
  br i1 %6, label %63, label %7

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
  store i8 0, ptr %13, align 1, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = call i64 @strtol(ptr noundef nonnull %16, ptr noundef nonnull %5, i32 noundef 10) #12
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %1, align 4, !tbaa !34
  %19 = load ptr, ptr %5, align 8, !tbaa !39
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i8, ptr %16, align 1, !tbaa !38
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %15
  store i8 120, ptr %13, align 1, !tbaa !38
  br label %26

26:                                               ; preds = %25, %44, %58, %30
  %27 = phi ptr [ %19, %25 ], [ %38, %44 ], [ %52, %58 ], [ %31, %30 ]
  %28 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 95)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %10

30:                                               ; preds = %22
  store i8 120, ptr %13, align 1, !tbaa !38
  %31 = getelementptr inbounds i8, ptr %13, i64 1
  %32 = tail call ptr @strpbrk(ptr noundef nonnull %31, ptr noundef nonnull @.str.2) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %26, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %32, align 1, !tbaa !38
  store i8 0, ptr %32, align 1, !tbaa !38
  %36 = call i64 @strtol(ptr noundef nonnull %31, ptr noundef nonnull %5, i32 noundef 10) #12
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %2, align 4, !tbaa !34
  %38 = load ptr, ptr %5, align 8, !tbaa !39
  %39 = load i8, ptr %38, align 1, !tbaa !38
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8, ptr %31, align 1, !tbaa !38
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %34
  store i8 %35, ptr %32, align 1, !tbaa !38
  br label %26

45:                                               ; preds = %41
  store i8 %35, ptr %32, align 1, !tbaa !38
  %46 = getelementptr inbounds i8, ptr %32, i64 1
  %47 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @.str.3) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %47, align 1, !tbaa !38
  store i8 0, ptr %47, align 1, !tbaa !38
  %51 = call double @strtod(ptr noundef nonnull %46, ptr noundef nonnull %5) #12
  store double %51, ptr %3, align 8, !tbaa !41
  %52 = load ptr, ptr %5, align 8, !tbaa !39
  %53 = load i8, ptr %52, align 1, !tbaa !38
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8, ptr %46, align 1, !tbaa !38
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %49
  store i8 %50, ptr %47, align 1, !tbaa !38
  br label %26

59:                                               ; preds = %55
  store i8 %50, ptr %47, align 1, !tbaa !38
  br label %63

60:                                               ; preds = %26, %10, %45, %7
  %61 = phi i1 [ %9, %7 ], [ %29, %26 ], [ %11, %10 ], [ %11, %45 ]
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %60, %4, %59
  %64 = phi i1 [ false, %59 ], [ true, %4 ], [ %62, %60 ]
  %65 = phi i1 [ false, %59 ], [ true, %4 ], [ %61, %60 ]
  %66 = or i1 %64, %65
  br i1 %66, label %72, label %82

67:                                               ; preds = %72
  %68 = add nuw nsw i64 %73, 1
  %69 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 16, !tbaa !43
  %71 = icmp eq i64 %68, 11
  br i1 %71, label %82, label %72, !llvm.loop !45

72:                                               ; preds = %63, %67
  %73 = phi i64 [ %68, %67 ], [ 0, %63 ]
  %74 = phi ptr [ %70, %67 ], [ @.str.15, %63 ]
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %74) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %67, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %73, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !48
  store i32 %79, ptr %1, align 4, !tbaa !34
  %80 = getelementptr inbounds [12 x %struct.video_size], ptr @VideoRes, i64 0, i64 %73, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !49
  store i32 %81, ptr %2, align 4, !tbaa !34
  br label %82

82:                                               ; preds = %67, %77, %63
  %83 = load i32, ptr %1, align 4, !tbaa !34
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %2, align 4, !tbaa !34
  %87 = icmp ne i32 %86, -1
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i32 [ 0, %82 ], [ %88, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %90
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @ParseFrameNoFormatFromString(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !34
  store i32 -1, ptr %6, align 4, !tbaa !34
  %7 = icmp eq ptr %0, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i64
  %10 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 37)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %8, %33
  %13 = phi ptr [ %34, %33 ], [ %10, %8 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = tail call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %15) #12
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 100)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %12
  store i8 0, ptr %17, align 1, !tbaa !38
  %20 = getelementptr inbounds i8, ptr %13, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = icmp eq i8 %21, 48
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, ptr %5, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %23, %19
  %25 = call i64 @strtol(ptr noundef nonnull %20, ptr noundef nonnull %2, i32 noundef 10) #12
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %6, align 4, !tbaa !34
  %27 = load ptr, ptr %2, align 8, !tbaa !39
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8, ptr %20, align 1, !tbaa !38
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %24
  store i8 100, ptr %17, align 1, !tbaa !38
  %34 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 37)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %12

36:                                               ; preds = %30
  store i8 100, ptr %17, align 1, !tbaa !38
  %37 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %37, ptr %2, align 8, !tbaa !39
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #13
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = tail call ptr @strncpy(ptr noundef nonnull %4, ptr noundef nonnull %37, i64 noundef %40) #12
  br label %42

42:                                               ; preds = %12, %33, %8, %1, %36
  %43 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %6, align 4, !tbaa !34
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %42, %46
  %51 = phi i32 [ %49, %46 ], [ 0, %42 ]
  %52 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 6
  store i32 %51, ptr %52, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OpenFrameFile(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca [255 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  store i8 0, ptr %4, align 16, !tbaa !38
  %5 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #13
  %7 = shl i64 %6, 32
  %8 = ashr exact i64 %7, 32
  %9 = call ptr @strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef %8) #12
  %10 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %8
  store i8 0, ptr %10, align 1, !tbaa !38
  %11 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = select i1 %13, ptr @.str.7, ptr @.str.6
  %17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 16, ptr noundef nonnull %16, i32 noundef %15, i32 noundef %1) #12
  %18 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4, i64 noundef 16) #12
  %19 = trunc i64 %6 to i32
  %20 = add i32 %19, 16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !38
  %23 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 2
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #13
  %25 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %23, i64 noundef %24) #12
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #13
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !38
  %31 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 0) #12
  %32 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  store i32 %31, ptr %32, align 8, !tbaa !56
  %33 = icmp eq i32 %31, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %3)
  call void @report_stats_on_error() #12
  br label %36

36:                                               ; preds = %34, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @report_stats_on_error() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @OpenFiles(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %7 = and i64 %6, 4294967295
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i64 60, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #12
  %12 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 8, !tbaa !56
  %13 = icmp eq i32 %11, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.10, ptr noundef %0) #12
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #12
  br label %16

16:                                               ; preds = %10, %14, %1
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @CloseFiles(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #12
  br label %7

7:                                                ; preds = %5, %1
  store i32 -1, ptr %2, align 8, !tbaa !56
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ParseVideoType(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %3 = shl i64 %2, 32
  %4 = ashr exact i64 %3, 32
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = getelementptr inbounds i8, ptr %5, i64 -3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.11) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %12, align 8, !tbaa !58
  br label %34

13:                                               ; preds = %1
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.12) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 3, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %19, align 8, !tbaa !58
  br label %34

20:                                               ; preds = %13
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.13) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  store i32 3, ptr %24, align 4, !tbaa !50
  %25 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %34

26:                                               ; preds = %20
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.14) #13
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  br i1 %28, label %30, label %31

30:                                               ; preds = %26
  store i32 4, ptr %29, align 4, !tbaa !50
  br label %34

31:                                               ; preds = %26
  store i32 0, ptr %29, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 5
  store i32 1, ptr %32, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 17
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %34

34:                                               ; preds = %16, %30, %31, %23, %9
  %35 = getelementptr inbounds %struct.video_data_file, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !50
  ret i32 %36
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !36, i64 0}
!43 = !{!44, !40, i64 0}
!44 = !{!"video_size", !40, i64 0, !35, i64 8, !35, i64 12}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!44, !35, i64 8}
!49 = !{!44, !35, i64 12}
!50 = !{!51, !35, i64 772}
!51 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !35, i64 768, !35, i64 772, !52, i64 776, !35, i64 912, !35, i64 916, !35, i64 920, !35, i64 924, !35, i64 928, !35, i64 932, !35, i64 936, !35, i64 940, !35, i64 944, !35, i64 948, !35, i64 952, !40, i64 960}
!52 = !{!"frame_format", !35, i64 0, !35, i64 4, !42, i64 8, !36, i64 16, !36, i64 28, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !36, i64 72, !35, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !35, i64 124, !35, i64 128}
!53 = !{!51, !35, i64 912}
!54 = !{!51, !35, i64 920}
!55 = !{!51, !35, i64 924}
!56 = !{!51, !35, i64 768}
!57 = !{!51, !35, i64 776}
!58 = !{!51, !40, i64 960}
