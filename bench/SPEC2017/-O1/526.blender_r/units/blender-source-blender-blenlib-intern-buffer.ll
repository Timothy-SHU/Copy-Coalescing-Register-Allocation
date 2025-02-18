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

; Function Attrs: nounwind uwtable
define dso_local void @BLI_buffer_resize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !41
  %13 = and i32 %8, 2
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr @MEM_callocN, align 8
  %16 = load ptr, ptr @MEM_mallocN, align 8
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = mul nsw i32 %19, %1
  %21 = sext i32 %20 to i64
  %22 = tail call ptr %17(i64 noundef %21, ptr noundef nonnull @.str) #4
  store ptr %22, ptr %0, align 8, !tbaa !41
  %23 = load i32, ptr %18, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = mul nsw i32 %25, %23
  %27 = sext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %12, i64 %27, i1 false)
  store i32 %1, ptr %3, align 8, !tbaa !34
  %28 = load i32, ptr %7, align 4, !tbaa !40
  %29 = and i32 %28, -2
  store i32 %29, ptr %7, align 4, !tbaa !40
  br label %46

30:                                               ; preds = %6
  %31 = icmp eq i32 %4, 0
  %32 = shl nsw i32 %4, 1
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 %1)
  %34 = select i1 %31, i32 %1, i32 %33
  store i32 %34, ptr %3, align 8, !tbaa !34
  %35 = and i32 %8, 2
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr @MEM_recallocN_id, align 8
  %38 = load ptr, ptr @MEM_reallocN_id, align 8
  %39 = select i1 %36, ptr %38, ptr %37
  %40 = load ptr, ptr %0, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !42
  %43 = mul nsw i32 %42, %34
  %44 = sext i32 %43 to i64
  %45 = tail call ptr %39(ptr noundef %40, i64 noundef %44, ptr noundef nonnull @.str) #4
  store ptr %45, ptr %0, align 8, !tbaa !41
  br label %46

46:                                               ; preds = %11, %30, %2
  %47 = getelementptr inbounds %struct.BLI_Buffer, ptr %0, i64 0, i32 2
  store i32 %1, ptr %47, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
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
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %10(ptr noundef nonnull %7) #4
  br label %11

11:                                               ; preds = %6, %9, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!44 = !{!36, !36, i64 0}
