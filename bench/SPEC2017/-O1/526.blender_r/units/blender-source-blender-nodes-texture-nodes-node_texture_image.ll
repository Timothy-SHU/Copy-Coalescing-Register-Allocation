; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_image.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@register_node_type_tex_image.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"ImageUser\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"node image user\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_image() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_image.ntype, i32 noundef 409, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef null, ptr noundef nonnull @outputs) #2
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef nonnull @init) #2
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #2
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_image.ntype) #2
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.2) #2
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 4
  store i32 1, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 5
  store i8 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 7
  store i8 1, ptr %8, align 2, !tbaa !48
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #2
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @colorfn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, i16 signext %4) #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %11, ptr noundef %15, ptr noundef null) #2
  %17 = icmp eq ptr %16, null
  br i1 %17, label %96, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = sdiv i32 %20, 2
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !57
  %25 = sdiv i32 %24, 2
  %26 = sitofp i32 %25 to float
  %27 = fadd float %7, 1.000000e+00
  %28 = fmul float %27, %22
  %29 = fptosi float %28 to i32
  %30 = fadd float %9, 1.000000e+00
  %31 = fmul float %30, %26
  %32 = fptosi float %31 to i32
  %33 = add i32 %20, -2
  %34 = icmp ult i32 %33, -3
  %35 = add i32 %24, -2
  %36 = icmp ult i32 %35, -3
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %96

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  tail call void @BLI_lock_thread(i32 noundef 0) #2
  %43 = load ptr, ptr %39, align 8, !tbaa !58
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void @IMB_float_from_rect(ptr noundef nonnull %16) #2
  br label %46

46:                                               ; preds = %45, %42
  tail call void @BLI_unlock_thread(i32 noundef 0) #2
  br label %47

47:                                               ; preds = %46, %38
  %48 = icmp slt i32 %29, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = load i32, ptr %19, align 8, !tbaa !53
  br label %56

51:                                               ; preds = %56, %47
  %52 = phi i32 [ %29, %47 ], [ %58, %56 ]
  %53 = icmp slt i32 %32, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, ptr %23, align 4, !tbaa !57
  br label %63

56:                                               ; preds = %49, %56
  %57 = phi i32 [ %29, %49 ], [ %58, %56 ]
  %58 = add nsw i32 %50, %57
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %56, label %51, !llvm.loop !59

60:                                               ; preds = %63, %51
  %61 = phi i32 [ %32, %51 ], [ %65, %63 ]
  %62 = load i32, ptr %19, align 8, !tbaa !53
  br label %67

63:                                               ; preds = %54, %63
  %64 = phi i32 [ %32, %54 ], [ %65, %63 ]
  %65 = add nsw i32 %55, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %63, label %60, !llvm.loop !62

67:                                               ; preds = %67, %60
  %68 = phi i32 [ %70, %67 ], [ %52, %60 ]
  %69 = icmp slt i32 %68, %62
  %70 = sub nsw i32 %68, %62
  br i1 %69, label %71, label %67, !llvm.loop !63

71:                                               ; preds = %67
  %72 = load i32, ptr %23, align 4, !tbaa !57
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ %76, %73 ], [ %61, %71 ]
  %75 = icmp slt i32 %74, %72
  %76 = sub nsw i32 %74, %72
  br i1 %75, label %77, label %73, !llvm.loop !64

77:                                               ; preds = %73
  %78 = load ptr, ptr %39, align 8, !tbaa !58
  %79 = shl i32 %62, 2
  %80 = mul i32 %79, %74
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %78, i64 %81
  %83 = shl nsw i32 %68, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %82, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !51
  store float %86, ptr %0, align 4, !tbaa !51
  %87 = getelementptr inbounds float, ptr %85, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !51
  %89 = getelementptr inbounds float, ptr %0, i64 1
  store float %88, ptr %89, align 4, !tbaa !51
  %90 = getelementptr inbounds float, ptr %85, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !51
  %92 = getelementptr inbounds float, ptr %0, i64 2
  store float %91, ptr %92, align 4, !tbaa !51
  %93 = getelementptr inbounds float, ptr %85, i64 3
  %94 = load float, ptr %93, align 4, !tbaa !51
  %95 = getelementptr inbounds float, ptr %0, i64 3
  store float %94, ptr %95, align 4, !tbaa !51
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef null) #2
  br label %96

96:                                               ; preds = %77, %13, %5, %18
  ret void
}

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #1

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!38 = !{!39, !35, i64 248}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !40, i64 20}
!46 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!47 = !{!46, !36, i64 24}
!48 = !{!46, !36, i64 26}
!49 = !{!50, !35, i64 0}
!50 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!51 = !{!43, !43, i64 0}
!52 = !{!39, !35, i64 240}
!53 = !{!54, !40, i64 16}
!54 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !55, i64 2436, !56, i64 2456}
!55 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!56 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!57 = !{!54, !40, i64 20}
!58 = !{!54, !35, i64 48}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
!64 = distinct !{!64, !60, !61}
