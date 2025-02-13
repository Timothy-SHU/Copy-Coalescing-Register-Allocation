; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_lamp.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_lamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }

@register_node_type_sh_lamp.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"Lamp Data\00", align 1
@sh_node_lamp_out = internal global [6 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Light Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Distance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Shadow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Visibility Factor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"lamp\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_lamp() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_lamp.ntype, i32 noundef 186, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 0) #3
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_lamp.ntype, i16 noundef signext 1) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_lamp.ntype, ptr noundef null, ptr noundef nonnull @sh_node_lamp_out) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_lamp.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_lamp) #3
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_lamp.ntype, ptr noundef nonnull @gpu_shader_lamp) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_lamp.ntype) #3
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
define internal void @node_shader_exec_lamp(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %13, i64 0, i32 116
  store i16 1, ptr %14, align 2, !tbaa !47
  %15 = load ptr, ptr %5, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %5, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds ptr, ptr %5, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %5, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = tail call float @RE_lamp_get_data(ptr noundef %13, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21) #3
  %23 = getelementptr inbounds ptr, ptr %5, i64 4
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  store float %22, ptr %24, align 8, !tbaa !50
  store i16 0, ptr %14, align 2, !tbaa !47
  br label %25

25:                                               ; preds = %8, %12, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_lamp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !51 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @GPU_material_scene(ptr noundef %0) #3
  %15 = load ptr, ptr %10, align 8, !tbaa !35
  %16 = tail call ptr @GPU_lamp_from_blender(ptr noundef %14, ptr noundef %15, ptr noundef null) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %17 = call ptr @GPU_lamp_get_data(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #3
  %18 = load ptr, ptr %6, align 8, !tbaa !49
  %19 = load ptr, ptr %7, align 8, !tbaa !49
  %20 = load ptr, ptr %8, align 8, !tbaa !49
  %21 = load ptr, ptr %9, align 8, !tbaa !49
  %22 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %17) #3
  %23 = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %24

24:                                               ; preds = %5, %13
  %25 = phi i32 [ %23, %13 ], [ 0, %5 ]
  ret i32 %25
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare float @RE_lamp_get_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @GPU_lamp_from_blender(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_material_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_lamp_get_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

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
!34 = !{!"node_shader_lamp.c:node_shader_exec_lamp"}
!35 = !{!36, !37, i64 240}
!36 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !38, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !37, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !37, i64 456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !37, i64 0}
!46 = !{!"ShaderCallData", !37, i64 0, !37, i64 8}
!47 = !{!48, !41, i64 1438}
!48 = !{!"ShadeInput", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !38, i64 44, !41, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !38, i64 148, !40, i64 160, !40, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !38, i64 192, !38, i64 204, !38, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !40, i64 320, !38, i64 324, !38, i64 336, !38, i64 348, !38, i64 360, !38, i64 372, !38, i64 384, !38, i64 400, !38, i64 416, !43, i64 428, !38, i64 432, !38, i64 444, !38, i64 456, !43, i64 472, !38, i64 476, !38, i64 492, !38, i64 504, !38, i64 520, !38, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !38, i64 1112, !38, i64 1124, !38, i64 1136, !38, i64 1148, !38, i64 1160, !38, i64 1172, !38, i64 1184, !38, i64 1196, !38, i64 1208, !38, i64 1220, !38, i64 1232, !38, i64 1244, !43, i64 1256, !43, i64 1260, !38, i64 1264, !38, i64 1276, !38, i64 1288, !38, i64 1300, !38, i64 1312, !38, i64 1324, !43, i64 1336, !43, i64 1340, !38, i64 1344, !38, i64 1356, !38, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !38, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !38, i64 1416, !43, i64 1428, !38, i64 1432, !38, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !37, i64 1456, !37, i64 1464}
!49 = !{!37, !37, i64 0}
!50 = !{!43, !43, i64 0}
!51 = !{!"node_shader_lamp.c:gpu_shader_lamp"}
