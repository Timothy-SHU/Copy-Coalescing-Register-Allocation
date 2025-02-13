; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_bricks.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_bricks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_tex_bricks.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Bricks\00", align 1
@inputs = internal global [8 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Bricks 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3FE3126EA0000000, float 0x3FD20C49C0000000, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Bricks 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3FE4395820000000, float 0x3FE020C4A0000000, float 0x3FA99999A0000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Mortar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Thickness\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3F947AE140000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Bias\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Brick Width\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F50624DE0000000, float 9.900000e+01, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Row Height\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 2.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F50624DE0000000, float 9.900000e+01, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_bricks() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_bricks.ntype, i32 noundef 404, ptr noundef nonnull @.str, i16 noundef signext 12, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_bricks.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_bricks.ntype) #7
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #2 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 35
  store <2 x float> <float 5.000000e-01, float 1.000000e+00>, ptr %3, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !39 {
  %7 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 !PGOFuncName !42 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %1, align 8, !tbaa !43
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = getelementptr inbounds float, ptr %9, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %13 = getelementptr inbounds ptr, ptr %3, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %16 = getelementptr inbounds ptr, ptr %3, i64 4
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = tail call float @tex_input_value(ptr noundef %17, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %19 = getelementptr inbounds ptr, ptr %3, i64 5
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = tail call float @tex_input_value(ptr noundef %20, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %22 = getelementptr inbounds ptr, ptr %3, i64 6
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = tail call float @tex_input_value(ptr noundef %23, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  call void @tex_input_rgba(ptr noundef nonnull %6, ptr noundef %25, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %26 = getelementptr inbounds ptr, ptr %3, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  call void @tex_input_rgba(ptr noundef nonnull %7, ptr noundef %27, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %28 = getelementptr inbounds ptr, ptr %3, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %29, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %30 = fdiv float %12, %24
  %31 = call float @llvm.floor.f32(float %30)
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %34 = load i16, ptr %33, align 8, !tbaa !46
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 34
  %38 = load i16, ptr %37, align 2, !tbaa !51
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = sext i16 %38 to i32
  %42 = srem i32 %32, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 36
  %46 = load float, ptr %45, align 8, !tbaa !52
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi float [ %46, %44 ], [ 1.000000e+00, %40 ]
  %49 = fmul float %21, %48
  %50 = sext i16 %34 to i32
  %51 = srem i32 %32, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 35
  %55 = load float, ptr %54, align 4, !tbaa !53
  %56 = fmul float %49, %55
  br label %57

57:                                               ; preds = %53, %47, %36, %5
  %58 = phi float [ %21, %36 ], [ %21, %5 ], [ %49, %47 ], [ %49, %53 ]
  %59 = phi float [ 0.000000e+00, %36 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %47 ], [ %56, %53 ]
  %60 = fadd float %10, %59
  %61 = fdiv float %60, %58
  %62 = call float @llvm.floor.f32(float %61)
  %63 = fptosi float %62 to i32
  %64 = insertelement <2 x float> poison, float %24, i64 0
  %65 = insertelement <2 x float> %64, float %58, i64 1
  %66 = fneg <2 x float> %65
  %67 = insertelement <2 x i32> poison, i32 %32, i64 0
  %68 = insertelement <2 x i32> %67, i32 %63, i64 1
  %69 = sitofp <2 x i32> %68 to <2 x float>
  %70 = insertelement <2 x float> poison, float %12, i64 0
  %71 = insertelement <2 x float> %70, float %60, i64 1
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %69, <2 x float> %71)
  %73 = shl i32 %32, 16
  %74 = and i32 %63, 65535
  %75 = or disjoint i32 %74, %73
  %76 = call fastcc float @noise(i32 noundef %75) #9
  %77 = fadd float %18, %76
  %78 = fcmp olt float %77, 0.000000e+00
  br i1 %78, label %82, label %79

79:                                               ; preds = %57
  %80 = fcmp ogt float %77, 1.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %57, %79, %81
  %83 = phi float [ 1.000000e+00, %81 ], [ %77, %79 ], [ 0.000000e+00, %57 ]
  %84 = extractelement <2 x float> %72, i64 1
  %85 = fcmp olt float %84, %15
  %86 = extractelement <2 x float> %72, i64 0
  %87 = fcmp olt float %86, %15
  %88 = select i1 %85, i1 true, i1 %87
  %89 = insertelement <2 x float> poison, float %15, i64 0
  %90 = shufflevector <2 x float> %89, <2 x float> poison, <2 x i32> zeroinitializer
  %91 = fsub <2 x float> %65, %90
  %92 = fcmp ogt <2 x float> %72, %91
  %93 = extractelement <2 x i1> %92, i64 1
  %94 = select i1 %88, i1 true, i1 %93
  %95 = extractelement <2 x i1> %92, i64 0
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %8) #9
  br label %99

98:                                               ; preds = %82
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %6) #9
  call void @ramp_blend(i32 noundef 0, ptr noundef %0, float noundef %83, ptr noundef nonnull %7) #7
  br label %99

99:                                               ; preds = %98, %97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @noise(i32 noundef %0) unnamed_addr #4 !PGOFuncName !54 {
  %2 = ashr i32 %0, 13
  %3 = xor i32 %2, %0
  %4 = mul i32 %3, 60493
  %5 = mul i32 %4, %3
  %6 = add nuw nsw i32 %5, 19990303
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, 1376312589
  %9 = and i32 %8, 2147483647
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 0x3E10000000000000
  %12 = fmul float %11, 5.000000e-01
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !55 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  store float %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !35
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !35
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!"node_texture_bricks.c:init"}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"node_texture_bricks.c:exec"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"node_texture_bricks.c:colorfn"}
!43 = !{!44, !41, i64 0}
!44 = !{!"TexParams", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !45, i64 32, !45, i64 36, !41, i64 40, !41, i64 48}
!45 = !{!"int", !37, i64 0}
!46 = !{!47, !48, i64 376}
!47 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !45, i64 168, !48, i64 172, !48, i64 174, !48, i64 176, !48, i64 178, !48, i64 180, !48, i64 182, !48, i64 184, !48, i64 186, !37, i64 188, !49, i64 200, !49, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !49, i64 264, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !45, i64 308, !37, i64 312, !48, i64 376, !48, i64 378, !36, i64 380, !36, i64 384, !48, i64 388, !48, i64 390, !41, i64 392, !50, i64 400, !50, i64 416, !50, i64 432, !48, i64 448, !48, i64 450, !45, i64 452, !41, i64 456}
!48 = !{!"short", !37, i64 0}
!49 = !{!"ListBase", !41, i64 0, !41, i64 8}
!50 = !{!"rctf", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!51 = !{!47, !48, i64 378}
!52 = !{!47, !36, i64 384}
!53 = !{!47, !36, i64 380}
!54 = !{!"node_texture_bricks.c:noise"}
!55 = !{!"node_texture_bricks.c:copy_v4_v4"}
