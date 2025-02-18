; ModuleID = 'blender/source/blender/nodes/texture/node_texture_util.c'
source_filename = "blender/source/blender/nodes/texture/node_texture_util.c"
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
%struct.TexDelegate = type { ptr, ptr, ptr, ptr, [64 x ptr], i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.TexCallData = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i16, i32, ptr, ptr }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.bNodePreview = type { %struct.bNodeInstanceHashEntry, ptr, i16, i16, i32 }
%struct.bNodeInstanceHashEntry = type { %struct.bNodeInstanceKey, i16, i16 }
%struct.bNodeExecData = type { ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }

@.str = private unnamed_addr constant [16 x i8] c"TextureNodeTree\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"tex delegate\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tex_node_poll_default(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str) #8
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @tex_node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  tail call void @node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) #9
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @tex_node_poll_default, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr @node_update_internal_links_default, ptr %7, align 8, !tbaa !43
  ret void
}

declare void @node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @tex_input_vec(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 37
  %12 = load i16, ptr %11, align 4, !tbaa !48
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 4
  tail call void %16(ptr noundef %1, ptr noundef %2, ptr noundef %10, ptr noundef nonnull %17, i16 noundef signext %3) #9
  %18 = load ptr, ptr %6, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.TexCallData, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 4, !tbaa !54
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TexCallData, ptr %18, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !57
  %29 = getelementptr inbounds %struct.TexParams, ptr %2, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = load float, ptr %30, align 4, !tbaa !60
  %32 = fadd float %31, 1.000000e+00
  %33 = fmul float %32, 5.000000e-01
  %34 = getelementptr inbounds %struct.bNodePreview, ptr %24, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !61
  %36 = sitofp i16 %35 to float
  %37 = fmul float %33, %36
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds float, ptr %30, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !60
  %41 = fadd float %40, 1.000000e+00
  %42 = fmul float %41, 5.000000e-01
  %43 = getelementptr inbounds %struct.bNodePreview, ptr %24, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !65
  %45 = sitofp i16 %44 to float
  %46 = fmul float %42, %45
  %47 = fptosi float %46 to i32
  tail call void @BKE_node_preview_set_pixel(ptr noundef nonnull %24, ptr noundef %1, i32 noundef %38, i32 noundef %47, i8 noundef zeroext %28) #9
  br label %48

48:                                               ; preds = %26, %22, %14, %8
  %49 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !66
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 7
  %54 = load i16, ptr %53, align 2, !tbaa !67
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load float, ptr %1, align 8, !tbaa !60
  %58 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %57, ptr %58, align 8, !tbaa !60
  %59 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %57, ptr %59, align 4, !tbaa !60
  br label %60

60:                                               ; preds = %4, %48, %52, %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tex_input_rgba(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 37
  %12 = load i16, ptr %11, align 4, !tbaa !48
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 4
  tail call void %16(ptr noundef %1, ptr noundef %2, ptr noundef %10, ptr noundef nonnull %17, i16 noundef signext %3) #9
  %18 = load ptr, ptr %6, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.TexCallData, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 4, !tbaa !54
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TexDelegate, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TexCallData, ptr %18, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !57
  %29 = getelementptr inbounds %struct.TexParams, ptr %2, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = load float, ptr %30, align 4, !tbaa !60
  %32 = fadd float %31, 1.000000e+00
  %33 = fmul float %32, 5.000000e-01
  %34 = getelementptr inbounds %struct.bNodePreview, ptr %24, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !61
  %36 = sitofp i16 %35 to float
  %37 = fmul float %33, %36
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds float, ptr %30, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !60
  %41 = fadd float %40, 1.000000e+00
  %42 = fmul float %41, 5.000000e-01
  %43 = getelementptr inbounds %struct.bNodePreview, ptr %24, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !65
  %45 = sitofp i16 %44 to float
  %46 = fmul float %42, %45
  %47 = fptosi float %46 to i32
  tail call void @BKE_node_preview_set_pixel(ptr noundef nonnull %24, ptr noundef %1, i32 noundef %38, i32 noundef %47, i8 noundef zeroext %28) #9
  br label %48

48:                                               ; preds = %26, %22, %14, %8
  %49 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !66
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 7
  %54 = load i16, ptr %53, align 2, !tbaa !67
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load float, ptr %1, align 8, !tbaa !60
  %58 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %57, ptr %58, align 8, !tbaa !60
  %59 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %57, ptr %59, align 4, !tbaa !60
  br label %60

60:                                               ; preds = %4, %48, %52, %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %61 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 5
  %62 = load i16, ptr %61, align 2, !tbaa !66
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 7
  %66 = load i16, ptr %65, align 2, !tbaa !67
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load float, ptr %0, align 4, !tbaa !60
  %70 = getelementptr inbounds float, ptr %0, i64 2
  store float %69, ptr %70, align 4, !tbaa !60
  %71 = getelementptr inbounds float, ptr %0, i64 1
  store float %69, ptr %71, align 4, !tbaa !60
  %72 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %72, align 4, !tbaa !60
  br label %73

73:                                               ; preds = %68, %64
  br i1 %63, label %88, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 7
  %76 = load i16, ptr %75, align 2, !tbaa !67
  %77 = icmp eq i16 %76, 1
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load float, ptr %0, align 4, !tbaa !60
  %80 = tail call float @llvm.fmuladd.f32(float %79, float 5.000000e-01, float 5.000000e-01)
  store float %80, ptr %0, align 4, !tbaa !60
  %81 = getelementptr inbounds float, ptr %0, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !60
  %83 = tail call float @llvm.fmuladd.f32(float %82, float 5.000000e-01, float 5.000000e-01)
  store float %83, ptr %81, align 4, !tbaa !60
  %84 = getelementptr inbounds float, ptr %0, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !60
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 5.000000e-01, float 5.000000e-01)
  store float %86, ptr %84, align 4, !tbaa !60
  %87 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %87, align 4, !tbaa !60
  br label %88

88:                                               ; preds = %60, %78, %74, %73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local float @tex_input_value(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TexDelegate, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 37
  %11 = load i16, ptr %10, align 4, !tbaa !48
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TexDelegate, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.TexDelegate, ptr %5, i64 0, i32 4
  tail call void %15(ptr noundef %0, ptr noundef %1, ptr noundef %9, ptr noundef nonnull %16, i16 noundef signext %2) #9
  %17 = load ptr, ptr %5, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.TexCallData, ptr %17, i64 0, i32 5
  %19 = load i8, ptr %18, align 4, !tbaa !54
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.TexDelegate, ptr %5, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TexCallData, ptr %17, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !57
  %28 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = load float, ptr %29, align 4, !tbaa !60
  %31 = fadd float %30, 1.000000e+00
  %32 = fmul float %31, 5.000000e-01
  %33 = getelementptr inbounds %struct.bNodePreview, ptr %23, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !61
  %35 = sitofp i16 %34 to float
  %36 = fmul float %32, %35
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds float, ptr %29, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !60
  %40 = fadd float %39, 1.000000e+00
  %41 = fmul float %40, 5.000000e-01
  %42 = getelementptr inbounds %struct.bNodePreview, ptr %23, i64 0, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !65
  %44 = sitofp i16 %43 to float
  %45 = fmul float %41, %44
  %46 = fptosi float %45 to i32
  tail call void @BKE_node_preview_set_pixel(ptr noundef nonnull %23, ptr noundef %0, i32 noundef %37, i32 noundef %46, i8 noundef zeroext %27) #9
  br label %47

47:                                               ; preds = %25, %21, %13, %7
  %48 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 5
  %49 = load i16, ptr %48, align 2, !tbaa !66
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bNodeStack, ptr %0, i64 0, i32 7
  %53 = load i16, ptr %52, align 2, !tbaa !67
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load float, ptr %0, align 8, !tbaa !60
  %57 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %56, ptr %57, align 8, !tbaa !60
  %58 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %56, ptr %58, align 4, !tbaa !60
  br label %59

59:                                               ; preds = %3, %47, %51, %55
  %60 = load float, ptr %0, align 8
  ret float %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @params_from_cdata(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  store ptr %4, ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 3
  store ptr %4, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !75
  %15 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !77
  %18 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tex_do_preview(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = load float, ptr %1, align 4, !tbaa !60
  %8 = fadd float %7, 1.000000e+00
  %9 = fmul float %8, 5.000000e-01
  %10 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !61
  %12 = sitofp i16 %11 to float
  %13 = fmul float %9, %12
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !60
  %17 = fadd float %16, 1.000000e+00
  %18 = fmul float %17, 5.000000e-01
  %19 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !65
  %21 = sitofp i16 %20 to float
  %22 = fmul float %18, %21
  %23 = fptosi float %22 to i32
  tail call void @BKE_node_preview_set_pixel(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %14, i32 noundef %23, i8 noundef zeroext %3) #9
  br label %24

24:                                               ; preds = %6, %4
  ret void
}

declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @tex_output(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bNodeStack, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %17 = tail call ptr %16(i64 noundef 552, ptr noundef nonnull @.str.1) #9
  store ptr %17, ptr %12, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %13, %11 ]
  store ptr %5, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 1
  store ptr %4, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 2
  store ptr %0, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.bNodeExecData, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %25, ptr noundef nonnull align 8 dereferenceable(512) %2, i64 512, i1 false)
  %26 = getelementptr inbounds %struct.bNodeStack, ptr %3, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !67
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 5
  store i32 %28, ptr %29, align 8, !tbaa !86
  br label %30

30:                                               ; preds = %6, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeTexCheckCyclics(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1, %30
  %6 = phi ptr [ %31, %30 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = icmp eq i16 %8, 403
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 33
  %16 = load i16, ptr %15, align 8, !tbaa !89
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 34
  br i1 %17, label %20, label %19

19:                                               ; preds = %14
  store i16 1, ptr %18, align 2, !tbaa !90
  br label %29

20:                                               ; preds = %14
  store i16 0, ptr %18, align 2, !tbaa !90
  store i16 1, ptr %15, align 8, !tbaa !89
  %21 = getelementptr inbounds %struct.Tex, ptr %12, i64 0, i32 61
  %22 = load i8, ptr %21, align 8, !tbaa !91
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Tex, ptr %12, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @ntreeTexCheckCyclics(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %20, %24, %28, %19
  store i16 0, ptr %15, align 8, !tbaa !89
  br label %30

30:                                               ; preds = %29, %5, %10
  %31 = load ptr, ptr %6, align 8, !tbaa !83
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !96

33:                                               ; preds = %30, %1
  ret void
}

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!44 = !{!45, !36, i64 24}
!45 = !{!"bNodeStack", !37, i64 0, !41, i64 16, !41, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!46 = !{!47, !36, i64 16}
!47 = !{!"TexDelegate", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 544}
!48 = !{!49, !39, i64 388}
!49 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !50, i64 200, !50, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !50, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !51, i64 400, !51, i64 416, !51, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!47, !36, i64 8}
!53 = !{!47, !36, i64 0}
!54 = !{!55, !37, i64 36}
!55 = !{!"TexCallData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !37, i64 37, !39, i64 38, !39, i64 40, !40, i64 44, !36, i64 48, !36, i64 56}
!56 = !{!47, !36, i64 24}
!57 = !{!55, !37, i64 37}
!58 = !{!59, !36, i64 24}
!59 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48}
!60 = !{!41, !41, i64 0}
!61 = !{!62, !39, i64 16}
!62 = !{!"bNodePreview", !63, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20}
!63 = !{!"bNodeInstanceHashEntry", !64, i64 0, !39, i64 4, !39, i64 6}
!64 = !{!"bNodeInstanceKey", !40, i64 0}
!65 = !{!62, !39, i64 18}
!66 = !{!45, !39, i64 34}
!67 = !{!45, !39, i64 38}
!68 = !{!55, !36, i64 8}
!69 = !{!59, !36, i64 0}
!70 = !{!55, !36, i64 16}
!71 = !{!59, !36, i64 8}
!72 = !{!55, !36, i64 24}
!73 = !{!59, !36, i64 16}
!74 = !{!55, !40, i64 32}
!75 = !{!59, !40, i64 36}
!76 = !{!55, !40, i64 44}
!77 = !{!59, !40, i64 32}
!78 = !{!55, !36, i64 48}
!79 = !{!59, !36, i64 40}
!80 = !{!55, !36, i64 56}
!81 = !{!59, !36, i64 48}
!82 = !{!49, !40, i64 168}
!83 = !{!36, !36, i64 0}
!84 = !{!85, !36, i64 8}
!85 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!86 = !{!47, !40, i64 544}
!87 = !{!49, !39, i64 172}
!88 = !{!49, !36, i64 240}
!89 = !{!49, !39, i64 376}
!90 = !{!49, !39, i64 378}
!91 = !{!92, !37, i64 408}
!92 = !{!"Tex", !93, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !94, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!93 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!94 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!95 = !{!92, !36, i64 336}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
