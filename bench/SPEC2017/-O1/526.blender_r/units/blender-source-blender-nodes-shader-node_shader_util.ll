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
@switch.table.ntreeExecGPUNodes.4 = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 4, i32 4], align 4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sh_node_poll_default(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(15) @.str) #9
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sh_node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  tail call void @node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) #10
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @sh_node_poll_default, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr @node_update_internal_links_default, ptr %7, align 8, !tbaa !43
  ret void
}

declare void @node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nodestack_get_vec(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !44
  switch i16 %1, label %33 [
    i16 0, label %6
    i16 1, label %18
  ]

6:                                                ; preds = %3
  %7 = icmp eq i16 %5, 0
  %8 = load float, ptr %2, align 4, !tbaa !46
  br i1 %7, label %9, label %10

9:                                                ; preds = %6
  store float %8, ptr %0, align 4, !tbaa !46
  br label %59

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fadd float %8, %12
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = fadd float %13, %15
  %17 = fdiv float %16, 3.000000e+00
  store float %17, ptr %0, align 4, !tbaa !46
  br label %59

18:                                               ; preds = %3
  %19 = icmp eq i16 %5, 0
  %20 = load float, ptr %2, align 4, !tbaa !46
  store float %20, ptr %0, align 4, !tbaa !46
  br i1 %19, label %21, label %26

21:                                               ; preds = %18
  %22 = load float, ptr %2, align 4, !tbaa !46
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float %22, ptr %23, align 4, !tbaa !46
  %24 = load float, ptr %2, align 4, !tbaa !46
  %25 = getelementptr inbounds float, ptr %0, i64 2
  store float %24, ptr %25, align 4, !tbaa !46
  br label %59

26:                                               ; preds = %18
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !46
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !46
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !46
  %32 = getelementptr inbounds float, ptr %0, i64 2
  store float %31, ptr %32, align 4, !tbaa !46
  br label %59

33:                                               ; preds = %3
  %34 = load float, ptr %2, align 4, !tbaa !46
  store float %34, ptr %0, align 4, !tbaa !46
  switch i16 %5, label %51 [
    i16 2, label %35
    i16 0, label %45
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds float, ptr %2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !46
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !46
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !46
  %41 = getelementptr inbounds float, ptr %0, i64 2
  store float %40, ptr %41, align 4, !tbaa !46
  %42 = getelementptr inbounds float, ptr %2, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !46
  %44 = getelementptr inbounds float, ptr %0, i64 3
  store float %43, ptr %44, align 4, !tbaa !46
  br label %59

45:                                               ; preds = %33
  %46 = load float, ptr %2, align 4, !tbaa !46
  %47 = getelementptr inbounds float, ptr %0, i64 1
  store float %46, ptr %47, align 4, !tbaa !46
  %48 = load float, ptr %2, align 4, !tbaa !46
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !46
  %50 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %50, align 4, !tbaa !46
  br label %59

51:                                               ; preds = %33
  %52 = getelementptr inbounds float, ptr %2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !46
  %54 = getelementptr inbounds float, ptr %0, i64 1
  store float %53, ptr %54, align 4, !tbaa !46
  %55 = getelementptr inbounds float, ptr %2, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !46
  %57 = getelementptr inbounds float, ptr %0, i64 2
  store float %56, ptr %57, align 4, !tbaa !46
  %58 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %58, align 4, !tbaa !46
  br label %59

59:                                               ; preds = %26, %21, %45, %51, %35, %9, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeShaderGetTexcoMode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %78
  %12 = phi ptr [ %6, %8 ], [ %79, %78 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !48
  switch i16 %14, label %78 [
    i16 106, label %15
    i16 108, label %37
  ]

15:                                               ; preds = %11
  br i1 %10, label %26, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Tex, ptr %18, i64 0, i32 32
  %22 = load i16, ptr %21, align 8, !tbaa !53
  switch i16 %22, label %26 [
    i16 8, label %23
    i16 10, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load i16, ptr %2, align 2, !tbaa !57
  %25 = or i16 %24, 2560
  store i16 %25, ptr %2, align 2, !tbaa !57
  br label %26

26:                                               ; preds = %23, %20, %16, %15
  %27 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %30, %26
  %35 = load i16, ptr %2, align 2, !tbaa !57
  %36 = or i16 %35, 2049
  store i16 %36, ptr %2, align 2, !tbaa !57
  br label %78

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %37, %74
  %42 = phi ptr [ %76, %74 ], [ %39, %37 ]
  %43 = phi i32 [ %75, %74 ], [ 0, %37 ]
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !61
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
  %50 = load i16, ptr %2, align 2, !tbaa !57
  %51 = or i16 %50, 2056
  store i16 %51, ptr %2, align 2, !tbaa !57
  br label %74

52:                                               ; preds = %48
  %53 = load i16, ptr %2, align 2, !tbaa !57
  %54 = or i16 %53, 2176
  store i16 %54, ptr %2, align 2, !tbaa !57
  br label %74

55:                                               ; preds = %48
  %56 = load i16, ptr %2, align 2, !tbaa !57
  %57 = or i16 %56, 2049
  store i16 %57, ptr %2, align 2, !tbaa !57
  br label %74

58:                                               ; preds = %48
  %59 = load i16, ptr %2, align 2, !tbaa !57
  %60 = or i16 %59, 2064
  store i16 %60, ptr %2, align 2, !tbaa !57
  br label %74

61:                                               ; preds = %48
  %62 = load i16, ptr %2, align 2, !tbaa !57
  %63 = or i16 %62, 2052
  store i16 %63, ptr %2, align 2, !tbaa !57
  br label %74

64:                                               ; preds = %48
  %65 = load i16, ptr %2, align 2, !tbaa !57
  %66 = or i16 %65, 2048
  store i16 %66, ptr %2, align 2, !tbaa !57
  %67 = load i32, ptr %3, align 4, !tbaa !62
  %68 = or i32 %67, 16
  store i32 %68, ptr %3, align 4, !tbaa !62
  br label %74

69:                                               ; preds = %48
  %70 = load i16, ptr %2, align 2, !tbaa !57
  %71 = or i16 %70, 2048
  store i16 %71, ptr %2, align 2, !tbaa !57
  %72 = load i32, ptr %3, align 4, !tbaa !62
  %73 = or i32 %72, 16
  store i32 %73, ptr %3, align 4, !tbaa !62
  br label %74

74:                                               ; preds = %41, %48, %69, %64, %61, %58, %55, %52, %49
  %75 = add nuw nsw i32 %43, 1
  %76 = load ptr, ptr %42, align 8, !tbaa !47
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %41, !llvm.loop !63

78:                                               ; preds = %74, %37, %11, %34, %30
  %79 = load ptr, ptr %12, align 8, !tbaa !47
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %11, !llvm.loop !66

81:                                               ; preds = %78, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @node_gpu_stack_from_data(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2
  %5 = load float, ptr %2, align 4, !tbaa !46
  store float %5, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2, i64 1
  store float %7, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %2, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2, i64 2
  store float %10, ptr %11, align 4, !tbaa !46
  %12 = getelementptr inbounds float, ptr %2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 2, i64 3
  store float %13, ptr %14, align 4, !tbaa !46
  %15 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !68
  %18 = icmp ult i32 %1, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = zext nneg i32 %1 to i64
  %21 = getelementptr inbounds [4 x i32], ptr @switch.table.ntreeExecGPUNodes.4, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %3, %19
  %24 = phi i32 [ %22, %19 ], [ 0, %3 ]
  store i32 %24, ptr %0, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %25, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !72
  %28 = icmp ne i16 %27, 0
  %29 = icmp ne ptr %16, null
  %30 = select i1 %28, i1 %29, i1 false
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 4
  store i8 %31, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 5
  %34 = load i16, ptr %33, align 2, !tbaa !74
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 5
  store i8 %35, ptr %36, align 1, !tbaa !75
  %37 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 7
  %38 = load i16, ptr %37, align 2, !tbaa !44
  %39 = getelementptr inbounds %struct.GPUNodeStack, ptr %0, i64 0, i32 6
  store i16 %38, ptr %39, align 2, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @node_data_from_gpu_stack(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !46
  store float %4, ptr %0, align 4, !tbaa !46
  %5 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 2, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %0, i64 3
  store float %12, ptr %13, align 4, !tbaa !46
  %14 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.GPUNodeStack, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !76
  %19 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 7
  store i16 %18, ptr %19, align 2, !tbaa !44
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActiveTexture(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3, %37
  %8 = phi ptr [ %42, %37 ], [ %5, %3 ]
  %9 = phi i8 [ %41, %37 ], [ 0, %3 ]
  %10 = phi ptr [ %40, %37 ], [ null, %3 ]
  %11 = phi ptr [ %39, %37 ], [ null, %3 ]
  %12 = phi ptr [ %38, %37 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !77
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = and i32 %14, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %85

20:                                               ; preds = %7
  %21 = icmp eq ptr %12, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.bNodeType, ptr %24, i64 0, i32 14
  %26 = load i16, ptr %25, align 4, !tbaa !79
  %27 = icmp eq i16 %26, 13
  br i1 %27, label %37, label %28

28:                                               ; preds = %22, %20
  %29 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !48
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
  %42 = load ptr, ptr %8, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %7, !llvm.loop !80

44:                                               ; preds = %37
  %45 = icmp eq i8 %41, 0
  br label %46

46:                                               ; preds = %44, %3
  %47 = phi ptr [ null, %3 ], [ %38, %44 ]
  %48 = phi ptr [ null, %3 ], [ %39, %44 ]
  %49 = phi ptr [ null, %3 ], [ %40, %44 ]
  %50 = phi i1 [ true, %3 ], [ %45, %44 ]
  %51 = icmp eq ptr %49, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.bNode, ptr %49, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = tail call ptr @nodeGetActiveTexture(ptr noundef %54)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %52, %46
  %58 = icmp ne ptr %48, null
  %59 = select i1 %58, i1 true, i1 %50
  %60 = select i1 %58, ptr %48, ptr %47
  br i1 %59, label %85, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !tbaa !47
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = icmp ne ptr %47, null
  br label %66

66:                                               ; preds = %64, %82
  %67 = phi ptr [ %62, %64 ], [ %83, %82 ]
  %68 = getelementptr inbounds %struct.bNode, ptr %67, i64 0, i32 8
  %69 = load i16, ptr %68, align 4, !tbaa !48
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.bNode, ptr %67, i64 0, i32 20
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = tail call ptr @nodeGetActiveTexture(ptr noundef %73)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.bNode, ptr %74, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !77
  %79 = and i32 %78, 16384
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i1 %65, i1 false
  br i1 %81, label %82, label %85

82:                                               ; preds = %66, %76, %71
  %83 = load ptr, ptr %67, align 8, !tbaa !47
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %66, !llvm.loop !81

85:                                               ; preds = %17, %76, %82, %57, %61, %52, %1
  %86 = phi ptr [ null, %1 ], [ %55, %52 ], [ %60, %57 ], [ %47, %61 ], [ %47, %82 ], [ %74, %76 ], [ %8, %17 ]
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeExecGPUNodes(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = alloca [64 x ptr], align 16
  %6 = alloca [64 x ptr], align 16
  %7 = alloca [65 x %struct.GPUNodeStack], align 16
  %8 = alloca [65 x %struct.GPUNodeStack], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 3120, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 3120, ptr nonnull %8) #10
  %9 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %190

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp ne i32 %2, 0
  br label %18

18:                                               ; preds = %14, %185
  %19 = phi ptr [ %16, %14 ], [ %187, %185 ]
  %20 = phi i32 [ 0, %14 ], [ %186, %185 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 14
  %25 = load i16, ptr %24, align 4, !tbaa !79
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 16
  %29 = load i16, ptr %28, align 8, !tbaa !89
  %30 = and i16 %29, %3
  %31 = icmp ne i16 %30, 0
  %32 = and i1 %17, %31
  br i1 %32, label %33, label %185

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !77
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %185, label %38

38:                                               ; preds = %18, %33
  %39 = getelementptr inbounds %struct.bNodeType, ptr %23, i64 0, i32 43
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = icmp eq ptr %40, null
  br i1 %41, label %185, label %42

42:                                               ; preds = %38
  call void @node_get_stack(ptr noundef %21, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %43 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %93, label %46

46:                                               ; preds = %42, %73
  %47 = phi i64 [ %90, %73 ], [ 0, %42 ]
  %48 = phi ptr [ %91, %73 ], [ %44, %42 ]
  %49 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 7
  %51 = load i16, ptr %50, align 8, !tbaa !91
  %52 = getelementptr inbounds ptr, ptr %5, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %49, i8 0, i64 48, i1 false)
  %54 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 2
  %55 = load float, ptr %53, align 4, !tbaa !46
  store float %55, ptr %54, align 16, !tbaa !46
  %56 = getelementptr inbounds float, ptr %53, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !46
  %58 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 2, i64 1
  store float %57, ptr %58, align 4, !tbaa !46
  %59 = getelementptr inbounds float, ptr %53, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !46
  %61 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 2, i64 2
  store float %60, ptr %61, align 8, !tbaa !46
  %62 = getelementptr inbounds float, ptr %53, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !46
  %64 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 2, i64 3
  store float %63, ptr %64, align 4, !tbaa !46
  %65 = getelementptr inbounds %struct.bNodeStack, ptr %53, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 3
  store ptr %66, ptr %67, align 16, !tbaa !68
  %68 = icmp ult i16 %51, 4
  br i1 %68, label %69, label %73

69:                                               ; preds = %46
  %70 = zext nneg i16 %51 to i64
  %71 = getelementptr inbounds [4 x i32], ptr @switch.table.ntreeExecGPUNodes.4, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %46, %69
  %74 = phi i32 [ %72, %69 ], [ 0, %46 ]
  store i32 %74, ptr %49, align 16, !tbaa !70
  %75 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 1
  store ptr @.str.1, ptr %75, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.bNodeStack, ptr %53, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !72
  %78 = icmp ne i16 %77, 0
  %79 = icmp ne ptr %66, null
  %80 = select i1 %78, i1 %79, i1 false
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 4
  store i8 %81, ptr %82, align 8, !tbaa !73
  %83 = getelementptr inbounds %struct.bNodeStack, ptr %53, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !74
  %85 = trunc i16 %84 to i8
  %86 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 5
  store i8 %85, ptr %86, align 1, !tbaa !75
  %87 = getelementptr inbounds %struct.bNodeStack, ptr %53, i64 0, i32 7
  %88 = load i16, ptr %87, align 2, !tbaa !44
  %89 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %47, i32 6
  store i16 %88, ptr %89, align 2, !tbaa !76
  %90 = add nuw i64 %47, 1
  %91 = load ptr, ptr %48, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %46, !llvm.loop !92

93:                                               ; preds = %73, %42
  %94 = phi i64 [ 0, %42 ], [ %90, %73 ]
  %95 = and i64 %94, 4294967295
  %96 = getelementptr inbounds %struct.GPUNodeStack, ptr %7, i64 %95
  store i32 0, ptr %96, align 16, !tbaa !70
  %97 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 18
  %98 = load ptr, ptr %97, align 8, !tbaa !47
  %99 = icmp eq ptr %98, null
  br i1 %99, label %147, label %100

100:                                              ; preds = %93, %127
  %101 = phi i64 [ %144, %127 ], [ 0, %93 ]
  %102 = phi ptr [ %145, %127 ], [ %98, %93 ]
  %103 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101
  %104 = getelementptr inbounds %struct.bNodeSocket, ptr %102, i64 0, i32 7
  %105 = load i16, ptr %104, align 8, !tbaa !91
  %106 = getelementptr inbounds ptr, ptr %6, i64 %101
  %107 = load ptr, ptr %106, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %103, i8 0, i64 48, i1 false)
  %108 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 2
  %109 = load float, ptr %107, align 4, !tbaa !46
  store float %109, ptr %108, align 16, !tbaa !46
  %110 = getelementptr inbounds float, ptr %107, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !46
  %112 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 2, i64 1
  store float %111, ptr %112, align 4, !tbaa !46
  %113 = getelementptr inbounds float, ptr %107, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !46
  %115 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 2, i64 2
  store float %114, ptr %115, align 8, !tbaa !46
  %116 = getelementptr inbounds float, ptr %107, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !46
  %118 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 2, i64 3
  store float %117, ptr %118, align 4, !tbaa !46
  %119 = getelementptr inbounds %struct.bNodeStack, ptr %107, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !67
  %121 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 3
  store ptr %120, ptr %121, align 16, !tbaa !68
  %122 = icmp ult i16 %105, 4
  br i1 %122, label %123, label %127

123:                                              ; preds = %100
  %124 = zext nneg i16 %105 to i64
  %125 = getelementptr inbounds [4 x i32], ptr @switch.table.ntreeExecGPUNodes.4, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %100, %123
  %128 = phi i32 [ %126, %123 ], [ 0, %100 ]
  store i32 %128, ptr %103, align 16, !tbaa !70
  %129 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 1
  store ptr @.str.1, ptr %129, align 8, !tbaa !71
  %130 = getelementptr inbounds %struct.bNodeStack, ptr %107, i64 0, i32 4
  %131 = load i16, ptr %130, align 8, !tbaa !72
  %132 = icmp ne i16 %131, 0
  %133 = icmp ne ptr %120, null
  %134 = select i1 %132, i1 %133, i1 false
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 4
  store i8 %135, ptr %136, align 8, !tbaa !73
  %137 = getelementptr inbounds %struct.bNodeStack, ptr %107, i64 0, i32 5
  %138 = load i16, ptr %137, align 2, !tbaa !74
  %139 = trunc i16 %138 to i8
  %140 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 5
  store i8 %139, ptr %140, align 1, !tbaa !75
  %141 = getelementptr inbounds %struct.bNodeStack, ptr %107, i64 0, i32 7
  %142 = load i16, ptr %141, align 2, !tbaa !44
  %143 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %101, i32 6
  store i16 %142, ptr %143, align 2, !tbaa !76
  %144 = add nuw i64 %101, 1
  %145 = load ptr, ptr %102, align 8, !tbaa !47
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %100, !llvm.loop !92

147:                                              ; preds = %127, %93
  %148 = phi i64 [ 0, %93 ], [ %144, %127 ]
  %149 = and i64 %148, 4294967295
  %150 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %149
  store i32 0, ptr %150, align 16, !tbaa !70
  %151 = load ptr, ptr %22, align 8, !tbaa !78
  %152 = getelementptr inbounds %struct.bNodeType, ptr %151, i64 0, i32 43
  %153 = load ptr, ptr %152, align 8, !tbaa !90
  %154 = getelementptr inbounds %struct.bNodeExec, ptr %19, i64 0, i32 1
  %155 = call i32 %153(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %154, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %185, label %157

157:                                              ; preds = %147
  %158 = load ptr, ptr %97, align 8, !tbaa !47
  %159 = icmp eq ptr %158, null
  br i1 %159, label %185, label %160

160:                                              ; preds = %157, %160
  %161 = phi i64 [ %182, %160 ], [ 0, %157 ]
  %162 = phi ptr [ %183, %160 ], [ %158, %157 ]
  %163 = getelementptr inbounds ptr, ptr %6, i64 %161
  %164 = load ptr, ptr %163, align 8, !tbaa !47
  %165 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 2
  %166 = load float, ptr %165, align 16, !tbaa !46
  store float %166, ptr %164, align 4, !tbaa !46
  %167 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !46
  %169 = getelementptr inbounds float, ptr %164, i64 1
  store float %168, ptr %169, align 4, !tbaa !46
  %170 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 2, i64 2
  %171 = load float, ptr %170, align 8, !tbaa !46
  %172 = getelementptr inbounds float, ptr %164, i64 2
  store float %171, ptr %172, align 4, !tbaa !46
  %173 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 2, i64 3
  %174 = load float, ptr %173, align 4, !tbaa !46
  %175 = getelementptr inbounds float, ptr %164, i64 3
  store float %174, ptr %175, align 4, !tbaa !46
  %176 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 3
  %177 = load ptr, ptr %176, align 16, !tbaa !68
  %178 = getelementptr inbounds %struct.bNodeStack, ptr %164, i64 0, i32 3
  store ptr %177, ptr %178, align 8, !tbaa !67
  %179 = getelementptr inbounds %struct.GPUNodeStack, ptr %8, i64 %161, i32 6
  %180 = load i16, ptr %179, align 2, !tbaa !76
  %181 = getelementptr inbounds %struct.bNodeStack, ptr %164, i64 0, i32 7
  store i16 %180, ptr %181, align 2, !tbaa !44
  %182 = add nuw i64 %161, 1
  %183 = load ptr, ptr %162, align 8, !tbaa !47
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %160, !llvm.loop !93

185:                                              ; preds = %160, %157, %27, %33, %147, %38
  %186 = add nuw nsw i32 %20, 1
  %187 = getelementptr inbounds %struct.bNodeExec, ptr %19, i64 1
  %188 = load i32, ptr %11, align 8, !tbaa !84
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %18, label %190, !llvm.loop !94

190:                                              ; preds = %185, %4
  call void @llvm.lifetime.end.p0(i64 3120, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3120, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #10
  ret void
}

declare void @node_get_stack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_shader_gpu_tex_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %9 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = and i32 %10, 1
  %12 = sitofp i32 %11 to float
  store float %12, ptr %5, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %13 = lshr i32 %10, 1
  %14 = and i32 %13, 1
  %15 = sitofp i32 %14 to float
  store float %15, ptr %6, align 4, !tbaa !46
  %16 = and i32 %10, 7
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %36, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 9
  %20 = tail call ptr @GPU_uniform(ptr noundef nonnull %19) #10
  %21 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10
  %22 = tail call ptr @GPU_uniform(ptr noundef nonnull %21) #10
  %23 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11
  %24 = tail call ptr @GPU_uniform(ptr noundef nonnull %23) #10
  %25 = call ptr @GPU_uniform(ptr noundef nonnull %5) #10
  %26 = call ptr @GPU_uniform(ptr noundef nonnull %6) #10
  %27 = getelementptr inbounds %struct.GPUNodeStack, ptr %2, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %28, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef nonnull %27) #10
  %30 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load ptr, ptr %27, align 8, !tbaa !68
  %35 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %34, ptr noundef nonnull %27) #10
  br label %36

36:                                               ; preds = %4, %18, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!47 = !{!36, !36, i64 0}
!48 = !{!49, !39, i64 172}
!49 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !50, i64 200, !50, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !50, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !51, i64 400, !51, i64 416, !51, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!49, !36, i64 240}
!53 = !{!54, !39, i64 232}
!54 = !{!"Tex", !55, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !56, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!56 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!57 = !{!39, !39, i64 0}
!58 = !{!49, !36, i64 200}
!59 = !{!60, !36, i64 296}
!60 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !41, i64 248, !41, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !45, i64 304}
!61 = !{!60, !39, i64 170}
!62 = !{!40, !40, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!45, !36, i64 24}
!68 = !{!69, !36, i64 32}
!69 = !{!"GPUNodeStack", !40, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !39, i64 42}
!70 = !{!69, !40, i64 0}
!71 = !{!69, !36, i64 8}
!72 = !{!45, !39, i64 32}
!73 = !{!69, !37, i64 40}
!74 = !{!45, !39, i64 34}
!75 = !{!69, !37, i64 41}
!76 = !{!69, !39, i64 42}
!77 = !{!49, !40, i64 168}
!78 = !{!49, !36, i64 32}
!79 = !{!35, !39, i64 436}
!80 = distinct !{!80, !64, !65}
!81 = distinct !{!81, !64, !65}
!82 = !{!83, !36, i64 32}
!83 = !{!"bNodeTreeExec", !36, i64 0, !40, i64 8, !36, i64 16, !40, i64 24, !36, i64 32, !36, i64 40}
!84 = !{!83, !40, i64 8}
!85 = !{!83, !36, i64 16}
!86 = !{!87, !36, i64 0}
!87 = !{!"bNodeExec", !36, i64 0, !88, i64 8, !36, i64 24}
!88 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!89 = !{!35, !39, i64 440}
!90 = !{!35, !36, i64 712}
!91 = !{!60, !39, i64 168}
!92 = distinct !{!92, !64, !65}
!93 = distinct !{!93, !64, !65}
!94 = distinct !{!94, !64, !65}
!95 = !{!49, !36, i64 248}
!96 = !{!97, !40, i64 36}
!97 = !{!"TexMapping", !37, i64 0, !37, i64 12, !37, i64 24, !40, i64 36, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !40, i64 44, !37, i64 48, !37, i64 112, !37, i64 124, !36, i64 136}
!98 = !{!97, !40, i64 44}
