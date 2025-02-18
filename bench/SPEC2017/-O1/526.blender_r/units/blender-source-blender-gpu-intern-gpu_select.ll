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

; Function Attrs: nounwind uwtable
define dso_local void @GPU_select_begin(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  store i1 true, ptr @g_query_state.0, align 8
  store i1 false, ptr @g_query_state.1, align 8
  store i32 0, ptr @g_query_state.5, align 8, !tbaa !34
  %7 = load i8, ptr @__GLEW_ARB_occlusion_query, align 1, !tbaa !40
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 77), align 2, !tbaa !41
  switch i8 %10, label %15 [
    i8 1, label %16
    i8 0, label %11
  ]

11:                                               ; preds = %9
  %12 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %5, %9, %11, %15
  %17 = phi i8 [ 0, %5 ], [ %10, %9 ], [ %14, %11 ], [ 0, %15 ]
  store i8 %17, ptr @g_query_state.6, align 8, !tbaa !48
  store i32 0, ptr @g_query_state.4, align 8, !tbaa !49
  store i32 %1, ptr @g_query_state.8, align 8, !tbaa !50
  store ptr %0, ptr @g_query_state.7, align 8, !tbaa !51
  store i8 %3, ptr @g_query_state.9, align 4, !tbaa !52
  store i32 0, ptr @g_query_state.10, align 8, !tbaa !53
  store i32 %4, ptr @g_query_state.11, align 8, !tbaa !54
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void @glSelectBuffer(i32 noundef %1, ptr noundef %0) #4
  %20 = tail call i32 @glRenderMode(i32 noundef 7170) #4
  tail call void @glInitNames() #4
  tail call void @glPushName(i32 noundef -1) #4
  br label %63

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  store i32 200, ptr @g_query_state.4, align 8, !tbaa !49
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %23 = tail call ptr %22(i64 noundef 800, ptr noundef nonnull @.str) #4
  store ptr %23, ptr @g_query_state.2, align 8, !tbaa !56
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %25 = load i32, ptr @g_query_state.4, align 8, !tbaa !49
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 2
  %28 = tail call ptr %24(i64 noundef %27, ptr noundef nonnull @.str.1) #4
  store ptr %28, ptr @g_query_state.3, align 8, !tbaa !57
  %29 = load ptr, ptr @__glewGenQueriesARB, align 8, !tbaa !55
  %30 = load i32, ptr @g_query_state.4, align 8, !tbaa !49
  %31 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  tail call void %29(i32 noundef %30, ptr noundef %31) #4
  tail call void @glPushAttrib(i32 noundef 2304) #4
  tail call void @glColorMask(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @glGetFloatv(i32 noundef 3088, ptr noundef nonnull %6) #4
  %32 = icmp eq ptr %2, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load float, ptr %2, align 4, !tbaa !58
  %35 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !60
  %37 = fcmp oeq float %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %21
  %39 = load float, ptr %6, align 16, !tbaa !61
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !61
  %43 = fptosi float %42 to i32
  call void @glViewport(i32 noundef %40, i32 noundef %43, i32 noundef 24, i32 noundef 24) #4
  br label %58

44:                                               ; preds = %33
  %45 = load float, ptr %6, align 16, !tbaa !61
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !61
  %49 = fptosi float %48 to i32
  %50 = fsub float %36, %34
  %51 = fptosi float %50 to i32
  %52 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !62
  %54 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %55 = load float, ptr %54, align 4, !tbaa !63
  %56 = fsub float %53, %55
  %57 = fptosi float %56 to i32
  call void @glViewport(i32 noundef %46, i32 noundef %49, i32 noundef %51, i32 noundef %57) #4
  br label %58

58:                                               ; preds = %44, %38
  switch i8 %3, label %62 [
    i8 1, label %59
    i8 2, label %60
    i8 3, label %61
  ]

59:                                               ; preds = %58
  call void @glDisable(i32 noundef 2929) #4
  call void @glDepthMask(i8 noundef zeroext 0) #4
  br label %62

60:                                               ; preds = %58
  call void @glClear(i32 noundef 256) #4
  call void @glEnable(i32 noundef 2929) #4
  call void @glDepthMask(i8 noundef zeroext 1) #4
  call void @glDepthFunc(i32 noundef 515) #4
  br label %62

61:                                               ; preds = %58
  call void @glEnable(i32 noundef 2929) #4
  call void @glDepthMask(i8 noundef zeroext 0) #4
  call void @glDepthFunc(i32 noundef 514) #4
  br label %62

62:                                               ; preds = %58, %60, %61, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  br label %63

63:                                               ; preds = %62, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #0 {
  %1 = load i8, ptr @__GLEW_ARB_occlusion_query, align 1, !tbaa !40
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 77), align 2, !tbaa !41
  switch i8 %4, label %9 [
    i8 1, label %10
    i8 0, label %5
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9, %5, %0
  %11 = phi i8 [ 0, %0 ], [ %4, %3 ], [ %8, %5 ], [ 0, %9 ]
  ret i8 %11
}

declare void @glSelectBuffer(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @glRenderMode(i32 noundef) local_unnamed_addr #1

declare void @glInitNames() local_unnamed_addr #1

declare void @glPushName(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #1

declare void @glColorMask(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #1

declare void @glClear(i32 noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glDepthFunc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @GPU_select_load_id(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @g_query_state.0, align 8
  br i1 %2, label %3, label %58

3:                                                ; preds = %1
  %4 = load i8, ptr @g_query_state.6, align 8, !tbaa !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @glLoadName(i32 noundef %0) #4
  br label %58

7:                                                ; preds = %3
  %8 = load i1, ptr @g_query_state.1, align 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load ptr, ptr @__glewEndQueryARB, align 8, !tbaa !55
  tail call void %10(i32 noundef 35092) #4
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %13 = load i32, ptr @g_query_state.4, align 8, !tbaa !49
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = add i32 %13, 200
  store i32 %16, ptr @g_query_state.4, align 8, !tbaa !49
  %17 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !55
  %18 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  %19 = zext i32 %16 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = tail call ptr %17(ptr noundef %18, i64 noundef %20, ptr noundef nonnull @__func__.GPU_select_load_id) #4
  store ptr %21, ptr @g_query_state.2, align 8, !tbaa !56
  %22 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !55
  %23 = load ptr, ptr @g_query_state.3, align 8, !tbaa !57
  %24 = load i32, ptr @g_query_state.4, align 8, !tbaa !49
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call ptr %22(ptr noundef %23, i64 noundef %26, ptr noundef nonnull @__func__.GPU_select_load_id) #4
  store ptr %27, ptr @g_query_state.3, align 8, !tbaa !57
  %28 = load ptr, ptr @__glewGenQueriesARB, align 8, !tbaa !55
  %29 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  %30 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  tail call void %28(i32 noundef 200, ptr noundef %32) #4
  br label %33

33:                                               ; preds = %15, %11
  %34 = load ptr, ptr @__glewBeginQueryARB, align 8, !tbaa !55
  %35 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  %36 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !64
  tail call void %34(i32 noundef 35092, i32 noundef %39) #4
  %40 = load ptr, ptr @g_query_state.3, align 8, !tbaa !57
  %41 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  store i32 %0, ptr %43, align 4, !tbaa !64
  %44 = add i32 %41, 1
  store i32 %44, ptr @g_query_state.5, align 8, !tbaa !34
  store i1 true, ptr @g_query_state.1, align 8
  %45 = load i8, ptr @g_query_state.9, align 4, !tbaa !52
  %46 = icmp eq i8 %45, 3
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load ptr, ptr @g_query_state.7, align 8, !tbaa !51
  %49 = load i32, ptr @g_query_state.10, align 8, !tbaa !53
  %50 = shl i32 %49, 2
  %51 = or disjoint i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %48, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !64
  %55 = icmp eq i32 %54, %0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = add i32 %49, 1
  store i32 %57, ptr @g_query_state.10, align 8, !tbaa !53
  br label %58

58:                                               ; preds = %6, %33, %47, %1, %56
  %59 = phi i8 [ 1, %56 ], [ 1, %1 ], [ 0, %47 ], [ 1, %33 ], [ 1, %6 ]
  ret i8 %59
}

declare void @glLoadName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_select_end() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load i8, ptr @g_query_state.6, align 8, !tbaa !48
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @glPopName() #4
  %5 = tail call i32 @glRenderMode(i32 noundef 7168) #4
  br label %87

6:                                                ; preds = %0
  %7 = load i1, ptr @g_query_state.1, align 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load ptr, ptr @__glewEndQueryARB, align 8, !tbaa !55
  tail call void %9(i32 noundef 35092) #4
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %78, label %18

13:                                               ; preds = %75
  %14 = add nuw nsw i64 %19, 1
  %15 = load i32, ptr @g_query_state.5, align 8, !tbaa !34
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %78, !llvm.loop !65

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %14, %13 ], [ 0, %10 ]
  %20 = phi i32 [ %76, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  %21 = load ptr, ptr @__glewGetQueryObjectuivARB, align 8, !tbaa !55
  %22 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  %23 = getelementptr inbounds i32, ptr %22, i64 %19
  %24 = load i32, ptr %23, align 4, !tbaa !64
  call void %21(i32 noundef %24, i32 noundef 34918, ptr noundef nonnull %1) #4
  %25 = load i32, ptr %1, align 4, !tbaa !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %18
  %28 = load i8, ptr @g_query_state.9, align 4, !tbaa !52
  %29 = icmp eq i8 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, ptr @g_query_state.11, align 8, !tbaa !54
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load ptr, ptr @g_query_state.7, align 8, !tbaa !51
  %35 = load ptr, ptr @g_query_state.3, align 8, !tbaa !57
  %36 = getelementptr inbounds i32, ptr %35, i64 %19
  %37 = zext nneg i32 %31 to i64
  br label %59

38:                                               ; preds = %27
  %39 = load i32, ptr @g_query_state.8, align 8, !tbaa !50
  %40 = icmp ult i32 %20, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load ptr, ptr @g_query_state.7, align 8, !tbaa !51
  %43 = shl i32 %20, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 1, ptr %45, align 4, !tbaa !64
  %46 = or disjoint i32 %43, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %42, i64 %47
  store i32 65535, ptr %48, align 4, !tbaa !64
  %49 = or disjoint i32 %43, 2
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %42, i64 %50
  store i32 65535, ptr %51, align 4, !tbaa !64
  %52 = load ptr, ptr @g_query_state.3, align 8, !tbaa !57
  %53 = getelementptr inbounds i32, ptr %52, i64 %19
  %54 = load i32, ptr %53, align 4, !tbaa !64
  %55 = or disjoint i32 %43, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %42, i64 %56
  store i32 %54, ptr %57, align 4, !tbaa !64
  %58 = add nuw i32 %20, 1
  br label %75

59:                                               ; preds = %33, %72
  %60 = phi i64 [ 0, %33 ], [ %73, %72 ]
  %61 = shl nsw i64 %60, 2
  %62 = or disjoint i64 %61, 3
  %63 = getelementptr inbounds i32, ptr %34, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !64
  %65 = load i32, ptr %36, align 4, !tbaa !64
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = or disjoint i64 %61, 1
  %69 = getelementptr inbounds i32, ptr %34, i64 %68
  store i32 0, ptr %69, align 4, !tbaa !64
  %70 = or disjoint i64 %61, 2
  %71 = getelementptr inbounds i32, ptr %34, i64 %70
  store i32 0, ptr %71, align 4, !tbaa !64
  br label %72

72:                                               ; preds = %59, %67
  %73 = add nuw nsw i64 %60, 1
  %74 = icmp eq i64 %73, %37
  br i1 %74, label %75, label %59, !llvm.loop !68

75:                                               ; preds = %72, %30, %18, %41, %38
  %76 = phi i32 [ -1, %38 ], [ %58, %41 ], [ %20, %18 ], [ %20, %30 ], [ %20, %72 ]
  %77 = phi i1 [ false, %38 ], [ true, %41 ], [ true, %18 ], [ false, %30 ], [ false, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  br i1 %77, label %13, label %78

78:                                               ; preds = %13, %75, %10
  %79 = phi i32 [ 0, %10 ], [ %76, %75 ], [ %76, %13 ]
  %80 = load ptr, ptr @__glewDeleteQueriesARB, align 8, !tbaa !55
  %81 = load i32, ptr @g_query_state.4, align 8, !tbaa !49
  %82 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  call void %80(i32 noundef %81, ptr noundef %82) #4
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %84 = load ptr, ptr @g_query_state.2, align 8, !tbaa !56
  call void %83(ptr noundef %84) #4
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %86 = load ptr, ptr @g_query_state.3, align 8, !tbaa !57
  call void %85(ptr noundef %86) #4
  call void @glPopAttrib() #4
  call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  br label %87

87:                                               ; preds = %78, %4
  %88 = phi i32 [ %79, %78 ], [ %5, %4 ]
  store i1 false, ptr @g_query_state.0, align 8
  ret i32 %88
}

declare void @glPopName() local_unnamed_addr #1

declare void @glPopAttrib() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_select_query_check_support() local_unnamed_addr #3 {
  %1 = load i8, ptr @__GLEW_ARB_occlusion_query, align 1, !tbaa !40
  ret i8 %1
}

declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 28}
!35 = !{!"GPUQueryState", !36, i64 0, !36, i64 1, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 40, !39, i64 48, !36, i64 52, !39, i64 56, !39, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!42, !36, i64 8942}
!42 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !43, i64 8496, !43, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !39, i64 8912, !39, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !45, i64 8956, !45, i64 8960, !39, i64 8964, !43, i64 8968, !43, i64 8970, !45, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !46, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !45, i64 10904, !45, i64 10908, !39, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !47, i64 10928}
!43 = !{!"short", !36, i64 0}
!44 = !{!"ListBase", !38, i64 0, !38, i64 8}
!45 = !{!"float", !36, i64 0}
!46 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!47 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !43, i64 24, !36, i64 26}
!48 = !{!35, !36, i64 32}
!49 = !{!35, !39, i64 24}
!50 = !{!35, !39, i64 48}
!51 = !{!35, !38, i64 40}
!52 = !{!35, !36, i64 52}
!53 = !{!35, !39, i64 56}
!54 = !{!35, !39, i64 60}
!55 = !{!38, !38, i64 0}
!56 = !{!35, !38, i64 8}
!57 = !{!35, !38, i64 16}
!58 = !{!59, !45, i64 0}
!59 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!60 = !{!59, !45, i64 4}
!61 = !{!45, !45, i64 0}
!62 = !{!59, !45, i64 12}
!63 = !{!59, !45, i64 8}
!64 = !{!39, !39, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !66, !67}
