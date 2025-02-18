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

; Function Attrs: nounwind uwtable
define dso_local void @bmo_symmetrize_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMOIter, align 8
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %11 = srem i32 %10, 3
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #3
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %7, i64 1
  store float 1.000000e+00, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %7, i64 2
  store float 1.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = icmp sgt i32 %10, 2
  %17 = select i1 %16, float -1.000000e+00, float 1.000000e+00
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %18
  store float %17, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %18
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fneg float %21
  store float %22, ptr %20, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !38
  %25 = fpext float %9 to double
  %26 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %24, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, double noundef %25, i32 noundef 1, i32 noundef 1) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #3
  %27 = load i32, ptr %23, align 8, !tbaa !38
  %28 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #3
  %29 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #3
  %30 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #3
  %31 = load i32, ptr %23, align 8, !tbaa !38
  %32 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %31, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #3
  %33 = load i32, ptr %23, align 8, !tbaa !38
  %34 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %33, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #3
  %35 = load i32, ptr %23, align 8, !tbaa !38
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %35, ptr noundef nonnull @.str.8) #3
  %36 = call ptr @BMO_slot_get(ptr noundef nonnull %30, ptr noundef nonnull @.str.9) #3
  %37 = call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.10) #3
  %38 = call ptr @BMO_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %29, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #3
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.BMOpSlot, ptr %36, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %49
  %43 = phi ptr [ %38, %40 ], [ %51, %49 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !42
  %45 = call ptr @BLI_ghash_lookup_p(ptr noundef %44, ptr noundef nonnull %43) #3
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %45, align 8, !tbaa !43
  br label %49

49:                                               ; preds = %42, %47
  %50 = phi ptr [ %48, %47 ], [ null, %42 ]
  call void @BMO_slot_map_insert(ptr noundef nonnull %5, ptr noundef %37, ptr noundef %50, ptr noundef nonnull %43) #3
  %51 = call ptr @BMO_iter_step(ptr noundef nonnull %8) #3
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %42, !llvm.loop !44

53:                                               ; preds = %49, %2
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #3
  %54 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %54, ptr noundef nonnull @.str.5, i8 noundef zeroext 11, i16 noundef signext 1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 1304}
!39 = !{!"BMOperator", !36, i64 0, !36, i64 640, !40, i64 1280, !40, i64 1288, !41, i64 1296, !41, i64 1300, !41, i64 1304}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!36, !36, i64 0}
!43 = !{!40, !40, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
