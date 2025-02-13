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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_hue_sat() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i32 noundef 122, ptr noundef nonnull @.str, i16 noundef signext 3, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef nonnull @sh_node_hue_sat_in, ptr noundef nonnull @sh_node_hue_sat_out) #5
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, i32 noundef 2) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_hue_sat) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype, ptr noundef nonnull @gpu_shader_hue_sat) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_hue_sat.ntype) #5
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_hue_sat(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6
  %12 = load ptr, ptr %4, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 0, ptr noundef %12) #5
  %13 = getelementptr inbounds ptr, ptr %4, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef %14) #5
  %15 = getelementptr inbounds ptr, ptr %4, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %9, i16 noundef signext 0, ptr noundef %16) #5
  %17 = getelementptr inbounds ptr, ptr %4, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %10, i16 noundef signext 0, ptr noundef %18) #5
  %19 = getelementptr inbounds ptr, ptr %4, i64 4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %11, i16 noundef signext 2, ptr noundef %20) #5
  %21 = load ptr, ptr %5, align 8, !tbaa !35
  %22 = load float, ptr %7, align 4, !tbaa !39
  %23 = load float, ptr %8, align 4, !tbaa !39
  %24 = load float, ptr %9, align 4, !tbaa !39
  %25 = load float, ptr %10, align 4, !tbaa !39
  call fastcc void @do_hue_sat_fac(ptr noundef %21, float noundef %22, float noundef %23, float noundef %24, ptr noundef nonnull %11, float noundef %25) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_hue_sat(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !41 {
  %6 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4) #5
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_hue_sat_fac(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, float noundef %5) unnamed_addr #0 !PGOFuncName !42 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = fcmp une float %5, 0.000000e+00
  br i1 %9, label %10, label %59

10:                                               ; preds = %6
  %11 = fcmp une float %1, 5.000000e-01
  %12 = fcmp une float %2, 1.000000e+00
  %13 = or i1 %11, %12
  %14 = fcmp une float %3, 1.000000e+00
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %17 = fsub float 1.000000e+00, %5
  %18 = load float, ptr %4, align 4, !tbaa !39
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !39
  %21 = getelementptr inbounds float, ptr %4, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !39
  %23 = getelementptr inbounds float, ptr %8, i64 1
  %24 = getelementptr inbounds float, ptr %8, i64 2
  call void @rgb_to_hsv(float noundef %18, float noundef %20, float noundef %22, ptr noundef nonnull %8, ptr noundef nonnull %23, ptr noundef nonnull %24) #5
  %25 = fadd float %1, -5.000000e-01
  %26 = load float, ptr %8, align 4, !tbaa !39
  %27 = fadd float %25, %26
  store float %27, ptr %8, align 4, !tbaa !39
  %28 = fcmp ogt float %27, 1.000000e+00
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = fadd float %27, -1.000000e+00
  store float %30, ptr %8, align 4, !tbaa !39
  br label %35

31:                                               ; preds = %16
  %32 = fcmp olt float %27, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = fadd float %27, 1.000000e+00
  store float %34, ptr %8, align 4, !tbaa !39
  br label %35

35:                                               ; preds = %31, %33, %29
  %36 = phi float [ %27, %31 ], [ %34, %33 ], [ %30, %29 ]
  %37 = load <2 x float>, ptr %23, align 4, !tbaa !39
  %38 = insertelement <2 x float> poison, float %2, i64 0
  %39 = insertelement <2 x float> %38, float %3, i64 1
  %40 = fmul <2 x float> %37, %39
  store <2 x float> %40, ptr %23, align 4, !tbaa !39
  %41 = getelementptr inbounds float, ptr %7, i64 1
  %42 = getelementptr inbounds float, ptr %7, i64 2
  %43 = extractelement <2 x float> %40, i64 0
  %44 = extractelement <2 x float> %40, i64 1
  call void @hsv_to_rgb(float noundef %36, float noundef %43, float noundef %44, ptr noundef nonnull %7, ptr noundef nonnull %41, ptr noundef nonnull %42) #5
  %45 = load float, ptr %4, align 4, !tbaa !39
  %46 = load float, ptr %7, align 4, !tbaa !39
  %47 = fmul float %46, %5
  %48 = call float @llvm.fmuladd.f32(float %17, float %45, float %47)
  store float %48, ptr %0, align 4, !tbaa !39
  %49 = load float, ptr %19, align 4, !tbaa !39
  %50 = load float, ptr %41, align 4, !tbaa !39
  %51 = fmul float %50, %5
  %52 = call float @llvm.fmuladd.f32(float %17, float %49, float %51)
  %53 = getelementptr inbounds float, ptr %0, i64 1
  store float %52, ptr %53, align 4, !tbaa !39
  %54 = load float, ptr %21, align 4, !tbaa !39
  %55 = load float, ptr %42, align 4, !tbaa !39
  %56 = fmul float %55, %5
  %57 = call float @llvm.fmuladd.f32(float %17, float %54, float %56)
  %58 = getelementptr inbounds float, ptr %0, i64 2
  store float %57, ptr %58, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  br label %60

59:                                               ; preds = %10, %6
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %4) #7
  br label %60

60:                                               ; preds = %59, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !43 {
  %3 = load float, ptr %1, align 4, !tbaa !39
  store float %3, ptr %0, align 4, !tbaa !39
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !39
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !39
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !39
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !39
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !39
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!34 = !{!"node_shader_hueSatVal.c:node_shader_exec_hue_sat"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"node_shader_hueSatVal.c:gpu_shader_hue_sat"}
!42 = !{!"node_shader_hueSatVal.c:do_hue_sat_fac"}
!43 = !{!"node_shader_hueSatVal.c:copy_v4_v4"}
