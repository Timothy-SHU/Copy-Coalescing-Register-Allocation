; ModuleID = 'blender/source/blender/blenlib/intern/buffer.c'
source_filename = "blender/source/blender/blenlib/intern/buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"BLI_Buffer.data\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_buffer_resize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !41
  %13 = tail call fastcc ptr @buffer_alloc(ptr noundef nonnull %0, i32 noundef %1) #4
  store ptr %13, ptr %0, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = mul nsw i32 %17, %15
  %19 = sext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %12, i64 %19, i1 false)
  store i32 %1, ptr %3, align 8, !tbaa !34
  %20 = load i32, ptr %7, align 4, !tbaa !40
  %21 = and i32 %20, -2
  store i32 %21, ptr %7, align 4, !tbaa !40
  br label %28

22:                                               ; preds = %6
  %23 = icmp eq i32 %4, 0
  %24 = shl nsw i32 %4, 1
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 %1)
  %26 = select i1 %23, i32 %1, i32 %25
  store i32 %26, ptr %3, align 8, !tbaa !34
  %27 = tail call fastcc ptr @buffer_realloc(ptr noundef nonnull %0, i32 noundef %26) #4
  store ptr %27, ptr %0, align 8, !tbaa !41
  br label %28

28:                                               ; preds = %11, %22, %2
  %29 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  store i32 %1, ptr %29, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @buffer_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !44 {
  %3 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @MEM_callocN, align 8
  %8 = load ptr, ptr @MEM_mallocN, align 8
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = mul nsw i32 %11, %1
  %13 = sext i32 %12 to i64
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str) #5
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @buffer_realloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !45 {
  %3 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @MEM_recallocN_id, align 8
  %8 = load ptr, ptr @MEM_reallocN_id, align 8
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = mul nsw i32 %12, %1
  %14 = sext i32 %13 to i64
  %15 = tail call ptr %9(ptr noundef %10, i64 noundef %14, ptr noundef nonnull @.str) #5
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_bli_buffer_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !40
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %10(ptr noundef nonnull %7) #5
  br label %11

11:                                               ; preds = %6, %9, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 20}
!41 = !{!35, !36, i64 0}
!42 = !{!35, !39, i64 8}
!43 = !{!35, !39, i64 12}
!44 = !{!"buffer.c:buffer_alloc"}
!45 = !{!"buffer.c:buffer_realloc"}
!46 = !{!36, !36, i64 0}
