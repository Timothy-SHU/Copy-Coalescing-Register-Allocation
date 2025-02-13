; ModuleID = 'blender/source/blender/bmesh/operators/bmo_unsubdivide.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_unsubdivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"verts\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_unsubdivide_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %14, %2
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %18, label %26

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %16, %14 ], [ %8, %2 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %15) #8
  %16 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %14, !llvm.loop !41

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %22, %18 ], [ 0, %10 ]
  %20 = getelementptr inbounds ptr, ptr %7, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  call fastcc void @_bm_elem_flag_enable(ptr noundef %21) #8
  %22 = add nuw nsw i64 %19, 1
  %23 = load i32, ptr %11, align 8, !tbaa !37
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %18, label %26, !llvm.loop !44

26:                                               ; preds = %18, %10
  %27 = call fastcc i32 @max_ii(i32 noundef %4) #8
  call void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %27, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #2 !PGOFuncName !45 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !46 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #8
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #8
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !47 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !50 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = tail call ptr %3(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !48
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_decimate_unsubdivide_ex(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !55
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  store ptr %7, ptr %0, align 8, !tbaa !34
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !40, i64 16}
!38 = !{!"BMOpSlot", !39, i64 0, !40, i64 8, !35, i64 12, !40, i64 16, !35, i64 24}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!39, !39, i64 0}
!44 = distinct !{!44, !42}
!45 = !{!"bmo_unsubdivide.c:max_ii"}
!46 = !{!"bmo_unsubdivide.c:BM_iter_new"}
!47 = !{!"bmo_unsubdivide.c:_bm_elem_flag_disable"}
!48 = !{!49, !35, i64 13}
!49 = !{!"BMHeader", !39, i64 0, !40, i64 8, !35, i64 12, !35, i64 13, !35, i64 14}
!50 = !{!"bmo_unsubdivide.c:BM_iter_step"}
!51 = !{!52, !39, i64 48}
!52 = !{!"BMIter", !35, i64 0, !39, i64 40, !39, i64 48, !40, i64 56, !35, i64 60}
!53 = !{!"bmo_unsubdivide.c:_bm_elem_flag_enable"}
!54 = !{!"bmo_unsubdivide.c:BM_iter_init"}
!55 = !{!52, !35, i64 60}
!56 = !{!52, !39, i64 40}
!57 = !{!58, !39, i64 32}
!58 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !35, i64 28, !35, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !40, i64 128, !39, i64 136, !59, i64 144, !59, i64 344, !59, i64 544, !59, i64 744, !60, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !61, i64 960, !39, i64 976, !61, i64 984, !39, i64 1000}
!59 = !{!"CustomData", !39, i64 0, !35, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 192}
!60 = !{!"short", !35, i64 0}
!61 = !{!"ListBase", !39, i64 0, !39, i64 8}
