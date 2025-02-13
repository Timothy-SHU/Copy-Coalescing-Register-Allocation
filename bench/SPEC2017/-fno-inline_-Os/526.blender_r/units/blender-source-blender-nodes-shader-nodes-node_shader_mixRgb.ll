; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_mixRgb.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_mixRgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_sh_mix_rgb.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@sh_node_mix_rgb_in = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Fac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 15, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_mix_rgb_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@reltable.gpu_shader_mix_rgb = internal unnamed_addr constant [18 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_mix_rgb to i64)) to i32)], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mix_blend\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mix_add\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mix_mult\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mix_sub\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mix_screen\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mix_div\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"mix_diff\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"mix_dark\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"mix_light\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"mix_overlay\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"mix_dodge\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"mix_burn\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"mix_hue\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mix_sat\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"mix_val\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"mix_color\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"mix_soft\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"mix_linear\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_mix_rgb() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, i32 noundef 103, ptr noundef nonnull @.str, i16 noundef signext 3, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, ptr noundef nonnull @sh_node_mix_rgb_in, ptr noundef nonnull @sh_node_mix_rgb_out) #5
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, ptr noundef nonnull @node_blend_label) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_mix_rgb) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype, ptr noundef nonnull @gpu_shader_mix_rgb) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_mix_rgb.ntype) #5
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_blend_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_mix_rgb(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  %10 = load ptr, ptr %4, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef %10) #5
  %11 = load float, ptr %8, align 4, !tbaa !39
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store float 0.000000e+00, ptr %8, align 4, !tbaa !39
  br label %17

14:                                               ; preds = %6
  %15 = fcmp ogt float %11, 1.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  store float 1.000000e+00, ptr %8, align 4, !tbaa !39
  br label %17

17:                                               ; preds = %14, %16, %13
  %18 = getelementptr inbounds ptr, ptr %4, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %19) #5
  %20 = getelementptr inbounds ptr, ptr %4, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %9, i16 noundef signext 1, ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %23 = load i16, ptr %22, align 8, !tbaa !41
  %24 = sext i16 %23 to i32
  %25 = load float, ptr %8, align 4, !tbaa !39
  call void @ramp_blend(i32 noundef %24, ptr noundef nonnull %7, float noundef %25, ptr noundef nonnull %9) #5
  %26 = load ptr, ptr %5, align 8, !tbaa !35
  call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_mix_rgb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !47 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %7 = load i16, ptr %6, align 8, !tbaa !41
  %8 = sext i16 %7 to i64
  %9 = shl i64 %8, 2
  %10 = call ptr @llvm.load.relative.i64(ptr @reltable.gpu_shader_mix_rgb, i64 %9)
  %11 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %10, ptr noundef %3, ptr noundef %4) #5
  %12 = zext i8 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !48 {
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
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
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
!34 = !{!"node_shader_mixRgb.c:node_shader_exec_mix_rgb"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!42, !44, i64 376}
!42 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !43, i64 168, !44, i64 172, !44, i64 174, !44, i64 176, !44, i64 178, !44, i64 180, !44, i64 182, !44, i64 184, !44, i64 186, !37, i64 188, !45, i64 200, !45, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !45, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !43, i64 308, !37, i64 312, !44, i64 376, !44, i64 378, !40, i64 380, !40, i64 384, !44, i64 388, !44, i64 390, !36, i64 392, !46, i64 400, !46, i64 416, !46, i64 432, !44, i64 448, !44, i64 450, !43, i64 452, !36, i64 456}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!47 = !{!"node_shader_mixRgb.c:gpu_shader_mix_rgb"}
!48 = !{!"node_shader_mixRgb.c:copy_v3_v3"}
