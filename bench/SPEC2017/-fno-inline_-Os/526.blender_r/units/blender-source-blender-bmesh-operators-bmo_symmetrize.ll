; ModuleID = 'blender/source/blender/bmesh/operators/bmo_symmetrize.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_symmetrize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"bisect_plane geom=%s plane_no=%v dist=%f clear_outer=%b use_snap_center=%b\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"duplicate geom=%S\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"scale verts=%S vec=%v\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"reverse_faces faces=%S\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"vert_map.out\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"geom_cut.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_symmetrize_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMOIter, align 8
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %11 = srem i32 %10, 3
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #5
  call fastcc void @copy_v3_fl(ptr noundef nonnull %6, float noundef 0.000000e+00) #6
  call fastcc void @copy_v3_fl(ptr noundef nonnull %7, float noundef 1.000000e+00) #6
  %12 = icmp sgt i32 %10, 2
  %13 = select i1 %12, float -1.000000e+00, float 1.000000e+00
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %14
  store float %13, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %14
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fneg float %17
  store float %18, ptr %16, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !38
  %21 = fpext float %9 to double
  %22 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %20, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, double noundef %21, i32 noundef 1, i32 noundef 1) #4
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #4
  %23 = load i32, ptr %19, align 8, !tbaa !38
  %24 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %23, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #4
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #4
  %25 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #4
  %26 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #4
  %27 = load i32, ptr %19, align 8, !tbaa !38
  %28 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #4
  %29 = load i32, ptr %19, align 8, !tbaa !38
  %30 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #4
  %31 = load i32, ptr %19, align 8, !tbaa !38
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %31, ptr noundef nonnull @.str.8) #4
  %32 = call ptr @BMO_slot_get(ptr noundef nonnull %26, ptr noundef nonnull @.str.9) #4
  %33 = call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.10) #4
  %34 = call ptr @BMO_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %25, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %2, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %2 ]
  %38 = call fastcc ptr @BMO_slot_map_elem_get(ptr noundef %32, ptr noundef nonnull %37) #6
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %5, ptr noundef %33, ptr noundef %38, ptr noundef nonnull %37) #6
  %39 = call ptr @BMO_iter_step(ptr noundef nonnull %8) #4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !42

41:                                               ; preds = %36, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #4
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #4
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #4
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #4
  %42 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %42, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !44 {
  store float %1, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_elem_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !45 {
  %3 = tail call fastcc ptr @BMO_slot_map_data_get(ptr noundef %0, ptr noundef %1) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !47 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_data_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !48 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %4, ptr noundef %1) #4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 1304}
!39 = !{!"BMOperator", !36, i64 0, !36, i64 640, !40, i64 1280, !40, i64 1288, !41, i64 1296, !41, i64 1300, !41, i64 1304}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"bmo_symmetrize.c:copy_v3_fl"}
!45 = !{!"bmo_symmetrize.c:BMO_slot_map_elem_get"}
!46 = !{!40, !40, i64 0}
!47 = !{!"bmo_symmetrize.c:BMO_slot_map_elem_insert"}
!48 = !{!"bmo_symmetrize.c:BMO_slot_map_data_get"}
!49 = !{!36, !36, i64 0}
