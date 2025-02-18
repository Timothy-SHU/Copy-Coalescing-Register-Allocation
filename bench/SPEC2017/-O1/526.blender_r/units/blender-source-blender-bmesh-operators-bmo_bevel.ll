; ModuleID = 'blender/source/blender/bmesh/operators/bmo_bevel.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vertex_only\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clamp_overlap\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_bevel_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #3
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #3
  %8 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #3
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.5) #3
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.6) #3
  %11 = fcmp ogt float %4, 0.000000e+00
  br i1 %11, label %12, label %52

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #3
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 1) #3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = or i8 %18, 16
  store i8 %19, ptr %17, align 1, !tbaa !34
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !40

22:                                               ; preds = %15, %12
  %23 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 2) #3
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %22, %46
  %26 = phi ptr [ %47, %46 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, %28
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, %28
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %25, %30, %34
  %40 = phi i8 [ 0, %30 ], [ 0, %25 ], [ %38, %34 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = or i8 %44, 16
  store i8 %45, ptr %43, align 1, !tbaa !34
  br label %46

46:                                               ; preds = %39, %42
  %47 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !llvm.loop !48

49:                                               ; preds = %46, %22
  %50 = sitofp i32 %6 to float
  call void @BM_mesh_bevel(ptr noundef %0, float noundef %4, i32 noundef %5, float noundef %50, float noundef %8, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %9, ptr noundef null, i32 noundef -1, i32 noundef %10) #3
  %51 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %51, ptr noundef nonnull @.str.8, i8 noundef zeroext 8, i8 noundef zeroext 16) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #3
  br label %52

52:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_bevel(ptr noundef, float noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!34 = !{!35, !37, i64 13}
!35 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !36, i64 40}
!44 = !{!"BMEdge", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !45, i64 48, !45, i64 64}
!45 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!46 = !{!47, !36, i64 40}
!47 = !{!"BMLoop", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!48 = distinct !{!48, !41, !42}
