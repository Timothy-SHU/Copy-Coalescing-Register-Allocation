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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"verts\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_unsubdivide_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %4 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  %5 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %6 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !37
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  store ptr %12, ptr %3, align 8, !tbaa !34
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #4
  %13 = load ptr, ptr %10, align 8, !tbaa !42
  %14 = call ptr %13(ptr noundef nonnull %3) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %22, %2
  %17 = getelementptr inbounds %struct.BMOpSlot, ptr %5, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = zext nneg i32 %18 to i64
  br label %30

22:                                               ; preds = %2, %22
  %23 = phi ptr [ %28, %22 ], [ %14, %2 ]
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = and i8 %25, -17
  store i8 %26, ptr %24, align 1, !tbaa !50
  %27 = load ptr, ptr %10, align 8, !tbaa !42
  %28 = call ptr %27(ptr noundef nonnull %3) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %16, label %22, !llvm.loop !52

30:                                               ; preds = %20, %30
  %31 = phi i64 [ 0, %20 ], [ %37, %30 ]
  %32 = getelementptr inbounds ptr, ptr %7, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = or i8 %35, 16
  store i8 %36, ptr %34, align 1, !tbaa !50
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, %21
  br i1 %38, label %39, label %30, !llvm.loop !56

39:                                               ; preds = %30, %16
  %40 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  call void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %40, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_decimate_unsubdivide_ex(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !35, i64 60}
!38 = !{!"BMIter", !35, i64 0, !39, i64 40, !39, i64 48, !40, i64 56, !35, i64 60}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!38, !39, i64 40}
!42 = !{!38, !39, i64 48}
!43 = !{!44, !39, i64 32}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !35, i64 28, !35, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !40, i64 128, !39, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !46, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !47, i64 960, !39, i64 976, !47, i64 984, !39, i64 1000}
!45 = !{!"CustomData", !39, i64 0, !35, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 192}
!46 = !{!"short", !35, i64 0}
!47 = !{!"ListBase", !39, i64 0, !39, i64 8}
!48 = !{!49, !40, i64 16}
!49 = !{!"BMOpSlot", !39, i64 0, !40, i64 8, !35, i64 12, !40, i64 16, !35, i64 24}
!50 = !{!51, !35, i64 13}
!51 = !{!"BMHeader", !39, i64 0, !40, i64 8, !35, i64 12, !35, i64 13, !35, i64 14}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!39, !39, i64 0}
!56 = distinct !{!56, !53, !54}
