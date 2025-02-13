; ModuleID = 'blender/source/blender/nodes/shader/node_shader_util.c'
source_filename = "blender/source/blender/nodes/shader/node_shader_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeExec = type { ptr, %struct.bNodeExecData, ptr }
%struct.bNodeExecData = type { ptr, ptr }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }

@.str = private unnamed_addr constant [15 x i8] c"ShaderNodeTree\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"texco_norm\00", align 1
@switch.table.node_gpu_stack_from_data = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 4, i32 4], align 4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @sh_node_poll_default(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(15) @.str) #10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sh_node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  tail call void @node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) #11
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @sh_node_poll_default, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr @node_update_internal_links_default, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @nodestack_get_vec(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !44
  switch i16 %1, label %26 [
    i16 0, label %6
    i16 1, label %18
  ]

6:                                                ; preds = %3
  %7 = icmp eq i16 %5, 0
  %8 = load float, ptr %2, align 4, !tbaa !46
  br i1 %7, label %9, label %10

9:                                                ; preds = %6
  store float %8, ptr %0, align 4, !tbaa !46
  br label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fadd float %8, %12
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = fadd float %13, %15
  %17 = fdiv float %16, 3.000000e+00
  store float %17, ptr %0, align 4, !tbaa !46
  br label %36

18:                                               ; preds = %3
  %19 = icmp eq i16 %5, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load float, ptr %2, align 4, !tbaa !46
  store float %21, ptr %0, align 4, !tbaa !46
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !46
  %23 = load float, ptr %2, align 4, !tbaa !46
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float %23, ptr %24, align 4, !tbaa !46
  br label %36

25:                                               ; preds = %18
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %2) #12
  br label %36

26:                                               ; preds = %3
  switch i16 %5, label %34 [
    i16 2, label %27
    i16 0, label %28
  ]

27:                                               ; preds = %26
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %2) #12
  br label %36

28:                                               ; preds = %26
  %29 = load float, ptr %2, align 4, !tbaa !46
  store float %29, ptr %0, align 4, !tbaa !46
  %30 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %30, align 4, !tbaa !46
  %31 = load float, ptr %2, align 4, !tbaa !46
  %32 = getelementptr inbounds float, ptr %0, i64 2
  store float %31, ptr %32, align 4, !tbaa !46
  %33 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %33, align 4, !tbaa !46
  br label %36

34:                                               ; preds = %26
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %2) #12
  %35 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %35, align 4, !tbaa !46
  br label %36

36:                                               ; preds = %25, %20, %28, %34, %27, %9, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !47 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !48 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeShaderGetTexcoMode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %78
  %12 = phi ptr [ %6, %8 ], [ %79, %78 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !50
  switch i16 %14, label %78 [
    i16 106, label %15
    i16 108, label %37
  ]

15:                                               ; preds = %11
  br i1 %10, label %26, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 32
  %22 = load i16, ptr %21, align 8, !tbaa !55
  switch i16 %22, label %26 [
    i16 8, label %23
    i16 10, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load i16, ptr %2, align 2, !tbaa !59
  %25 = or i16 %24, 2560
  store i16 %25, ptr %2, align 2, !tbaa !59
  br label %26

26:                                               ; preds = %23, %20, %16, %15
  %27 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %30, %26
  %35 = load i16, ptr %2, align 2, !tbaa !59
  %36 = or i16 %35, 2049
  store i16 %36, ptr %2, align 2, !tbaa !59
  br label %78

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %37, %74
  %42 = phi ptr [ %76, %74 ], [ %39, %37 ]
  %43 = phi i32 [ %75, %74 ], [ 0, %37 ]
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !63
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %41
  switch i32 %43, label %74 [
    i32 0, label %49
    i32 2, label %52
    i32 3, label %55
    i32 4, label %58
    i32 5, label %61
    i32 6, label %64
    i32 7, label %69
  ]

49:                                               ; preds = %48
  %50 = load i16, ptr %2, align 2, !tbaa !59
  %51 = or i16 %50, 2056
  store i16 %51, ptr %2, align 2, !tbaa !59
  br label %74

52:                                               ; preds = %48
  %53 = load i16, ptr %2, align 2, !tbaa !59
  %54 = or i16 %53, 2176
  store i16 %54, ptr %2, align 2, !tbaa !59
  br label %74

55:                                               ; preds = %48
  %56 = load i16, ptr %2, align 2, !tbaa !59
  %57 = or i16 %56, 2049
  store i16 %57, ptr %2, align 2, !tbaa !59
  br label %74

58:                                               ; preds = %48
  %59 = load i16, ptr %2, align 2, !tbaa !59
  %60 = or i16 %59, 2064
  store i16 %60, ptr %2, align 2, !tbaa !59
  br label %74

61:                                               ; preds = %48
  %62 = load i16, ptr %2, align 2, !tbaa !59
  %63 = or i16 %62, 2052
  store i16 %63, ptr %2, align 2, !tbaa !59
  br label %74

64:                                               ; preds = %48
  %65 = load i16, ptr %2, align 2, !tbaa !59
  %66 = or i16 %65, 2048
  store i16 %66, ptr %2, align 2, !tbaa !59
  %67 = load i32, ptr %3, align 4, !tbaa !64
  %68 = or i32 %67, 16
  store i32 %68, ptr %3, align 4, !tbaa !64
  br label %74

69:                                               ; preds = %48
  %70 = load i16, ptr %2, align 2, !tbaa !59
  %71 = or i16 %70, 2048
  store i16 %71, ptr %2, align 2, !tbaa !59
  %72 = load i32, ptr %3, align 4, !tbaa !64
  %73 = or i32 %72, 16
  store i32 %73, ptr %3, align 4, !tbaa !64
  br label %74

74:                                               ; preds = %41, %48, %69, %64, %61, %58, %55, %52, %49
  %75 = add nuw nsw i32 %43, 1
  %76 = load ptr, ptr %42, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %41, !llvm.loop !65

78:                                               ; preds = %74, %37, %11, %34, %30
  %79 = load ptr, ptr %12, align 8, !tbaa !49
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %11, !llvm.loop !67

81:                                               ; preds = %78, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @node_gpu_stack_from_data(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %4, ptr noundef %2) #12
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !69
  %8 = icmp ult i32 %1, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @switch.table.node_gpu_stack_from_data, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %3 ]
  store i32 %14, ptr %0, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %15, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !73
  %18 = icmp ne i16 %17, 0
  %19 = icmp ne ptr %6, null
  %20 = select i1 %18, i1 %19, i1 false
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 4
  store i8 %21, ptr %22, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !75
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 5
  store i8 %25, ptr %26, align 1, !tbaa !76
  %27 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 7
  %28 = load i16, ptr %27, align 2, !tbaa !44
  %29 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 6
  store i16 %28, ptr %29, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @node_data_from_gpu_stack(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %3) #12
  %4 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !77
  %9 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 7
  store i16 %8, ptr %9, align 2, !tbaa !44
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActiveTexture(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %3, %37
  %8 = phi ptr [ %42, %37 ], [ %5, %3 ]
  %9 = phi i8 [ %41, %37 ], [ 0, %3 ]
  %10 = phi ptr [ %40, %37 ], [ null, %3 ]
  %11 = phi ptr [ %39, %37 ], [ null, %3 ]
  %12 = phi ptr [ %38, %37 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = and i32 %14, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %78

20:                                               ; preds = %7
  %21 = icmp eq ptr %12, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.bNodeType, ptr %24, i64 0, i32 14
  %26 = load i16, ptr %25, align 4, !tbaa !80
  %27 = icmp eq i16 %26, 13
  br i1 %27, label %37, label %28

28:                                               ; preds = %22, %20
  %29 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !50
  %31 = icmp eq i16 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = and i32 %14, 16
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr %10, ptr %8
  %36 = select i1 %34, i8 1, i8 %9
  br label %37

37:                                               ; preds = %32, %22, %17, %28
  %38 = phi ptr [ %12, %17 ], [ %12, %28 ], [ %8, %22 ], [ %12, %32 ]
  %39 = phi ptr [ %8, %17 ], [ %11, %28 ], [ %11, %22 ], [ %11, %32 ]
  %40 = phi ptr [ %10, %17 ], [ %10, %28 ], [ %10, %22 ], [ %35, %32 ]
  %41 = phi i8 [ %9, %17 ], [ %9, %28 ], [ %9, %22 ], [ %36, %32 ]
  %42 = load ptr, ptr %8, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %7, !llvm.loop !81

44:                                               ; preds = %37
  %45 = icmp eq i8 %41, 0
  %46 = icmp eq ptr %40, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = tail call ptr @nodeGetActiveTexture(ptr noundef %49) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %47, %44
  %53 = icmp ne ptr %39, null
  %54 = select i1 %53, i1 true, i1 %45
  %55 = or i1 %54, %6
  %56 = select i1 %53, ptr %39, ptr %38
  br i1 %55, label %78, label %57

57:                                               ; preds = %52
  %58 = icmp ne ptr %38, null
  br label %59

59:                                               ; preds = %57, %75
  %60 = phi ptr [ %5, %57 ], [ %76, %75 ]
  %61 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 8
  %62 = load i16, ptr %61, align 4, !tbaa !50
  %63 = icmp eq i16 %62, 2
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 20
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = tail call ptr @nodeGetActiveTexture(ptr noundef %66) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bNode, ptr %67, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !78
  %72 = and i32 %71, 16384
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i1 %58, i1 false
  br i1 %74, label %75, label %78

75:                                               ; preds = %59, %69, %64
  %76 = load ptr, ptr %60, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %59, !llvm.loop !82

78:                                               ; preds = %17, %69, %75, %52, %3, %47, %1
  %79 = phi ptr [ null, %1 ], [ %50, %47 ], [ %56, %52 ], [ null, %3 ], [ %67, %69 ], [ %38, %75 ], [ %8, %17 ]
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeExecGPUNodes(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = alloca [64 x ptr], align 16
  %6 = alloca [64 x ptr], align 16
  %7 = alloca [65 x %struct.GPUNodeStack], align 16
  %8 = alloca [65 x %struct.GPUNodeStack], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 3120, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 3120, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !85
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = icmp ne i32 %2, 0
  br label %18

18:                                               ; preds = %14, %52
  %19 = phi ptr [ %16, %14 ], [ %54, %52 ]
  %20 = phi i32 [ 0, %14 ], [ %53, %52 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 14
  %25 = load i16, ptr %24, align 4, !tbaa !80
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 16
  %29 = load i16, ptr %28, align 8, !tbaa !90
  %30 = and i16 %29, %3
  %31 = icmp ne i16 %30, 0
  %32 = and i1 %17, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !78
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %18, %33
  %39 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 43
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  call void @node_get_stack(ptr noundef nonnull %21, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %43 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 17
  call fastcc void @gpu_stack_from_data_list(ptr noundef nonnull %7, ptr noundef nonnull %43, ptr noundef nonnull %5) #12
  %44 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 18
  call fastcc void @gpu_stack_from_data_list(ptr noundef nonnull %8, ptr noundef nonnull %44, ptr noundef nonnull %6) #12
  %45 = load ptr, ptr %22, align 8, !tbaa !79
  %46 = getelementptr inbounds %struct.bNodeType, ptr %45, i64 0, i32 43
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.bNodeExec, ptr %19, i64 0, i32 1
  %49 = call i32 %47(ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  call fastcc void @data_from_gpu_stack_list(ptr noundef nonnull %44, ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  br label %52

52:                                               ; preds = %27, %33, %42, %51, %38
  %53 = add nuw nsw i32 %20, 1
  %54 = getelementptr inbounds %struct.bNodeExec, ptr %19, i64 1
  %55 = load i32, ptr %11, align 8, !tbaa !85
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %18, label %57, !llvm.loop !92

57:                                               ; preds = %52, %4
  call void @llvm.lifetime.end.p0(i64 3120, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 3120, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @node_get_stack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gpu_stack_from_data_list(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !93 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %15, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %16, %6 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 %7
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 7
  %11 = load i16, ptr %10, align 8, !tbaa !94
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds ptr, ptr %2, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  tail call void @node_gpu_stack_from_data(ptr noundef %9, i32 noundef %12, ptr noundef %14) #12
  %15 = add nuw i64 %7, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !95

18:                                               ; preds = %6
  %19 = and i64 %15, 4294967295
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 %21
  store i32 0, ptr %22, align 8, !tbaa !71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @data_from_gpu_stack_list(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !96 {
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %12, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %13, %6 ], [ %4, %3 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 %7
  tail call void @node_data_from_gpu_stack(ptr noundef %10, ptr noundef %11) #12
  %12 = add nuw i64 %7, 1
  %13 = load ptr, ptr %8, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !97

15:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_shader_gpu_tex_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %9 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = and i32 %10, 1
  %12 = sitofp i32 %11 to float
  store float %12, ptr %5, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %13 = lshr i32 %10, 1
  %14 = and i32 %13, 1
  %15 = sitofp i32 %14 to float
  store float %15, ptr %6, align 4, !tbaa !46
  %16 = and i32 %10, 7
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %36, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 9
  %20 = tail call ptr @GPU_uniform(ptr noundef nonnull %19) #11
  %21 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10
  %22 = tail call ptr @GPU_uniform(ptr noundef nonnull %21) #11
  %23 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11
  %24 = tail call ptr @GPU_uniform(ptr noundef nonnull %23) #11
  %25 = call ptr @GPU_uniform(ptr noundef nonnull %5) #11
  %26 = call ptr @GPU_uniform(ptr noundef nonnull %6) #11
  %27 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %28, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef nonnull %27) #11
  %30 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !101
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load ptr, ptr %27, align 8, !tbaa !69
  %35 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %34, ptr noundef nonnull %27) #11
  br label %36

36:                                               ; preds = %4, %18, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !36, i64 664}
!35 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !40, i64 84, !37, i64 88, !37, i64 152, !40, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !42, i64 720}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!43 = !{!35, !36, i64 680}
!44 = !{!45, !39, i64 38}
!45 = !{!"bNodeStack", !37, i64 0, !41, i64 16, !41, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!46 = !{!41, !41, i64 0}
!47 = !{!"node_shader_util.c:copy_v3_v3"}
!48 = !{!"node_shader_util.c:copy_v4_v4"}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !39, i64 172}
!51 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !52, i64 200, !52, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !52, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !53, i64 400, !53, i64 416, !53, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!52 = !{!"ListBase", !36, i64 0, !36, i64 8}
!53 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!54 = !{!51, !36, i64 240}
!55 = !{!56, !39, i64 232}
!56 = !{!"Tex", !57, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !58, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!58 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!59 = !{!39, !39, i64 0}
!60 = !{!51, !36, i64 200}
!61 = !{!62, !36, i64 296}
!62 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !41, i64 248, !41, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !45, i64 304}
!63 = !{!62, !39, i64 170}
!64 = !{!40, !40, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = !{!45, !36, i64 24}
!69 = !{!70, !36, i64 32}
!70 = !{!"GPUNodeStack", !40, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !39, i64 42}
!71 = !{!70, !40, i64 0}
!72 = !{!70, !36, i64 8}
!73 = !{!45, !39, i64 32}
!74 = !{!70, !37, i64 40}
!75 = !{!45, !39, i64 34}
!76 = !{!70, !37, i64 41}
!77 = !{!70, !39, i64 42}
!78 = !{!51, !40, i64 168}
!79 = !{!51, !36, i64 32}
!80 = !{!35, !39, i64 436}
!81 = distinct !{!81, !66}
!82 = distinct !{!82, !66}
!83 = !{!84, !36, i64 32}
!84 = !{!"bNodeTreeExec", !36, i64 0, !40, i64 8, !36, i64 16, !40, i64 24, !36, i64 32, !36, i64 40}
!85 = !{!84, !40, i64 8}
!86 = !{!84, !36, i64 16}
!87 = !{!88, !36, i64 0}
!88 = !{!"bNodeExec", !36, i64 0, !89, i64 8, !36, i64 24}
!89 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!90 = !{!35, !39, i64 440}
!91 = !{!35, !36, i64 712}
!92 = distinct !{!92, !66}
!93 = !{!"node_shader_util.c:gpu_stack_from_data_list"}
!94 = !{!62, !39, i64 168}
!95 = distinct !{!95, !66}
!96 = !{!"node_shader_util.c:data_from_gpu_stack_list"}
!97 = distinct !{!97, !66}
!98 = !{!51, !36, i64 248}
!99 = !{!100, !40, i64 36}
!100 = !{!"TexMapping", !37, i64 0, !37, i64 12, !37, i64 24, !40, i64 36, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !40, i64 44, !37, i64 48, !37, i64 112, !37, i64 124, !36, i64 136}
!101 = !{!100, !40, i64 44}
