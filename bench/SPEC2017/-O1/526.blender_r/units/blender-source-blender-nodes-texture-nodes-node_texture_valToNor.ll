; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_valToNor.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_valToNor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_valtonor.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"Value to Normal\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Val\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Nabla\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3F999999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F50624DE0000000, float 0x3FB99999A0000000, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_valtonor() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, i32 noundef 421, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_valtonor.ntype) #4
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @normalfn, ptr noundef %0) #4
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @normalfn(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.TexParams, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #4
  %8 = load ptr, ptr %1, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %3, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef nonnull %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !41
  store ptr %6, ptr %7, align 8, !tbaa !38
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = call float @tex_input_value(ptr noundef %12, ptr noundef nonnull %1, i16 noundef signext %4) #4
  %14 = load float, ptr %8, align 4, !tbaa !43
  %15 = fadd float %11, %14
  store float %15, ptr %6, align 4, !tbaa !43
  %16 = getelementptr inbounds float, ptr %8, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !43
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %17, ptr %18, align 4, !tbaa !43
  %19 = getelementptr inbounds float, ptr %8, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %20, ptr %21, align 4, !tbaa !43
  %22 = load ptr, ptr %3, align 8, !tbaa !34
  %23 = call float @tex_input_value(ptr noundef %22, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %24 = load float, ptr %8, align 4, !tbaa !43
  store float %24, ptr %6, align 4, !tbaa !43
  %25 = load float, ptr %16, align 4, !tbaa !43
  %26 = fadd float %11, %25
  store float %26, ptr %18, align 4, !tbaa !43
  %27 = load ptr, ptr %3, align 8, !tbaa !34
  %28 = call float @tex_input_value(ptr noundef %27, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %29 = load float, ptr %16, align 4, !tbaa !43
  store float %29, ptr %18, align 4, !tbaa !43
  %30 = load float, ptr %19, align 4, !tbaa !43
  %31 = fadd float %11, %30
  store float %31, ptr %21, align 4, !tbaa !43
  %32 = load ptr, ptr %3, align 8, !tbaa !34
  %33 = call float @tex_input_value(ptr noundef %32, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %34 = fsub float %13, %23
  store float %34, ptr %0, align 4, !tbaa !43
  %35 = fsub float %13, %28
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float %35, ptr %36, align 4, !tbaa !43
  %37 = fsub float %13, %33
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!38 = !{!39, !35, i64 0}
!39 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 4, !42, i64 36, i64 4, !42, i64 40, i64 8, !34, i64 48, i64 8, !34}
!42 = !{!40, !40, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !36, i64 0}
