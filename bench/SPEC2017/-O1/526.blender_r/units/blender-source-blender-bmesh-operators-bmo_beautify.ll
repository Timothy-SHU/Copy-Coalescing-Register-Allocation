; ModuleID = 'blender/source/blender/bmesh/operators/bmo_beautify.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_beautify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"use_restrict_tag\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@__func__.bmo_beautify_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_beautify_fill_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_beautify_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #3
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %7 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 8) #3
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %11

11:                                               ; preds = %9, %25
  %12 = phi ptr [ %7, %9 ], [ %26, %25 ]
  %13 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = load i32, ptr %10, align 8, !tbaa !43
  %20 = sext i32 %19 to i64
  %21 = getelementptr %struct.BMFlagLayer, ptr %18, i64 %20
  %22 = getelementptr %struct.BMFlagLayer, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !47
  %24 = or i16 %23, 2
  store i16 %24, ptr %22, align 2, !tbaa !47
  br label %25

25:                                               ; preds = %11, %16
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !49

28:                                               ; preds = %25, %2
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %29, align 4, !tbaa !52
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  store ptr %33, ptr %3, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #3
  %34 = load ptr, ptr %31, align 8, !tbaa !55
  %35 = call ptr %34(ptr noundef nonnull %3) #3
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %28, %37
  %38 = phi ptr [ %43, %37 ], [ %35, %28 ]
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !58
  %41 = and i8 %40, -17
  store i8 %41, ptr %39, align 1, !tbaa !58
  %42 = load ptr, ptr %31, align 8, !tbaa !55
  %43 = call ptr %42(ptr noundef nonnull %3) #3
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37, !llvm.loop !59

45:                                               ; preds = %37, %28
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %47 = call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.3) #3
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  %50 = call ptr %46(i64 noundef %49, ptr noundef nonnull @__func__.bmo_beautify_fill_exec) #3
  %51 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2) #3
  %52 = icmp eq ptr %51, null
  br i1 %52, label %94, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %55

55:                                               ; preds = %53, %90
  %56 = phi i32 [ 0, %53 ], [ %91, %90 ]
  %57 = phi ptr [ %51, %53 ], [ %92, %90 ]
  %58 = call zeroext i8 @BM_edge_rotate_check(ptr noundef nonnull %57) #3
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.BMEdge, ptr %57, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = getelementptr inbounds %struct.BMFace, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = load i32, ptr %54, align 8, !tbaa !43
  %68 = sext i32 %67 to i64
  %69 = getelementptr %struct.BMFlagLayer, ptr %66, i64 %68
  %70 = getelementptr %struct.BMFlagLayer, ptr %69, i64 -1
  %71 = load i16, ptr %70, align 2, !tbaa !47
  %72 = and i16 %71, 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = getelementptr %struct.BMFlagLayer, ptr %80, i64 %68
  %82 = getelementptr %struct.BMFlagLayer, ptr %81, i64 -1
  %83 = load i16, ptr %82, align 2, !tbaa !47
  %84 = and i16 %83, 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %74
  %87 = sext i32 %56 to i64
  %88 = getelementptr inbounds ptr, ptr %50, i64 %87
  store ptr %57, ptr %88, align 8, !tbaa !60
  %89 = add nsw i32 %56, 1
  br label %90

90:                                               ; preds = %55, %60, %74, %86
  %91 = phi i32 [ %89, %86 ], [ %56, %74 ], [ %56, %60 ], [ %56, %55 ]
  %92 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #3
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %55, !llvm.loop !67

94:                                               ; preds = %90, %45
  %95 = phi i32 [ 0, %45 ], [ %91, %90 ]
  %96 = trunc i32 %6 to i16
  %97 = icmp ne i8 %5, 0
  %98 = zext i1 %97 to i16
  call void @BM_mesh_beautify_fill(ptr noundef %0, ptr noundef %50, i32 noundef %95, i16 noundef signext %98, i16 noundef signext %96, i16 noundef signext 1, i16 noundef signext 3) #3
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  call void %99(ptr noundef %50) #3
  %100 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %100, ptr noundef nonnull @.str.4, i8 noundef zeroext 10, i16 noundef signext 1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_rotate_check(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_beautify_fill(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !37, i64 16}
!43 = !{!44, !40, i64 128}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !46, i64 960, !37, i64 976, !46, i64 984, !37, i64 1000}
!45 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!48, !41, i64 0}
!48 = !{!"BMFlagLayer", !41, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !38, i64 60}
!53 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!54 = !{!53, !37, i64 40}
!55 = !{!53, !37, i64 48}
!56 = !{!44, !37, i64 40}
!57 = !{!38, !38, i64 0}
!58 = !{!36, !38, i64 13}
!59 = distinct !{!59, !50, !51}
!60 = !{!37, !37, i64 0}
!61 = !{!62, !37, i64 40}
!62 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !63, i64 48, !63, i64 64}
!63 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!64 = !{!65, !37, i64 32}
!65 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!66 = !{!65, !37, i64 40}
!67 = distinct !{!67, !50, !51}
