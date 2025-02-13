; ModuleID = 'blender/source/blender/gpu/intern/gpu_select.c'
source_filename = "blender/source/blender/gpu/intern/gpu_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.rctf = type { float, float, float, float }

@g_query_state.0 = internal unnamed_addr global i1 false, align 8
@g_query_state.1 = internal unnamed_addr global i1 false, align 8
@g_query_state.2 = internal unnamed_addr global ptr null, align 8
@g_query_state.3 = internal unnamed_addr global ptr null, align 8
@g_query_state.4 = internal unnamed_addr global i32 0, align 8
@g_query_state.5 = internal unnamed_addr global i32 0, align 8
@g_query_state.6 = internal unnamed_addr global i8 0, align 8
@g_query_state.7 = internal unnamed_addr global ptr null, align 8
@g_query_state.8 = internal unnamed_addr global i32 0, align 8
@g_query_state.9 = internal unnamed_addr global i8 0, align 4
@g_query_state.10 = internal unnamed_addr global i32 0, align 8
@g_query_state.11 = internal unnamed_addr global i32 0, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"gpu selection queries\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gpu selection ids\00", align 1
@__glewGenQueriesARB = external local_unnamed_addr global ptr, align 8
@__glewEndQueryARB = external local_unnamed_addr global ptr, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.GPU_select_load_id = private unnamed_addr constant [19 x i8] c"GPU_select_load_id\00", align 1
@__glewBeginQueryARB = external local_unnamed_addr global ptr, align 8
@__glewGetQueryObjectuivARB = external local_unnamed_addr global ptr, align 8
@__glewDeleteQueriesARB = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__GLEW_ARB_occlusion_query = external local_unnamed_addr global i8, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_select_begin(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  store i1 true, ptr @g_query_state.0, align 8
  store i1 false, ptr @g_query_state.1, align 8
  store i32 0, ptr @g_query_state.5, align 8, !tbaa !34
  %7 = tail call zeroext i8 @GPU_select_query_check_active() #4, !range !40
  store i8 %7, ptr @g_query_state.6, align 8, !tbaa !41
  store i32 0, ptr @g_query_state.4, align 8, !tbaa !42
  store i32 %1, ptr @g_query_state.8, align 8, !tbaa !43
  store ptr %0, ptr @g_query_state.7, align 8, !tbaa !44
  store i8 %3, ptr @g_query_state.9, align 4, !tbaa !45
  store i32 0, ptr @g_query_state.10, align 8, !tbaa !46
  store i32 %4, ptr @g_query_state.11, align 8, !tbaa !47
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call void @glSelectBuffer(i32 noundef %1, ptr noundef %0) #5
  %10 = tail call i32 @glRenderMode(i32 noundef 7170) #5
  tail call void @glInitNames() #5
  tail call void @glPushName(i32 noundef -1) #5
  br label %53

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  store i32 200, ptr @g_query_state.4, align 8, !tbaa !42
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %13 = tail call ptr %12(i64 noundef 800, ptr noundef nonnull @.str) #5
  store ptr %13, ptr @g_query_state.2, align 8, !tbaa !49
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %15 = load i32, ptr @g_query_state.4, align 8, !tbaa !42
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.1) #5
  store ptr %18, ptr @g_query_state.3, align 8, !tbaa !50
  %19 = load ptr, ptr @__glewGenQueriesARB, align 8, !tbaa !48
  %20 = load i32, ptr @g_query_state.4, align 8, !tbaa !42
  %21 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  tail call void %19(i32 noundef %20, ptr noundef %21) #5
  tail call void @glPushAttrib(i32 noundef 2304) #5
  tail call void @glColorMask(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @glGetFloatv(i32 noundef 3088, ptr noundef nonnull %6) #5
  %22 = icmp eq ptr %2, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load float, ptr %2, align 4, !tbaa !51
  %25 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !54
  %27 = fcmp oeq float %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %11
  %29 = load float, ptr %6, align 16, !tbaa !55
  %30 = fptosi float %29 to i32
  %31 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !55
  %33 = fptosi float %32 to i32
  call void @glViewport(i32 noundef %30, i32 noundef %33, i32 noundef 24, i32 noundef 24) #5
  br label %48

34:                                               ; preds = %23
  %35 = load float, ptr %6, align 16, !tbaa !55
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = fptosi float %38 to i32
  %40 = fsub float %26, %24
  %41 = fptosi float %40 to i32
  %42 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !56
  %44 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !57
  %46 = fsub float %43, %45
  %47 = fptosi float %46 to i32
  call void @glViewport(i32 noundef %36, i32 noundef %39, i32 noundef %41, i32 noundef %47) #5
  br label %48

48:                                               ; preds = %34, %28
  switch i8 %3, label %52 [
    i8 1, label %49
    i8 2, label %50
    i8 3, label %51
  ]

49:                                               ; preds = %48
  call void @glDisable(i32 noundef 2929) #5
  call void @glDepthMask(i8 noundef zeroext 0) #5
  br label %52

50:                                               ; preds = %48
  call void @glClear(i32 noundef 256) #5
  call void @glEnable(i32 noundef 2929) #5
  call void @glDepthMask(i8 noundef zeroext 1) #5
  call void @glDepthFunc(i32 noundef 515) #5
  br label %52

51:                                               ; preds = %48
  call void @glEnable(i32 noundef 2929) #5
  call void @glDepthMask(i8 noundef zeroext 0) #5
  call void @glDepthFunc(i32 noundef 514) #5
  br label %52

52:                                               ; preds = %48, %50, %51, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %53

53:                                               ; preds = %52, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #0 {
  %1 = load i8, ptr @__GLEW_ARB_occlusion_query, align 1, !tbaa !58
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 77), align 2, !tbaa !59
  switch i8 %4, label %9 [
    i8 1, label %10
    i8 0, label %5
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9, %5, %0
  %11 = phi i8 [ 0, %0 ], [ %4, %3 ], [ %8, %5 ], [ 0, %9 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @glSelectBuffer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @glRenderMode(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glInitNames() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPushName(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColorMask(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthFunc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @GPU_select_load_id(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @g_query_state.0, align 8
  br i1 %2, label %3, label %59

3:                                                ; preds = %1
  %4 = load i8, ptr @g_query_state.6, align 8, !tbaa !41
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @glLoadName(i32 noundef %0) #5
  br label %59

7:                                                ; preds = %3
  %8 = load i1, ptr @g_query_state.1, align 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load ptr, ptr @__glewEndQueryARB, align 8, !tbaa !48
  tail call void %10(i32 noundef 35092) #5
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %13 = load i32, ptr @g_query_state.4, align 8, !tbaa !42
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = add i32 %12, 200
  store i32 %16, ptr @g_query_state.4, align 8, !tbaa !42
  %17 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %18 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  %19 = zext i32 %16 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = tail call ptr %17(ptr noundef %18, i64 noundef %20, ptr noundef nonnull @__func__.GPU_select_load_id) #5
  store ptr %21, ptr @g_query_state.2, align 8, !tbaa !49
  %22 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !48
  %23 = load ptr, ptr @g_query_state.3, align 8, !tbaa !50
  %24 = load i32, ptr @g_query_state.4, align 8, !tbaa !42
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call ptr %22(ptr noundef %23, i64 noundef %26, ptr noundef nonnull @__func__.GPU_select_load_id) #5
  store ptr %27, ptr @g_query_state.3, align 8, !tbaa !50
  %28 = load ptr, ptr @__glewGenQueriesARB, align 8, !tbaa !48
  %29 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  %30 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  tail call void %28(i32 noundef 200, ptr noundef %32) #5
  %33 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %15, %11
  %35 = phi i32 [ %33, %15 ], [ %12, %11 ]
  %36 = load ptr, ptr @__glewBeginQueryARB, align 8, !tbaa !48
  %37 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  %38 = zext i32 %35 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !65
  tail call void %36(i32 noundef 35092, i32 noundef %40) #5
  %41 = load ptr, ptr @g_query_state.3, align 8, !tbaa !50
  %42 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  store i32 %0, ptr %44, align 4, !tbaa !65
  %45 = add i32 %42, 1
  store i32 %45, ptr @g_query_state.5, align 8, !tbaa !34
  store i1 true, ptr @g_query_state.1, align 8
  %46 = load i8, ptr @g_query_state.9, align 4, !tbaa !45
  %47 = icmp eq i8 %46, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load ptr, ptr @g_query_state.7, align 8, !tbaa !44
  %50 = load i32, ptr @g_query_state.10, align 8, !tbaa !46
  %51 = shl i32 %50, 2
  %52 = or disjoint i32 %51, 3
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %49, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !65
  %56 = icmp eq i32 %55, %0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = add i32 %50, 1
  store i32 %58, ptr @g_query_state.10, align 8, !tbaa !46
  br label %59

59:                                               ; preds = %6, %34, %48, %1, %57
  %60 = phi i8 [ 1, %57 ], [ 1, %1 ], [ 0, %48 ], [ 1, %34 ], [ 1, %6 ]
  ret i8 %60
}

; Function Attrs: optsize
declare void @glLoadName(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_select_end() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load i8, ptr @g_query_state.6, align 8, !tbaa !41
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @glPopName() #5
  %5 = tail call i32 @glRenderMode(i32 noundef 7168) #5
  br label %87

6:                                                ; preds = %0
  %7 = load i1, ptr @g_query_state.1, align 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load ptr, ptr @__glewEndQueryARB, align 8, !tbaa !48
  tail call void %9(i32 noundef 35092) #5
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %10, %72
  %14 = phi i64 [ %74, %72 ], [ 0, %10 ]
  %15 = phi i32 [ %73, %72 ], [ 0, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  %16 = load ptr, ptr @__glewGetQueryObjectuivARB, align 8, !tbaa !48
  %17 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  %18 = getelementptr inbounds i32, ptr %17, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !65
  call void %16(i32 noundef %19, i32 noundef 34918, ptr noundef nonnull %1) #5
  %20 = load i32, ptr %1, align 4, !tbaa !65
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %13
  %23 = load i8, ptr @g_query_state.9, align 4, !tbaa !45
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, ptr @g_query_state.11, align 8, !tbaa !47
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load ptr, ptr @g_query_state.7, align 8, !tbaa !44
  %30 = load ptr, ptr @g_query_state.3, align 8, !tbaa !50
  %31 = getelementptr inbounds i32, ptr %30, i64 %14
  %32 = zext nneg i32 %26 to i64
  br label %54

33:                                               ; preds = %22
  %34 = load i32, ptr @g_query_state.8, align 8, !tbaa !43
  %35 = icmp ult i32 %15, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load ptr, ptr @g_query_state.7, align 8, !tbaa !44
  %38 = shl i32 %15, 2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  store i32 1, ptr %40, align 4, !tbaa !65
  %41 = or disjoint i32 %38, 1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %37, i64 %42
  store i32 65535, ptr %43, align 4, !tbaa !65
  %44 = or disjoint i32 %38, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %37, i64 %45
  store i32 65535, ptr %46, align 4, !tbaa !65
  %47 = load ptr, ptr @g_query_state.3, align 8, !tbaa !50
  %48 = getelementptr inbounds i32, ptr %47, i64 %14
  %49 = load i32, ptr %48, align 4, !tbaa !65
  %50 = or disjoint i32 %38, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %37, i64 %51
  store i32 %49, ptr %52, align 4, !tbaa !65
  %53 = add nuw i32 %15, 1
  br label %72

54:                                               ; preds = %28, %67
  %55 = phi i64 [ 0, %28 ], [ %68, %67 ]
  %56 = shl nsw i64 %55, 2
  %57 = or disjoint i64 %56, 3
  %58 = getelementptr inbounds i32, ptr %29, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !65
  %60 = load i32, ptr %31, align 4, !tbaa !65
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = or disjoint i64 %56, 1
  %64 = getelementptr inbounds i32, ptr %29, i64 %63
  store i32 0, ptr %64, align 4, !tbaa !65
  %65 = or disjoint i64 %56, 2
  %66 = getelementptr inbounds i32, ptr %29, i64 %65
  store i32 0, ptr %66, align 4, !tbaa !65
  br label %67

67:                                               ; preds = %54, %62
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, %32
  br i1 %69, label %70, label %54, !llvm.loop !66

70:                                               ; preds = %33, %67, %25
  %71 = phi i32 [ %15, %25 ], [ %15, %67 ], [ -1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  br label %78

72:                                               ; preds = %36, %13
  %73 = phi i32 [ %15, %13 ], [ %53, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  %74 = add nuw nsw i64 %14, 1
  %75 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %13, label %78, !llvm.loop !68

78:                                               ; preds = %72, %10, %70
  %79 = phi i32 [ %71, %70 ], [ 0, %10 ], [ %73, %72 ]
  %80 = load ptr, ptr @__glewDeleteQueriesARB, align 8, !tbaa !48
  %81 = load i32, ptr @g_query_state.4, align 8, !tbaa !42
  %82 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  call void %80(i32 noundef %81, ptr noundef %82) #5
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %84 = load ptr, ptr @g_query_state.2, align 8, !tbaa !49
  call void %83(ptr noundef %84) #5
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %86 = load ptr, ptr @g_query_state.3, align 8, !tbaa !50
  call void %85(ptr noundef %86) #5
  call void @glPopAttrib() #5
  call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %87

87:                                               ; preds = %78, %4
  %88 = phi i32 [ %79, %78 ], [ %5, %4 ]
  store i1 false, ptr @g_query_state.0, align 8
  ret i32 %88
}

; Function Attrs: optsize
declare void @glPopName() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_select_query_check_support() local_unnamed_addr #3 {
  %1 = load i8, ptr @__GLEW_ARB_occlusion_query, align 1, !tbaa !58
  ret i8 %1
}

; Function Attrs: optsize
declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 28}
!35 = !{!"GPUQueryState", !36, i64 0, !36, i64 1, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 40, !39, i64 48, !36, i64 52, !39, i64 56, !39, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{!35, !36, i64 32}
!42 = !{!35, !39, i64 24}
!43 = !{!35, !39, i64 48}
!44 = !{!35, !38, i64 40}
!45 = !{!35, !36, i64 52}
!46 = !{!35, !39, i64 56}
!47 = !{!35, !39, i64 60}
!48 = !{!38, !38, i64 0}
!49 = !{!35, !38, i64 8}
!50 = !{!35, !38, i64 16}
!51 = !{!52, !53, i64 0}
!52 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"float", !36, i64 0}
!54 = !{!52, !53, i64 4}
!55 = !{!53, !53, i64 0}
!56 = !{!52, !53, i64 12}
!57 = !{!52, !53, i64 8}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !36, i64 8942}
!60 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !61, i64 8472, !61, i64 8474, !61, i64 8476, !61, i64 8478, !61, i64 8480, !61, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !61, i64 8496, !61, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !61, i64 8528, !61, i64 8530, !61, i64 8532, !61, i64 8534, !62, i64 8536, !62, i64 8552, !62, i64 8568, !62, i64 8584, !62, i64 8600, !62, i64 8616, !62, i64 8632, !36, i64 8648, !61, i64 8712, !61, i64 8714, !61, i64 8716, !61, i64 8718, !61, i64 8720, !61, i64 8722, !61, i64 8724, !61, i64 8726, !36, i64 8728, !61, i64 8896, !61, i64 8898, !61, i64 8900, !61, i64 8902, !61, i64 8904, !61, i64 8906, !61, i64 8908, !61, i64 8910, !39, i64 8912, !39, i64 8916, !61, i64 8920, !61, i64 8922, !61, i64 8924, !61, i64 8926, !61, i64 8928, !61, i64 8930, !61, i64 8932, !61, i64 8934, !61, i64 8936, !61, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !61, i64 8944, !61, i64 8946, !61, i64 8948, !61, i64 8950, !61, i64 8952, !61, i64 8954, !53, i64 8956, !53, i64 8960, !39, i64 8964, !61, i64 8968, !61, i64 8970, !53, i64 8972, !61, i64 8976, !61, i64 8978, !61, i64 8980, !61, i64 8982, !63, i64 8984, !36, i64 9760, !36, i64 9772, !61, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !53, i64 10904, !53, i64 10908, !39, i64 10912, !61, i64 10916, !61, i64 10918, !61, i64 10920, !61, i64 10922, !61, i64 10924, !61, i64 10926, !64, i64 10928}
!61 = !{!"short", !36, i64 0}
!62 = !{!"ListBase", !38, i64 0, !38, i64 8}
!63 = !{!"ColorBand", !61, i64 0, !61, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!64 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !61, i64 24, !36, i64 26}
!65 = !{!39, !39, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
