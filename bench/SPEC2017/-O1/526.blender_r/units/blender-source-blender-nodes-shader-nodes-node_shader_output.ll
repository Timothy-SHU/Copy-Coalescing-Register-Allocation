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

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_output() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_output.ntype, i32 noundef 1, ptr noundef nonnull @.str, i16 noundef signext 1, i16 noundef signext 4) #3
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_output.ntype, i16 noundef signext 1) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef nonnull @sh_node_output_in, ptr noundef null) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_output) #3
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef nonnull @gpu_shader_output) #3
  tail call void @node_type_internal_links(ptr noundef nonnull @register_node_type_sh_output.ntype, ptr noundef null) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_output.ntype) #3
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_output(ptr noundef readonly %0, i32 %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) #0 {
  %7 = alloca [4 x float], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #3
  %11 = load ptr, ptr %4, align 8, !tbaa !39
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %11) #3
  %12 = getelementptr inbounds float, ptr %7, i64 3
  %13 = getelementptr inbounds ptr, ptr %4, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  call void @nodestack_get_vec(ptr noundef nonnull %12, i16 noundef signext 0, ptr noundef %14) #3
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 112
  %16 = load i8, ptr %15, align 8, !tbaa !40
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 103
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 104
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 113
  %26 = load i8, ptr %25, align 1, !tbaa !49
  call void @BKE_node_preview_set_pixel(ptr noundef %20, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %24, i8 noundef zeroext %26) #3
  %27 = load i32, ptr %23, align 8, !tbaa !48
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 12
  store i16 %28, ptr %29, align 4, !tbaa !50
  br label %30

30:                                               ; preds = %18, %9
  %31 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !54
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ShaderCallData, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = load float, ptr %7, align 16, !tbaa !56
  store float %38, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds float, ptr %7, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds float, ptr %37, i64 1
  store float %40, ptr %41, align 4, !tbaa !56
  %42 = getelementptr inbounds float, ptr %7, i64 2
  %43 = load float, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds float, ptr %37, i64 2
  store float %43, ptr %44, align 4, !tbaa !56
  %45 = load float, ptr %12, align 4, !tbaa !56
  %46 = getelementptr inbounds float, ptr %37, i64 3
  store float %45, ptr %46, align 4, !tbaa !56
  %47 = load float, ptr %12, align 4, !tbaa !56
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %37, i64 0, i32 2
  store float %47, ptr %48, align 4, !tbaa !57
  br label %49

49:                                               ; preds = %35, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #3
  br label %50

50:                                               ; preds = %49, %6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpu_shader_output(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %7 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #3
  %8 = load ptr, ptr %6, align 8, !tbaa !39
  call void @GPU_material_output_link(ptr noundef %0, ptr noundef %8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  ret i32 1
}

declare void @node_type_internal_links(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @GPU_material_output_link(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ShaderCallData", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !37, i64 1432}
!41 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !37, i64 44, !43, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !43, i64 88, !43, i64 90, !43, i64 92, !43, i64 94, !43, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !42, i64 160, !42, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !42, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !42, i64 1096, !42, i64 1100, !42, i64 1104, !42, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !42, i64 1380, !42, i64 1384, !42, i64 1388, !37, i64 1392, !42, i64 1404, !42, i64 1408, !42, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !43, i64 1434, !43, i64 1436, !43, i64 1438, !42, i64 1440, !42, i64 1444, !42, i64 1448, !42, i64 1452, !36, i64 1456, !36, i64 1464}
!42 = !{!"int", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!"float", !37, i64 0}
!45 = !{!46, !36, i64 8}
!46 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!47 = !{!41, !42, i64 1380}
!48 = !{!41, !42, i64 1384}
!49 = !{!41, !37, i64 1433}
!50 = !{!51, !43, i64 180}
!51 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !42, i64 168, !43, i64 172, !43, i64 174, !43, i64 176, !43, i64 178, !43, i64 180, !43, i64 182, !43, i64 184, !43, i64 186, !37, i64 188, !52, i64 200, !52, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !52, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !42, i64 308, !37, i64 312, !43, i64 376, !43, i64 378, !44, i64 380, !44, i64 384, !43, i64 388, !43, i64 390, !36, i64 392, !53, i64 400, !53, i64 416, !53, i64 432, !43, i64 448, !43, i64 450, !42, i64 452, !36, i64 456}
!52 = !{!"ListBase", !36, i64 0, !36, i64 8}
!53 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!54 = !{!51, !42, i64 168}
!55 = !{!35, !36, i64 8}
!56 = !{!44, !44, i64 0}
!57 = !{!58, !44, i64 32}
!58 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
