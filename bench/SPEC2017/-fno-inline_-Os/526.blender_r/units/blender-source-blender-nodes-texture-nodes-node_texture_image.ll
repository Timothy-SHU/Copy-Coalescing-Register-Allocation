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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_image() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_image.ntype, i32 noundef 409, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef null, ptr noundef nonnull @outputs) #3
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef nonnull @init) #3
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_image.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_image.ntype) #3
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.2) #3
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 4
  store i32 1, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 5
  store i8 2, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 7
  store i8 1, ptr %8, align 2, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !50 {
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #3
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorfn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, i16 signext %4) #0 !PGOFuncName !51 {
  %6 = load ptr, ptr %1, align 8, !tbaa !52
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %86, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %11, ptr noundef %15, ptr noundef null) #3
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = sdiv i32 %20, 2
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !60
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
  br i1 %37, label %38, label %86

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  tail call void @BLI_lock_thread(i32 noundef 0) #3
  %43 = load ptr, ptr %39, align 8, !tbaa !61
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void @IMB_float_from_rect(ptr noundef nonnull %16) #3
  br label %46

46:                                               ; preds = %45, %42
  tail call void @BLI_unlock_thread(i32 noundef 0) #3
  br label %47

47:                                               ; preds = %46, %38
  %48 = icmp slt i32 %29, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = load i32, ptr %19, align 8, !tbaa !56
  br label %56

51:                                               ; preds = %56, %47
  %52 = phi i32 [ %29, %47 ], [ %58, %56 ]
  %53 = icmp slt i32 %32, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, ptr %23, align 4, !tbaa !60
  br label %63

56:                                               ; preds = %49, %56
  %57 = phi i32 [ %29, %49 ], [ %58, %56 ]
  %58 = add nsw i32 %50, %57
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %56, label %51, !llvm.loop !62

60:                                               ; preds = %63, %51
  %61 = phi i32 [ %32, %51 ], [ %65, %63 ]
  %62 = load i32, ptr %19, align 8, !tbaa !56
  br label %67

63:                                               ; preds = %54, %63
  %64 = phi i32 [ %32, %54 ], [ %65, %63 ]
  %65 = add nsw i32 %55, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %63, label %60, !llvm.loop !64

67:                                               ; preds = %67, %60
  %68 = phi i32 [ %70, %67 ], [ %52, %60 ]
  %69 = icmp slt i32 %68, %62
  %70 = sub nsw i32 %68, %62
  br i1 %69, label %71, label %67, !llvm.loop !65

71:                                               ; preds = %67
  %72 = load i32, ptr %23, align 4, !tbaa !60
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ %76, %73 ], [ %61, %71 ]
  %75 = icmp slt i32 %74, %72
  %76 = sub nsw i32 %74, %72
  br i1 %75, label %77, label %73, !llvm.loop !66

77:                                               ; preds = %73
  %78 = load ptr, ptr %39, align 8, !tbaa !61
  %79 = shl i32 %62, 2
  %80 = mul i32 %79, %74
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %78, i64 %81
  %83 = shl nsw i32 %68, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %82, i64 %84
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %85) #4
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef null) #3
  br label %86

86:                                               ; preds = %77, %13, %5, %18
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !67 {
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

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!34 = !{!"node_texture_image.c:init"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 248}
!40 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !44, i64 380, !44, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !45, i64 400, !45, i64 416, !45, i64 432, !42, i64 448, !42, i64 450, !41, i64 452, !36, i64 456}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!46 = !{!47, !41, i64 20}
!47 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!48 = !{!47, !37, i64 24}
!49 = !{!47, !37, i64 26}
!50 = !{!"node_texture_image.c:exec"}
!51 = !{!"node_texture_image.c:colorfn"}
!52 = !{!53, !36, i64 0}
!53 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48}
!54 = !{!44, !44, i64 0}
!55 = !{!40, !36, i64 240}
!56 = !{!57, !41, i64 16}
!57 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !44, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !58, i64 2436, !59, i64 2456}
!58 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!59 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!60 = !{!57, !41, i64 20}
!61 = !{!57, !36, i64 48}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = !{!"node_texture_image.c:copy_v4_v4"}
