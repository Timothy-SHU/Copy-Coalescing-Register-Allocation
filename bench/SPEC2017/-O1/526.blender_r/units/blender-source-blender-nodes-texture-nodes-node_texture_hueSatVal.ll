; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_hueSatVal.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_hueSatVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }

@register_node_type_tex_hue_sat.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Hue Saturation Value\00", align 1
@inputs = internal global [6 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Hue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -5.000000e-01, float 5.000000e-01, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Factor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_hue_sat() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_hue_sat.ntype, i32 noundef 412, ptr noundef nonnull @.str, i16 noundef signext 3, i16 noundef signext 0) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_hue_sat.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_hue_sat.ntype, i32 noundef 2) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_hue_sat.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_hue_sat.ntype) #4
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #4
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @colorfn(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = tail call float @tex_input_value(ptr noundef %9, ptr noundef %1, i16 noundef signext %4) #4
  %11 = getelementptr inbounds ptr, ptr %3, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call float @tex_input_value(ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #4
  %14 = getelementptr inbounds ptr, ptr %3, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call float @tex_input_value(ptr noundef %15, ptr noundef %1, i16 noundef signext %4) #4
  %17 = getelementptr inbounds ptr, ptr %3, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call float @tex_input_value(ptr noundef %18, ptr noundef %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  %20 = getelementptr inbounds ptr, ptr %3, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %8, ptr noundef %21, ptr noundef %1, i16 noundef signext %4) #4
  %22 = fadd float %10, 5.000000e-01
  %23 = fcmp une float %19, 0.000000e+00
  br i1 %23, label %24, label %85

24:                                               ; preds = %5
  %25 = fcmp une float %22, 5.000000e-01
  %26 = fcmp une float %13, 1.000000e+00
  %27 = or i1 %25, %26
  %28 = fcmp une float %16, 1.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #4
  %31 = fsub float 1.000000e+00, %19
  %32 = load float, ptr %8, align 16, !tbaa !38
  %33 = getelementptr inbounds float, ptr %8, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = getelementptr inbounds float, ptr %8, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !38
  %37 = getelementptr inbounds float, ptr %7, i64 1
  %38 = getelementptr inbounds float, ptr %7, i64 2
  call void @rgb_to_hsv(float noundef %32, float noundef %34, float noundef %36, ptr noundef nonnull %7, ptr noundef nonnull %37, ptr noundef nonnull %38) #4
  %39 = fadd float %22, -5.000000e-01
  %40 = load float, ptr %7, align 4, !tbaa !38
  %41 = fadd float %39, %40
  store float %41, ptr %7, align 4, !tbaa !38
  %42 = fcmp ogt float %41, 1.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = fadd float %41, -1.000000e+00
  store float %44, ptr %7, align 4, !tbaa !38
  br label %49

45:                                               ; preds = %30
  %46 = fcmp olt float %41, 0.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = fadd float %41, 1.000000e+00
  store float %48, ptr %7, align 4, !tbaa !38
  br label %49

49:                                               ; preds = %47, %45, %43
  %50 = load float, ptr %37, align 4, !tbaa !38
  %51 = fmul float %13, %50
  store float %51, ptr %37, align 4, !tbaa !38
  %52 = fcmp ogt float %51, 1.000000e+00
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = fcmp olt float %51, 0.000000e+00
  br i1 %54, label %55, label %57

55:                                               ; preds = %53, %49
  %56 = phi float [ 1.000000e+00, %49 ], [ 0.000000e+00, %53 ]
  store float %56, ptr %37, align 4, !tbaa !38
  br label %57

57:                                               ; preds = %55, %53
  %58 = load float, ptr %38, align 4, !tbaa !38
  %59 = fmul float %16, %58
  store float %59, ptr %38, align 4, !tbaa !38
  %60 = fcmp ogt float %59, 1.000000e+00
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = fcmp olt float %59, 0.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %61, %57
  %64 = phi float [ 1.000000e+00, %57 ], [ 0.000000e+00, %61 ]
  store float %64, ptr %38, align 4, !tbaa !38
  br label %65

65:                                               ; preds = %63, %61
  %66 = load float, ptr %7, align 4, !tbaa !38
  %67 = load float, ptr %37, align 4, !tbaa !38
  %68 = load float, ptr %38, align 4, !tbaa !38
  %69 = getelementptr inbounds float, ptr %6, i64 1
  %70 = getelementptr inbounds float, ptr %6, i64 2
  call void @hsv_to_rgb(float noundef %66, float noundef %67, float noundef %68, ptr noundef nonnull %6, ptr noundef nonnull %69, ptr noundef nonnull %70) #4
  %71 = load float, ptr %8, align 16, !tbaa !38
  %72 = load float, ptr %6, align 4, !tbaa !38
  %73 = fmul float %19, %72
  %74 = call float @llvm.fmuladd.f32(float %31, float %71, float %73)
  store float %74, ptr %0, align 4, !tbaa !38
  %75 = load float, ptr %33, align 4, !tbaa !38
  %76 = load float, ptr %69, align 4, !tbaa !38
  %77 = fmul float %19, %76
  %78 = call float @llvm.fmuladd.f32(float %31, float %75, float %77)
  %79 = getelementptr inbounds float, ptr %0, i64 1
  store float %78, ptr %79, align 4, !tbaa !38
  %80 = load float, ptr %35, align 8, !tbaa !38
  %81 = load float, ptr %70, align 4, !tbaa !38
  %82 = fmul float %19, %81
  %83 = call float @llvm.fmuladd.f32(float %31, float %80, float %82)
  %84 = getelementptr inbounds float, ptr %0, i64 2
  store float %83, ptr %84, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #4
  br label %96

85:                                               ; preds = %24, %5
  %86 = load float, ptr %8, align 16, !tbaa !38
  store float %86, ptr %0, align 4, !tbaa !38
  %87 = getelementptr inbounds float, ptr %8, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !38
  %89 = getelementptr inbounds float, ptr %0, i64 1
  store float %88, ptr %89, align 4, !tbaa !38
  %90 = getelementptr inbounds float, ptr %8, i64 2
  %91 = load float, ptr %90, align 8, !tbaa !38
  %92 = getelementptr inbounds float, ptr %0, i64 2
  store float %91, ptr %92, align 4, !tbaa !38
  %93 = getelementptr inbounds float, ptr %8, i64 3
  %94 = load float, ptr %93, align 4, !tbaa !38
  %95 = getelementptr inbounds float, ptr %0, i64 3
  store float %94, ptr %95, align 4, !tbaa !38
  br label %96

96:                                               ; preds = %65, %85
  %97 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %98 = load float, ptr %97, align 4, !tbaa !38
  %99 = getelementptr inbounds float, ptr %0, i64 3
  store float %98, ptr %99, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
