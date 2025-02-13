; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_texture.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_texture.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@colorfn.red = internal global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@colorfn.white = internal global [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_texture() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_texture.ntype, i32 noundef 403, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_texture.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_texture.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_texture.ntype) #7
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 !PGOFuncName !39 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %15 = load ptr, ptr %1, align 8, !tbaa !47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %23) #9
  br label %25

24:                                               ; preds = %5
  call fastcc void @zero_v3(ptr noundef nonnull %7) #9
  call fastcc void @zero_v3(ptr noundef nonnull %8) #9
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 34
  %27 = load i16, ptr %26, align 2, !tbaa !52
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 37
  %31 = load i16, ptr %30, align 4, !tbaa !53
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %25
  %34 = load float, ptr %6, align 4, !tbaa !54
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !54
  %37 = fsub float %34, %36
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp olt float %38, 0x3F847AE140000000
  %40 = select i1 %39, ptr @colorfn.white, ptr @colorfn.red
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %40) #9
  br label %61

41:                                               ; preds = %29
  %42 = icmp eq ptr %14, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  %44 = load ptr, ptr %3, align 8, !tbaa !35
  call void @tex_input_rgba(ptr noundef nonnull %11, ptr noundef %44, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %45 = getelementptr inbounds ptr, ptr %3, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  call void @tex_input_rgba(ptr noundef nonnull %12, ptr noundef %46, ptr noundef nonnull %1, i16 noundef signext %4) #7
  %47 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  store ptr %10, ptr %47, align 8, !tbaa !55
  %48 = load i32, ptr %16, align 4, !tbaa !49
  %49 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  %53 = call i32 @multitex_nodes(ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %48, ptr noundef nonnull %9, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %50, ptr noundef %52, ptr noundef null) #7
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %57) #9
  br label %60

58:                                               ; preds = %43
  call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %11) #9
  %59 = load float, ptr %9, align 8, !tbaa !59
  call void @ramp_blend(i32 noundef 0, ptr noundef %0, float noundef %59, ptr noundef nonnull %12) #7
  br label %60

60:                                               ; preds = %58, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  br label %61

61:                                               ; preds = %41, %60, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !60 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !61 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !62 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!"node_texture_texture.c:exec"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"node_texture_texture.c:colorfn"}
!40 = !{!41, !36, i64 240}
!41 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !42, i64 168, !43, i64 172, !43, i64 174, !43, i64 176, !43, i64 178, !43, i64 180, !43, i64 182, !43, i64 184, !43, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !44, i64 264, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !42, i64 308, !37, i64 312, !43, i64 376, !43, i64 378, !45, i64 380, !45, i64 384, !43, i64 388, !43, i64 390, !36, i64 392, !46, i64 400, !46, i64 416, !46, i64 432, !43, i64 448, !43, i64 450, !42, i64 452, !36, i64 456}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"float", !37, i64 0}
!46 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!47 = !{!48, !36, i64 0}
!48 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 36, !36, i64 40, !36, i64 48}
!49 = !{!48, !42, i64 36}
!50 = !{!48, !36, i64 8}
!51 = !{!48, !36, i64 16}
!52 = !{!41, !43, i64 378}
!53 = !{!41, !43, i64 388}
!54 = !{!45, !45, i64 0}
!55 = !{!56, !36, i64 24}
!56 = !{!"TexResult", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !42, i64 20, !36, i64 24}
!57 = !{!48, !36, i64 40}
!58 = !{!48, !36, i64 48}
!59 = !{!56, !45, i64 0}
!60 = !{!"node_texture_texture.c:copy_v3_v3"}
!61 = !{!"node_texture_texture.c:zero_v3"}
!62 = !{!"node_texture_texture.c:copy_v4_v4"}
