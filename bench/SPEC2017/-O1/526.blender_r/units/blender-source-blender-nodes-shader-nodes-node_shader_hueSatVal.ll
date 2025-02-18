; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_hueSatVal.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_hueSatVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }

@register_node_type_sh_hue_sat.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Hue Saturation Value\00", align 1
@sh_node_hue_sat_in = internal global [6 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Hue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Fac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 15, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_hue_sat_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"hue_sat\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_hue_sat() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i32 noundef 122, ptr noundef nonnull @.str, i16 noundef signext 3, i16 noundef signext 0) #4
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i16 noundef signext 3) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef nonnull @sh_node_hue_sat_in, ptr noundef nonnull @sh_node_hue_sat_out) #4
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i32 noundef 2) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_hue_sat) #4
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef nonnull @gpu_shader_hue_sat) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype) #4
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_hue_sat(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #4
  %14 = load ptr, ptr %4, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %9, i16 noundef signext 0, ptr noundef %14) #4
  %15 = getelementptr inbounds ptr, ptr %4, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %10, i16 noundef signext 0, ptr noundef %16) #4
  %17 = getelementptr inbounds ptr, ptr %4, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %11, i16 noundef signext 0, ptr noundef %18) #4
  %19 = getelementptr inbounds ptr, ptr %4, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %12, i16 noundef signext 0, ptr noundef %20) #4
  %21 = getelementptr inbounds ptr, ptr %4, i64 4
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %13, i16 noundef signext 2, ptr noundef %22) #4
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = load float, ptr %9, align 4, !tbaa !38
  %25 = load float, ptr %10, align 4, !tbaa !38
  %26 = load float, ptr %11, align 4, !tbaa !38
  %27 = load float, ptr %12, align 4, !tbaa !38
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %29, label %76

29:                                               ; preds = %6
  %30 = fcmp une float %24, 5.000000e-01
  %31 = fcmp une float %25, 1.000000e+00
  %32 = or i1 %30, %31
  %33 = fcmp une float %26, 1.000000e+00
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #4
  %36 = fsub float 1.000000e+00, %27
  %37 = load float, ptr %13, align 16, !tbaa !38
  %38 = getelementptr inbounds float, ptr %13, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !38
  %40 = getelementptr inbounds float, ptr %13, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds float, ptr %8, i64 1
  %43 = getelementptr inbounds float, ptr %8, i64 2
  call void @rgb_to_hsv(float noundef %37, float noundef %39, float noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %42, ptr noundef nonnull %43) #4
  %44 = fadd float %24, -5.000000e-01
  %45 = load float, ptr %8, align 4, !tbaa !38
  %46 = fadd float %44, %45
  store float %46, ptr %8, align 4, !tbaa !38
  %47 = fcmp ogt float %46, 1.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = fadd float %46, -1.000000e+00
  store float %49, ptr %8, align 4, !tbaa !38
  br label %54

50:                                               ; preds = %35
  %51 = fcmp olt float %46, 0.000000e+00
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = fadd float %46, 1.000000e+00
  store float %53, ptr %8, align 4, !tbaa !38
  br label %54

54:                                               ; preds = %52, %50, %48
  %55 = load float, ptr %42, align 4, !tbaa !38
  %56 = fmul float %25, %55
  store float %56, ptr %42, align 4, !tbaa !38
  %57 = load float, ptr %43, align 4, !tbaa !38
  %58 = fmul float %26, %57
  store float %58, ptr %43, align 4, !tbaa !38
  %59 = load float, ptr %8, align 4, !tbaa !38
  %60 = getelementptr inbounds float, ptr %7, i64 1
  %61 = getelementptr inbounds float, ptr %7, i64 2
  call void @hsv_to_rgb(float noundef %59, float noundef %56, float noundef %58, ptr noundef nonnull %7, ptr noundef nonnull %60, ptr noundef nonnull %61) #4
  %62 = load float, ptr %13, align 16, !tbaa !38
  %63 = load float, ptr %7, align 4, !tbaa !38
  %64 = fmul float %27, %63
  %65 = call float @llvm.fmuladd.f32(float %36, float %62, float %64)
  store float %65, ptr %23, align 4, !tbaa !38
  %66 = load float, ptr %38, align 4, !tbaa !38
  %67 = load float, ptr %60, align 4, !tbaa !38
  %68 = fmul float %27, %67
  %69 = call float @llvm.fmuladd.f32(float %36, float %66, float %68)
  %70 = getelementptr inbounds float, ptr %23, i64 1
  store float %69, ptr %70, align 4, !tbaa !38
  %71 = load float, ptr %40, align 8, !tbaa !38
  %72 = load float, ptr %61, align 4, !tbaa !38
  %73 = fmul float %27, %72
  %74 = call float @llvm.fmuladd.f32(float %36, float %71, float %73)
  %75 = getelementptr inbounds float, ptr %23, i64 2
  store float %74, ptr %75, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #4
  br label %87

76:                                               ; preds = %29, %6
  %77 = load float, ptr %13, align 16, !tbaa !38
  store float %77, ptr %23, align 4, !tbaa !38
  %78 = getelementptr inbounds float, ptr %13, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !38
  %80 = getelementptr inbounds float, ptr %23, i64 1
  store float %79, ptr %80, align 4, !tbaa !38
  %81 = getelementptr inbounds float, ptr %13, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds float, ptr %23, i64 2
  store float %82, ptr %83, align 4, !tbaa !38
  %84 = getelementptr inbounds float, ptr %13, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !38
  %86 = getelementptr inbounds float, ptr %23, i64 3
  store float %85, ptr %86, align 4, !tbaa !38
  br label %87

87:                                               ; preds = %54, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_hue_sat(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4) #4
  %7 = zext i8 %6 to i32
  ret i32 %7
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
