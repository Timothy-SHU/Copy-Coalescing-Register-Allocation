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

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_bricks() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_bricks.ntype, i32 noundef 404, ptr noundef nonnull @.str, i16 noundef signext 12, i16 noundef signext 4) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #6
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_bricks.ntype, i32 noundef 2) #6
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef nonnull @init) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_bricks.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_bricks.ntype) #6
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 35
  store float 5.000000e-01, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 36
  store float 1.000000e+00, ptr %4, align 8, !tbaa !44
  ret void
}

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #6
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %1, align 8, !tbaa !46
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %9, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %13 = getelementptr inbounds ptr, ptr %3, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call float @tex_input_value(ptr noundef %14, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %16 = getelementptr inbounds ptr, ptr %3, i64 4
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = tail call float @tex_input_value(ptr noundef %17, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %19 = getelementptr inbounds ptr, ptr %3, i64 5
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = tail call float @tex_input_value(ptr noundef %20, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %22 = getelementptr inbounds ptr, ptr %3, i64 6
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call float @tex_input_value(ptr noundef %23, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %25 = load ptr, ptr %3, align 8, !tbaa !45
  call void @tex_input_rgba(ptr noundef nonnull %6, ptr noundef %25, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %26 = getelementptr inbounds ptr, ptr %3, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  call void @tex_input_rgba(ptr noundef nonnull %7, ptr noundef %27, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %28 = getelementptr inbounds ptr, ptr %3, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %29, ptr noundef nonnull %1, i16 noundef signext %4) #6
  %30 = fdiv float %12, %24
  %31 = call float @llvm.floor.f32(float %30)
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %34 = load i16, ptr %33, align 8, !tbaa !49
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 34
  %38 = load i16, ptr %37, align 2, !tbaa !50
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = sext i16 %38 to i32
  %42 = srem i32 %32, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 36
  %46 = load float, ptr %45, align 8, !tbaa !44
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
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fmul float %49, %55
  br label %57

57:                                               ; preds = %53, %47, %36, %5
  %58 = phi float [ %21, %36 ], [ %21, %5 ], [ %49, %47 ], [ %49, %53 ]
  %59 = phi float [ 0.000000e+00, %36 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %47 ], [ %56, %53 ]
  %60 = fadd float %10, %59
  %61 = fdiv float %60, %58
  %62 = call float @llvm.floor.f32(float %61)
  %63 = fptosi float %62 to i32
  %64 = sitofp i32 %63 to float
  %65 = fneg float %58
  %66 = call float @llvm.fmuladd.f32(float %65, float %64, float %60)
  %67 = sitofp i32 %32 to float
  %68 = fneg float %24
  %69 = call float @llvm.fmuladd.f32(float %68, float %67, float %12)
  %70 = shl i32 %32, 16
  %71 = and i32 %63, 65535
  %72 = or disjoint i32 %71, %70
  %73 = ashr i32 %72, 13
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, 60493
  %76 = mul i32 %75, %74
  %77 = add nuw nsw i32 %76, 19990303
  %78 = mul nsw i32 %77, %74
  %79 = add nsw i32 %78, 1376312589
  %80 = and i32 %79, 2147483647
  %81 = sitofp i32 %80 to float
  %82 = fmul float %81, 0x3E10000000000000
  %83 = fmul float %82, 5.000000e-01
  %84 = fadd float %18, %83
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %89, label %86

86:                                               ; preds = %57
  %87 = fcmp ogt float %84, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %57, %86, %88
  %90 = phi float [ 1.000000e+00, %88 ], [ %84, %86 ], [ 0.000000e+00, %57 ]
  %91 = fcmp olt float %66, %15
  %92 = fcmp olt float %69, %15
  %93 = select i1 %91, i1 true, i1 %92
  %94 = fsub float %58, %15
  %95 = fcmp ogt float %66, %94
  %96 = select i1 %93, i1 true, i1 %95
  %97 = fsub float %24, %15
  %98 = fcmp ogt float %69, %97
  %99 = select i1 %96, i1 true, i1 %98
  %100 = getelementptr inbounds float, ptr %0, i64 1
  %101 = getelementptr inbounds float, ptr %0, i64 2
  %102 = getelementptr inbounds float, ptr %0, i64 3
  br i1 %99, label %103, label %111

103:                                              ; preds = %89
  %104 = load float, ptr %8, align 16, !tbaa !48
  store float %104, ptr %0, align 4, !tbaa !48
  %105 = getelementptr inbounds float, ptr %8, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !48
  store float %106, ptr %100, align 4, !tbaa !48
  %107 = getelementptr inbounds float, ptr %8, i64 2
  %108 = load float, ptr %107, align 8, !tbaa !48
  store float %108, ptr %101, align 4, !tbaa !48
  %109 = getelementptr inbounds float, ptr %8, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !48
  store float %110, ptr %102, align 4, !tbaa !48
  br label %119

111:                                              ; preds = %89
  %112 = load float, ptr %6, align 16, !tbaa !48
  store float %112, ptr %0, align 4, !tbaa !48
  %113 = getelementptr inbounds float, ptr %6, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !48
  store float %114, ptr %100, align 4, !tbaa !48
  %115 = getelementptr inbounds float, ptr %6, i64 2
  %116 = load float, ptr %115, align 8, !tbaa !48
  store float %116, ptr %101, align 4, !tbaa !48
  %117 = getelementptr inbounds float, ptr %6, i64 3
  %118 = load float, ptr %117, align 4, !tbaa !48
  store float %118, ptr %102, align 4, !tbaa !48
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %90, ptr noundef nonnull %7) #6
  br label %119

119:                                              ; preds = %111, %103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !42, i64 380}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!35, !42, i64 384}
!45 = !{!36, !36, i64 0}
!46 = !{!47, !36, i64 0}
!47 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48}
!48 = !{!42, !42, i64 0}
!49 = !{!35, !40, i64 376}
!50 = !{!35, !40, i64 378}
