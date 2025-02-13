; ModuleID = 'x264_src/input/timecode.c'
source_filename = "x264_src/input/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timecode_hnd_t = type { %struct.cli_input_t, ptr, i32, i32, i32, i64, i64, i32, i32, ptr, double, double }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@timecode_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"timecode [error]: malloc failed\0A\00", align 1
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"timecode [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"timecode [error]: can't open `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"timecode [error]: unsupported timecode format\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"timecode [error]: tcfile parsing error: assumed fps not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"timecode [error]: invalid assumed fps %.6f\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"timecode [error]: invalid input tcfile\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"timecode [error]: invalid input tcfile at line %d: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"timecode [error]: input tcfile doesn't have any timecodes!\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"timecode [error]: invalid input tcfile for frame 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"timecode [error]: invalid input tcfile for frame %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"timecode [info]: automatic timebase generation %lu/%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [117 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"timecode [error]: invalid timebase or timecode for frame %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [126 x i8] c"timecode [error]: tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"timecode [error]: automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1
@.str.25 = private unnamed_addr constant [118 x i8] c"timecode [info]: input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !34 {
  %5 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !35
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %8) #17
  br label %89

10:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false), !tbaa.struct !39
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !40
  %13 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !tbaa !46
  %14 = tail call i32 %13(ptr noundef %11) #18
  %15 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.cli_input_opt_t, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 7
  store i32 %17, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.cli_input_opt_t, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 3
  store i32 1, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 4
  store i32 1, ptr %24, align 8, !tbaa !53
  br label %51

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 5
  %27 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 6
  %28 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %20, ptr noundef nonnull @.str.1, ptr noundef nonnull %26, ptr noundef nonnull %27) #18
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load ptr, ptr %19, align 8, !tbaa !51
  %32 = tail call i64 @strtoul(ptr nocapture noundef %31, ptr noundef null, i32 noundef 10) #18
  store i64 %32, ptr %26, align 8, !tbaa !54
  br label %35

33:                                               ; preds = %25
  %34 = load i64, ptr %26, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %34, %33 ], [ %32, %30 ]
  %37 = icmp ugt i64 %36, 4294967295
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, ptr %27, align 8, !tbaa !55
  %40 = icmp ugt i64 %39, 4294967295
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35
  %42 = load ptr, ptr @stderr, align 8, !tbaa !35
  %43 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %42) #17
  br label %89

44:                                               ; preds = %38
  %45 = icmp eq i32 %28, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 3
  store i32 %46, ptr %47, align 4, !tbaa !52
  %48 = icmp slt i32 %28, 2
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 4
  store i32 %49, ptr %50, align 8, !tbaa !53
  br i1 %45, label %51, label %57

51:                                               ; preds = %22, %44
  %52 = phi i32 [ 1, %22 ], [ %49, %44 ]
  %53 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 5
  store i64 %55, ptr %56, align 8, !tbaa !54
  br label %57

57:                                               ; preds = %51, %44
  %58 = phi i32 [ %52, %51 ], [ %49, %44 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 6
  store i64 0, ptr %61, align 8, !tbaa !55
  br label %62

62:                                               ; preds = %60, %57
  %63 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  store ptr %64, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 2), align 8, !tbaa !59
  %65 = getelementptr inbounds %struct.cli_input_t, ptr %5, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !60
  store ptr %66, ptr getelementptr inbounds (%struct.cli_input_t, ptr @timecode_input, i64 0, i32 5), align 8, !tbaa !61
  store ptr %5, ptr %1, align 8, !tbaa !35
  %67 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.3) #19
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load ptr, ptr @stderr, align 8, !tbaa !35
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.4, ptr noundef %0) #20
  br label %89

72:                                               ; preds = %62
  %73 = tail call fastcc i32 @parse_tcfile(ptr noundef nonnull %67, ptr noundef nonnull %5, ptr noundef %2) #19, !range !62
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @free(ptr noundef nonnull %77) #18
  br label %80

80:                                               ; preds = %79, %75
  %81 = tail call i32 @fclose(ptr noundef nonnull %67) #19
  br label %89

82:                                               ; preds = %72
  %83 = tail call i32 @fclose(ptr noundef nonnull %67) #19
  %84 = getelementptr inbounds %struct.timecode_hnd_t, ptr %5, i64 0, i32 5
  %85 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 8
  %86 = load <2 x i64>, ptr %84, align 8, !tbaa !64
  %87 = trunc <2 x i64> %86 to <2 x i32>
  store <2 x i32> %87, ptr %85, align 4, !tbaa !65
  %88 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 10
  store i32 1, ptr %88, align 4, !tbaa !66
  br label %89

89:                                               ; preds = %82, %80, %69, %41, %7
  %90 = phi i32 [ -1, %41 ], [ -1, %80 ], [ 0, %82 ], [ -1, %69 ], [ -1, %7 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %0) #1 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @read_frame(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 !PGOFuncName !68 {
  %4 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %7, i32 noundef %2) #18
  %9 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = sub nsw i32 %2, %10
  %12 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !70
  %14 = icmp slt i32 %11, %13
  %15 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  br i1 %14, label %17, label %21

17:                                               ; preds = %3
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i64, ptr %16, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !64
  br label %44

21:                                               ; preds = %3
  %22 = icmp eq ptr %16, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr @stderr, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  %26 = load double, ptr %25, align 8, !tbaa !71
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef %2, double noundef %26) #20
  %28 = load ptr, ptr %15, align 8, !tbaa !63
  tail call void @free(ptr noundef %28) #18
  store ptr null, ptr %15, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %23, %21
  %30 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  %31 = load double, ptr %30, align 8, !tbaa !71
  %32 = fdiv double 1.000000e+00, %31
  %33 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 11
  %34 = load double, ptr %33, align 8, !tbaa !72
  %35 = fadd double %34, %32
  store double %35, ptr %33, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %37 = load <2 x i64>, ptr %36, align 8, !tbaa !64
  %38 = uitofp <2 x i64> %37 to <2 x double>
  %39 = extractelement <2 x double> %38, i64 0
  %40 = extractelement <2 x double> %38, i64 1
  %41 = fdiv double %40, %39
  %42 = tail call double @llvm.fmuladd.f64(double %35, double %41, double 5.000000e-01)
  %43 = fptosi double %42 to i64
  br label %44

44:                                               ; preds = %29, %17
  %45 = phi i64 [ %43, %29 ], [ %20, %17 ]
  %46 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 4
  store i64 %45, ptr %46, align 8, !tbaa !73
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @release_frame(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.cli_input_t, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = tail call i32 %4(ptr noundef %0, ptr noundef %8) #18
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @close_file(ptr nocapture noundef %0) #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.cli_input_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.timecode_hnd_t, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = tail call i32 %8(ptr noundef %10) #18
  tail call void @free(ptr noundef nonnull %0) #18
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @parse_tcfile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !81 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %11 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #18
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load ptr, ptr @stderr, align 8, !tbaa !35
  %19 = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %18) #17
  br label %620

20:                                               ; preds = %13
  %21 = icmp eq i32 %14, 1
  br i1 %21, label %22, label %331

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  %23 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !50
  store i32 %24, ptr %8, align 4, !tbaa !65
  %25 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  store double 0.000000e+00, ptr %25, align 8, !tbaa !71
  %26 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %22, %40
  %29 = phi i32 [ %41, %40 ], [ 2, %22 ]
  %30 = load i8, ptr %4, align 16
  switch i8 %30, label %31 [
    i8 35, label %40
    i8 13, label %40
    i8 10, label %40
  ]

31:                                               ; preds = %28
  %32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef nonnull %25) #18
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %25) #18
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !35
  %39 = call i64 @fwrite(ptr nonnull @.str.10, i64 62, i64 1, ptr %38) #17
  br label %328

40:                                               ; preds = %28, %28, %28
  %41 = add nuw nsw i32 %29, 1
  %42 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %28, !llvm.loop !82

44:                                               ; preds = %40, %22, %31, %34
  %45 = phi i32 [ %29, %31 ], [ %29, %34 ], [ 2, %22 ], [ %41, %40 ]
  %46 = load double, ptr %25, align 8, !tbaa !71
  %47 = fcmp ugt double %46, 0.000000e+00
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @stderr, align 8, !tbaa !35
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.11, double noundef %46) #20
  br label %328

51:                                               ; preds = %44
  %52 = call i64 @ftell(ptr noundef %0) #19
  %53 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 8
  store i32 0, ptr %53, align 4, !tbaa !70
  %54 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %107, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %58 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  br label %59

59:                                               ; preds = %56, %100
  %60 = phi i32 [ %45, %56 ], [ %104, %100 ]
  %61 = phi i32 [ 0, %56 ], [ %103, %100 ]
  %62 = phi i32 [ -1, %56 ], [ %102, %100 ]
  %63 = phi i32 [ -1, %56 ], [ %101, %100 ]
  %64 = load i8, ptr %4, align 16
  switch i8 %64, label %73 [
    i8 35, label %65
    i8 13, label %65
    i8 10, label %65
  ]

65:                                               ; preds = %59, %59, %59
  %66 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %8) #18
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load i32, ptr %8, align 4, !tbaa !65
  %70 = add nsw i32 %69, 1
  %71 = load i32, ptr %23, align 8, !tbaa !50
  %72 = sub i32 %70, %71
  store i32 %72, ptr %53, align 4, !tbaa !70
  br label %100

73:                                               ; preds = %59
  %74 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #18
  switch i32 %74, label %75 [
    i32 -1, label %78
    i32 3, label %78
  ]

75:                                               ; preds = %73
  %76 = load ptr, ptr @stderr, align 8, !tbaa !35
  %77 = call i64 @fwrite(ptr nonnull @.str.14, i64 39, i64 1, ptr %76) #17
  br label %328

78:                                               ; preds = %73, %73
  %79 = load i32, ptr %7, align 4, !tbaa !65
  %80 = load i32, ptr %8, align 4, !tbaa !65
  %81 = icmp sle i32 %79, %80
  %82 = icmp sgt i32 %79, %63
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = icmp sle i32 %80, %62
  %86 = load double, ptr %6, align 8
  %87 = fcmp ole double %86, 0.000000e+00
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %78
  %90 = load ptr, ptr @stderr, align 8, !tbaa !35
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.15, i32 noundef %60, ptr noundef nonnull %4) #20
  br label %328

92:                                               ; preds = %84
  %93 = load i32, ptr %57, align 8, !tbaa !53
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %58, align 4, !tbaa !52
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95, %92
  %99 = add nsw i32 %61, 1
  br label %100

100:                                              ; preds = %95, %98, %65, %68
  %101 = phi i32 [ %63, %68 ], [ %63, %65 ], [ %79, %98 ], [ %79, %95 ]
  %102 = phi i32 [ %62, %68 ], [ %62, %65 ], [ %80, %98 ], [ %80, %95 ]
  %103 = phi i32 [ %61, %68 ], [ %61, %65 ], [ %99, %98 ], [ %61, %95 ]
  %104 = add nuw nsw i32 %60, 1
  %105 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %59, !llvm.loop !84

107:                                              ; preds = %100, %51
  %108 = phi i32 [ 0, %51 ], [ %103, %100 ]
  %109 = load i32, ptr %53, align 4, !tbaa !70
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %23, align 8, !tbaa !50
  br i1 %110, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, ptr %8, align 4, !tbaa !65
  %114 = add nsw i32 %113, 1
  %115 = sub i32 %114, %111
  store i32 %115, ptr %53, align 4, !tbaa !70
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i32 [ %115, %112 ], [ %109, %107 ]
  %118 = add nsw i32 %111, %117
  %119 = call i32 @fseek(ptr noundef %0, i64 noundef %52, i32 noundef 0) #19
  %120 = sext i32 %118 to i64
  %121 = shl nsw i64 %120, 3
  %122 = call noalias ptr @malloc(i64 noundef %121) #16
  %123 = icmp eq ptr %122, null
  br i1 %123, label %328, label %124

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %126 = load i32, ptr %125, align 8, !tbaa !53
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !52
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128, %124
  %133 = add nsw i32 %108, 1
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 3
  %136 = call noalias ptr @malloc(i64 noundef %135) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %329, label %138

138:                                              ; preds = %132, %128
  %139 = phi ptr [ %136, %132 ], [ null, %128 ]
  %140 = load double, ptr %25, align 8, !tbaa !71
  %141 = call fastcc double @correct_fps(double noundef %140, ptr noundef nonnull %1) #19
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %329, label %143

143:                                              ; preds = %138
  store double 0.000000e+00, ptr %122, align 8, !tbaa !85
  %144 = add nsw i32 %118, -1
  %145 = icmp sgt i32 %118, 1
  br i1 %145, label %146, label %230

146:                                              ; preds = %143
  %147 = fdiv double 1.000000e+00, %141
  %148 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  %149 = zext nneg i32 %144 to i64
  br label %150

150:                                              ; preds = %146, %226
  %151 = phi i32 [ 0, %146 ], [ %228, %226 ]
  %152 = phi i32 [ 0, %146 ], [ %227, %226 ]
  br label %153

153:                                              ; preds = %156, %150
  %154 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %155 = load i8, ptr %4, align 16
  switch i8 %155, label %157 [
    i8 35, label %156
    i8 13, label %156
    i8 10, label %156
  ]

156:                                              ; preds = %153, %153, %153
  br label %153

157:                                              ; preds = %153
  %158 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #18
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, ptr %7, align 4, !tbaa !65
  br label %163

162:                                              ; preds = %157
  store i32 %144, ptr %8, align 4, !tbaa !65
  store i32 %144, ptr %7, align 4, !tbaa !65
  br label %163

163:                                              ; preds = %160, %162
  %164 = phi i32 [ %161, %160 ], [ %144, %162 ]
  %165 = icmp slt i32 %151, %164
  %166 = icmp slt i32 %151, %144
  %167 = and i1 %166, %165
  br i1 %167, label %168, label %184

168:                                              ; preds = %163
  %169 = sext i32 %151 to i64
  %170 = sext i32 %164 to i64
  %171 = getelementptr inbounds double, ptr %122, i64 %169
  %172 = load double, ptr %171, align 8, !tbaa !85
  br label %173

173:                                              ; preds = %168, %173
  %174 = phi double [ %172, %168 ], [ %176, %173 ]
  %175 = phi i64 [ %169, %168 ], [ %177, %173 ]
  %176 = fadd double %147, %174
  %177 = add nsw i64 %175, 1
  %178 = getelementptr inbounds double, ptr %122, i64 %177
  store double %176, ptr %178, align 8, !tbaa !85
  %179 = icmp slt i64 %177, %170
  %180 = icmp slt i64 %177, %149
  %181 = and i1 %180, %179
  br i1 %181, label %173, label %182, !llvm.loop !86

182:                                              ; preds = %173
  %183 = trunc i64 %177 to i32
  br i1 %180, label %185, label %226

184:                                              ; preds = %163
  br i1 %166, label %185, label %226

185:                                              ; preds = %182, %184
  %186 = load i32, ptr %125, align 8, !tbaa !53
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, ptr %148, align 4, !tbaa !52
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load double, ptr %6, align 8, !tbaa !85
  br label %198

193:                                              ; preds = %188, %185
  %194 = load double, ptr %6, align 8, !tbaa !85
  %195 = add nsw i32 %152, 1
  %196 = sext i32 %152 to i64
  %197 = getelementptr inbounds double, ptr %139, i64 %196
  store double %194, ptr %197, align 8, !tbaa !85
  br label %198

198:                                              ; preds = %191, %193
  %199 = phi double [ %194, %193 ], [ %192, %191 ]
  %200 = phi i32 [ %195, %193 ], [ %152, %191 ]
  %201 = call fastcc double @correct_fps(double noundef %199, ptr noundef nonnull %1) #19
  store double %201, ptr %6, align 8, !tbaa !85
  %202 = fcmp olt double %201, 0.000000e+00
  br i1 %202, label %329, label %203

203:                                              ; preds = %198
  %204 = load i32, ptr %7, align 4, !tbaa !65
  %205 = load i32, ptr %8, align 4, !tbaa !65
  %206 = icmp sle i32 %204, %205
  %207 = icmp slt i32 %204, %144
  %208 = and i1 %207, %206
  br i1 %208, label %209, label %226

209:                                              ; preds = %203
  %210 = fdiv double 1.000000e+00, %201
  %211 = sext i32 %204 to i64
  %212 = sext i32 %205 to i64
  %213 = getelementptr inbounds double, ptr %122, i64 %211
  %214 = load double, ptr %213, align 8, !tbaa !85
  br label %215

215:                                              ; preds = %209, %215
  %216 = phi double [ %214, %209 ], [ %218, %215 ]
  %217 = phi i64 [ %211, %209 ], [ %219, %215 ]
  %218 = fadd double %210, %216
  %219 = add nsw i64 %217, 1
  %220 = getelementptr inbounds double, ptr %122, i64 %219
  store double %218, ptr %220, align 8, !tbaa !85
  %221 = icmp slt i64 %217, %212
  %222 = icmp slt i64 %219, %149
  %223 = and i1 %222, %221
  br i1 %223, label %215, label %224, !llvm.loop !87

224:                                              ; preds = %215
  %225 = trunc i64 %219 to i32
  br label %226

226:                                              ; preds = %182, %224, %203, %184
  %227 = phi i32 [ %152, %184 ], [ %200, %203 ], [ %200, %224 ], [ %152, %182 ]
  %228 = phi i32 [ %151, %184 ], [ %204, %203 ], [ %225, %224 ], [ %183, %182 ]
  %229 = icmp slt i32 %228, %144
  br i1 %229, label %150, label %230, !llvm.loop !88

230:                                              ; preds = %226, %143
  %231 = phi i32 [ 0, %143 ], [ %227, %226 ]
  %232 = load i32, ptr %125, align 8, !tbaa !53
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %320

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  %236 = load i32, ptr %235, align 4, !tbaa !52
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %317, label %238

238:                                              ; preds = %234
  %239 = load double, ptr %25, align 8, !tbaa !71
  %240 = sext i32 %231 to i64
  %241 = getelementptr inbounds double, ptr %139, i64 %240
  store double %239, ptr %241, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %242 = add nsw i32 %231, 1
  %243 = call fastcc i32 @try_mkv_timebase_den(ptr noundef %139, ptr noundef nonnull %1, i32 noundef %242) #19
  %244 = icmp sgt i32 %243, -1
  br i1 %244, label %246, label %245

245:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %329

246:                                              ; preds = %238
  %247 = call i32 @fseek(ptr noundef %0, i64 noundef %52, i32 noundef 0) #19
  %248 = load double, ptr %25, align 8, !tbaa !71
  %249 = call fastcc double @sigexp10(double noundef %248, ptr noundef nonnull %9) #19
  %250 = fdiv double 1.000000e+09, %249
  %251 = call double @llvm.round.f64(double %250)
  %252 = load double, ptr %9, align 8, !tbaa !85
  %253 = fdiv double %251, %252
  %254 = fdiv double 1.000000e+09, %253
  br i1 %145, label %255, label %316

255:                                              ; preds = %246
  %256 = fdiv double 1.000000e+00, %254
  %257 = zext nneg i32 %144 to i64
  br label %263

258:                                              ; preds = %307
  %259 = trunc i64 %311 to i32
  br label %260

260:                                              ; preds = %258, %289
  %261 = phi i32 [ %281, %289 ], [ %259, %258 ]
  %262 = icmp slt i32 %261, %144
  br i1 %262, label %263, label %316

263:                                              ; preds = %255, %260
  %264 = phi i32 [ 0, %255 ], [ %261, %260 ]
  br label %265

265:                                              ; preds = %268, %263
  %266 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %267 = load i8, ptr %4, align 16
  switch i8 %267, label %269 [
    i8 35, label %268
    i8 13, label %268
    i8 10, label %268
  ]

268:                                              ; preds = %265, %265, %265
  br label %265

269:                                              ; preds = %265
  %270 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #18
  %271 = icmp eq i32 %270, 3
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  store i32 %144, ptr %8, align 4, !tbaa !65
  store i32 %144, ptr %7, align 4, !tbaa !65
  br label %273

273:                                              ; preds = %272, %269
  %274 = load double, ptr %6, align 8, !tbaa !85
  %275 = call fastcc double @sigexp10(double noundef %274, ptr noundef nonnull %9) #19
  %276 = fdiv double 1.000000e+09, %275
  %277 = call double @llvm.round.f64(double %276)
  %278 = load double, ptr %9, align 8, !tbaa !85
  %279 = fdiv double %277, %278
  %280 = fdiv double 1.000000e+09, %279
  store double %280, ptr %6, align 8, !tbaa !85
  %281 = load i32, ptr %7, align 4, !tbaa !65
  %282 = call i32 @llvm.smin.i32(i32 %144, i32 %281)
  %283 = icmp slt i32 %264, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %273
  %285 = sext i32 %264 to i64
  %286 = sext i32 %282 to i64
  %287 = getelementptr inbounds double, ptr %122, i64 %285
  %288 = load double, ptr %287, align 8, !tbaa !85
  br label %300

289:                                              ; preds = %300, %273
  %290 = load i32, ptr %8, align 4, !tbaa !65
  %291 = icmp sle i32 %281, %290
  %292 = icmp slt i32 %281, %144
  %293 = and i1 %292, %291
  br i1 %293, label %294, label %260, !llvm.loop !89

294:                                              ; preds = %289
  %295 = fdiv double 1.000000e+00, %280
  %296 = sext i32 %281 to i64
  %297 = sext i32 %290 to i64
  %298 = getelementptr inbounds double, ptr %122, i64 %296
  %299 = load double, ptr %298, align 8, !tbaa !85
  br label %307

300:                                              ; preds = %284, %300
  %301 = phi double [ %288, %284 ], [ %303, %300 ]
  %302 = phi i64 [ %285, %284 ], [ %304, %300 ]
  %303 = fadd double %256, %301
  %304 = add nsw i64 %302, 1
  %305 = getelementptr inbounds double, ptr %122, i64 %304
  store double %303, ptr %305, align 8, !tbaa !85
  %306 = icmp eq i64 %304, %286
  br i1 %306, label %289, label %300, !llvm.loop !90

307:                                              ; preds = %294, %307
  %308 = phi double [ %299, %294 ], [ %310, %307 ]
  %309 = phi i64 [ %296, %294 ], [ %311, %307 ]
  %310 = fadd double %295, %308
  %311 = add nsw i64 %309, 1
  %312 = getelementptr inbounds double, ptr %122, i64 %311
  store double %310, ptr %312, align 8, !tbaa !85
  %313 = icmp slt i64 %309, %297
  %314 = icmp slt i64 %311, %257
  %315 = and i1 %314, %313
  br i1 %315, label %307, label %258, !llvm.loop !91

316:                                              ; preds = %260, %246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %317

317:                                              ; preds = %234, %316
  %318 = phi double [ %254, %316 ], [ %141, %234 ]
  %319 = icmp eq ptr %139, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %230, %317
  %321 = phi double [ %318, %317 ], [ %141, %230 ]
  call void @free(ptr noundef nonnull %139) #18
  br label %322

322:                                              ; preds = %320, %317
  %323 = phi double [ %321, %320 ], [ %318, %317 ]
  store double %323, ptr %25, align 8, !tbaa !71
  %324 = sext i32 %144 to i64
  %325 = getelementptr inbounds double, ptr %122, i64 %324
  %326 = load double, ptr %325, align 8, !tbaa !85
  %327 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 11
  store double %326, ptr %327, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %540

328:                                              ; preds = %37, %48, %75, %89, %116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %620

329:                                              ; preds = %198, %132, %138, %245
  %330 = phi ptr [ %139, %245 ], [ %139, %138 ], [ null, %132 ], [ %139, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %615

331:                                              ; preds = %20
  %332 = call i64 @ftell(ptr noundef %0) #19
  %333 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 8
  store i32 0, ptr %333, align 4, !tbaa !70
  %334 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %335 = icmp eq ptr %334, null
  br i1 %335, label %362, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  br label %338

338:                                              ; preds = %336, %348
  %339 = phi i32 [ 0, %336 ], [ %342, %348 ]
  %340 = phi i64 [ %332, %336 ], [ %349, %348 ]
  br label %341

341:                                              ; preds = %338, %358
  %342 = phi i32 [ %339, %338 ], [ %359, %358 ]
  %343 = load i8, ptr %4, align 16
  switch i8 %343, label %352 [
    i8 35, label %344
    i8 13, label %344
    i8 10, label %344
  ]

344:                                              ; preds = %341, %341, %341
  %345 = icmp eq i32 %342, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %344
  %347 = call i64 @ftell(ptr noundef %0) #19
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi i64 [ %340, %344 ], [ %347, %346 ]
  %350 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %351 = icmp eq ptr %350, null
  br i1 %351, label %362, label %338, !llvm.loop !92

352:                                              ; preds = %341
  %353 = load i32, ptr %337, align 8, !tbaa !50
  %354 = icmp slt i32 %342, %353
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i32, ptr %333, align 4, !tbaa !70
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %333, align 4, !tbaa !70
  br label %358

358:                                              ; preds = %355, %352
  %359 = add nsw i32 %342, 1
  %360 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %341, !llvm.loop !92

362:                                              ; preds = %348, %358, %331
  %363 = phi i64 [ %332, %331 ], [ %340, %358 ], [ %349, %348 ]
  %364 = load i32, ptr %333, align 4, !tbaa !70
  %365 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  %366 = load i32, ptr %365, align 8, !tbaa !50
  %367 = add nsw i32 %366, %364
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %362
  %370 = load ptr, ptr @stderr, align 8, !tbaa !35
  %371 = call i64 @fwrite(ptr nonnull @.str.16, i64 59, i64 1, ptr %370) #17
  br label %620

372:                                              ; preds = %362
  %373 = call i32 @fseek(ptr noundef %0, i64 noundef %363, i32 noundef 0) #19
  %374 = sext i32 %367 to i64
  %375 = shl nsw i64 %374, 3
  %376 = call noalias ptr @malloc(i64 noundef %375) #16
  %377 = icmp eq ptr %376, null
  br i1 %377, label %620, label %378

378:                                              ; preds = %372
  %379 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %380 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, ptr noundef nonnull %376) #18
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = icmp sgt i32 %367, 1
  br i1 %383, label %384, label %414

384:                                              ; preds = %382
  %385 = zext nneg i32 %367 to i64
  br label %411

386:                                              ; preds = %378
  %387 = load ptr, ptr @stderr, align 8, !tbaa !35
  %388 = call i64 @fwrite(ptr nonnull @.str.18, i64 51, i64 1, ptr %387) #17
  br label %614

389:                                              ; preds = %411, %392
  %390 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 256, ptr noundef %0) #19
  %391 = load i8, ptr %4, align 16
  switch i8 %391, label %393 [
    i8 35, label %392
    i8 13, label %392
    i8 10, label %392
  ]

392:                                              ; preds = %389, %389, %389
  br i1 %413, label %389, label %414

393:                                              ; preds = %389
  %394 = getelementptr inbounds double, ptr %376, i64 %412
  %395 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, ptr noundef nonnull %394) #18
  %396 = load double, ptr %394, align 8, !tbaa !85
  %397 = fmul double %396, 1.000000e-03
  store double %397, ptr %394, align 8, !tbaa !85
  %398 = icmp eq i32 %395, 1
  br i1 %398, label %399, label %403

399:                                              ; preds = %393
  %400 = getelementptr double, ptr %394, i64 -1
  %401 = load double, ptr %400, align 8, !tbaa !85
  %402 = fcmp ugt double %397, %401
  br i1 %402, label %407, label %403

403:                                              ; preds = %399, %393
  %404 = trunc i64 %412 to i32
  %405 = load ptr, ptr @stderr, align 8, !tbaa !35
  %406 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %405, ptr noundef nonnull @.str.19, i32 noundef %404) #20
  br label %614

407:                                              ; preds = %399
  %408 = add nuw nsw i64 %412, 1
  %409 = icmp slt i64 %408, %374
  %410 = icmp eq i64 %408, %385
  br i1 %410, label %414, label %411, !llvm.loop !93

411:                                              ; preds = %384, %407
  %412 = phi i64 [ 1, %384 ], [ %408, %407 ]
  %413 = phi i1 [ true, %384 ], [ %409, %407 ]
  br label %389

414:                                              ; preds = %407, %392, %382
  %415 = icmp eq i32 %367, 1
  br i1 %415, label %416, label %421

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %418 = load i32, ptr %417, align 4, !tbaa !94
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  store i64 %419, ptr %420, align 8, !tbaa !55
  br label %524

421:                                              ; preds = %414
  %422 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %423 = load i32, ptr %422, align 8, !tbaa !53
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %510, label %425

425:                                              ; preds = %421
  %426 = add nsw i32 %367, -1
  %427 = sext i32 %426 to i64
  %428 = shl nsw i64 %427, 3
  %429 = call noalias ptr @malloc(i64 noundef %428) #16
  %430 = icmp eq ptr %429, null
  br i1 %430, label %614, label %431

431:                                              ; preds = %425
  br i1 %383, label %432, label %499

432:                                              ; preds = %431
  %433 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %434 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %435 = zext nneg i32 %426 to i64
  %436 = load i64, ptr %433, align 8, !tbaa !55
  br label %437

437:                                              ; preds = %432, %496
  %438 = phi i64 [ %436, %432 ], [ %497, %496 ]
  %439 = phi i64 [ 0, %432 ], [ %440, %496 ]
  %440 = add nuw nsw i64 %439, 1
  %441 = getelementptr inbounds double, ptr %376, i64 %440
  %442 = load double, ptr %441, align 8, !tbaa !85
  %443 = getelementptr inbounds double, ptr %376, i64 %439
  %444 = load double, ptr %443, align 8, !tbaa !85
  %445 = fsub double %442, %444
  %446 = fdiv double 1.000000e+00, %445
  %447 = getelementptr inbounds double, ptr %429, i64 %439
  store double %446, ptr %447, align 8, !tbaa !85
  %448 = and i64 %438, 2147483648
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %450, label %496

450:                                              ; preds = %437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %451 = call fastcc double @sigexp10(double noundef %446, ptr noundef nonnull %10) #19
  %452 = load i64, ptr %434, align 8, !tbaa !54
  %453 = load double, ptr %10, align 8, !tbaa !85
  %454 = uitofp i64 %452 to double
  %455 = fmul double %451, %454
  %456 = call double @llvm.round.f64(double %455)
  %457 = fmul double %453, %456
  %458 = fptoui double %457 to i64
  %459 = icmp ugt i64 %458, 4294967295
  br i1 %459, label %481, label %469

460:                                              ; preds = %469
  %461 = add nuw i64 %470, 1
  %462 = mul i64 %452, %461
  %463 = uitofp i64 %462 to double
  %464 = fmul double %451, %463
  %465 = call double @llvm.round.f64(double %464)
  %466 = fmul double %453, %465
  %467 = fptoui double %466 to i64
  %468 = icmp ugt i64 %467, 4294967295
  br i1 %468, label %481, label %469

469:                                              ; preds = %450, %460
  %470 = phi i64 [ %461, %460 ], [ 1, %450 ]
  %471 = phi i64 [ %467, %460 ], [ %458, %450 ]
  %472 = phi double [ %463, %460 ], [ %454, %450 ]
  %473 = uitofp i64 %471 to double
  %474 = fdiv double %473, %472
  %475 = fdiv double %474, %453
  %476 = fsub double %475, %451
  %477 = call double @llvm.fabs.f64(double %476)
  %478 = fcmp olt double %477, 5.000000e-06
  br i1 %478, label %479, label %460

479:                                              ; preds = %469
  %480 = icmp eq i64 %471, 0
  br i1 %480, label %487, label %481

481:                                              ; preds = %460, %450, %479
  %482 = phi i64 [ %471, %479 ], [ %458, %450 ], [ %467, %460 ]
  %483 = load i64, ptr %433, align 8, !tbaa !55
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %487, label %485

485:                                              ; preds = %481
  %486 = call fastcc i64 @lcm(i64 noundef %483, i64 noundef %482) #19
  br label %491

487:                                              ; preds = %481, %479
  %488 = phi i64 [ %482, %481 ], [ 0, %479 ]
  %489 = shl i64 %488, 32
  %490 = ashr exact i64 %489, 32
  br label %491

491:                                              ; preds = %487, %485
  %492 = phi i64 [ %486, %485 ], [ %490, %487 ]
  store i64 %492, ptr %433, align 8, !tbaa !55
  %493 = icmp ugt i64 %492, 4294967295
  br i1 %493, label %494, label %495

494:                                              ; preds = %491
  store i32 0, ptr %422, align 8, !tbaa !53
  br label %495

495:                                              ; preds = %491, %494
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %496

496:                                              ; preds = %495, %437
  %497 = phi i64 [ %492, %495 ], [ %438, %437 ]
  %498 = icmp eq i64 %440, %435
  br i1 %498, label %499, label %437, !llvm.loop !95

499:                                              ; preds = %496, %431
  %500 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  %501 = load i32, ptr %500, align 4, !tbaa !52
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %509, label %503

503:                                              ; preds = %499
  %504 = load i32, ptr %422, align 8, !tbaa !53
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %503
  %507 = call fastcc i32 @try_mkv_timebase_den(ptr noundef nonnull %429, ptr noundef nonnull %1, i32 noundef %426) #19
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %615, label %509

509:                                              ; preds = %506, %503, %499
  call void @free(ptr noundef %429) #18
  br label %510

510:                                              ; preds = %421, %509
  %511 = phi ptr [ %429, %509 ], [ null, %421 ]
  br i1 %383, label %515, label %512

512:                                              ; preds = %510
  %513 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 1
  %514 = load i32, ptr %513, align 4, !tbaa !94
  br label %524

515:                                              ; preds = %510
  %516 = zext nneg i32 %367 to i64
  %517 = getelementptr double, ptr %376, i64 %516
  %518 = getelementptr double, ptr %517, i64 -1
  %519 = load double, ptr %518, align 8, !tbaa !85
  %520 = getelementptr double, ptr %517, i64 -2
  %521 = load double, ptr %520, align 8, !tbaa !85
  %522 = fsub double %519, %521
  %523 = fdiv double 1.000000e+00, %522
  br label %532

524:                                              ; preds = %512, %416
  %525 = phi i32 [ %418, %416 ], [ %514, %512 ]
  %526 = phi ptr [ null, %416 ], [ %511, %512 ]
  %527 = uitofp i32 %525 to double
  %528 = getelementptr inbounds %struct.video_info_t, ptr %2, i64 0, i32 2
  %529 = load i32, ptr %528, align 4, !tbaa !56
  %530 = uitofp i32 %529 to double
  %531 = fdiv double %527, %530
  br label %532

532:                                              ; preds = %515, %524
  %533 = phi double [ %523, %515 ], [ %531, %524 ]
  %534 = phi ptr [ %511, %515 ], [ %526, %524 ]
  %535 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 10
  store double %533, ptr %535, align 8, !tbaa !71
  %536 = getelementptr double, ptr %376, i64 %374
  %537 = getelementptr double, ptr %536, i64 -1
  %538 = load double, ptr %537, align 8, !tbaa !85
  %539 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 11
  store double %538, ptr %539, align 8, !tbaa !72
  br label %540

540:                                              ; preds = %532, %322
  %541 = phi ptr [ %139, %322 ], [ %534, %532 ]
  %542 = phi ptr [ %122, %322 ], [ %376, %532 ]
  %543 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %544 = load i32, ptr %543, align 8, !tbaa !53
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %540
  %547 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 3
  %548 = load i32, ptr %547, align 4, !tbaa !52
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %560, label %550

550:                                              ; preds = %546, %540
  %551 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %552 = load i64, ptr %551, align 8, !tbaa !54
  %553 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %554 = load i64, ptr %553, align 8, !tbaa !55
  %555 = call fastcc i64 @gcd(i64 noundef %552, i64 noundef %554) #19
  %556 = udiv i64 %552, %555
  store i64 %556, ptr %551, align 8, !tbaa !54
  %557 = udiv i64 %554, %555
  store i64 %557, ptr %553, align 8, !tbaa !55
  %558 = load ptr, ptr @stderr, align 8, !tbaa !35
  %559 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %558, ptr noundef nonnull @.str.20, i64 noundef %556, i64 noundef %557) #20
  br label %568

560:                                              ; preds = %546
  %561 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %562 = load i64, ptr %561, align 8, !tbaa !55
  %563 = add i64 %562, -4294967296
  %564 = icmp ult i64 %563, -4294967295
  br i1 %564, label %565, label %568

565:                                              ; preds = %560
  %566 = load ptr, ptr @stderr, align 8, !tbaa !35
  %567 = call i64 @fwrite(ptr nonnull @.str.21, i64 116, i64 1, ptr %566) #17
  br label %615

568:                                              ; preds = %560, %550
  %569 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 8
  %570 = load i32, ptr %569, align 4, !tbaa !70
  %571 = sext i32 %570 to i64
  %572 = shl nsw i64 %571, 3
  %573 = call noalias ptr @malloc(i64 noundef %572) #16
  %574 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 9
  store ptr %573, ptr %574, align 8, !tbaa !63
  %575 = icmp eq ptr %573, null
  br i1 %575, label %615, label %576

576:                                              ; preds = %568
  %577 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 7
  %578 = load i32, ptr %577, align 8, !tbaa !50
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds double, ptr %542, i64 %579
  %581 = load double, ptr %580, align 8, !tbaa !85
  %582 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %583 = load i64, ptr %582, align 8, !tbaa !55
  %584 = uitofp i64 %583 to double
  %585 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %586 = load i64, ptr %585, align 8, !tbaa !54
  %587 = uitofp i64 %586 to double
  %588 = fdiv double %584, %587
  %589 = call double @llvm.fmuladd.f64(double %581, double %588, double 5.000000e-01)
  %590 = fptosi double %589 to i64
  store i64 0, ptr %573, align 8, !tbaa !64
  %591 = icmp sgt i32 %570, 1
  br i1 %591, label %592, label %613

592:                                              ; preds = %576
  %593 = zext nneg i32 %570 to i64
  br label %594

594:                                              ; preds = %592, %610
  %595 = phi i64 [ 1, %592 ], [ %611, %610 ]
  %596 = add nsw i64 %595, %579
  %597 = getelementptr inbounds double, ptr %542, i64 %596
  %598 = load double, ptr %597, align 8, !tbaa !85
  %599 = call double @llvm.fmuladd.f64(double %598, double %588, double 5.000000e-01)
  %600 = fptosi double %599 to i64
  %601 = getelementptr inbounds i64, ptr %573, i64 %595
  %602 = sub nsw i64 %600, %590
  store i64 %602, ptr %601, align 8, !tbaa !64
  %603 = getelementptr i64, ptr %601, i64 -1
  %604 = load i64, ptr %603, align 8, !tbaa !64
  %605 = icmp sgt i64 %602, %604
  br i1 %605, label %610, label %606

606:                                              ; preds = %594
  %607 = trunc i64 %595 to i32
  %608 = load ptr, ptr @stderr, align 8, !tbaa !35
  %609 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %608, ptr noundef nonnull @.str.22, i32 noundef %607) #20
  br label %615

610:                                              ; preds = %594
  %611 = add nuw nsw i64 %595, 1
  %612 = icmp eq i64 %611, %593
  br i1 %612, label %613, label %594, !llvm.loop !96

613:                                              ; preds = %610, %576
  call void @free(ptr noundef %542) #18
  br label %620

614:                                              ; preds = %386, %403, %425
  call void @free(ptr noundef nonnull %376) #18
  br label %620

615:                                              ; preds = %565, %568, %329, %506, %606
  %616 = phi ptr [ %542, %606 ], [ %542, %568 ], [ %542, %565 ], [ %122, %329 ], [ %376, %506 ]
  %617 = phi ptr [ %541, %606 ], [ %541, %568 ], [ %541, %565 ], [ %330, %329 ], [ %429, %506 ]
  call void @free(ptr noundef nonnull %616) #18
  %618 = icmp eq ptr %617, null
  br i1 %618, label %620, label %619

619:                                              ; preds = %615
  call void @free(ptr noundef nonnull %617) #18
  br label %620

620:                                              ; preds = %614, %372, %369, %328, %615, %619, %613, %17
  %621 = phi i32 [ -1, %17 ], [ 0, %613 ], [ -1, %619 ], [ -1, %615 ], [ -1, %328 ], [ -1, %369 ], [ -1, %372 ], [ -1, %614 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  ret i32 %621
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc double @correct_fps(double noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !PGOFuncName !97 {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call fastcc double @sigexp10(double noundef %0, ptr noundef nonnull %3) #19
  %5 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !54
  %7 = load double, ptr %3, align 8, !tbaa !85
  %8 = uitofp i64 %6 to double
  %9 = fmul double %4, %8
  %10 = tail call double @llvm.round.f64(double %9)
  %11 = fmul double %7, %10
  %12 = fptoui double %11 to i64
  %13 = icmp ugt i64 %12, 4294967295
  br i1 %13, label %23, label %26

14:                                               ; preds = %26
  %15 = add nuw i64 %27, 1
  %16 = mul i64 %6, %15
  %17 = uitofp i64 %16 to double
  %18 = fmul double %4, %17
  %19 = tail call double @llvm.round.f64(double %18)
  %20 = fmul double %7, %19
  %21 = fptoui double %20 to i64
  %22 = icmp ugt i64 %21, 4294967295
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %2
  %24 = load ptr, ptr @stderr, align 8, !tbaa !35
  %25 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 125, i64 1, ptr %24) #17
  br label %53

26:                                               ; preds = %2, %14
  %27 = phi i64 [ %15, %14 ], [ 1, %2 ]
  %28 = phi i64 [ %21, %14 ], [ %12, %2 ]
  %29 = phi double [ %17, %14 ], [ %8, %2 ]
  %30 = uitofp i64 %28 to double
  %31 = fdiv double %30, %29
  %32 = fdiv double %31, %7
  %33 = fsub double %32, %4
  %34 = tail call double @llvm.fabs.f64(double %33)
  %35 = fcmp olt double %34, 5.000000e-06
  br i1 %35, label %36, label %14

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !53
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  %42 = load i64, ptr %41, align 8, !tbaa !55
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call fastcc i64 @lcm(i64 noundef %42, i64 noundef %28) #19
  br label %49

46:                                               ; preds = %40
  %47 = shl nuw i64 %28, 32
  %48 = ashr exact i64 %47, 32
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i64 [ %45, %44 ], [ %48, %46 ]
  store i64 %50, ptr %41, align 8, !tbaa !55
  %51 = icmp ugt i64 %50, 4294967295
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, ptr %37, align 8, !tbaa !53
  br label %53

53:                                               ; preds = %36, %52, %49, %23
  %54 = phi double [ -1.000000e+00, %23 ], [ %31, %49 ], [ %31, %52 ], [ %31, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret double %54
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @try_mkv_timebase_den(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !98 {
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 5
  store i64 0, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.timecode_hnd_t, ptr %1, i64 0, i32 6
  store i64 1000000000, ptr %6, align 8, !tbaa !55
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %3
  %9 = zext nneg i32 %2 to i64
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %8, %38
  %12 = phi i64 [ 0, %8 ], [ %39, %38 ]
  %13 = phi i1 [ true, %8 ], [ %40, %38 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = getelementptr inbounds double, ptr %0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !85
  %16 = call fastcc double @sigexp10(double noundef %15, ptr noundef nonnull %4) #19
  %17 = fdiv double 1.000000e+09, %16
  %18 = tail call double @llvm.round.f64(double %17)
  %19 = load double, ptr %4, align 8, !tbaa !85
  %20 = fdiv double %18, %19
  %21 = fptoui double %20 to i64
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load i64, ptr %5, align 8, !tbaa !54
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc i64 @gcd(i64 noundef %24, i64 noundef %21) #19
  br label %31

28:                                               ; preds = %23, %11
  %29 = shl i64 %21, 32
  %30 = ashr exact i64 %29, 32
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i64 [ %27, %26 ], [ %30, %28 ]
  store i64 %32, ptr %5, align 8, !tbaa !54
  %33 = add i64 %32, -4294967296
  %34 = icmp ult i64 %33, -4294967295
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr @stderr, align 8, !tbaa !35
  %37 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 101, i64 1, ptr %36) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %42

38:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %39 = add nuw nsw i64 %12, 1
  %40 = icmp ult i64 %39, %9
  %41 = icmp eq i64 %39, %10
  br i1 %41, label %42, label %11, !llvm.loop !99

42:                                               ; preds = %38, %3, %35
  %43 = phi i1 [ %13, %35 ], [ false, %3 ], [ %40, %38 ]
  %44 = sext i1 %43 to i32
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @sigexp10(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !100 {
  %3 = tail call double @log10(double noundef %0) #18
  %4 = tail call double @llvm.floor.f64(double %3)
  %5 = tail call double @pow(double noundef 1.000000e+01, double noundef %4) #18
  store double %5, ptr %1, align 8, !tbaa !85
  %6 = fdiv double %0, %5
  ret double %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @lcm(i64 noundef %0, i64 noundef %1) unnamed_addr #12 !PGOFuncName !101 {
  %3 = tail call fastcc i64 @gcd(i64 noundef %0, i64 noundef %1) #19
  %4 = sdiv i64 %0, %3
  %5 = mul nsw i64 %4, %1
  ret i64 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @gcd(i64 noundef %0, i64 noundef %1) unnamed_addr #12 !PGOFuncName !102 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %0, %2 ], [ %5, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %6, %3 ]
  %6 = srem i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { cold }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { cold optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"timecode.c:open_file"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35}
!40 = !{!41, !36, i64 56}
!41 = !{!"", !42, i64 0, !36, i64 56, !43, i64 64, !43, i64 68, !43, i64 72, !44, i64 80, !44, i64 88, !43, i64 96, !43, i64 100, !36, i64 104, !45, i64 112, !45, i64 120}
!42 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!43 = !{!"int", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!"double", !37, i64 0}
!46 = !{!42, !36, i64 8}
!47 = !{!41, !43, i64 64}
!48 = !{!49, !43, i64 24}
!49 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24}
!50 = !{!41, !43, i64 96}
!51 = !{!49, !36, i64 16}
!52 = !{!41, !43, i64 68}
!53 = !{!41, !43, i64 72}
!54 = !{!41, !44, i64 80}
!55 = !{!41, !44, i64 88}
!56 = !{!57, !43, i64 8}
!57 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!58 = !{!41, !36, i64 16}
!59 = !{!42, !36, i64 16}
!60 = !{!41, !36, i64 40}
!61 = !{!42, !36, i64 40}
!62 = !{i32 -1, i32 1}
!63 = !{!41, !36, i64 104}
!64 = !{!44, !44, i64 0}
!65 = !{!43, !43, i64 0}
!66 = !{!57, !43, i64 40}
!67 = !{!"timecode.c:get_frame_total"}
!68 = !{!"timecode.c:read_frame"}
!69 = !{!41, !36, i64 24}
!70 = !{!41, !43, i64 100}
!71 = !{!41, !45, i64 112}
!72 = !{!41, !45, i64 120}
!73 = !{!74, !44, i64 16}
!74 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 24, !36, i64 32, !75, i64 40, !76, i64 96, !36, i64 128}
!75 = !{!"", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 24}
!76 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!77 = !{!"timecode.c:release_frame"}
!78 = !{!41, !36, i64 32}
!79 = !{!"timecode.c:close_file"}
!80 = !{!41, !36, i64 48}
!81 = !{!"timecode.c:parse_tcfile"}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = !{!45, !45, i64 0}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = distinct !{!91, !83}
!92 = distinct !{!92, !83}
!93 = distinct !{!93, !83}
!94 = !{!57, !43, i64 4}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = !{!"timecode.c:correct_fps"}
!98 = !{!"timecode.c:try_mkv_timebase_den"}
!99 = distinct !{!99, !83}
!100 = !{!"timecode.c:sigexp10"}
!101 = !{!"timecode.c:lcm"}
!102 = !{!"timecode.c:gcd"}
