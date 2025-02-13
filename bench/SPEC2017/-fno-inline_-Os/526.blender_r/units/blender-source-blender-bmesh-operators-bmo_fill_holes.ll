; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_holes.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"sides\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"face_attribute_fill faces=%S use_normals=%b use_data=%b\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"faces_fail.out\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"recalc_face_normals faces=%S\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_holes_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #3
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  tail call void @BM_mesh_edgenet(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #3
  %9 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull @.str.2, i8 noundef zeroext 8, i8 noundef zeroext 16) #4
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull @.str.2, i8 noundef zeroext 8) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %18
  %13 = phi ptr [ %19, %18 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = icmp ugt i32 %15, %6
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %13) #4
  br label %18

18:                                               ; preds = %12, %17
  %19 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !42

21:                                               ; preds = %18, %8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #3
  br label %22

22:                                               ; preds = %21, %2
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @.str.2, i8 noundef zeroext 8, i8 noundef zeroext 16) #4
  %24 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %25, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1) #4
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #4
  %27 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %28 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %27, ptr noundef nonnull @.str.4) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #3
  %31 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %27, ptr noundef nonnull @.str.4, i8 noundef zeroext 8) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %30 ]
  call void @BM_face_normal_update(ptr noundef nonnull %34) #4
  %35 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !46

37:                                               ; preds = %33, %30
  %38 = load i32, ptr %24, align 8, !tbaa !44
  %39 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %38, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #3
  br label %40

40:                                               ; preds = %37, %22
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_edgenet(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !40, i64 1304}
!45 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!46 = distinct !{!46, !43}
