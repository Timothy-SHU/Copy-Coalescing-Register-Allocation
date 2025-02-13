; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_output.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.bNodeExecData = type { ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShaderCallData = type { ptr, ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }

@register_node_type_sh_output.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@sh_node_output_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"output_node\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_output() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_output.ntype, i32 noundef 1, ptr noundef nonnull @.str, i16 noundef signext 1, i16 noundef signext 4) #4
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_output.ntype, i16 noundef signext 1) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef nonnull @sh_node_output_in, ptr noundef null) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_output) #4
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef nonnull @gpu_shader_output) #4
  tail call void @node_type_internal_links(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef null) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_output.ntype) #4
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_output(ptr noundef readonly %0, i32 %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) #0 !PGOFuncName !34 {
  %7 = alloca [4 x float], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %11) #4
  %12 = getelementptr inbounds float, ptr %7, i64 3
  %13 = getelementptr inbounds ptr, ptr %4, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  call void @nodestack_get_vec(ptr noundef nonnull %12, i16 noundef signext 0, ptr noundef %14) #4
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 112
  %16 = load i8, ptr %15, align 8, !tbaa !41
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 103
  %22 = load i32, ptr %21, align 4, !tbaa !48
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 104
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 113
  %26 = load i8, ptr %25, align 1, !tbaa !50
  call void @BKE_node_preview_set_pixel(ptr noundef %20, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %24, i8 noundef zeroext %26) #4
  %27 = load i32, ptr %23, align 8, !tbaa !49
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 12
  store i16 %28, ptr %29, align 4, !tbaa !51
  br label %30

30:                                               ; preds = %18, %9
  %31 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !55
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ShaderCallData, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  call fastcc void @copy_v4_v4(ptr noundef %37, ptr noundef nonnull %7) #6
  %38 = load float, ptr %12, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.ShadeResult, ptr %37, i64 0, i32 2
  store float %38, ptr %39, align 4, !tbaa !58
  br label %40

40:                                               ; preds = %35, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  br label %41

41:                                               ; preds = %40, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpu_shader_output(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !60 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %7 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #4
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  call void @GPU_material_output_link(ptr noundef %0, ptr noundef %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 1
}

; Function Attrs: optsize
declare void @node_type_internal_links(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !61 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  store float %3, ptr %0, align 4, !tbaa !57
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !57
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_material_output_link(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

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
!34 = !{!"node_shader_output.c:node_shader_exec_output"}
!35 = !{!36, !37, i64 0}
!36 = !{!"ShaderCallData", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!37, !37, i64 0}
!41 = !{!42, !38, i64 1432}
!42 = !{!"ShadeInput", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !43, i64 40, !38, i64 44, !44, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !44, i64 88, !44, i64 90, !44, i64 92, !44, i64 94, !44, i64 96, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !38, i64 148, !43, i64 160, !43, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !38, i64 192, !38, i64 204, !38, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !43, i64 320, !38, i64 324, !38, i64 336, !38, i64 348, !38, i64 360, !38, i64 372, !38, i64 384, !38, i64 400, !38, i64 416, !45, i64 428, !38, i64 432, !38, i64 444, !38, i64 456, !45, i64 472, !38, i64 476, !38, i64 492, !38, i64 504, !38, i64 520, !38, i64 904, !43, i64 1096, !43, i64 1100, !43, i64 1104, !43, i64 1108, !38, i64 1112, !38, i64 1124, !38, i64 1136, !38, i64 1148, !38, i64 1160, !38, i64 1172, !38, i64 1184, !38, i64 1196, !38, i64 1208, !38, i64 1220, !38, i64 1232, !38, i64 1244, !45, i64 1256, !45, i64 1260, !38, i64 1264, !38, i64 1276, !38, i64 1288, !38, i64 1300, !38, i64 1312, !38, i64 1324, !45, i64 1336, !45, i64 1340, !38, i64 1344, !38, i64 1356, !38, i64 1368, !43, i64 1380, !43, i64 1384, !43, i64 1388, !38, i64 1392, !43, i64 1404, !43, i64 1408, !43, i64 1412, !38, i64 1416, !45, i64 1428, !38, i64 1432, !38, i64 1433, !44, i64 1434, !44, i64 1436, !44, i64 1438, !43, i64 1440, !43, i64 1444, !43, i64 1448, !43, i64 1452, !37, i64 1456, !37, i64 1464}
!43 = !{!"int", !38, i64 0}
!44 = !{!"short", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{!47, !37, i64 8}
!47 = !{!"bNodeExecData", !37, i64 0, !37, i64 8}
!48 = !{!42, !43, i64 1380}
!49 = !{!42, !43, i64 1384}
!50 = !{!42, !38, i64 1433}
!51 = !{!52, !44, i64 180}
!52 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !43, i64 168, !44, i64 172, !44, i64 174, !44, i64 176, !44, i64 178, !44, i64 180, !44, i64 182, !44, i64 184, !44, i64 186, !38, i64 188, !53, i64 200, !53, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !53, i64 264, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !43, i64 308, !38, i64 312, !44, i64 376, !44, i64 378, !45, i64 380, !45, i64 384, !44, i64 388, !44, i64 390, !37, i64 392, !54, i64 400, !54, i64 416, !54, i64 432, !44, i64 448, !44, i64 450, !43, i64 452, !37, i64 456}
!53 = !{!"ListBase", !37, i64 0, !37, i64 8}
!54 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!55 = !{!52, !43, i64 168}
!56 = !{!36, !37, i64 8}
!57 = !{!45, !45, i64 0}
!58 = !{!59, !45, i64 32}
!59 = !{!"ShadeResult", !38, i64 0, !38, i64 16, !45, i64 32, !45, i64 36, !45, i64 40, !38, i64 44, !38, i64 56, !38, i64 68, !38, i64 80, !38, i64 92, !38, i64 108, !38, i64 120, !38, i64 132, !38, i64 144, !38, i64 156, !38, i64 168, !38, i64 180, !38, i64 196}
!60 = !{!"node_shader_output.c:gpu_shader_output"}
!61 = !{!"node_shader_output.c:copy_v4_v4"}
